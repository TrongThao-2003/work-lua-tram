Include("\\script\\dailogsys\\dailogsay.lua");
Include("\\script\\missions\\chientruongsinhtu\\include.lua");

function main()
    local tbSay  = {"<dec>ChiÕn Tr­êng Sinh Tö...lµ n¬i diÔn ra nh÷ng trËn chiÕn ¸c liÖt"}
    tinsert(tbSay, "TiÕp tôc/tieptuc1")
    tinsert(tbSay, "KÕt thóc ®èi tho¹i./no")
    CreateTaskSay(tbSay)
end

function tieptuc1()
    local tbSay  = {"<dec>ChiÕn Tr­êng Sinh Tö diÔn ra trong vßng 30 phót mçi ngµy. H·y nhanh lªn nµo"}
    tinsert(tbSay, "TiÕp tôc vµo ChiÕn Sinh Tö/tieptuc2")
    tinsert(tbSay, "KÕt thóc ®èi tho¹i./no")
    CreateTaskSay(tbSay)
end

function tieptuc2()
    local oldSubWorld = SubWorld
    print("--------------------------------------SubWorld: "..oldSubWorld)
    index = SubWorldID2Idx(995)
    if index > 0 then
        SubWorld = index
        print("--------------------------------------index: "..index)
        JoinMission(MISSION_MATCH, 1)
    end
    SubWorld = oldSubWorld
end

function no()  end