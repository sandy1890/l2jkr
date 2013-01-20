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
package com.l2jserver.gameserver.model.base;

import static com.l2jserver.gameserver.model.base.ClassLevel.Awaken;
import static com.l2jserver.gameserver.model.base.ClassLevel.First;
import static com.l2jserver.gameserver.model.base.ClassLevel.Fourth;
import static com.l2jserver.gameserver.model.base.ClassLevel.Second;
import static com.l2jserver.gameserver.model.base.ClassLevel.Third;
import static com.l2jserver.gameserver.model.base.ClassType.Fighter;
import static com.l2jserver.gameserver.model.base.ClassType.Mystic;
import static com.l2jserver.gameserver.model.base.ClassType.Priest;
import static com.l2jserver.gameserver.model.base.Race.DarkElf;
import static com.l2jserver.gameserver.model.base.Race.Dwarf;
import static com.l2jserver.gameserver.model.base.Race.Elf;
import static com.l2jserver.gameserver.model.base.Race.Human;
import static com.l2jserver.gameserver.model.base.Race.Kamael;
import static com.l2jserver.gameserver.model.base.Race.Orc;

import java.util.EnumMap;
import java.util.EnumSet;
import java.util.Set;

import com.l2jserver.Config;
import com.l2jserver.gameserver.model.actor.instance.L2PcInstance;

//rocknow-God-Awaking

/**
 * @author luisantonioa
 */
public enum PlayerClass {
	
	HumanFighter(Human, Fighter, First),
	Warrior(Human, Fighter, Second),
	Gladiator(Human, Fighter, Third),
	Warlord(Human, Fighter, Third),
	HumanKnight(Human, Fighter, Second),
	Paladin(Human, Fighter, Third),
	DarkAvenger(Human, Fighter, Third),
	Rogue(Human, Fighter, Second),
	TreasureHunter(Human, Fighter, Third),
	Hawkeye(Human, Fighter, Third),
	HumanMystic(Human, Mystic, First),
	HumanWizard(Human, Mystic, Second),
	Sorceror(Human, Mystic, Third),
	Necromancer(Human, Mystic, Third),
	Warlock(Human, Mystic, Third),
	Cleric(Human, Priest, Second),
	Bishop(Human, Priest, Third),
	Prophet(Human, Priest, Third),
	
	ElvenFighter(Elf, Fighter, First),
	ElvenKnight(Elf, Fighter, Second),
	TempleKnight(Elf, Fighter, Third),
	Swordsinger(Elf, Fighter, Third),
	ElvenScout(Elf, Fighter, Second),
	Plainswalker(Elf, Fighter, Third),
	SilverRanger(Elf, Fighter, Third),
	ElvenMystic(Elf, Mystic, First),
	ElvenWizard(Elf, Mystic, Second),
	Spellsinger(Elf, Mystic, Third),
	ElementalSummoner(Elf, Mystic, Third),
	ElvenOracle(Elf, Priest, Second),
	ElvenElder(Elf, Priest, Third),
	
	DarkElvenFighter(DarkElf, Fighter, First),
	PalusKnight(DarkElf, Fighter, Second),
	ShillienKnight(DarkElf, Fighter, Third),
	Bladedancer(DarkElf, Fighter, Third),
	Assassin(DarkElf, Fighter, Second),
	AbyssWalker(DarkElf, Fighter, Third),
	PhantomRanger(DarkElf, Fighter, Third),
	DarkElvenMystic(DarkElf, Mystic, First),
	DarkElvenWizard(DarkElf, Mystic, Second),
	Spellhowler(DarkElf, Mystic, Third),
	PhantomSummoner(DarkElf, Mystic, Third),
	ShillienOracle(DarkElf, Priest, Second),
	ShillienElder(DarkElf, Priest, Third),
	
	OrcFighter(Orc, Fighter, First),
	OrcRaider(Orc, Fighter, Second),
	Destroyer(Orc, Fighter, Third),
	OrcMonk(Orc, Fighter, Second),
	Tyrant(Orc, Fighter, Third),
	OrcMystic(Orc, Mystic, First),
	OrcShaman(Orc, Mystic, Second),
	Overlord(Orc, Mystic, Third),
	Warcryer(Orc, Mystic, Third),
	
	DwarvenFighter(Dwarf, Fighter, First),
	DwarvenScavenger(Dwarf, Fighter, Second),
	BountyHunter(Dwarf, Fighter, Third),
	DwarvenArtisan(Dwarf, Fighter, Second),
	Warsmith(Dwarf, Fighter, Third),
	
	dummyEntry1(null, null, null),
	dummyEntry2(null, null, null),
	dummyEntry3(null, null, null),
	dummyEntry4(null, null, null),
	dummyEntry5(null, null, null),
	dummyEntry6(null, null, null),
	dummyEntry7(null, null, null),
	dummyEntry8(null, null, null),
	dummyEntry9(null, null, null),
	dummyEntry10(null, null, null),
	dummyEntry11(null, null, null),
	dummyEntry12(null, null, null),
	dummyEntry13(null, null, null),
	dummyEntry14(null, null, null),
	dummyEntry15(null, null, null),
	dummyEntry16(null, null, null),
	dummyEntry17(null, null, null),
	dummyEntry18(null, null, null),
	dummyEntry19(null, null, null),
	dummyEntry20(null, null, null),
	dummyEntry21(null, null, null),
	dummyEntry22(null, null, null),
	dummyEntry23(null, null, null),
	dummyEntry24(null, null, null),
	dummyEntry25(null, null, null),
	dummyEntry26(null, null, null),
	dummyEntry27(null, null, null),
	dummyEntry28(null, null, null),
	dummyEntry29(null, null, null),
	dummyEntry30(null, null, null),
	/*
	 * (3rd classes)
	 */
	duelist(Human, Fighter, Fourth),
	dreadnought(Human, Fighter, Fourth),
	phoenixKnight(Human, Fighter, Fourth),
	hellKnight(Human, Fighter, Fourth),
	sagittarius(Human, Fighter, Fourth),
	adventurer(Human, Fighter, Fourth),
	archmage(Human, Mystic, Fourth),
	soultaker(Human, Mystic, Fourth),
	arcanaLord(Human, Mystic, Fourth),
	cardinal(Human, Priest, Fourth),
	hierophant(Human, Priest, Fourth),
	
	evaTemplar(Elf, Fighter, Fourth),
	swordMuse(Elf, Fighter, Fourth),
	windRider(Elf, Fighter, Fourth),
	moonlightSentinel(Elf, Fighter, Fourth),
	mysticMuse(Elf, Mystic, Fourth),
	elementalMaster(Elf, Mystic, Fourth),
	evaSaint(Elf, Priest, Fourth),
	
	shillienTemplar(DarkElf, Fighter, Fourth),
	spectralDancer(DarkElf, Fighter, Fourth),
	ghostHunter(DarkElf, Fighter, Fourth),
	ghostSentinel(DarkElf, Fighter, Fourth),
	stormScreamer(DarkElf, Mystic, Fourth),
	spectralMaster(DarkElf, Mystic, Fourth),
	shillienSaint(DarkElf, Priest, Fourth),
	
	titan(Orc, Fighter, Fourth),
	grandKhavatari(Orc, Fighter, Fourth),
	dominator(Orc, Mystic, Fourth),
	doomcryer(Orc, Mystic, Fourth),
	
	fortuneSeeker(Dwarf, Fighter, Fourth),
	maestro(Dwarf, Fighter, Fourth),
	
	dummyEntry31(null, null, null),
	dummyEntry32(null, null, null),
	dummyEntry33(null, null, null),
	dummyEntry34(null, null, null),
	
	maleSoldier(Kamael, Fighter, First),
	femaleSoldier(Kamael, Fighter, First),
	trooper(Kamael, Fighter, Second),
	warder(Kamael, Fighter, Second),
	berserker(Kamael, Fighter, Third),
	maleSoulbreaker(Kamael, Fighter, Third),
	femaleSoulbreaker(Kamael, Fighter, Third),
	arbalester(Kamael, Fighter, Third),
	doombringer(Kamael, Fighter, Fourth),
	maleSoulhound(Kamael, Fighter, Fourth),
	femaleSoulhound(Kamael, Fighter, Fourth),
	trickster(Kamael, Fighter, Fourth),
	inspector(Kamael, Fighter, Third),
	judicator(Kamael, Fighter, Fourth),
	
	dummyEntry35(null, null, null),
	dummyEntry36(null, null, null),
	
	// Awakening
	sigelKnight(null, Fighter, Awaken),
	tyrrWarrior(null, Fighter, Awaken),
	othellRogue(null, Fighter, Awaken),
	yulArcher(null, Fighter, Awaken),
	feohWizard(null, Mystic, Awaken),
	issEnchanter(null, Fighter, Awaken),
	wynnSummoner(null, Mystic, Awaken),
	aeoreHealer(null, Priest, Awaken);
	
	private Race _race;
	private ClassLevel _level;
	private ClassType _type;
	
	private static final Set<PlayerClass> mainSubclassSet;
	private static final Set<PlayerClass> neverSubclassed = EnumSet.of(Overlord, Warsmith);
	
	private static final Set<PlayerClass> subclasseSet1 = EnumSet.of(DarkAvenger, Paladin, TempleKnight, ShillienKnight);
	private static final Set<PlayerClass> subclasseSet2 = EnumSet.of(TreasureHunter, AbyssWalker, Plainswalker);
	private static final Set<PlayerClass> subclasseSet3 = EnumSet.of(Hawkeye, SilverRanger, PhantomRanger);
	private static final Set<PlayerClass> subclasseSet4 = EnumSet.of(Warlock, ElementalSummoner, PhantomSummoner);
	private static final Set<PlayerClass> subclasseSet5 = EnumSet.of(Sorceror, Spellsinger, Spellhowler);
	
	private static final EnumMap<PlayerClass, Set<PlayerClass>> subclassSetMap = new EnumMap<>(PlayerClass.class);
	
	static {
		Set<PlayerClass> subclasses = getSet(null, Third);
		subclasses.removeAll(neverSubclassed);
		
		mainSubclassSet = subclasses;
		
		subclassSetMap.put(DarkAvenger, subclasseSet1);
		subclassSetMap.put(Paladin, subclasseSet1);
		subclassSetMap.put(TempleKnight, subclasseSet1);
		subclassSetMap.put(ShillienKnight, subclasseSet1);
		
		subclassSetMap.put(TreasureHunter, subclasseSet2);
		subclassSetMap.put(AbyssWalker, subclasseSet2);
		subclassSetMap.put(Plainswalker, subclasseSet2);
		
		subclassSetMap.put(Hawkeye, subclasseSet3);
		subclassSetMap.put(SilverRanger, subclasseSet3);
		subclassSetMap.put(PhantomRanger, subclasseSet3);
		
		subclassSetMap.put(Warlock, subclasseSet4);
		subclassSetMap.put(ElementalSummoner, subclasseSet4);
		subclassSetMap.put(PhantomSummoner, subclasseSet4);
		
		subclassSetMap.put(Sorceror, subclasseSet5);
		subclassSetMap.put(Spellsinger, subclasseSet5);
		subclassSetMap.put(Spellhowler, subclasseSet5);
	}
	
	PlayerClass(Race pRace, ClassType pType, ClassLevel pLevel) {
		_race = pRace;
		_level = pLevel;
		_type = pType;
	}
	
	public final Set<PlayerClass> getAvailableSubclasses(L2PcInstance player) {
		Set<PlayerClass> subclasses = null;
		
		/*
		 * l2jtw start if (_level == Third)
		 */
		if ((_level == Third) || (_level == Awaken))
		// l2jtw end
		{
			if (player.getRace() != Kamael) {
				subclasses = EnumSet.copyOf(mainSubclassSet);
				
				subclasses.remove(this);
				
				switch (player.getRace()) {
					case Elf:
						subclasses.removeAll(getSet(DarkElf, Third));
					break;
					case DarkElf:
						subclasses.removeAll(getSet(Elf, Third));
					break;
				}
				
				subclasses.removeAll(getSet(Kamael, Third));
				
				Set<PlayerClass> unavailableClasses = subclassSetMap.get(this);
				
				if (unavailableClasses != null) {
					subclasses.removeAll(unavailableClasses);
				}
				
				// rocknow-God-Start
				if (player.getBaseClass() >= 139) {
					switch (player.getBaseClass()) {
						case 139:
							subclasses.removeAll(EnumSet.of(Paladin));
							subclasses.removeAll(EnumSet.of(DarkAvenger));
							subclasses.removeAll(EnumSet.of(TempleKnight));
							subclasses.removeAll(EnumSet.of(ShillienKnight));
						break;
						case 140:
							subclasses.removeAll(EnumSet.of(Gladiator));
							subclasses.removeAll(EnumSet.of(Warlord));
							subclasses.removeAll(EnumSet.of(Destroyer));
							subclasses.removeAll(EnumSet.of(Tyrant));
						break;
						case 141:
							subclasses.removeAll(EnumSet.of(TreasureHunter));
							subclasses.removeAll(EnumSet.of(BountyHunter));
							subclasses.removeAll(EnumSet.of(Plainswalker));
							subclasses.removeAll(EnumSet.of(AbyssWalker));
						break;
						case 142:
							subclasses.removeAll(EnumSet.of(Hawkeye));
							subclasses.removeAll(EnumSet.of(SilverRanger));
							subclasses.removeAll(EnumSet.of(PhantomRanger));
						break;
						case 143:
							subclasses.removeAll(EnumSet.of(Sorceror));
							subclasses.removeAll(EnumSet.of(Necromancer));
							subclasses.removeAll(EnumSet.of(Spellsinger));
							subclasses.removeAll(EnumSet.of(Spellhowler));
						break;
						case 144:
							subclasses.removeAll(EnumSet.of(Prophet));
							subclasses.removeAll(EnumSet.of(Warcryer));
							subclasses.removeAll(EnumSet.of(Swordsinger));
							subclasses.removeAll(EnumSet.of(Bladedancer));
						break;
						case 145:
							subclasses.removeAll(EnumSet.of(Warlock));
							subclasses.removeAll(EnumSet.of(ElementalSummoner));
							subclasses.removeAll(EnumSet.of(PhantomSummoner));
						break;
						case 146:
							subclasses.removeAll(EnumSet.of(Bishop));
							subclasses.removeAll(EnumSet.of(ElvenElder));
							subclasses.removeAll(EnumSet.of(ShillienElder));
						break;
					}
				}
				// rocknow-God-End
			} else {
				subclasses = getSet(Kamael, Third);
				subclasses.remove(this);
				// Check sex, male subclasses female and vice versa
				// If server owner set MaxSubclass > 3 some kamael's cannot take 4 sub
				// So, in that situation we must skip sex check
				if (Config.MAX_SUBCLASS <= 3) {
					if (player.getAppearance().getSex()) {
						subclasses.removeAll(EnumSet.of(femaleSoulbreaker));
					} else {
						subclasses.removeAll(EnumSet.of(maleSoulbreaker));
					}
				}
				if (!player.getSubClasses().containsKey(2) || (player.getSubClasses().get(2).getLevel() < 75)) {
					subclasses.removeAll(EnumSet.of(inspector));
				}
			}
		}
		return subclasses;
	}
	
	public static final EnumSet<PlayerClass> getSet(Race race, ClassLevel level) {
		EnumSet<PlayerClass> allOf = EnumSet.noneOf(PlayerClass.class);
		
		for (PlayerClass playerClass : EnumSet.allOf(PlayerClass.class)) {
			if ((race == null) || playerClass.isOfRace(race)) {
				if ((level == null) || playerClass.isOfLevel(level)) {
					allOf.add(playerClass);
				}
			}
		}
		return allOf;
	}
	
	public final boolean isOfRace(Race pRace) {
		return _race == pRace;
	}
	
	public final boolean isOfType(ClassType pType) {
		return _type == pType;
	}
	
	public final boolean isOfLevel(ClassLevel pLevel) {
		return _level == pLevel;
	}
	
	public final ClassLevel getLevel() {
		return _level;
	}
	
}
