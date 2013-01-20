# Stolen Dignity version 0.1 
# by DrLecter
import sys
from com.l2jserver import Config
from com.l2jserver.gameserver.model.quest import State
from com.l2jserver.gameserver.model.quest import QuestState
from com.l2jserver.gameserver.model.quest.jython import QuestJython as JQuest

#Quest info
QUEST_NUMBER,QUEST_NAME,QUEST_DESCRIPTION = 386,"StolenDignity","被奪走的尊嚴"
qn = "386_StolenDignity"

#Variables
DROP_RATE=15*Config.RATE_QUEST_DROP
REQUIRED_ORE=100 #how many items will be paid for a game (affects onkill sounds too)

#Quest items
SI_ORE = 6363

#Rewards
REWARDS=[5529]+range(5532,5540)+range(5541,5549)+[8331]+range(8341,8343)+[8346]+[8349]+range(8712,8723)
 
#Messages
error_1   = "Low_level.htm"
start     = "Start.htm"
starting  = "Starting.htm"
starting2 = "Starting2.htm"
binfo1    = "Bingo_howto.htm"
bingo     = "Bingo_start.htm"
bingo0    = "Bingo_starting.htm"
ext_msg   = "Quest_aborted.htm"  # pmq 修改

#NPCs
WK_ROMP = 30843

#Mobs
MOBS = [ 20670,20671,20954,20956,20958,20959,20960,20964,20969,20967,20970,20971,20974,20975,21001,21003,21005,21020,21021,21089,21108,21110,21113,21114,21116 ]
MOB={
    20670:14,
    20671:14,
    20954:11,
    20956:13,
    20958:13,
    20959:13,
    20960:11,
    20964:13,
    20969:19,
    20967:18,
    20970:18,
    20971:18,
    20974:28,
    20975:28,
    21001:14,
    21003:18,
    21005:14,
    21020:16,
    21021:15,
    21089:13,
    21108:19,
    21110:18,
    21113:25,
    21114:23,
    21116:25    
}
MAX = 100

#templates
number  = ["二","三","四","五","六"]
header  = "<html><body>負責貨物的倉庫管理員倫夫:<br><br>"
link    = "<a action=\"bypass -h Quest 386_StolenDignity "
middle  = "<br><br>先參考一下，現在的情況如下：<br><br><table border=1 width=120 hieght=64>"
footer  = "</table></body></html>"
loser   = "你這個人真沒運氣。在下面賓果板上的紅色數字是你選擇的。你看了就知道，一條線都沒有完成耶。其實，沒完成任何一條線比完成三條線還要難耶。<br>一般來講，在沒完成任何一條線時，是不給任何補償的，但看你可憐就讓我來發發慈悲吧。你等一下。<br>.<br>.<br>.<br>來，把這個拿走吧。希望這個對你那艱難的人生帶來一點幫助。<br><br>"
winner  = "嗄？完成了三條線啊！你看一下，下面的賓果板上紅色的數字是你選擇的。就如你所看到的，順利完成了三條線耶。恭喜你！按照約定，公會準備的報酬就是製作A級武器時所需的材料吧。請等一下。<br>.<br>.<br>.<br>來，把這個拿走吧。希望這個對你那艱難的人生帶來一點幫助。<br><br>"
average = "咦。真可惜不成3條線。下次再來挑戰吧。讓你看一下，下面的賓果板上紅色的數字是你選擇的。<br><br>"

def partial(st) :
    html = "個數字。<br><br>"
    for z in range(1,10) :
        html += link+str(z)+"\">"+str(z)+"</a>&nbsp;&nbsp;&nbsp;&nbsp;"
    html += middle
    chosen = st.get("chosen").split()
    for y in range(0,7,3) :
        html +="<tr>"
        for x in range(3) :
            html+="<td align=center>"+chosen[x+y]+"</td>"
        html +="</tr>"
    html += footer
    return html

def result(st) :
    chosen = st.get("chosen").split()
    grid = st.get("grid").split()
    html = "<table border=1 width=120 height=64>"
    for y in range(0,7,3) :
        html +="<tr>"
        for x in range(3) :
            html+="<td align=center>"
            if grid[x+y] == chosen[x+y] :
                html+="<font color=\"FF0000\"> "+grid[x+y]+" </font>"
            else :
                html+=grid[x+y]
            html+="</td>"
        html +="</tr>"
    html += footer
    return html


class Quest (JQuest) :

 def __init__(self,id,name,descr): JQuest.__init__(self,id,name,descr)

 def onEvent (self,event,st) :
    htmltext = event
    if event == "yes" :
       htmltext = starting
       st.setState(State.STARTED)
       st.set("cond","1")
       st.playSound("ItemSound.quest_accept")
    elif event == "binfo" :
        htmltext = binfo1
    elif event == "0" :
       htmltext = ext_msg
       st.playSound("ItemSound.quest_finish")  # pmq 修改
       st.exitQuest(1)
    elif event == "bingo" :
       if st.getQuestItemsCount(SI_ORE) >= REQUIRED_ORE :
         st.takeItems(SI_ORE,REQUIRED_ORE)
         htmltext = bingo0
         grid = range(1,10) #random.sample(xrange(1,10),9) ... damn jython that makes me think that inefficient stuff
         for i in range(len(grid)-1, 0, -1) :
           j = self.getRandom(8)
           grid[i], grid[j] = grid[j], grid[i]
         for i in range(len(grid)): grid[i]=str(grid[i])
         st.set("chosen","? ? ? ? ? ? ? ? ?")
         st.set("grid"," ".join(grid))
         st.set("playing","1")
       else :
         htmltext = "You don't have required items"
    else :
       for i in range(1,10) :
          if event == str(i) :
            if st.getInt("playing"):
              chosen = st.get("chosen").split()
              grid = st.get("grid").split()
              if chosen.count("?") >= 3 :
                  chosen[grid.index(str(i))]=str(i)
                  st.set("chosen"," ".join(chosen))
                  if chosen.count("?")==3 :
                      htmltext = header
                      row = col = diag = 0
                      for i in range(3) :
                          if ''.join(chosen[3*i:3*i+3]).isdigit() : row += 1
                          if ''.join(chosen[i:9:3]).isdigit() : col += 1
                      if ''.join(chosen[0:9:4]).isdigit() : diag += 1
                      if ''.join(chosen[2:7:2]).isdigit() : diag += 1
                      if (col + row + diag) == 3 :
                          htmltext += winner
                          st.giveItems(REWARDS[self.getRandom(len(REWARDS))],4)
                          st.playSound("ItemSound.quest_finish")
                      elif (diag + row + col) == 0 :
                          htmltext += loser
                          st.giveItems(REWARDS[self.getRandom(len(REWARDS))],10)
                          st.playSound("ItemSound.quest_jackpot")
                      else :
                          htmltext += average
                          st.playSound("ItemSound.quest_giveup")
                      htmltext += result(st)
                      for var in ["chosen","grid","playing"]:
                          st.unset(var)
                  else :
                      htmltext = header+"來，請選擇第"+number[8-chosen.count("?")]+partial(st)
            else:
              htmltext = "<html><body>目前沒有執行任務，或條件不符。</body></html>"
    return htmltext

 def onTalk (self,npc,player):
   htmltext = "<html><body>目前沒有執行任務，或條件不符。</body></html>"
   st = player.getQuestState(qn)
   if not st : return htmltext

   npcId = npc.getNpcId()
   id = st.getState()
   if id == State.CREATED :
      st.set("cond","0")
      if player.getLevel() < 58 :
         st.exitQuest(1)
         htmltext = error_1
      else :
         htmltext = start
   elif id == State.STARTED :
      if st.getQuestItemsCount(SI_ORE) >= REQUIRED_ORE :
         htmltext = bingo
      else :
         htmltext = starting2 
   return htmltext

 def onKill(self,npc,player,isPet):
     partyMember = self.getRandomPartyMemberState(player, State.STARTED)
     if not partyMember : return
     st = partyMember.getQuestState(qn)
     numItems,chance = divmod(MOB[npc.getNpcId()]*Config.RATE_QUEST_DROP,MAX)
     prevItems = st.getQuestItemsCount(SI_ORE)
     if self.getRandom(MAX) < chance :
        numItems = numItems + 1
     if numItems != 0 :   
        st.giveItems(SI_ORE,int(numItems))
        if int(prevItems+numItems)/REQUIRED_ORE > int(prevItems)/REQUIRED_ORE :
           st.playSound("ItemSound.quest_middle")
        else :
           st.playSound("ItemSound.quest_itemget")
     return  

# Quest class and state definition
QUEST       = Quest(QUEST_NUMBER, str(QUEST_NUMBER)+"_"+QUEST_NAME, QUEST_DESCRIPTION)


# Quest NPC starter initialization
QUEST.addStartNpc(WK_ROMP)
# Quest initialization
QUEST.addTalkId(WK_ROMP)

for i in MOBS :
  QUEST.addKillId(i)