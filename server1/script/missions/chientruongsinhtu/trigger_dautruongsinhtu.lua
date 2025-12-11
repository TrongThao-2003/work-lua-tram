-- description	: 闯关活动触发器，由Relay每小时触发
-- author		: wangbin
-- datetime		: 2005-07-14

--Include("\\settings\\trigger_include.lua")
Include("\\script\\missions\\chientruongsinhtu\\include.lua")

function start_missions(map)
    print("---------------------------------------------run  2---------------------------------------------");
    local index
    local nOldSubWorld = SubWorld;
    for i = 1, getn(map) do
        index = SubWorldID2Idx(map[i]);
        if (index >= 0) then
            SubWorld = index;
            OpenMission(22);
        end
    end
    SubWorld = nOldSubWorld;
    print("---------------------------------------------run 3---------------------------------------------");
end

function OnTrigger()
    print("---------------------------------------------run 1 ---------------------------------------------");
    for i=1, getn(tbLevelMaps) do
        start_missions(tbLevelMaps[1], MISSION_MATCH);
    end
    print("---------------------------------------------run 4 ---------------------------------------------");
end
