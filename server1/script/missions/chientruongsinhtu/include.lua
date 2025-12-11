MISSION_MATCH  = 70
TIMER_MATCH = 115

TIME_SIGNUP = 5

VARV_STATE =  1


-- map chien truong sinh tu
tbLevelMaps = {
    [1] = {
        464,
    }
}

-- Add NPC to map chien truong sinh tu
new_npc = {
    {1130,80,4,53,1621,3195,0,"NPC - ChiÕn tr­êng sinh tö",0,"\\script\\missions\\chientruongsinhtu\\npc\\npc_chientruongsinhtu.lua"},
}

function add_npc(tbnpc)
    for i = 1 , getn(tbnpc) do
        Mid = SubWorldID2Idx(tbnpc[i][4]);
        if (Mid >= 0 ) then
            TabValue5 = tbnpc[i][5] * 32;
            TabValue6 = tbnpc[i][6] * 32;
            local nNpcIdx = AddNpc(tbnpc[i][1],tbnpc[i][2],Mid,TabValue5,TabValue6,tbnpc[i][7],tbnpc[i][8]);
            SetNpcScript(nNpcIdx, tbnpc[i][10]);
        end;
    end;
end
