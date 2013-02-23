/*
 * Copyright (C) 2004-2013 L2J Server
 * 
 * This file is part of L2J Server.
 * 
 * L2J Server is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 * 
 * L2J Server is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU
 * General Public License for more details.
 * 
 * You should have received a copy of the GNU General Public License
 * along with this program. If not, see <http://www.gnu.org/licenses/>.
 */
package com.l2jserver.gameserver.cache;

import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.util.logging.Level;
import java.util.logging.Logger;

import com.l2jserver.Config;
import com.l2jserver.gameserver.datatables.MessageTable;
import com.l2jserver.gameserver.util.L2TIntObjectHashMap;
import com.l2jserver.gameserver.util.Util;
import com.l2jserver.util.file.filter.HTMLFilter;

import gnu.trove.map.hash.TIntObjectHashMap;

/**
 * @author Layane
 */
public class HtmCache {
	
	private static Logger _log = Logger.getLogger(HtmCache.class.getName());
	
	private static final HTMLFilter htmlFilter = new HTMLFilter();
	
	private final TIntObjectHashMap<String> _cache;
	
	private int _loadedFiles;
	private long _bytesBuffLen;
	
	public static HtmCache getInstance() {
		return SingletonHolder._instance;
	}
	
	protected HtmCache() {
		if (Config.LAZY_CACHE) {
			_cache = new L2TIntObjectHashMap<>();
		} else {
			_cache = new TIntObjectHashMap<>();
		}
		reload();
	}
	
	/**
	 * 데이터 팩 경로 리로드
	 */
	public void reload() {
		reload(Config.DATAPACK_ROOT);
	}
	
	/**
	 * @param f
	 */
	public void reload(File f) {
		if (!Config.LAZY_CACHE) {
			_log.info("HTML 캐시 시작...");
			parseDir(f);
			_log.info("캐시[HTML]: " + String.format("%.3f", getMemoryUsage()) + "MB, " + getLoadedFiles() + "개 파일이 로드되었습니다.");
		} else {
			_cache.clear();
			_loadedFiles = 0;
			_bytesBuffLen = 0;
			_log.info("캐시[HTML]: 캐시되었습니다.");
		}
	}
	
	/**
	 * @param f
	 */
	public void reloadPath(File f) {
		parseDir(f);
		_log.info("캐시[HTML]: 지정된 경로를 갱신했습니다.");
	}
	
	/**
	 * @return
	 */
	public double getMemoryUsage() {
		return ((float) _bytesBuffLen / 1048576);
	}
	
	/**
	 * @return
	 */
	public int getLoadedFiles() {
		return _loadedFiles;
	}
	
	/**
	 * @param dir
	 */
	private void parseDir(File dir) {
		final File[] files = dir.listFiles();
		for (File file : files) {
			if (!file.isDirectory()) {
				loadFile(file);
			} else {
				parseDir(file);
			}
		}
	}
	
	/**
	 * @param file
	 * @return
	 */
	public String loadFile(File file) {
		if (!htmlFilter.accept(file)) {
			return null;
		}
		final String relpath = Util.getRelativePath(Config.DATAPACK_ROOT, file);
		final int hashcode = relpath.hashCode();
		String content = null;
		try (FileInputStream fis = new FileInputStream(file);
			BufferedInputStream bis = new BufferedInputStream(fis);) {
			final int bytes = bis.available();
			byte[] raw = new byte[bytes];
			bis.read(raw);
			content = new String(raw, "UTF-8");
			content = content.replaceAll("\r\n", "\n");
			String oldContent = _cache.get(hashcode);
			if (oldContent == null) {
				_bytesBuffLen += bytes;
				_loadedFiles++;
			} else {
				_bytesBuffLen = (_bytesBuffLen - oldContent.length()) + bytes;
			}
			_cache.put(hashcode, content);
		} catch (Exception e) {
			_log.log(Level.WARNING, "HTML 파일에 문제가 있습니다: " + e.getMessage(), e);
		}
		return content;
	}
	
	/**
	 * @param prefix
	 * @param path
	 * @return
	 */
	public String getHtmForce(String prefix, String path) {
		String content = getHtm(prefix, path);
		if (content == null) {
			/*
			 * Move To MessageTable For L2JTW
			 */
			// content = "<html><body>My text is missing:<br>" + path + "</body></html>";
			content = "<html><body>" + MessageTable.Messages[47].getMessage() + "<br>" + path + "</body></html>";
			_log.warning("캐시[HTML]: HTML 파일을 찾을 수 없습니다: " + path);
		}
		return content;
	}
	
	/**
	 * @param prefix
	 * @param path
	 * @return
	 */
	public String getHtm(String prefix, String path) {
		String newPath = null;
		String content;
		if ((prefix != null) && !prefix.isEmpty()) {
			newPath = prefix + path;
			content = getHtm(newPath);
			if (content != null) {
				return content;
			}
		}
		
		content = getHtm(path);
		if ((content != null) && (newPath != null)) {
			_cache.put(newPath.hashCode(), content);
		}
		
		return content;
	}
	
	/**
	 * @param path
	 * @return
	 */
	private String getHtm(String path) {
		if ((path == null) || path.isEmpty()) {
			return ""; // avoid possible NPE
		}
		
		final int hashCode = path.hashCode();
		String content = _cache.get(hashCode);
		if (Config.LAZY_CACHE && (content == null)) {
			content = loadFile(new File(Config.DATAPACK_ROOT, path));
		}
		return content;
	}
	
	/**
	 * @param path
	 * @return
	 */
	public boolean contains(String path) {
		return _cache.containsKey(path.hashCode());
	}
	
	/**
	 * @param path The path to the HTM
	 * @return {@code true} if the path targets a HTM or HTML file, {@code false} otherwise.
	 */
	public boolean isLoadable(String path) {
		return htmlFilter.accept(new File(path));
	}
	
	private static class SingletonHolder {
		protected static final HtmCache _instance = new HtmCache();
	}
	
}
