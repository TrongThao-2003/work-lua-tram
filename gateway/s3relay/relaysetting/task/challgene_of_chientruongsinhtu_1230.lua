function TaskShedule()
    TaskName("NhiÖm vô chiÕn tr­êng sinh tö'");
    TaskInterval(1440);
    TaskTime(12, 30);
    TaskCountLimit(0);
    OutputMsg( "NhiÖm vô chiÕn tr­êng sinh tö' - diÔn ra vµo 12h30 hµng ngµy !");
end

function TaskContent()
    OutputMsg("NhiÖm vô chiÕn tr­êng sinh tö ®· b¾t ®Çu!");
    -- ´¥·¢GameServerÉÏµÄ½Å±¾
    GlobalExecute("dwf \\script\\missions\\chientruongsinhtu\\trigger_dautruongsinhtu.lua OnTrigger()");    -- file sù kiÖn chİnh (t×m hiÓu thªm)
    szMsg = "NhiÖm vô chiÕn tr­êng sinh tö ®· b¾t ®Çu më, mau nhanh lªn nµo .Sù kiÖn chØ më 30 phót h»ng ngµy."
    GlobalExecute(format("dw AddLocalCountNews([[%s]], 2)", szMsg))
end

function GameSvrConnected(dwGameSvrIP)
end
function GameSvrReady(dwGameSvrIP)
end
