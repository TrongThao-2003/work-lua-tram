TASK_THOREN_START = 202510010000
TASK_THOREN_END = 202510312359
TASK_DATE_EXPIRED = 20251101
TASK_THOREN_XU_FEE = 50
TASK_THOREN_TONGKIM_FEE=5000
TASK_THOREN_MASK_FEE=3
TASK_THOREN_THBT_FEE=1
Include("\\script\\lib\\droptemplet.lua")
Include("\\script\\lib\\awardtemplet.lua")
tbAward_Item = {
    { szName = "M∂nh m∆t nπ", tbProp = { 6, 1, 5125, 1, 0, 0 }, nExpiredTime = TASK_DATE_EXPIRED },
}
tbOpenItem = {
    { szName = "M∆t nπ h÷ Kim c p 1", tbProp = { 0, 11, 906, 1, 0, 0 }, nCount = 1, nRate = 0.1,nExpiredTime = TASK_DATE_EXPIRED },
    { szName = "M∆t nπ h÷ Kim c p 2", tbProp = { 0, 11, 907, 1, 0, 0 }, nCount = 1, nRate = 0.5,nExpiredTime = TASK_DATE_EXPIRED },
    { szName = "M∆t nπ h÷ Kim c p 3", tbProp = { 0, 11, 908, 1, 0, 0 }, nCount = 1, nRate = 0.5,nExpiredTime = TASK_DATE_EXPIRED, },
    { szName = "M∆t nπ h÷ MÈc c p 1", tbProp = { 0, 11, 909, 1, 0, 0 }, nCount = 1, nRate = 1,nExpiredTime = TASK_DATE_EXPIRED,},
    { szName = "M∆t nπ h÷ MÈc c p 2", tbProp = { 0, 11, 910, 1, 0, 0 }, nCount = 1, nRate = 0.5,nExpiredTime = TASK_DATE_EXPIRED, },
    { szName = "M∆t nπ h÷ MÈc c p 3", tbProp = { 0, 11, 911, 1, 0, 0 }, nCount = 1, nRate = 0.5,nExpiredTime = TASK_DATE_EXPIRED, },
    { szName = "M∆t nπ h÷ ThÒy c p 1", tbProp = { 0, 11, 912, 1, 0, 0 }, nCount = 1, nRate = 1,nExpiredTime = TASK_DATE_EXPIRED, },
    { szName = "M∆t nπ h÷ ThÒy c p 2", tbProp = { 0, 11, 913, 1, 0, 0 }, nCount = 1, nRate = 0.5,nExpiredTime = TASK_DATE_EXPIRED, },
    { szName = "M∆t nπ h÷ ThÒy c p 3", tbProp = { 0, 11, 914, 1, 0, 0 }, nCount = 1, nRate = 0.5,nExpiredTime = TASK_DATE_EXPIRED, },
    { szName = "M∆t nπ h÷ H·a c p 1", tbProp = { 0, 11, 915, 1, 0, 0 }, nCount = 1, nRate = 1,nExpiredTime = TASK_DATE_EXPIRED, },
    { szName = "M∆t nπ h÷ H·a c p 2", tbProp = { 0, 11, 916, 1, 0, 0 }, nCount = 1, nRate = 0.5,nExpiredTime = TASK_DATE_EXPIRED, },
    { szName = "M∆t nπ h÷ H·a c p 3", tbProp = { 0, 11, 917, 1, 0, 0 }, nCount = 1, nRate = 0.5,nExpiredTime = TASK_DATE_EXPIRED, },
    { szName = "M∆t nπ h÷ ThÊ c p 1", tbProp = { 0, 11, 918, 1, 0, 0 }, nCount = 1, nRate = 1,nExpiredTime = TASK_DATE_EXPIRED, },
    { szName = "M∆t nπ h÷ ThÊ c p 2", tbProp = { 0, 11, 919, 1, 0, 0 }, nCount = 1, nRate = 0.5,nExpiredTime = TASK_DATE_EXPIRED },
    { szName = "M∆t nπ h÷ ThÊ c p 3", tbProp = { 0, 11, 920, 1, 0, 0 }, nCount = 1, nRate = 0.5,nExpiredTime = TASK_DATE_EXPIRED, },
    { szName = "M∆t nπ k¸ n®ng", tbProp = { 0, 11, 921, 1, 0, 0 }, nCount = 1, nRate = 0.1 ,nExpiredTime = TASK_DATE_EXPIRED,},
    { szName = "M∆t nπ sinh l˘c", tbProp = { 0, 11, 922, 1, 0, 0 }, nCount = 1, nRate = 10,nExpiredTime = TASK_DATE_EXPIRED, },
    { szName = "M∆t nπ sinh kh›", tbProp = { 0, 11, 923, 1, 0, 0 }, nCount = 1, nRate = 15 ,nExpiredTime = TASK_DATE_EXPIRED,},
    { szName = "M∆t nπ th©n ph∏p", tbProp = { 0, 11, 924, 1, 0, 0 }, nCount = 1, nRate = 15,nExpiredTime = TASK_DATE_EXPIRED },
    { szName = "M∆t nπ s¯c mπnh", tbProp = { 0, 11, 925, 1, 0, 0 }, nCount = 1, nRate = 10,nExpiredTime = TASK_DATE_EXPIRED },
    { szName = "M∆t nπ nÈi c´ng", tbProp = { 0, 11, 926, 1, 0, 0 }, nCount = 1, nRate = 10,nExpiredTime = TASK_DATE_EXPIRED },
    { szName = "M∆t nπ phﬂng thÒ", tbProp = { 0, 11, 927, 1, 0, 0 }, nCount = 1, nRate = 9.9,nExpiredTime = TASK_DATE_EXPIRED },
    { szName = "ß∏ ti’n c p", tbProp = { 6,1,5126, 1, 0, 0 }, nCount = 1, nRate = 20,nExpiredTime = TASK_DATE_EXPIRED },
}
tbOpenChest = {
    { szName = "M∆t nπ h÷ Kim c p 3", tbProp = { 0, 11, 908, 1, 0, 0 }, nCount = 1, nRate = 20,nExpiredTime = TASK_DATE_EXPIRED, },
    { szName = "M∆t nπ h÷ MÈc c p 3", tbProp = { 0, 11, 911, 1, 0, 0 }, nCount = 1, nRate = 20,nExpiredTime = TASK_DATE_EXPIRED, },
    { szName = "M∆t nπ h÷ ThÒy c p 3", tbProp = { 0, 11, 914, 1, 0, 0 }, nCount = 1, nRate = 20,nExpiredTime = TASK_DATE_EXPIRED, },
    { szName = "M∆t nπ h÷ H·a c p 3", tbProp = { 0, 11, 917, 1, 0, 0 }, nCount = 1, nRate = 20,nExpiredTime = TASK_DATE_EXPIRED, },
    { szName = "M∆t nπ h÷ ThÊ c p 3", tbProp = { 0, 11, 920, 1, 0, 0 }, nCount = 1, nRate = 20,nExpiredTime = TASK_DATE_EXPIRED, },
}
tbVipItemss = {
    { szName = "R≠¨ng m∆t nπ", tbProp = { 6, 1, 5127, 1, 0, 0 }, nExpiredTime = TASK_DATE_EXPIRED },
}
tbCraftItem = { { szName = "L‘ Bao M∆t Nπ 2025", tbProp = { 6, 1, 5124, 1, 0, 0 }, nCount = 1, nExpiredTime = TASK_DATE_EXPIRED } }
npc_thoren = {
    { 201, 80, 4, 53, 1618, 3178, 0, "ThÓ RÃn Th«n B›", 0, "\\script\\event\\thorenthanbi\\npc\\npc_thoren.lua" },
}
tbThoRen= {}
-- Th™m vµo /script/global/autoexec.lua
function tbThoRen:isActive()
    local nDateTime = tonumber(GetLocalDate("%Y%m%d%H%M"))
    if (nDateTime < TASK_THOREN_START or nDateTime > TASK_THOREN_END) then
        return 0
    end
    return 1
end

function tbThoRen:Init()
    if (self:isActive() == 1) then
        self:add_npc(npc_thoren)
    end
end
------------------------------------------------------------------------------------------------------------------------------
function tbThoRen:add_npc(tbnpc)
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
-- Th™m vµo /script/activitysys/g_npcdeath.lua
--function tbThoRen:OnDeath(nNpcIndex, nKillerIndex)
--    if (self:isActive() ~= 1) then
--        return
--    end
--    local nNpcLevel = NPCINFO_GetLevel(nNpcIndex)
--    if (nNpcLevel >= 70) then
--        self:DropAwardItem(nNpcIndex, nKillerIndex)
--    end
--end
--function tbThoRen:DropAwardItem(nNpcIndex, nBelongPlayerIdx)
--    tbDropTemplet:GiveAwardByList(nNpcIndex, nBelongPlayerIdx, tbAward_Item, "DropVPSKTET", 1)
--end
function tbThoRen:OpenAwardItem(R_tbItem)
    tbAwardTemplet:Give(R_tbItem, 1, { "EventThoRenThanBi", "MoLeBaoThoRen" })
end
function tbThoRen:checkXu(quantity)
    if (CalcEquiproomItemCount(4, 417, 1, 1) < quantity) then
        return 0
    else
        return 1
    end
end
function tbThoRen:checkTHBT(quantity)
    if (CalcEquiproomItemCount(4,353,1, 1) < quantity) then
        return 0
    else
        return 1
    end
end
function tbThoRen:payTHBT(quantity)
    ConsumeEquiproomItem(quantity, 4,353,1, 1)
end
function tbThoRen:checkMask(quantity)
    if (CalcEquiproomItemCount(6,1,5125, 1) < quantity) then
        return 0
    else
        return 1
    end
end
function tbThoRen:payMask(quantity)
    ConsumeEquiproomItem(quantity, 6,1,5125, 1)
end
function tbThoRen:checkTongKim(quantity)
    if (tonumber(GetTask(747)) < quantity) then
        return 0
    else
        return 1
    end
end
function tbThoRen:payTongKim(quantity)
    SetTask(747,GetTask(747) - quantity)
end
function tbThoRen:payXu(quantity)
    ConsumeEquiproomItem(quantity, 4, 417, 1, 1)
end
function tbThoRen:Give_Mask(tbPlayerList)
    if(sefl:isActive() ~= 1) then
        return
    end
    for i=1,getn(tbPlayerList) do
        local nPlayerIndex = tbPlayerList[i]
            CallPlayerFunction(nPlayerIndex, tbAwardTemplet.GiveAwardByList, tbAwardTemplet,tbAward_Item, "Thorenthanbi vuotai28givemask", 1)
    end
end
function tbThoRen:DelItem(quantity,tbItem)
    for i=1,getn(tbItem) do
        ConsumeEquiproomItem(quantity,tbItem[i][1], tbItem[i][2], tbItem[i][3], tbItem[i][4] )
    end
end