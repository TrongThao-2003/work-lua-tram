-- description	: ±ÈÈü¶¨Ê±Æ÷
-- author		: wangbin
-- datetime		: 2005-06-04
Include("\\script\\missions\\shentu\\include.lua")
function cancel_match()
    -- Msg2SubWorld(date("[%H:%M:%S]") .. "±ÈÈüÈ¡Ïû£¡")
end

-- ¿ªÊ¼±ÈÈü
function start_match()
    -- ÉèÖÃÎª±ÈÈü×´Ì¬
    SetMissionV(VARV_STATE, 2);
    local player_count = GetMSPlayerCount(70);
print("-----------------player_count-------------------"..GetMSPlayerCount(70))
    if (player_count == 0) then
        print("-------------------cancel_match();-----------------")
        -- È¡Ïû±ÈÈü
        cancel_match();
    else
        print("------------------start_close_timer();------------------")
        -- Æô¶¯±ÈÈü½áÊø¶¨Ê±Æ÷
        start_close_timer();

        -- Í¨¸æ
        broadcast("M¸p chiÕn tr­êng sinh tö ®· më, anh hïng c¸c n¬i ®ang ra søc tranh tµi");

        -- ³õÊ¼»¯±äÁ¿
        SetMissionV(VARV_NPC_BATCH, 1);    -- ¹ÖµÄÅú´Î
        SetMissionV(VARV_MISSION_RESULT, 0);
        SetMissionV(VARV_PLAYER_USE_INDEX, 0);
        SetMissionV(VARV_NPC_USE_INDEX, 0);

        -- Ğ¡Äôß±³¾³öÏÖµÄ¹Ø¿¨
        --local nBossBatch = random(5, 15)
        --SetMissionV(VARV_XIAONIESHICHEN_BATCH, nBossBatch)    -- ´Ó5µ½15Ëæ»ú²úÉúÒ»¸ö¹Ø¿¨
        --WriteLog(format("TiÓu NhiÕp Thİ TrÇn xuÊt hiÖn thÎ ¶i lµ %d", nBossBatch))

        -- ±£´æÍæ¼ÒĞÅÏ¢
        save_player_info();

        -- ÇåÀíµØÍ¼
        add_npc_golden_seed()
    end

    -- ÉèÖÃÍæ¼ÒÊıÁ¿
    SetMissionV(VARV_PLAYER_COUNT, player_count);
end

-- ¹Ø±Õ±ÈÈü¶¨Ê±Æ÷
function close_match_timer()
    del_npc_shentu()
    StopMissionTimer(MISSION_MATCH, TIMER_MATCH);
    CloseMission(70);
end

function OnTimer()
    print("------------------Join On Time oke------------------")
    -- ±¨Ãû½áÊø
    --close_match_timer();
    -- ±ÈÈü¿ªÊ¼
    start_match();
    --start_board_timer();
end
