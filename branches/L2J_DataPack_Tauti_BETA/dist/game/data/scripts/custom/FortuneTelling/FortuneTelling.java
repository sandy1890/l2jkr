/*
 * Copyright (C) 2004-2013 L2J DataPack
 * 
 * This file is part of L2J DataPack.
 * 
 * L2J DataPack is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 * 
 * L2J DataPack is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU
 * General Public License for more details.
 * 
 * You should have received a copy of the GNU General Public License
 * along with this program. If not, see <http://www.gnu.org/licenses/>.
 */
package custom.FortuneTelling;

import com.l2jserver.gameserver.model.actor.L2Npc;
import com.l2jserver.gameserver.model.actor.instance.L2PcInstance;
import com.l2jserver.gameserver.model.quest.Quest;
import com.l2jserver.gameserver.model.quest.QuestState;
import com.l2jserver.gameserver.network.serverpackets.NpcHtmlMessage;

/**
 * @authors Kerberos (python), Nyaran (java) Update FORTUNE by pmq 11-08-2011
 */
public class FortuneTelling extends Quest {
	
	private static final String qn = "FortuneTelling";
	
	private static final int ADENA = 57;
	private static final int COST = 1000;
	
	private static final int NPC = 32616;
	
	private static final String[] FORTUNE =
	{
		"立下的目標將受到阻礙，或受到現實上的限制。",
		"朝目標邁進的過程當中，或許會發生意想不到的問題。",
		"事情進展不順利，會造成煩躁和不安。",
		"身陷困境，因而判斷能力變得模糊，做出不合常理的事，須謹慎。",
		"遇見值得信賴的人，或得到好機會。",
		"陷入低潮的生活，將會逐漸好轉。",
		"人氣沖天，會受到周圍的注目。",
		"魚兒上鉤之運。",
		"擅自處理事情，將會招來糾紛。",
		"兼具智慧和創意，將會獲得期盼的成果。",
		"夙夜匪懈的促進工作，便能達到目標。",
		"不投機取巧或耍手段而正當行事，便會得到幫助。",
		"立下目標，勇於付諸行動，便會有好結果。",
		"不管面臨多麼困難的事情，萬事皆迎刃而解。",
		"或許會遇到困難，宜慎重考慮並堅定意志。",
		"隨時留意是否尚有未經處理而置之不理的問題。",
		"窘困的生活中，將會帶來滾滾財源。",
		"不幸的環境中籠罩幸運，將得到財富與名譽。",
		"遇到困境時，得到突如其來的幫助，將重尋希望。",
		"面對重要的大事，可以獲得成功。",
		"突遇貴人，可為你洗去心中的寂寞和矛盾。",
		"在周圍的鼓勵之下，萬事皆會得到力量。",
		"萬事皆會迎刃而解。",
		"保持圓滿的人際關係，便會遇上能讓你提高身價的人。",
		"將遇見對你有幫助的人，隨時抱以合作的態度。",
		"勿以事事順心而喜出望外，保持節制的生活。",
		"對事情、生活和人際關係宜採取常規而非權宜之計，那麼自然會有好事發生。",
		"周邊環境的時機已成，進行的事將會變得更靈活。",
		"得到精神上和物質上的幫助，馬到成功之運。",
		"具有創意的才智，將得到人人的喜愛。",
		"人人將會爭先恐後的前來相助。",
		"將會遇上一同出遊的人。",
		"可遇見各方面層次不同的人來建立緣分。",
		"需要不斷閱讀和探討，萬事宜抱以認真的態度。",
		"春光洋溢，蝴蝶坐落於花朵之相。",
		"和睦安定的生活中，期盼的事情將會圓滿如意。",
		"以溫暖對待周圍，愛情便會萌芽而出。",
		"認真完成自己份內的事，便能贏得信賴，且能更上一層樓。",
		"若覬覦幸運和僥倖，且過分貪婪，萬事皆會辜負期待。",
		"勿怠慢於結識新人。",
		"箭得弓，如魚得水之數。",
		"凋零的樹枝上開花結果之數。",
		"對於自己努力的結果，將會得到報酬。",
		"萬事只要具備堅強的信念，便會得到極大的成果。",
		"你的忠誠態度，使周圍對你感到魅力十足。",
		"盡量不要相信他人的話，相信自己才是重要的。",
		"改變觀看事物的觀點，想出有創意的點子，才能得到幫助。",
		"不要急於得到結果，放鬆心情便會有好結果。",
		"死者將會起死回生。",
		"將會發生令人驚訝的事情。",
		"突如其來的幸運展現眼前，有望邁向成功之路。",
		"幾乎放棄的事情將遇上奇蹟，不宜放棄，堅持到底。",
		"對於自己立下的目標，須堅持到底並全力以赴。",
		"偶然相遇貴人，將會得到生活上的活力。",
		"在人生路途上，將會得到莫大的幫助。",
		"可以偶然得到飛黃騰達的機會。",
		"飢餓的老鷹得到肉食之數。",
		"窘困的生活中，將得到錢財和食物。",
		"從他人得到物質上和精神上的幫助，從而可以脫離困境。",
		"不放棄夢想且確立目標，某人就會伸出救援與愛情之手。",
		"保持認真和誠實的態度，便可得到周圍的信任。",
		"持續獨立生活的態度。",
		"車輛兩旁沒有車輪。",
		"已確立目標，但受到現實的限制，因而遇上瓶頸。",
		"雖有朝目標奔馳，但成果並太不理想。",
		"周圍的障礙物太多，需考慮的事項增多。",
		"不顧前後來促進事情，將會遭遇失敗。",
		"萬事若不慎重，便會失去周圍的信任。",
		"慎重地回顧自我，等待機會來臨。",
		"貧窮的書生得到俸祿。",
		"書生金榜題名，將得到財富與名譽。",
		"實現自己的抱負和夢想之數。",
		"周圍糾纏複雜的問題將逐一解開。",
		"不再為往事煩惱，朝一個目標向前邁進，便能得到好結果。",
		"老舊的習慣最好大方地拋棄。",
		"抱以責任心來處理份內的事固然重要，但也需要積極地向夥伴伸出援手。",
		"鯉魚躍龍門。",
		"自己期盼的事情將會圓滿成功，並得到名譽與財富。",
		"事情將會按照計畫的方向進行。",
		"在意想不到的地方，將會得到金錢或新的機會。",
		"將會得到很多的建議，但宜慎重考慮。",
		"盡量不要好管閒事。",
		"萬事將迎刃而解，但勿抱以安心或低潮的態度。",
		"對心儀的人付出無盡的愛，便會得到無盡的報答。",
		"病災得到靈藥。",
		"病入膏肓，但求得靈藥之後，必能轉危而安。",
		"在艱難的情況下突遇貴人，將會達到願望。",
		"在旅途上，將會遇到一兩次的難關。",
		"不懼挫折且面帶微笑，便會得到周圍的信任和幫助。",
		"與其給予變化，不如安享生活。",
		"需以慎重、準確、安全為原則來促進行事。",
		"如同缺乏手臂，無法促進行事。",
		"失去動力，徬徨之數。",
		"到處發生問題，難以專注於自己的事情上。",
		"自己的功勞將會轉讓給別人。",
		"不確定的事情，最好不要開始進行。",
		"為了萬一，隨時都要做好防範的準備。",
		"遇上困難也不要放棄，努力堅持到底，便會得到肯定。",
		"如龍得角，錦上添花，將會具備完善的自我。",
		"烈火見真金，將逐漸發揮自己的價值。",
		"比他人取得更多的情報，隨時準備探討新事物，便會提高自己的價值。",
		"氣勢磅礡地促進事情或建立人際關係，便會得到好結果。",
		"過信自己，將會引來禍害，須與夥伴培養齊心協力的態度。",
		"龍含如意珠。",
		"龍含如意珠升天，將會實現自己的夢想和目標。",
		"不論事情、興趣、職業、家人和戀人方面，皆會充滿幸運。",
		"萬事皆會乘風破浪。",
		"意想不到的財源將會滾滾而進，上上之數。",
		"不顧一切貪心地張羅事情，將會得到意外的結果。",
		"凡事須三思而後行。",
		"樹之無根也，成果不紮實。",
		"只有努力沒有結果。",
		"生活變得窘困，將會遇上瓶頸。",
		"平常順利的事，經常也會有不如意的時候。",
		"成果沒有預料中的好，導致悶悶不樂。",
		"因疲憊而對周圍情緒化，將導致人際關係決裂。",
		"不宜過度貪婪，宜為小事知足，培養樸素觀念。",
		"得到人心，卻又失去人心。",
		"待人忠厚，不論對同事或萬事，皆大歡喜之數。",
		"若待人過度計較利害關係且沒風度，便會遭口舌之災，並扁低自己的價值。",
		"處處替他人著想，以真心對待。",
		"不得放鬆。",
		"擅自處理事情將會招來失敗，積極收斂周圍的意見。",
		"看不見前方的盲人，將直接進門。",
		"事情茫然無知，將會悶悶不樂。",
		"進行中的事情陷入謎底，將會感到鬱悶。",
		"雖然全力以赴，但卻因意想不到的問題而遇上瓶頸。",
		"萬事失去自信，向他人求助的事情也會隨之增加。",
		"消極行事，則無法自我發展，須以信念行事。",
		"不明確的事情盡量別做，以尋找值得信賴的人為重。",
		"老鷹無利爪，狩獵不順利。",
		"期盼的事情不太順利之數。",
		"因過度自信而貪於工作，反而弄巧成拙，須謹慎。",
		"周圍的狀況對自己不利，因而會操之過急。",
		"最好具備一下能夠預防壞事發生的能力。",
		"謹慎我行我素的行為，須以溫暖安撫周圍的心。",
		"過於複雜而很好。",
		"不好的事情將會發生，處於困境之數。",
		"將發生人際關係脫節的狀況。",
		"就算進行的事情發生問題，亦勿採用權宜之計，須從問題的根本慢慢理清。",
		"克制情緒表達，須抱以平常心。",
		"與周邊人多多交談，便能得到成功的情報。",
		"萬事抱以信心，再付諸於行動。",
		"小孩得到寶貝。",
		"如同小小年紀獲得大財富，在意想不到的地方將獲得錢財和好機會之數。",
		"日常生活順利，而且會得到意外之財和成果。",
		"不經努力也可得到暫時性的幸運。",
		"認真建立計畫，但盡速付諸於行動。",
		"將會改善小小的缺陷，並用觀測和分析未來的能力提高自己的價值。",
		"若將自己的過失合理化，便會犯下無可挽回的更大的錯誤。",
		"不要迴避意外的發現或新的經驗，儘管接受吧。",
		"即使事情不如計畫，也不要著急。",
		"如果不明確的表達意思，便會容易被周圍事物所牽連，須謹慎。",
		"就算一無所有，也可豐衣足食地過活。",
		"用辛苦賺來的錢幫助他人，因此可以得到人人的愛戴。",
		"身心獲得平安。",
		"光是發呆，只會引向自己不願意面對的狀況。",
		"能夠遇見很多新人，但不易找到合你心意的人。",
		"將發生一些向周圍得到安慰的事情。",
		"即使日常生活感到厭煩，但現在不適合突如其來的變化。",
		"為自己所花的錢，將會變成另一種投資再回到自己的手中。",
		"為他人所花的錢只會消失而飛，小心勿濫用在他人身上。",
		"將會有不必要的支出，須謹慎。",
		"有橫財運，參加看看贈獎之類的活動。",
		"在偶然的機會下可以獲得好運。",
		"心儀的人，自然會主動地來接近你。",
		"別在意他人的評價，維持自己的行為模式，便會得到好結果。",
		"突如其來的幸運，會因為失言而遠走高飛，須謹慎。",
		"過分自信而好高鶩遠，將會遭到狼狽不堪的下場。",
		"若需定下重要的決策，還是稍微延後一下為妙。",
		"將會與長輩或熟人發生口角。",
		"會用言語來傷人或傷到自己，須謹慎。",
		"放大話之後，可能需要為解決此事而掏腰包，須謹慎。",
		"若不機伶地迴避找麻煩的人，將會導致大吵架，需要特別謹慎。",
		"過強的主張會讓他人引起反感，須放低聲音。",
		"將會遭口舌之災，若不是非做不可，切勿做些引起他人誤會的事。",
		"或許會遺失某些東西，小心保管以免遺失。",
		"要懂得隨聲附和對方。",
		"人際關係可能會遇上瓶頸，須特別留意與他人之間的相會或交談。",
		"若面臨需要定下重要決策的時候，別在意他人的看法，宜正確掌握自己的意願來做決定。",
		"飽讀書香後出門旅遊，幸運將隨之而來。",
		"想法和新點子不斷湧現，盡速前往向你請求建議的地方。",
		"根據你的建議，或許會轉折對方的人生。",
		"不僅是對於近日的未來，現在也很適合為遙遠的未來做打算。",
		"經過一番苦思而建立的計畫，對日後將會有莫大的幫助。",
		"或許會與熟人發生口角，須先忍耐並靜觀其變。",
		"就算需要金錢，亦勿求助於他人，不僅傷到自尊心，亦不能將錢財到手。",
		"小小的偶然將會延續為緣分。",
		"不管面對哪一件事，固執將會引來風險。",
		"輕浮將招來禍害，少說話且行為舉止要有風度。",
		"有極高的機率遇上不同類型的異性。",
		"對錢財的貪心使得你想要大撈一筆，但卻會招來禍害。",
		"充滿損失運，投資風險大，珍惜手中之財。",
		"財運不佳，即使他人向你伸手求助，也要懂得迴避。",
		"今日事若不今日畢，將會招來更大的困難。",
		"將會遇到困難，但抱以責任感行事，便會得到好結果。",
		"雖然深感負擔，但需加重責任，日後便會得到利益。",
		"若不處理好周邊環境，便會造成精神狀態不佳，導致損失慘重，須謹慎。",
		"與其追趕他人，不如等待他人，那麼幸福便會在你身邊。",
		"不管再怎麼慌張，也不要先伸手求助，反而會造成關係疏遠。",
		"財運上升，多少會有點成果。",
		"依照當時的心情隨興行動，便會處於危險。",
		"與長輩相處時，若做出稍偏幼稚的行為，可能會糟蹋一切。",
		"事情逐漸好轉，但不得因此囂張，否則好運將離你而去。",
		"事情好轉時，須抱以謙虛的態度，幸運才會持久。",
		"新人的登場，造成三角關係的局面。",
		"尋找與自己相同類型的人，便會有好事發生。",
		"將會接受合夥的建議，但情況不佳，最好推辭。",
		"合夥運不佳，若有人催促，最好不要合作。",
		"與志氣相投的人努力建立人際關係，日後便會得到莫大的幫助。",
		"有人會說你單純，但這不代表好意，須謹慎防備。",
		"被騙的機率大。若被他人看扁會造成損失慘重，須提起精神。",
		"決定運不佳，勿以主觀判斷事物，須參考普遍妥當的常識來做判斷。",
		"因心軟可能會陷入困境，需要固執已見的時候，宜採取堅持態度。",
		"須提防話多且好玩的人，否則會因此招來禍害。",
		"如同沒玩過賭博的人僥倖贏錢般，就因為你是新手，因此會得到幸運。",
		"財運佳，但需要知足後退。",
		"過度貪心，導致連滾進的錢財也會失去。",
		"即使一人能處理的事，也最好與他人一同處理。",
		"與他人的和諧宜排列優先，固執會讓你陷入困境。",
		"會看到熟人新的一面。",
		"先拋開成見，嘗試接觸與自己稍微不同類型的人。",
		"具有領袖特質，將得到很多屬下，但會有點吃力。",
		"財運上升，雖然會有一點支出，但實際進帳的錢會增多，因此負擔將不沉重。",
		"財運極佳或極凶，須謹慎。",
		"芝麻小事也會拉開與熟人的距離，須謹慎。",
		"與新人之間有愛情運。",
		"幫助他人便能得到更大的幸運。",
		"會有失戀的可能性，須盡心盡力，勿引發誤會。",
		"就算讓你十分感動，也不得馬上信任。",
		"笑容招來福氣。",
		"小小的損失，最好立刻忘記。",
		"無法明確表達自己的意思，因此很容易產生誤會。",
		"人山人海之處，將會有幸運來臨。",
		"最好避免開門見山的方式。",
		"與其虛榮，不如實在，須放開遠大的眼光來計畫行事。",
		"臉皮厚一點，將有助於建立人際關係。",
		"接受簡單的打賭，便會發生愉快的事情。",
		"只要是有關人際關係的事情，切勿被情感糾纏，須冷靜對待。",
		"處理事情時不管輕重，須按照順序來處理。",
		"做好事前的調查，依照信念行事，人人便會跟隨你。",
		"多虧些許的幽默，可以得到周圍的注目。",
		"此時機不適合定下重要決策，小心被迷惑，迴避金錢交易。",
		"接納熟人的建議並牢記在心。",
		"不管是什麼問題，只要站在第三者的立場來觀察，便能得到圓滿的結局。",
		"與熟人的交易，不僅讓你不好開口，還會造成頭痛因素，鄭重地推辭，並接受其他的機會。",
		"如果沒有考慮到基礎，不管過程進展如何，結局都會發生問題，須謹慎。",
		"須公私分明，才不會弄巧成拙。",
		"如果事情一直不順，採取不合規則的方法也無妨。",
		"若忽略小事，便難以預防無意中發生的情況。",
		"抱以悠閒的心情，最好不要干涉不必要的他人問題。",
		"保持中立也不為過，但與其含糊不清，不如確實表達意思，會更有幫助。",
		"與過去相關的事情，會有可能引起誤會，謹慎行事。",
		"因情感糾纏可能會浪費時間，須留意時間上的管理。",
		"行俠仗義固然是好，但切勿因此愛出風頭或顧面子。",
		"先提出和解，才能與發生誤會的人保持良好關係。",
		"發現對方的行為讓人納悶時，亦可親自出馬代替解決。",
		"或許會發生一些損失，但可當作是對自己的投資。",
		"貪婪會招來更大的貪念，須適可而止，知足常樂。",
		"盲目處理事情，可能會招來口角，因此須觀察周圍的狀況好好地進行規劃。",
		"在指責他人之前，須先回顧自己的問題。",
		"若是為了脫離危險而使出的臨機應變，那麼須花費更大的心思來處理善後。",
		"對於新挑戰的慾望高，但須考慮大範圍的問題。",
		"拋下自尊心，便能容易解決誤會。",
		"切勿驕傲，以謙虛的態度傾聽周圍的勸告。",
		"在人生中的上坡能夠顧慮到走下坡的情況，便能得到平安。",
		"播下多少的種，便會收穫多少，須按照計畫認真行事。",
		"隨興決定的事情，只會造成精神上和金錢上的損失，需要有徹底的準備。",
		"越是在乎他人的想法，越會延遲結果。",
		"熟人之間需要相輔相助。",
		"如果留戀眼前的小小利益，便會容易造成不自在的關係。",
		"若有打賭，便不宜太過在意其結果。",
		"容易發生小小的意外和口角，須抱以寬容的心。",
		"若不遵守承諾，便會陷入困境。",
		"容易忘東忘西，最好保留交易。",
		"與他人相互比較，便能得到幫助。",
		"失敗為成功之母，將會面臨苦盡甘來的日子。",
		"面對異性須保持風度，並踏上正道。",
		"從芝麻小事也可尋找快樂。",
		"結果將會圓滿如意，須抱以自信行事。",
		"信用方面，如果自認不愧於世，便可堂堂正正的面對。",
		"與熟人相關的事情，或許會讓自己孤立，因此該遵守的還是得遵守。",
		"若過於在乎結果，便會連續發生不好的事情。",
		"中途放棄，便會導致難以妥善處理善後，須堅持到底。",
		"在團體內行動，難以得到利益。",
		"與其出頭逞強，不如退後一步來積極地處理狀況。",
		"善用情報，就有機會抓住小小的幸運。",
		"容易遺失物品，若是珍惜的物品，務必要慎重保管。",
		"努力的話，自然會得到相應的代價，須全力以赴。",
		"抱以新開始的心情來行事，便能迅速彌補不足的部分。",
		"若有困難，宜轉向全新的方向摸索。",
		"過度的貪婪，會將至今所累積的一掃而空。",
		"控制極端的想法，便能保持最佳心情。",
		"稍一失神，就有可能遭口舌之災，須謹慎。",
		"好勝心十足，故不要放棄，須堅持到底。",
		"關心周圍的熟人並親切相待，日後便能輕易得到幫助。",
		"秉持積極的想法，便會帶來好結果。",
		"需要包容熟人的過錯。",
		"將會有意想不到的支出，須留意。",
		"若不開懷心胸來解決問題，將會產生後遺症，與其相互爭論，不如關懷對方。",
		"裝飾品之類的物品將會帶來幸運。",
		"自愛、謙虛才會帶來好結果。",
		"因小小誤會，或許會發生情感上的爭執。",
		"與其勉強進行，不如利用充分的時間圓滿進行。",
		"與其滿足自己的貪念，不如先關懷他人，便會得到好結果。",
		"前往從未去過的地方，便會得到幸運。",
		"在人少的地方，將會發生好事情。",
		"活潑固然是好，但一不小心便會誤解為是個輕浮的人而失去信用，因此保持穩重卻不失幽默才是個關鍵。",
		"中間過程雖有點疏忽，但只要妥善處理善後，便會得到好結果。",
		"工作量增加表示收獲也多，只要不怠慢，便能得到滿足的報酬。",
		"與其長期待在同一地方，不如忙碌地到處走動，便能得到幫助。",
		"獨自處理事情時，很容易陷入誘惑，須謹慎。",
		"就算是周圍的小事情也不要輕易疏忽，須洗耳恭聽。",
		"積少成多，芝麻小事也得珍惜。",
		"與其等待時機成熟，不如主動行事，便會得到更快的結果。",
		"小小的支出，或許會成為一個協助周圍的環節，切勿吝惜付出。",
		"易於受到誘惑，需要注意感情上的控制。",
		"認為小事而疏忽，便會招來狼狽不堪的結果，須謹慎。",
		"勿過度節省，該花費的時候也需要適當用錢。",
		"偏見在先，得小卻失大。",
		"香甜口味的飲食將會帶來幸運。",
		"將收回借出的錢，或對過去的損失得到補償。",
		"因基本上的問題將會發生一些摩擦。",
		"關心熟人的一舉一動，但切勿給予過度的關切。",
		"切勿將壓力表現出來，亦勿失去笑容。",
		"展現變化的面貌，便會得到幫助。",
		"徹底管理時間，便能得到期盼的結果。",
		"不能變通，便會陷入困境。",
		"稍一失神或過於安心便會失算，須保持冷靜的態度。",
		"昨夜若做了個惡夢，或許會傷到身體，須謹慎。",
		"財運佳，但被人情左右，將會招來損失，須謹慎。",
		"只要是有關心上人的事，便可隨心所欲地進行。",
		"與異性交談之後，將會彼此了解對方。",
		"投資在可以永存的物品上，便可得到利益。",
		"投資在可以享樂的事情上，便可得到利益。",
		"很多事情需要處理，最好勤快一點。",
		"面臨選擇的時刻時，與其選擇名譽，不如往實惠的方向邁進。",
		"就算做了善事也聽不到好話的就是金錢交易，最好還是拒絕。",
		"處處謹慎，避免對新人做錯事。",
		"會拖延時間的事情，就算再給充分的時間也一樣無法解決，故不要執著。",
		"不要去做讓步或虧損自己的事情。",
		"因緣良好之數，對異性表示關心也無妨。",
		"與其照自己的模式硬梆梆的行事，不如接受周圍的協助，便能取得一舉兩得的效果。",
		"說服對方，便能得到利益。",
		"不要勉強，抱以耐心等待，便會得到好機會。",
		"將從異性求得幸運。",
		"接受他人的委託，日後會有幸運跟隨。",
		"困於處境也不忘面帶笑容，幸運便會在眼前。",
		"如同鋼鐵見火，可以展現自己的存在價值。",
		"發現潛能，將會綻放自己的光彩。",
		"堅持完成艱辛的任務和考驗，不僅會帶來好的成果，還能發現自己另外一個能力。",
		"樂觀的態度和幽默感，將會帶給周圍快樂氣氛。",
		"智謀雙全，事事順心。",
		"將會遇到賢者，指引踏上正道。",
		"直覺和先天具有的觀察力，將會綻放光芒。",
		"將會對周圍帶來幸運。",
		"管理好瑣碎的情感，便能達到目標。",
		"突遇貴人，可以享受豐衣足食的生活。",
		"有很大的機率遇見具有物質魅力的異性。",
		"參與競爭並全力以赴，便能得到極大的成果。",
		"根據過去的所作所為，將會得到結果。",
		"將會發生與過去的自我和他人的狀況正好相反的情況。",
		"為了更高的價值，將會發生不惜犧牲的情況。",
		"失去物質，卻得到精神方面的東西。",
		"變化能力十足，可以嘗試新的挑戰或接受新的開始。",
		"將會受到欺詐或物質上的誘惑，須隱藏真實的內心，精打細算地行動。",
		"不要冒著風險魯莽行事。",
		"不要害怕變化，危機反而會轉化為時機。",
		"抱以自信與毅力行事，那麼就算在面臨不安的情況下，也能傑出的扮演好自己的角色。",
		"可以期待明朗且有希望的未來。",
		"休息，將會承諾更大的成長。",
		"積極活用肯定的價值觀。",
		"肯定的思考能力和活力十足的舉動，將會讓你變成華麗舞台上的主角。",
		"遭遇困難，但多虧對於自我的信賴和直覺，將會解決問題。",
		"萬事皆大歡喜，分享喜悅，就可得到更大的幸運。",
		"正當的評價和報酬，正等待著彌補過去的所作所為。",
		"若有陳舊的義務或債務，宜正當地結算還清，那麼便會得到嶄新的快樂。",
		"過度的謙虛反而會招來災殃。",
		"將會得到至今應得的報酬。",
		"沒有成就的努力，將從其他方面取得補償。",
		"再生能力強，最好是棄舊迎新。",
		"將會從周圍得到物質上或精神上的幫助。",
		"好消息正在等候。",
		"將遇見久別重逢的人。",
		"心地善良，或許會遭到損失。",
		"突遇貴人，將會得到莫大的幫助，因此即使差肩而過的人也得再次關注。"
	};
	
	/**
	 * @param questId
	 * @param name
	 * @param descr
	 */
	public FortuneTelling(int questId, String name, String descr) {
		super(questId, name, descr);
		addStartNpc(NPC);
		addTalkId(NPC);
	}
	
	@Override
	public String onTalk(L2Npc npc, L2PcInstance player) {
		QuestState st = player.getQuestState(qn);
		NpcHtmlMessage html = new NpcHtmlMessage(1);
		String PARENT_DIR = "data/scripts/custom/FortuneTelling/";
		
		if (st == null) {
			return null;
		}
		
		if (st.getQuestItemsCount(ADENA) < COST) {
			html.setFile(player.getHtmlPrefix(), PARENT_DIR + "lowadena.htm");
		} else {
			st.takeItems(ADENA, COST);
			html.setFile(player.getHtmlPrefix(), PARENT_DIR + "fortune.htm");
			html.replace("%fortune%", FORTUNE[getRandom(FORTUNE.length)]);
		}
		st.exitQuest(true);
		player.sendPacket(html);
		return null;
	}
	
	public static void main(String args[]) {
		new FortuneTelling(-1, qn, "custom");
	}
	
}