Include("\\script\\activitysys\\functionlib.lua")
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\missions\\shentu\\include.lua")
Include("\\script\\lib\\log.lua")
Include("\\script\\missions\\shentu\\mission_match.lua")
function main ()
    local R_IdMap = SubWorldIdx2ID(SubWorld);
    local tbSay = "ChiÕn tr­êng sinh tö ®· s½n sµng ng­êi cã muèn tham gia kh«ng"
    local tbOption = {}
    if (R_IdMap == 53) then
        tinsert(tbOption, { "Tham gia", joinShentu })
    end
    if (R_IdMap == 995) then
        tinsert(tbOption, { "VÒ Ba L¨ng HuyÖn", outShentu })
    end
    tinsert(tbOption, { "Ta cÇn suy nghÜ kü h¬n" })
    CreateNewSayEx(tbSay, tbOption)
end
function joinShentu()
   local oldSubWorld= SubWorld
    index = SubWorldID2Idx(995);
    if (index >= 0) then
        SubWorld = index;
        JoinMission(MISSION_MATCH, 1)
    end
    SubWorld = oldSubWorld
end
function outShentu()
    NewWorld(53, 1609, 3209)

end
-- /script/missions/shentu/npc/npc_javan.lua