TASK_TET_START = 202509290000
TASK_TET_END = 202510102359
TASK_DATE_EXPIRED = 20251011
TASK_TET_MONEY_FEE = 50000
TASK_TET_KNB_FEE = 0.5
TASK_EVENT_EXP = 500000
TASK_TET_USED_ITEM = 0
TASK_TET_USED_LIMIT = 600
Include("\\script\\lib\\droptemplet.lua")
Include("\\script\\lib\\awardtemplet.lua")
tbAward_Item = {
    --{ szName = "Qu¶ m·ng cÇu", tbProp = { 6, 1, 3094, 1, 0, 0 }, nCount = 1,nBindState=-2 ,nExpiredTime = DATE_END},
    { szName = "Qu¶ m·ng cÇu", tbProp = { 6, 1, 3094, 1, 0, 0 }, nExpiredTime = TASK_DATE_EXPIRED, nRate = 0.5 },
    { szName = "Qu¶ dõa", tbProp = { 6, 1, 3100, 1, 0, 0 }, nExpiredTime = TASK_DATE_EXPIRED, nRate = 0.5 },
    { szName = "Qu¶ ®u ®ñ", tbProp = { 6, 1, 3101, 1, 0, 0 }, nExpiredTime = TASK_DATE_EXPIRED, nRate = 0.5 },
    { szName = "Qu¶ xoµi", tbProp = { 6, 1, 3093, 1, 0, 0 }, nExpiredTime = TASK_DATE_EXPIRED, nRate = 0.5 },
    { szName = "Qña sung", tbProp = { 6, 1, 3102, 1, 0, 0 }, nExpiredTime = TASK_DATE_EXPIRED, nRate = 0.5 },
}
tbOpenItem = {
    { szName = "Vâ L©m MËt TÞch", tbProp = { 6, 1, 26, 1, 0, 0 }, nCount = 1, nRate = 0.1 },
    { szName = "TÈy Tñy Kinh", tbProp = { 6, 1, 22, 1, 0, 0 }, nCount = 1, nRate = 0.1 },
    { szName = "Tiªn Th¶o Lé", tbProp = { 6, 1, 71, 1, 0, 0 }, nCount = 1, nRate = 0.1 },
    { szName = "Tö Thñy Tinh", tbProp = { 4, 239, 1, 1, 0, 0 }, nCount = 1, nRate = 0.3 },
    { szName = "Lam Thñy Tinh", tbProp = { 4, 238, 1, 1, 0, 0 }, nCount = 1, nRate = 1 },
    { szName = "Lôc Thñy Tinh", tbProp = { 4, 240, 1, 1, 0, 0 }, nCount = 1, nRate = 2 },
    { szName = "ThiÕt La H¸n", tbProp = { 6, 1, 1665, 1, 0, 0 }, nCount = 1, nRate = 10 },

}
tbVipItem = {
    { szName = "NhÊt Kû Cµn Kh«n Phï", tbProp = { 6, 1, 2126, 1, 0, 0 }, nExpiredTime = (30 * 24 * 3600), nCount = 1, nBindState = 1, nRate = 50 },
    { szName = "MÆt n¹ V­¬ng Gi¶", tbProp = { 0, 11, 561, 1, 0, 0 }, nCount = 1, nRate = 50, nBindState = 1, nExpiredTime = (7 * 24 * 3600) },
}
tbCraftItem = { { szName = "M©m ngñ qu¶ 2025", tbProp = { 6, 1, 5123, 1, 0, 0 }, nCount = 1, nExpiredTime = TASK_DATE_EXPIRED } }
npc_tet = {
    { 1528, 80, 4, 53, 1623, 3165, 0, "§¹i ThÇn Tµi", 0, "\\script\\event\\tetnguyendan\\npc\\npc_work.lua" },
}
tbTet = {}
-- Thªm vµo /script/global/autoexec.lua
function tbTet:isActive()
    local nDateTime = tonumber(GetLocalDate("%Y%m%d%H%M"))
    if (nDateTime < TASK_TET_START or nDateTime > TASK_TET_END) then
        return 0
    end
    return 1
end

function tbTet:Init()
    if (self:isActive() == 1) then
        self:add_npc_tet(npc_tet)
    end
end
------------------------------------------------------------------------------------------------------------------------------
function tbTet:add_npc_tet(tbnpc)
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
-- Thªm vµo /script/activitysys/g_npcdeath.lua
function tbTet:OnDeath(nNpcIndex, nKillerIndex)
    if (self:isActive() ~= 1) then
        return
    end
    local nNpcLevel = NPCINFO_GetLevel(nNpcIndex)
    if (nNpcLevel >= 70) then
        self:DropAwardItem(nNpcIndex, nKillerIndex)
    end
end
function tbTet:DropAwardItem(nNpcIndex, nBelongPlayerIdx)
    tbDropTemplet:GiveAwardByList(nNpcIndex, nBelongPlayerIdx, tbAward_Item, "DropVPSKTET", 1)
end
function tbTet:OpenAwardItem(R_tbItem)
    local nNum = tonumber(TASK_EVENT_EXP)
    AddOwnExp(nNum);
    Msg2Player(format("B¹n nhËn ®­îc <color=green> %d <color> ®iÓm kinh nghiÖm", nNum))
    tbAwardTemplet:Give(R_tbItem, 1, { "EventTetNguyenDan", "MoVPSK" })
    SetTask(TASK_TET_USED_ITEM, GetTask(TASK_TET_USED_ITEM) + 1)
end
function tbTet:checkKNB(quantity)
    if (CalcEquiproomItemCount(4, 343, 1, 1) < quantity) then
        return 0
    else
        return 1
    end

end
function tbTet:payKNB(quantity)
    ConsumeEquiproomItem(quantity, 4, 343, 1, 1)
end