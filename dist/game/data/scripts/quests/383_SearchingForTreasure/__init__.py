# Made by mtrix & DrLecter
import sys
from com.l2jserver.gameserver.model.quest import State
from com.l2jserver.gameserver.model.quest import QuestState
from com.l2jserver.gameserver.model.quest.jython import QuestJython as JQuest

qn = "383_SearchingForTreasure"

SHARK=20314                 # 거대 백상어
PIRATES_TREASURE_MAP = 5915
PIRATES_CHEST = 31148       # 해적의 보물 상자
ESPEN = 30890               # 방어구 상인 에스펜

#itemid:[maxqty,chance in 1000].
REWARDS = {
    1338:[2,150], # 블루 오닉스
    3452:[1,140], # 메카닉 골렘 부속품
    1337:[1,130], # 에머랄드
    3455:[1,120], # 페리오스의 자기 항아리
    4409:[1,220], # 악보 - 결전의 테마
    4408:[1,220], # 악보 - 사랑의 테마
    4418:[1,220], # 악보 - 축하의 테마
    4419:[1,220], # 악보 - 희극의 테마
    956:[1,15],   # 갑옷 강화 주문서-D그레이드
    952:[1,8],    # 갑옷 강화 주문서-C그레이드
    2451:[1,2],   # 현자의 낡은 장갑
    2450:[1,2]    # 엘븐 미스릴 글로브
}

class Quest (JQuest) :

 def __init__(self,id,name,descr): JQuest.__init__(self,id,name,descr)

 def onEvent (self,event,st) :
     htmltext = event
     if event == "30890-03.htm" :
        st.set("cond","1")
        st.setState(State.STARTED)
     elif event == "30890-07.htm" :
        if st.getQuestItemsCount(PIRATES_TREASURE_MAP) :
           st.set("cond","2")
           st.takeItems(PIRATES_TREASURE_MAP,1)
           st.addSpawn(PIRATES_CHEST,106583,197747,-4209,900000)
           st.addSpawn(SHARK,106570,197740,-4209,900000)
           st.addSpawn(SHARK,106580,197747,-4209,900000)
           st.addSpawn(SHARK,106590,197743,-4209,900000)
           st.playSound("ItemSound.quest_accept")
        else:
           htmltext="퀘스트에 필요한 아이템을 갖고 있지 않습니다."
           st.exitquest(1)
     elif event == "30890-02b.htm":
        if st.getQuestItemsCount(PIRATES_TREASURE_MAP) :
           st.takeItems(PIRATES_TREASURE_MAP,1)
           st.giveItems(57,1000)
           st.playSound("ItemSound.quest_finish")
        else:
           htmltext="아데나가 부족합니다."
        st.exitQuest(1)
     elif event == "31148-02.htm":
        if st.getQuestItemsCount(1661):
           st.takeItems(1661,1)
           st.giveItems(57,500+(self.getRandom(5)*300))
           count=0
           while count < 1 :
             for item in REWARDS.keys() :
              qty,chance=REWARDS[item]
              if self.getRandom(1000) < chance and count < 2 :
                 st.giveItems(item,self.getRandom(qty)+1)
                 count+=1
              if count < 2 :
                for i in range(4481,4505) :
                  if self.getRandom(500) == 1 and count < 2 :
                     st.giveItems(i,1)
                     count+=1
           st.playSound("ItemSound.quest_finish")
           st.exitQuest(1)
        else :
           htmltext = "31148-03.htm"
     return htmltext

 def onTalk (self,npc,player):
     htmltext = "<html><body>퀘스트를 수행하고 있지 않거나 조건이 맞지 않습니다.</body></html>"
     st = player.getQuestState(qn)
     if not st : return htmltext

     npcId = npc.getNpcId()
     id = st.getState()
     if id == State.CREATED :
       if player.getLevel() >= 42:  
          if st.getQuestItemsCount(PIRATES_TREASURE_MAP) :
            htmltext = "30890-01.htm"
          else :
            htmltext = "30890-00.htm"
            st.exitQuest(1)
       else :
          htmltext = "30890-01a.htm"
          st.exitQuest(1)
     elif npcId == ESPEN :
        htmltext = "30890-03a.htm"
     elif npcId == PIRATES_CHEST and st.getInt("cond") == 2 and id == State.STARTED:
        htmltext = "31148-01.htm"
     return htmltext

QUEST       = Quest(383,qn,"보물 찾기")


QUEST.addStartNpc(ESPEN)

QUEST.addTalkId(ESPEN)

QUEST.addTalkId(PIRATES_CHEST)