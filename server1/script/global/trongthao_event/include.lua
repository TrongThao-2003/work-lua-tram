Include("\\script\\lib\\awardtemplet.lua")

ITEM_LENH_BAI_DUA_TOP = {6, 1, 2526, 1, 0, 0} --lenh bai GMBOSS
ITEM_HOP_QUA = {6, 1, 1734, 1, 0, 0} -- hop qua may man
ITEM_LE_BAO_MAY_MAN = {6, 1, 5128, 1, 0, 0} -- le bao may man
PRICE_HOP_QUA = 5 --5 xu

TASK_GROUP_DUA_TOP = 3321
TASK_GROUP_SU_DUNG_HOP_QUA = 3322
TASK_GROUP_RESET_EVENT = 3323

TASK_GROUP_BXH_DUA_TOP = 3324

tb_CacLoaiHoaQua = {
    { szName = "Qu¶ m·ng cÇu", tbProp = { 6, 1, 3094, 1, 0, 0 } },
    { szName = "Qu¶ dõa", tbProp = { 6, 1, 3100, 1, 0, 0 } },
    { szName = "Qu¶ ®u ®ñ", tbProp = { 6, 1, 3101, 1, 0, 0 } },
    { szName = "Qu¶ xoµi", tbProp = { 6, 1, 3093, 1, 0, 0 } },
    { szName = "Qña sung", tbProp = { 6, 1, 3102, 1, 0, 0 } },
}

function no()  end

function MuaHopQua_Do (nCount)
    if (CalcFreeItemCellCount() < 1) then
        Talk(1, "", "Hµnh trang kh«ng ®ñ 1 « trèng!");
        return
    end

    local nNeedMoney = nCount * PRICE_HOP_QUA
    if (GetCash() < nNeedMoney) then
        Talk(1, "", "B¹n kh«ng ®ñ tiÒn ®Ó mua Hép Quµ Sù KiÖn!");
        return
    end
    Pay(nNeedMoney)

    for i = 1, nCount do
        AddItem(unpack(ITEM_HOP_QUA))
    end
    Talk(1, "Thµnh c«ng", "B¹n ®ã mua " .. nCount .. " Hép Quµ Sù KiÖn!");
end

function GhepHopQua_Do(nCount)
    local nSoLuongHoaQua = 5 * nCount / 10

    if CalcEquiproomItemCount(6, 1, 1734, 1) < nCount then
        Talk(1, "ThÊt B¹i", "B¹n kh«ng ®ñ " .. nCount .. " Hép Quµ Sù KiÖn ®Ó ghÐp!");
        return
    end
    print("so luong hop qua-------- " .. nCount)

    local nCheck = 0
    for i = 1, getn(tb_CacLoaiHoaQua) do
        if(CalcEquiproomItemCount(tb_CacLoaiHoaQua[i].tbProp[1], tb_CacLoaiHoaQua[i].tbProp[2], tb_CacLoaiHoaQua[i].tbProp[3], tb_CacLoaiHoaQua[i].tbProp[4]) < nSoLuongHoaQua) then
            nCheck = nCheck + 1
            print("ncheck lan i" .. i .. " = " .. nCheck)
        end
    end
    if (nCheck ~= 0) then
        Talk(1, "ThÊt b¹i", "B¹n kh«ng ®ñ sè l­îng qu¶ yªu cÇu ®Ó ghÐp");
        return
    end

    if (GetTask(TASK_GROUP_SU_DUNG_HOP_QUA) >= 600) then
        Talk(1, "Y£U CÇU", "B¹n ®· ®¹t giíi h¹n ghÐp 600 Hép Quµ Sù KiÖn, yªu cÇu reset event ®Ó tiÕp tôc ghÐp hép quµ");
        return
    end

    local nSoLan = GetTask(TASK_GROUP_SU_DUNG_HOP_QUA)
    nSoLan = nSoLan + nCount
    SetTask(TASK_GROUP_SU_DUNG_HOP_QUA, nSoLan)
    print("so lan ghep hop qua :" .. nSoLan)

    ConsumeEquiproomItem(nCount, 6, 1, 1734, 1) -- xoa hop qua

    for i =1, getn(tb_CacLoaiHoaQua) do  -- xoa hoa qua
        ConsumeEquiproomItem(nSoLuongHoaQua, tb_CacLoaiHoaQua[i].tbProp[1], tb_CacLoaiHoaQua[i].tbProp[2], tb_CacLoaiHoaQua[i].tbProp[3], tb_CacLoaiHoaQua[i].tbProp[4])
    end

    for i = 1, nCount do
        AddItem(unpack(ITEM_LE_BAO_MAY_MAN))
    end

    Talk(1, "Thµnh c«ng", "B¹n §· NhËn §­îc " .. nCount .. " LÔ Bao May M¾n sau khi ghÐp ".. nCount.. " Hép Quµ Sù KiÖn");
end

function NopLenhBaiDuaTop_Do()
    GiveItemUI("NéP LÖNH BµI §UA TOP", "Xin thÝ chñ h·y nép lÖnh bµi ®ua top ®Ó ®­îc céng 1 l­ît ®ua top", "XuLyNopLenhBai", "no",1);
end

function XuLyNopLenhBai(nCount)
    if (nCount < 1) then
        Say("Ng­¬i bÞp ta µ. Ng­¬i ®· göi LÖnh Bµi §ua Top vµo ®©y ®©u", 0);
        return
    elseif (nCount > 1) then
        Say("Ng­¬i chØ cã thÓ göi 1 LÖnh Bµi §ua Top, ta giµ råi xö lý kh«ng kÞp, th«ng c¶m nhÐ", 0);
        return
    end

    if (CalcEquiproomItemCount(ITEM_LENH_BAI_DUA_TOP[1], ITEM_LENH_BAI_DUA_TOP[2], ITEM_LENH_BAI_DUA_TOP[3], ITEM_LENH_BAI_DUA_TOP[4])) < 1 then
        Say("Ng­¬i kh«ng cã LÖnh Bµi §ua Top trong hµnh trang", 0);
        return
    end

    ConsumeEquiproomItem(1, ITEM_LENH_BAI_DUA_TOP[1], ITEM_LENH_BAI_DUA_TOP[2],ITEM_LENH_BAI_DUA_TOP[3],ITEM_LENH_BAI_DUA_TOP[4])

    local nSoLan = GetTask(TASK_GROUP_DUA_TOP)
    nSoLan = nSoLan + 1
    SetTask(TASK_GROUP_DUA_TOP, nSoLan)
    print("so lan lenh bai da nop :" .. nSoLan)

    WriteLogBXHDuaTop(GetName(), nSoLan)

    Talk(1, "Thµnh C«ng", "Nép LÖnh Bµi §ua Top thµnh c«ng! B¹n ®· nép " .. nSoLan .. " lÇn.");
end

function XemThongTinCaNhan_Do()
    local nSoLanDuaTop = GetTask(TASK_GROUP_DUA_TOP)
    local nSoLanSuDungHopQua = GetTask(TASK_GROUP_SU_DUNG_HOP_QUA)
    local nSoLan = GetTask(TASK_GROUP_RESET_EVENT)

    Talk(1, "TH¤NG TIN C¸ NH¢N", "Hép Quµ Sù KiÖn ®· ghÐp : ".. nSoLanSuDungHopQua .. ". LÖnh Bµi §ua Top ®· nép: ".. nSoLanDuaTop .. ". Sè lÇn Reset Event : ".. nSoLan .." lÇn.");
end

function ReSetEvent_Do()
    if(GetTask(TASK_GROUP_SU_DUNG_HOP_QUA) <= 0) then
        Talk(1, "", "B¹n ch­a GhÐp Hép Quµ Sù KiÖn lÇn nµo, kh«ng thÓ Reset Event");
        return
    end
    SetTask(TASK_GROUP_SU_DUNG_HOP_QUA, 0)
    Talk(1, "Thµnh C«ng", "B¹n ®· Reset Event thµnh c«ng." );

    local nSoLan = GetTask(TASK_GROUP_RESET_EVENT)
    nSoLan = nSoLan + 1
    SetTask(TASK_GROUP_RESET_EVENT, nSoLan)
    print("so lan reset event :" .. nSoLan)
end

function XemBXH_Do()
    --local tbRank = LoadBXHDuaTop()
    --if getn(tbRank) == 0 then
    --    Talk(1, "BXH", "Ch?a có d? li?u x?p h?ng.")
    --    return
    --end
    --
    --local tbSort = SortBXH(tbRank)
    --
    --local szMsg = "B?NG X?P H?NG ?UA TOP\n\n"
    --for i = 1, 10 do
    --    if tbSort[i] then
    --        szMsg = szMsg ..
    --                string.format(
    --                        "Top %d: %s - %d l?n\n",
    --                        i,
    --                        tbSort[i].name,
    --                        tbSort[i].point
    --                )
    --    else
    --        szMsg = szMsg ..
    --                string.format("Top %d: ...\n", i)
    --    end
    --end
    --
    --Talk(1, "BXH ?UA TOP", szMsg)
end

function WriteLogBXHDuaTop(playerName, nPoint)
    local filename = "/script/global/trongthao_event/logBXH.txt"
    local time = os.date("%Y-%m-%d %H:%M:%S")
    local file = io.open(filename, "a+")

    if not file then
        print("---- Khong Mo Duoc File logBXH.txt ----")
        return
    end

    file:write(
            string.format("[%s]|%s|%d\n", time, playerName, nPoint)
    )
    file:close()
end

--function LoadBXHDuaTop()
--    local filename = "/script/global/trongthao_event/logBXH.txt"
--    local file = io.open(filename, "r")
--    if not file then
--        return {}
--    end
--
--    local tbRank = {}
--    for line in file:lines() do
--        -- format: [time]|name|point
--        local _, _, szName, nPoint =
--        string.find(line, "%]|([^|]+)|(%d+)")
--        if szName and nPoint then
--            nPoint = tonumber(nPoint)
--            -- luôn l?y ?i?m l?n nh?t (dòng m?i nh?t)
--            if not tbRank[szName] or tbRank[szName] < nPoint then
--                tbRank[szName] = nPoint
--            end
--        end
--    end
--    file:close()
--    return tbRank
--end

--function SortBXH(tbRank)
--    local tbSort = {}
--    for name, point in pairs(tbRank) do
--        table.insert(tbSort, { name = name, point = point })
--    end
--
--    table.sort(tbSort, function(a, b)
--        return a.point > b.point
--    end)
--
--    return tbSort
--end