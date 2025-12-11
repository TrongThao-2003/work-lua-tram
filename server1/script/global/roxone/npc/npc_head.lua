--Add by Roxone

TASK_EVENT_TET = 0
npc = {
    { 1528, 80, 4, 53, 1623, 3165, 0, "§¹i ThÇn Tµi", 0, "\\script\\global\\roxone\\npc\\npc_tet.lua" },
}
NPC = {}

function NPC:add_npc()
    self:add_npc_tet(npc)
end

------------------------------------------------------------------------------------------------------------------------------
function NPC:add_npc_tet(tbnpc)
    for i = 1, getn(tbnpc) do
        Mid = SubWorldID2Idx(tbnpc[i][4]);
        if (Mid >= 0) then
            TabValue5 = tbnpc[i][5] * 32;
            TabValue6 = tbnpc[i][6] * 32;
            local nNpcIdx = AddNpc(tbnpc[i][1], tbnpc[i][2], Mid, TabValue5, TabValue6, tbnpc[i][7], tbnpc[i][8]);
            SetNpcScript(nNpcIdx, tbnpc[i][10]);
        end ;
    end ;
end