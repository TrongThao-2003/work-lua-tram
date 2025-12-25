-- description	: 闯关活动触发器，由Relay每小时触发
-- author		: wangbin
-- datetime		: 2005-07-14

--Include("\\settings\\trigger_include.lua")
Include("\\script\\missions\\chientruongsinhtu\\include.lua")

function start_missions(map)
    for i = 1, getn(map) do
        local index = SubWorldID2Idx(map[i]);
        if (index >= 0) then
            SubWorld = index;
            OpenMission(MISSION_MATCH);
        end
    end
end

function close_missions(map)
    for i = 1, getn(map) do
       local index = SubWorldID2Idx(map[i]);
        if (index >= 0) then
            SubWorld = index;
            if (GetMissionV(VARV_STATE) ~= 0) then
                CloseMission(MISSION_MATCH);
            end
        end
    end
end

function OnTrigger()
    for i=1, getn(tbLevelMaps) do
        close_missions(tbLevelMaps[i], MISSION_MATCH, VARV_STATE)
        start_missions(tbLevelMaps[i], MISSION_MATCH);
    end
end
