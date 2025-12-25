Include("\\script\\missions\\chientruongsinhtu\\include.lua")
Include("\\script\\event\\storm\\function.lua")	--Storm
Include("\\script\\misc\\eventsys\\type\\npc.lua")

function start_match_timer()
    StartMissionTimer(MISSION_MATCH, TIMER_MATCH, 1 * 60 * 18);  -- trong vong 15 phut ke tu khi bat dau , neu khong co nguoi choi thi se ket thuc mission
end


function start_signup()
    add_npc(new_npc)
    SetMissionV(VARV_STATE, 1);
    SetMissionV(VARV_BOARD_TIMER, 0);

    szMsg = format("ChiÕn tr­êng sinh tö ®· b¾t ®Çu råi, h·y gÆp NPC - ChiÕn Tr­êng Sinh Tö ®Ó b¸o danh. Thêi gian b¸o danh lµ %d phót", TIME_SIGNUP)
    AddLocalCountNews(szMsg, 2)
end

function InitMission()
    start_signup();
    start_match_timer();
end

function EndMission()
    close_match();
    close_board_timer();
    close_close_timer();
end

function PlayerLeave()
    SetCurCamp(GetCamp())
    SetTaskTemp(200, 0)
    SetFightState(0)
    SetPunish(1)
    SetCreateTeam(1)
    SetPKFlag(0)
    ForbidChangePK(0)
    SetDeathScript("")
end

function PlayerJoinMission(camp)
    LeaveTeam()
    AddMSPlayer(MISSION_MATCH, camp);
    print("-------------------GetMSPlayerCount(MISSION_MATCH)-----------------"..GetMSPlayerCount(MISSION_MATCH))
    SetCurCamp(camp);
    SetTaskTemp(200, 1)
    --SetFightState(1);
    SetLogoutRV(1);
    --SetPunish(0);
    str = GetName() .. "Tham gia 'NhiÖm vô chiÕn tr­êng sinh tö'"
    local sf_mapid = SubWorldIdx2ID(SubWorld)
    NewWorld(sf_mapid, 1474, 3277);
    --NewWorld(995, 1675, 3365)
    --SetCreateTeam(0);
    Msg2MSAll(MISSION_MATCH, str);
    --SetPKFlag(1)
    --ForbidChangePK(1);
    --SetDeathScript(SCRIPT_PLAYER_DEATH);
    --SetTask(1505, 1)
    --DisabledUseTownP(1)
    --
    ----Storm ¼ÓÈë·ç±©»ý·Ö
    --SetTask(STORM_TASKID_GAMEID_SS, random(100000))    --Ö¸¶¨Ëæ»úµÄGameKey
end

-- Íæ¼ÒÍË³ö
function OnLeave(index)
    CallPlayerFunction(index, PlayerLeave)
end

--Íæ¼Ò½øÈë
function JoinMission(RoleIndex, camp)
    print("---------join mission-----------")
    if (camp ~= 1) then
        return
    end
    CallPlayerFunction(RoleIndex, PlayerJoinMission, camp)
end
