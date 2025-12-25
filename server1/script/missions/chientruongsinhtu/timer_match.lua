Include("\\script\\missions\\chientruongsinhtu\\include.lua")


function cancel_match()
    print("------------------da het thoi gian 15 phut, huy bo mission chien truong sinh tu")
    --broadcast("ChiÕn tr­êng sinh tö ®· bÞ hñy do kh«ng ®ñ ng­êi tham gia");

    del_npc_chientruongsinhtu();

    StopMissionTimer(MISSION_MATCH, TIMER_MATCH)

    CloseMission(MISSION_MATCH)

    SetMissionV(VARV_STATE, 0)
    SetMissionV(VARV_PLAYER_COUNT, 0)
    SetMissionV(VARV_NPC_BATCH, 0)
    print("------------------Mission da dong")
end

function start_match()
    SetMissionV(VARV_STATE, 2);
    local player_count = GetMSPlayerCount(MISSION_MATCH)
    print("-----------------Tong So Nguoi Choi Trong Mission: "..player_count)
    if (player_count == 0) then
        cancel_match()
    else
        start_close_timer();

        --broadcast("M¸p chiÕn tr­êng sinh tö ®· më, anh hïng c¸c n¬i ®ang ra søc tranh tµi");

        SetMissionV(VARV_NPC_BATCH, 1);
        SetMissionV(VARV_MISSION_RESULT, 0);
        SetMissionV(VARV_PLAYER_USE_INDEX, 0);
        SetMissionV(VARV_NPC_USE_INDEX, 0);

        save_player_info();

        add_npc_golden_seed();

        SetMissionV(VARV_PLAYER_COUNT, player_count);
    end
end

function OnTimer()
    start_match()
end