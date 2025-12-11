-- description	: 闯Trigger chay su kien tet
-- author		: roxone
-- datetime		: 2025-09-29
function OnTrigger()
    -- DEBUG
    print("---------------------------------trigger_tet has been start...---------------------------------");
    -- 重启missions
    --for i = 1, getn(tbLevelMaps) do
    --    close_missions(tbLevelMaps[i], MISSION_MATCH, VARV_STATE);
    --    start_missions(tbLevelMaps[i], MISSION_MATCH);
    --end
    --local oldSubWorld = SubWorld;
    --index = SubWorldID2Idx(995)
    --if (index >= 0) then
    --    SubWorld = index
    --    OpenMission(MISSION_MATCH)
    --    SubWorld = oldSubWorld
    --end



    --闯关调整 2011.03.02
    --ChuangGuan30:KickOutAll()
    --ClearMapNpc(CHUANGGUAN30_MAP_ID)
    -- 添加计时器
    --DynamicExecute("\\script\\missions\\shentu\\chuangguang30.lua", "ChuangGuan30:AddTime")
end
function OnEndTrigger()
    -- DEBUG
    print("---------------------------------trigger_tet has been stop...---------------------------------");
    -- 重启missions
    --for i = 1, getn(tbLevelMaps) do
    --    close_missions(tbLevelMaps[i], MISSION_MATCH, VARV_STATE);
    --    start_missions(tbLevelMaps[i], MISSION_MATCH);
    --end
    --local oldSubWorld = SubWorld;
    --index = SubWorldID2Idx(995)
    --if (index >= 0) then
    --    SubWorld = index
    --    OpenMission(MISSION_MATCH)
    --    SubWorld = oldSubWorld
    --end



    --闯关调整 2011.03.02
    --ChuangGuan30:KickOutAll()
    --ClearMapNpc(CHUANGGUAN30_MAP_ID)
    -- 添加计时器
    --DynamicExecute("\\script\\missions\\shentu\\chuangguang30.lua", "ChuangGuan30:AddTime")
end
--OnTrigger();