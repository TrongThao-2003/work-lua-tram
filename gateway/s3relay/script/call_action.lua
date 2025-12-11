function CallTest1()
    print("------------------ CallTest1 ------------------")
    GlobalExecute("dwf \\script\\missions\\shentu\\task.lua StartShentu()");    -- file sù kiÖn chİnh (t×m hiÓu thªm)
    szMsg = "NhiÖm vô chiÕn tr­êng sinh tö ®· b¾t ®Çu më, mau nhanh lªn nµo .Sù kiÖn chØ më 30 phót h»ng ngµy."
    GlobalExecute(format("dw AddLocalCountNews([[%s]], 2)", szMsg))
end
function CallTest2()
    print("------------------ CallTest2 ------------------")
    GlobalExecute("dwf \\script\\missions\\chientruongsinhtu\\trigger_dautruongsinhtu.lua OnTrigger()");    -- file sù kiÖn chİnh (t×m hiÓu thªm)
end
