IncludeLib("TASKSYS");
IncludeLib("SETTING")
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\activitysys\\playerfunlib.lua")
Include("\\script\\event\\tetnguyendan\\event.lua")

function main()
    dofile("script/event/tetnguyendan/npc/npc_work.lua")
    local bilTbOp = {}
    tinsert(bilTbOp, "Mua vËt phÈm sù kiÖn/buy_main")
    tinsert(bilTbOp, "ChÕ t¹o m©m ngò qu¶ /craft_main")
    tinsert(bilTbOp, "KÕt thóc ®èi tho¹i/no")
    Say("Ng­êi muèn mua g× !", getn(bilTbOp), bilTbOp)
end
function buy_main()
    local tbSay = format("1 bé vËt phÈm sù kiÖn gåm 5 mãn bao gåm <color=yellow> m·ng cÇu, dõa, ®u ®ñ, xoµi, sung<color>.Gi¸ cña mçi bé lµ <color=red> %.1f Kim Nguyªn B¶o <color>. Ng­êi muèn mua bao nhiªu", TASK_TET_KNB_FEE)
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

    if (tbTet.checkKNB(tbTet, floor(TASK_TET_KNB_FEE * quatity)) == 0) then
        Say("Kh¸ch quan ch­a ®ñ kim nguyªn b¶o ! Xin quay l¹i sau nhÐ!", 1, "å! Ta sÏ ®i chuÈn bÞ  thªm!/no");
        return 1
    end ;

    tbTet.payKNB(tbTet, floor(TASK_TET_KNB_FEE * quatity))
    for i = 1, getn(tbAward_Item) do
        tbAwardTemplet:Give(tbAward_Item[i], quatity, { "EventTetNguyenDan", "20250929" })
    end
end;
function craft_main()
    local tbSay = format("Lµm  m©m ngò  qu¶ cÇn ®Çy ®ñ 5 mãn  bao gåm <color=yellow> m·ng cÇu, dõa, ®u ®ñ, xoµi, sung<color>.Chi phÝ mçi bé lµ <color=red> %d <color> l­îng . Ng­êi muèn chÕ t¹o bao nhiªu", TASK_TET_MONEY_FEE)
    local tbOption = {

    }
    tinsert(tbOption, { "10 m©m ngò qu¶ ", function()
        craft_mam5qua(10)
    end })
    tinsert(tbOption, { "50 m©m ngò qu¶", function()
        craft_mam5qua(50)
    end })
    tinsert(tbOption, { "100 m©m ngò qu¶", function()
        craft_mam5qua(100)
    end })

    tinsert(tbOption, { "Sè l­îng tïy ý", function()
        g_AskClientNumberEx(1, 100, "NhËp sè l­îng:", { craft_mam5qua })
    end })
    tinsert(tbOption, { "Quay l¹i", function()
        main()
    end })
    CreateNewSayEx(tbSay, tbOption)
end
function craft_mam5qua(szSize)
    local quantity = tonumber(szSize)
    if not quantity then
        quantity = 1
    end
    local nRes = 1
    for i = 1, getn(tbAward_Item) do
        if CalcEquiproomItemCount(tbAward_Item[i].tbProp[1], tbAward_Item[i].tbProp[2], tbAward_Item[i].tbProp[3], tbAward_Item[i].tbProp[4]) < quantity then
            nRes = 0
        end
    end
    if (GetCash() < TASK_TET_MONEY_FEE * quantity) then
        nRes = 0;
    end ;

    if (nRes == 0) then
        Say("Kh¸ch quan ch­a ®ñ nguyªn liÖu ! Xin quay l¹i sau nhÐ!", 1, "å! Ta ®i chuÈn bÞ thªm!/no");
        return 1
    end
    Pay(TASK_TET_MONEY_FEE * quantity);
    for i = 1, getn(tbAward_Item) do
        ConsumeEquiproomItem(quantity, tbAward_Item[i].tbProp[1], tbAward_Item[i].tbProp[2], tbAward_Item[i].tbProp[3], tbAward_Item[i].tbProp[4])
    end
    tbAwardTemplet:Give(tbCraftItem, quantity, { "EventTetNguyenDan", "GetItem" })
end