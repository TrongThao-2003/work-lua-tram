IncludeLib("TASKSYS");
IncludeLib("SETTING")
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\activitysys\\playerfunlib.lua")
Include("\\script\\event\\thorenthanbi\\head.lua")
Include("\\script\\lib\\money_sys.lua")
function main()
    dofile("script/event/thorenthanbi/npc/npc_thoren.lua")
    local bilTbOp = {}
    tinsert(bilTbOp, "Tπo l‘ bao m∆t nπ 2025/craft_main")
    tinsert(bilTbOp, "N©ng c p m∆t nπ /upgrade_mask")
    tinsert(bilTbOp, "Chuy”n ÆÊi ngÚ hµnh m∆t nπ /convert_mask")
    tinsert(bilTbOp, "Tπo r≠¨ng m∆t nπ /chest_mask")
    tinsert(bilTbOp, "Xem Æi”m tËng kim hi÷n tπi/show_tongkim")
    tinsert(bilTbOp, "K’t thÛc ÆËi thoπi/no")
    Say("Ng≠Íi muËn giÛp g◊ !", getn(bilTbOp), bilTbOp)
end
function craft_main()

    local tbSay = format("ß” ch’ tπo 1 l‘ bao m∆t nπ c«n  <color=yellow>1 m∂nh hoµng kim + 3 m∂nh m∆t nπ + 1 tinh hÂng b∂o thπch +  50xu + 5.000 Æi”m tËng kim<color>Ng≠Íi muËn ch’ tπo  bao nhi™u")
    local tbOption = {

    }
    tinsert(tbOption, { "Ch’ tπo 1 l‘ bao", function()
        craft_mask(1)
    end })
    tinsert(tbOption, { "Ch’ tπo 5  l‘ bao", function()
        craft_mask(5)
    end })
    tinsert(tbOption, { "Ch’ tπo 10  l‘ bao", function()
        craft_mask(10)
    end })
    tinsert(tbOption, { "Quay lπi", function()
        main()
    end })
    CreateNewSayEx(tbSay, tbOption)
end

function craft_mask(szItem)
    local quatity = tonumber(szItem)
    if not quatity then
        quatity = 1
    end
    if (CalcFreeItemCellCount() < 1) then
        Say("Xin h∑y sæp x’p lπi hµnh trang tr≠Ìc Æ∑!", 0);
        return 1;
    end ;
    if (tbThoRen.checkMask(tbThoRen, (TASK_THOREN_MASK_FEE * quatity)) == 0) then
        Say("Kh∏ch quan ch≠a ÆÒ m∂nh m∆t nπ ! Xin quay lπi sau nh–!", 1, "Â! Ta sœ Æi chu»n bﬁ  th™m!/no");
        return 1
    end ;
    if (tbThoRen.checkTHBT(tbThoRen, (TASK_THOREN_THBT_FEE * quatity)) == 0) then
        Say("Kh∏ch quan ch≠a ÆÒ tinh hÂng b∂o thπch ! Xin quay lπi sau nh–!", 1, "Â! Ta sœ Æi chu»n bﬁ  th™m!/no");
        return 1
    end ;
    if (tbThoRen.checkXu(tbThoRen, (TASK_THOREN_XU_FEE * quatity)) == 0) then
        Say("Kh∏ch quan ch≠a ÆÒ ti“n ÆÂng ! Xin quay lπi sau nh–!", 1, "Â! Ta sœ Æi chu»n bﬁ  th™m!/no");
        return 1
    end ;
    if (tbThoRen.checkTongKim(tbThoRen, (TASK_THOREN_TONGKIM_FEE * quatity)) == 0) then
        Say("Kh∏ch quan ch≠a ÆÒ Æi”m tËng kim ! Xin quay lπi sau nh–!", 1, "Â! Ta sœ Æi chu»n bﬁ  th™m!/no");
        return 1
    end ;
    tbThoRen.payMask(tbThoRen, (TASK_THOREN_MASK_FEE * quatity))
    tbThoRen.payTHBT(tbThoRen, (TASK_THOREN_THBT_FEE * quatity))
    tbThoRen.payXu(tbThoRen, (TASK_THOREN_XU_FEE * quatity))
    tbThoRen.payTongKim(tbThoRen, (TASK_THOREN_TONGKIM_FEE * quatity))
    for i = 1, getn(tbCraftItem) do
        tbAwardTemplet:Give(tbCraftItem[i], quatity, { "EventThorenthanbi", "Taolebao" })
    end
end;
function upgrade_mask()
        GiveItemUI("N©ng c p m∆t nπ", "ß” n©ng c p m∆t nπ c«n 1 m∆t nπ b t k˙ + 50 Æ∏ ti’n c p + 50 m∂nh m∆t nπ!", "UpgradeConfirm", "onCancel", 1);
end
function chest_mask()
    GiveItemUI("Tπo r≠¨ng m∆t nπ", "ß” tπo r≠¨ng m∆t nπ mÌi c«n 3 m∆t nπ b t k˙ + 2 tinh hÂng b∂o thπch + 2 bÈ thÒy tinh!", "ChestConfirm", "onCancel", 1);
end
function convert_mask()
    GiveItemUI("Chuy”n ÆÊi ngÚ hµnh m∆t nπ", "ß” chuy”n ÆÊi ngÚ hµnh m∆t nπ c«n 1 m∆t nπ ngÚ hµnh b t k˙ +100 ti“n ÆÂng!", "ConvertConfirm", "onCancel", 1);
end
function ChestConfirm(nCount)
    if nCount ~= 11 then
        Say("C«n th™m ÆÛng vÀt ph»m: 3 m∆t nπ + 2 tinh hÂng b∂o thπch + 2 bÈ thÒy tinh!",1,"Ta hi”u rÂi!/chest_mask");
        return
    end
    if(tbThoRen.checkTongKim(tbThoRen,20000) ==  0) then
        Say("SË l≠Óng Æi”m TËng Kim kh´ng ÆÒ,vui lﬂng ki”m tra lπi!",1,"Ta hi”u rÂi!/chest_mask");
        return
    end
    local szMask,szTHBT,szThuyTinh1,szThuyTinh2,szThuyTinh3=0,0,0,0,0
    local tbMark,propTHBT,propThuyTinh1,propThuyTinh2,propThuyTinh3={},{},{},{},{}
    for i=1, nCount do
        local nItemIndex = GetGiveItemUnit(i)
        local ItemGenre, DetailType, ParticularType,nLevel, nSeries, nLuck = GetItemProp(nItemIndex)
        local nValid = checkValidItem(ItemGenre, DetailType, ParticularType)
        if(nValid ==0 or nValid ==2 or nValid ==3) then
            Say("C«n th™m ÆÛng vÀt ph»m: 3 m∆t nπ + 2 tinh hÂng b∂o thπch + 2 bÈ thÒy tinh!",1,"Ta hi”u rÂi!/chest_mask");
            return
        end
            if nValid == 1 then
                szMask=szMask+1
                tinsert(tbMark,{ItemGenre, DetailType, ParticularType,nLevel, nSeries, nLuck})
            end
            if nValid == 4 then
                szTHBT = szTHBT+1
                if szTHBT == 1 then
                    propTHBT={ItemGenre, DetailType, ParticularType,nLevel, nSeries, nLuck}
                end
            end
            if nValid == 5 then
                szThuyTinh1 = szThuyTinh1+1
                if szThuyTinh1 == 1 then
                    propThuyTinh1={ItemGenre, DetailType, ParticularType,nLevel, nSeries, nLuck}
                end
            end
            if nValid == 6 then
                szThuyTinh2 = szThuyTinh2+1
                if szThuyTinh2 == 1 then
                    propThuyTinh2={ItemGenre, DetailType, ParticularType,nLevel, nSeries, nLuck}
                end
            end
            if nValid == 7 then
                szThuyTinh3 = szThuyTinh3+1
                if szThuyTinh3 == 1 then
                    propThuyTinh3={ItemGenre, DetailType, ParticularType,nLevel, nSeries, nLuck}

                end
            end
    end
    if(szMask~=3 or szTHBT~=2 or  szThuyTinh1~=2 or szThuyTinh2 ~=2 or szThuyTinh3~= 2) then
        Say("SË l≠Óng vÀt ph»m kh´ng ÆÒ,vui lﬂng ki”m tra lπi!",1,"Ta hi”u rÂi!/chest_mask");
        return
    end
    tbThoRen.payTongKim(tbThoRen,20000)
    tbThoRen.DelItem(tbThoRen,1,tbMark)
    tbThoRen.DelItem(tbThoRen,2,{propTHBT,propThuyTinh1,propThuyTinh2,propThuyTinh3})
    tbAwardTemplet:Give(tbVipItemss, 1, { "EventThorenthanbi", "CraftChestMask" })
end
function UpgradeConfirm(nCount)
    if nCount ~= 3 then
        Say("C«n th™m ÆÛng vÀt ph»m: 1 m∆t nπ + 50 ß∏ ti’n c p + 50 m∂nh m∆t nπ!",1,"Ta hi”u rÂi!/upgrade_mask");
        return
    end
    local oldMask,nMask,nStone,nSubMask={},{}, {}, {}
    for i=1, nCount do
        local nItemIndex = GetGiveItemUnit(i)
        local ItemGenre, DetailType, ParticularType,nLevel, nSeries, nLuck = GetItemProp(nItemIndex)
        local nValid = checkValidItem(ItemGenre, DetailType, ParticularType)

        if nValid == 1 then
            if checkLevelMask(ParticularType) == 0 then
                Say("M∆t nπ c«n n©ng c p Æ∑ Æ∑ Æπt c©p cao nh t!",1,"Ta hi”u rÂi!/upgrade_mask");
                return
            end
            oldMask = {ItemGenre, DetailType, ParticularType,nLevel, nSeries, nLuck}
            nMask.tbProp={ItemGenre, DetailType, ParticularType+1,nLevel, nSeries, nLuck}
            nMask.nExpriedTime=TASK_DATE_EXPIRED
        end
        if nValid == 2 then
            local szCount=GetItemStackCount(nItemIndex)
            if szCount < 50 then
                Say("C«n ph∂i ÆÒ 50 Æ∏ ti’n c p!",1,"Ta hi”u rÂi!/upgrade_mask");
                return
            end
            nStone.tbProp = {ItemGenre, DetailType, ParticularType,nLevel, nSeries, nLuck}
        end
        if nValid == 3 then
            local szCount=GetItemStackCount(nItemIndex)
            if szCount < 50 then
                Say("C«n ph∂i ÆÒ 50 m∂nh m∆t nπ!",1,"Ta hi”u rÂi!/upgrade_mask");
                return
            end
            nSubMask.tbProp = {ItemGenre, DetailType, ParticularType,nLevel, nSeries, nLuck}
        end
        if(nValid == 0) then
            Say("VÀt ph»m kh´ng hÓp l÷!",1,"Ta hi”u rÂi!/upgrade_mask");
            return
        end
    end--for
    if not oldMask or not nMask or not nStone or not nSubMask then
        Say("C«n th™m ÆÛng vÀt ph»m: 1 m∆t nπ b t k˙ + 50 ß∏ ti’n c p + 50 m∂nh m∆t nπ!",1,"Ta hi”u rÂi!/upgrade_mask");
        return
    end
    --Xo∏ bæ 3 vÀt ph»m
    ConsumeEquiproomItem(1,oldMask[1], oldMask[2], oldMask[3], oldMask[4] )
    ConsumeEquiproomItem(50,nStone.tbProp[1], nStone.tbProp[2], nStone.tbProp[3], nStone.tbProp[4] )
    ConsumeEquiproomItem(50,nSubMask.tbProp[1], nSubMask.tbProp[2], nSubMask.tbProp[3], nSubMask.tbProp[4] )
    --Tπo m∆t nπ m∆i
    tbAwardTemplet:Give(nMask, 1, { "EventThorenthanbi", "NangcapMask" })
    Say("N©ng c p m∆t nπ thµnh c´ng!")
end
function checkValidItem(ItemGenre, DetailType, ParticularType)
    if (ItemGenre == 0 and DetailType == 11 and ParticularType >= 906 and ParticularType <= 920)  then
        return 1 -- M∂nh m∆t nπ
    end
    if (ItemGenre == 6 and DetailType == 1 and ParticularType == 5126 ) then
        return 2 -- ß∏ ti’n c p
    end
    if (ItemGenre == 6 and DetailType == 1 and ParticularType ==5125) then
        return 3 -- M∂nh m∆t na
    end
    if (ItemGenre == 4 and DetailType == 353 and ParticularType ==1) then
        return 4 -- Tinh hÂng b∂o thπch
    end
    if (ItemGenre == 4 and DetailType == 239 and ParticularType ==1) then
        return 5 -- Tˆ ThÒy Tinh
    end
    if (ItemGenre == 4 and DetailType == 238 and ParticularType ==1) then
    return 6 -- Lam ThÒy Tinh
    end
    if (ItemGenre == 4 and DetailType == 240 and ParticularType ==1) then
    return 7 -- LÙc ThÒy Tinh
    end
    return 0
end
function checkLevelMask(ParticularType)
    if(ParticularType== 908 or ParticularType==911 or ParticularType==914 or ParticularType==917 or ParticularType==920) then
        return 0 -- Max level
    end
return 1
end
function ConvertConfirm(nCount)
    if nCount <=0 or nCount ~= 1  then
        Say("C«n th™m ÆÛng vÀt ph»m: 1 m∆t nπ ngÚ hµnh - thÓ rÃn th«n b› !",1,"Ta hi”u rÂi!/convert_mask");
        return
    end
    nMask={}
    for i=1, nCount do
        local nItemIndex = GetGiveItemUnit(i)
        local ItemGenre, DetailType, ParticularType,nLevel, nSeries, nLuck = GetItemProp(nItemIndex)
        local nValid = checkValidItem(ItemGenre, DetailType, ParticularType)
        if nValid ~= 1 then
            Say("M∆t nπ nµy kh´ng hÓp l÷!",1,"Ta hi”u rÂi!/convert_mask");
            return
        end
        nMask.tbProp={ItemGenre, DetailType, ParticularType,nLevel, nSeries, nLuck}
    end
    local tbSay ="Ng≠Íi muËn chuy”n ÆÊi ngÚ hµnh m∆t nπ sang ngÚ hµnh nµo ?"
    local tbOption={}
    tinsert(tbOption, { "H÷ Kim",  function() convert_mask_final(nMask, 1) end })
    tinsert(tbOption, { "H÷ MÈc",  function() convert_mask_final(nMask, 2) end })
    tinsert(tbOption, { "H÷ ThÒy", function() convert_mask_final(nMask, 3) end })
    tinsert(tbOption, { "H÷ H·a",  function() convert_mask_final(nMask, 4) end })
    tinsert(tbOption, { "H÷ ThÊ",  function() convert_mask_final(nMask, 5) end })
    tinsert(tbOption, { "Quay lπi", function() main() end })
    CreateNewSayEx(tbSay, tbOption)
end
function convert_mask_final(nMask,nSeries)
    local MASK_SYSTEMS = {
        [1]  = { start = 906 },
        [2]  = { start = 909 },
        [3] = { start = 912 },
        [4]  = { start = 915 },
        [5]  = { start = 918 },
    }
    local ndSeries,nLevel=  GetMaskElementAndLevel(nMask)
    if(ndSeries==0 or nLevel==0) then
        Say("M∆t nπ nµy kh´ng hÓp l÷!",1,"Ta hi”u rÂi!/convert_mask");
        return
    end
    if(ndSeries==nSeries) then
        Say("M∆t nπ nµy Æ∑ thuÈc ngÚ hµnh ng≠Íi mong muËn rÂi",1,"Ta hi”u rÂi!/convert_mask");
        return
    end
    if (tbThoRen.checkXu(tbThoRen,100) == 0) then
        Say("Kh∏ch quan ch≠a ÆÒ ti“n ÆÂng ! Xin quay lπi sau nh–!", 1, "Â! Ta sœ Æi chu»n bﬁ  th™m!/no");
        return
    end ;
    tbThoRen.payXu(tbThoRen,100)
    local newMask = {}
    local newParticularType = (MASK_SYSTEMS[nSeries].start + nLevel -1)
    newMask.tbProp={nMask.tbProp[1], nMask.tbProp[2], newParticularType ,nMask.tbProp[4], nMask.tbProp[5], nMask.tbProp[6]}
    newMask.nExpriedTime=TASK_DATE_EXPIRED
    ConsumeEquiproomItem(1,nMask.tbProp[1], nMask.tbProp[2], nMask.tbProp[3], nMask.tbProp[4] )
    tbAwardTemplet:Give(newMask, 1, { "EventThorenthanbi", "ChuyendoiMask" })
    Say("Chuy”n ÆÊi ngÚ hµnh m∆t nπ thµnh c´ng!")
    return
end
function GetMaskElementAndLevel(nMask)
    if not nMask or not nMask.tbProp then
        return 0, 0
    end

    local p = nMask.tbProp[3]  -- ParticularType (ID vÀt ph»m)
    if p >= 906 and p <= 908 then
        return 1, (p - 906 + 1)
    elseif p >= 909 and p <= 911 then
        return 2, (p - 909 + 1)
    elseif p >= 912 and p <= 914 then
        return 3, (p - 912 + 1)
    elseif p >= 915 and p <= 917 then
        return 4, (p - 915 + 1)
    elseif p >= 918 and p <= 920 then
        return 5, (p - 918 + 1)
    else
        return 0, 0
    end
end
function show_tongkim()
    local ATM = MoneySystem
    Describe(format(strfill_center(" Th´ng tin ATM", 50, "-") .. "\n"
            .. "\n+ Ingame: %s"
            .. "\n+ Ti“n vπn: %d"
            .. "\n+ Ti“n ÆÂng: %d"
            .. "\n+ Kim nguy™n b∂o: %d"
            .. "\n+ ßi”m t›ch lÚy TËng Kim: %d"
            .. "\n+ ßi”m t›ch lÚy Li™n ß u: %d"
            .. "\n------------------------------------------------"

    , GetName() or ""
    , GetCash() or 0
    , ATM:get_xu() or 0
    , ATM:get_knb() or 0
    , ATM:get_tongkim() or 0
    , ATM:get_honor()  or 0
    -------------------------------------------------
    )
    , 1, "Ta hi”u rÂi!/main");
end
--/script/event/thorenthanbi/npc/npc_thoren.lua