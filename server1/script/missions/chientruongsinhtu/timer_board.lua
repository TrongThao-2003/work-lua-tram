Include("\\script\\missions\\chientruongsinhtu\\include.lua")

function OnTimer()
    if (GetMSPlayerCount(MISSION_MATCH) ~= 0) then
        local time = GetMissionV(VARV_BOARD_TIMER) + INTERVAL_BOARD;  -- INTERVAL_BOARD = 1 * 60 (1 phut)
        local batch = GetMissionV(VARV_NPC_BATCH);
        SetMissionV(VARV_BOARD_TIMER, time);

        local msg = "<#> NhiÖm vô 'ChiÕn tr­êng sinh tö' ®· b¾t ®Çu ®­îc " .. floor(time / 60)
                .. " phót, b©y giê lµ ®ît qu¸i thø "
                .. batch .. " ."
        Msg2MSAll(MISSION_MATCH, msg);
    end
end