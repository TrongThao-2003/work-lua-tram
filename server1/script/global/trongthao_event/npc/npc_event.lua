
function add_npc_222()
    local new_npc = {
        { 352, 80, 4, 53, 1621, 3195, 0, "NPC - EVENT", 0, "\\script\\global\\trongthao_event\\npc\\npc_main.lua" },
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

function add_npc_event_trong_thao()
    add_npc_222()
end