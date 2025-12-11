IncludeLib("TASKSYS");
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\activitysys\\playerfunlib.lua")

IncludeLib("SETTING")
function main()
    dofile("script/global/roxone/npc/npc_tet.lua")
    local bilTbOp = {}
    tinsert(bilTbOp, "Mua vËt phÈm sù kiÖn/buy_main")
    tinsert(bilTbOp, "ChÕ t¹o m©m ngò qu¶ /craft_mam5qua")
    --tinsert(bilTbOp, "Test/nhantrangbitestgame")
    tinsert(bilTbOp, "KÕt thóc ®èi tho¹i/no")
    Say("Ng­êi muèn mua g× !", getn(bilTbOp), bilTbOp)
end
DATE_END = 20251010
tbAward_Item = {
    --{ szName = "Qu¶ m·ng cÇu", tbProp = { 6, 1, 3094, 1, 0, 0 }, nCount = 1,nBindState=-2 ,nExpiredTime = DATE_END},
    { szName = "Qu¶ m·ng cÇu", tbProp = { 6, 1, 3094, 1, 0, 0 }, nCount = 1, nExpiredTime = DATE_END },
    { szName = "Qu¶ dõa", tbProp = { 6, 1, 3100, 1, 0, 0 }, nCount = 1, nExpiredTime = DATE_END },
    { szName = "Qu¶ ®u ®ñ", tbProp = { 6, 1, 3101, 1, 0, 0 }, nCount = 1, nExpiredTime = DATE_END },
    { szName = "Qu¶ xoµi", tbProp = { 6, 1, 3093, 1, 0, 0 }, nCount = 1, nExpiredTime = DATE_END },
    { szName = "Qña sung", tbProp = { 6, 1, 3102, 1, 0, 0 }, nCount = 1, nExpiredTime = DATE_END },
}
money_fee = 50000
function buy_main()
    local tbSay = format("1 bé vËt phÈm sù kiÖn gåm 5 mãn bao gåm <color=yellow> m·ng cÇu, dõa, ®u ®ñ, xoµi, sung<color>.Gi¸ cña mçi bé lµ <color=red> %d l­îng <color>. Ng­êi muèn mua bao nhiªu", money_fee)
    local tbOption = {

    }
    tinsert(tbOption, { "Mua 10 bé vËt phÈm", function()
        buy_vegetable(10)
    end })
    tinsert(tbOption, { "Mua 100 bé vËt phÈm", function()
        buy_vegetable(100)
    end })
    tinsert(tbOption, { "Mua 50 bé vËt phÈm", function()
        buy_vegetable(50)
    end })
    tinsert(tbOption, { "Mua sè l­îng tïy ý", function()
        g_AskClientNumberEx(1, 100, "NhËp sè l­îng:", { buy_vegetable })
    end })
    tinsert(tbOption, { "Quay l¹i", function()
        main()
    end })
    CreateNewSayEx(tbSay, tbOption)
end

function buy_vegetable(szItem)
    local quatity = tonumber(szItem)
    if not quatity then
        quatity = 1
    end
    local nCount = 5
    for i = 1, getn(tbAward_Item) do
        if HaveCommonItem(tbAward_Item[i].tbProp[1], tbAward_Item[i].tbProp[2], tbAward_Item[i].tbProp[3]) >= 1 then
            nCount = nCount - 1
        end
    end
    if (CalcFreeItemCellCount() < nCount) then
        Say("Xin h·y s¾p x?p l¹i hµnh trang tr­íc ®·!", 0);
        return 1;
    end ;
    local nSucc = 1;

    if (GetCash() < money_fee * quatity) then
        nSucc = 0;
    end ;

    if (nSucc == 0) then
        Say("Kh¸ch quan ch­a ®ñ tiÒn ! Xin quay l¹i sau nh?!", 1, "å! Ta ®i chuÈn b? thªm!/no");
        return
    end ;

    Pay(money_fee * quatity);
    tbAwardTemplet:Give(tbAward_Item, quatity, { "EventTetNguyenDan", "20250929" })

end;
function craft_mam5qua(szSize)
    local quantity = tonumber(szSize)
    if not quantity then
        quantity = 1
    end
    tbItem = { { szName = "M©m ngñ qu¶ 2025", tbProp = { 6, 1, 4530, 1, 0, 0 }, nCount = 1, nExpiredTime = DATE_END } }
    local nRes = 1
    for i = 1, getn(tbAward_Item) do
        if HaveCommonItem(tbAward_Item[i].tbProp[1], tbAward_Item[i].tbProp[2], tbAward_Item[i].tbProp[3]) < quantity then
            nRes = 0
        end
    end
    if (GetCash() < money_fee * quantity) then
        nRes = 0;
    end ;

    if (nRes == 0) then
        Say("Kh¸ch quan ch­a ®ñ nguyªn liÖu ! Xin quay l¹i sau nh?!", 1, "å! Ta ®i chuÈn b? thªm!/no");
    end
    Pay(money_fee * quantity);
    for i = 1, getn(tbAward_Item) do
        ConsumeEquiproomItem(quantity, tbAward_Item[i].tbProp[1], tbAward_Item[i].tbProp[2], tbAward_Item[i].tbProp[3], tbAward_Item[i].tbProp[4])
    end
    tbAwardTemplet:Give(tbItem, quantity, { "EventTetNguyenDan", "GetItem" })
end