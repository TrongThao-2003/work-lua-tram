function add_npc_mini_event()
    local new_npc = {
        { 1969, 80, 4, 53, 1624, 3193, 0, "NPC - EVENT MINI", 0, "\\script\\global\\trongthao_event_mini\\npc\\npc_main.lua" },
    }
    local nOldSubWorld = SubWorld
    for i = 1, getn(new_npc) do
        Mid = SubWorldID2Idx(new_npc[i][4]);
        if (Mid >= 0) then
            SubWorld = Mid
            TabValue5 = new_npc[i][5] * 32;
            TabValue6 = new_npc[i][6] * 32;
            local nNpcIdx = AddNpc(new_npc[i][1], new_npc[i][2], Mid, TabValue5, TabValue6, new_npc[i][7], new_npc[i][8]);
            SetNpcScript(nNpcIdx, new_npc[i][10]);
        end ;
    end ;
    SubWorld = nOldSubWorld
end

function add_npc_event_mini_trong_thao()
    add_npc_mini_event()
end