-- description	: ¹Ø±Õ±ÈÈü¶¨Ê±Æ÷
-- author		: wangbin
-- datetime		: 2005-07-13

Include("\\script\\missions\\shentu\\include.lua")

function timeout()
    Msg2MSAll(MISSION_MATCH, "<#> Thêi gian lµm nhiÖm vô ®· kÕt thóc, ®éi ngò cña b¹n sÏ ®­îc ®­a vÒ Ba L¨ng huyÖn");
end

function OnTimer()
    timeout();
    -- ¹Ø±Õ×Ô¼º
    close_close_timer();
    -- ½áÊø±ÈÈü
    close_match();
    -- ¹Ø±Õ¹«¸æ¶¨Ê±Æ÷
    close_board_timer();
end
