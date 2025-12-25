Include("\\script\\missions\\chientruongsinhtu\\include.lua")

function timeout()
    Msg2MSAll(MISSION_MATCH,"<#> Thêi gian lµm nhiÖm vô ®· kÕt thóc, ®éi ngò cña b¹n sÏ ®­îc ®­a vÒ Ba L¨ng huyÖn")
end

function close_match_timer()
    del_npc_chientruongsinhtu()
    StopMissionTimer(MISSION_MATCH, TIMER_MATCH);
    CloseMission(71);
end

function OnTimer()
    timeout();

    close_match_timer()

    close_close_timer();

    close_match();

    close_board_timer();
end
