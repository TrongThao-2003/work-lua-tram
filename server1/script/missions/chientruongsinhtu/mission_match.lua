Include("\\script\\missions\\chientruongsinhtu\\include.lua")
Include("\\script\\event\\storm\\function.lua")	--Storm
Include("\\script\\misc\\eventsys\\type\\npc.lua")

function start_match_timer()
    --StartMissionTimer(MISSION_MATCH, TIMER_MATCH, 1 *  60 * 18);
end


function start_signup()
    add_npc(new_npc)
    --SetMissionV(VARV_STATE, 1);
    --SetMissionV(VARV_BOARD_TIMER, 0);
    --SetMissionS(VARS_TEAM_NAME, "");
end

function InitMission()
    print("---------------------------------------------run 5 ---------------------------------------------");
    start_signup();
    --start_match_timer();
end

function EndMission()
    --close_match();
    --close_board_timer();
    --close_close_timer();
end

function PlayerLeave()

    BigBoss:RemoveChuangGuanBonus()

    SetCurCamp(GetCamp())
    SetTaskTemp(200,0)
    SetFightState(0)
    SetPunish(1)
    SetCreateTeam(1)
    SetPKFlag(0)
    ForbidChangePK(0)
    SetDeathScript("")

    SetTask(1505, 0)
    DisabledUseTownP(0)

    Msg2MSAll(MISSION_MATCH, GetName().."Rêi khái khu vùc nhiÖm vô ")

    --Storm ¼Ó½±Àø·Ö
    if storm_valid_game(2) then	--·ç±©ÌôÕ½Ã»ÓÐ½áÊø£¨Èç¹ûÊÇÍæ¼ÒÏÂÏß¸Ã¶Î´úÂë²»»áÆð×÷ÓÃ£©
        storm_add_pointex(2, 40)
        storm_end(2)
    end
    SetTask(STORM_TASKID_GAMEID_SS, 0)	--Çå³ýGameKey
end

function PlayerJoinMission(camp)
    --LeaveTeam()
    --AddMSPlayer(MISSION_MATCH,camp);
    SetCurCamp(camp);
    --SetTaskTemp(200,1)
    --SetFightState(1);
    --SetLogoutRV(1);
    --SetPunish(0);
    --str = GetName().."Tham gia 'NhiÖm vô Th¸ch thøc thêi gian'"
    --local sf_mapid = SubWorldIdx2ID(SubWorld)
    NewWorld(995, 1474, 3275);
    --SetCreateTeam(0);
    --Msg2MSAll(MISSION_MATCH,str);
    --SetPKFlag(1)
    --ForbidChangePK(1);
    --SetDeathScript(SCRIPT_PLAYER_DEATH);
    --SetTask(1505, 1)
    --DisabledUseTownP(1)
    --
    ----Storm ¼ÓÈë·ç±©»ý·Ö
    --SetTask(STORM_TASKID_GAMEID_SS, random(100000))	--Ö¸¶¨Ëæ»úµÄGameKey
end

-- Íæ¼ÒÍË³ö
function OnLeave(index)
    --CallPlayerFunction(index, PlayerLeave)
end

--Íæ¼Ò½øÈë
function JoinMission(RoleIndex, camp)
    if (camp ~= 1) then
        return
    end
    CallPlayerFunction(RoleIndex, PlayerJoinMission, camp)
end
