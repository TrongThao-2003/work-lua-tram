PRICE_XU_100_HOP_QUA_VUI_VE = 5
ITEM_NGUYEN_LIEU_GHEP_HOP_QUA_VUI_VE = {6, 1, 5130, 1, 0, 0}

function MuaHopQuaVuiVe_Do(nCount)
    if (CalcFreeItemCellCount() < 1) then
        Talk(1, "", "Hµnh trang kh«ng ®ñ 1 « trèng!");
        return
    end

    if (nCount == 100) then
        PRICE_XU_100_HOP_QUA_VUI_VE = 5
    elseif (nCount == 200) then
        PRICE_XU_100_HOP_QUA_VUI_VE = 10
    elseif (nCount == 300) then
        PRICE_XU_100_HOP_QUA_VUI_VE = 15
    end

    print("Gia tien xu mua nguyen lieu ghep hop qua vui ve: " .. PRICE_XU_100_HOP_QUA_VUI_VE)

    if (CalcEquiproomItemCount(4, 417, 1, 1) < PRICE_XU_100_HOP_QUA_VUI_VE) then
        Talk(1, "ThÊt B¹i", "B¹n kh«ng ®ñ TiÒn Xu ®Ó mua Nguyªn LiÖu GhÐp Hép Quµ Vui VÎ");
        return
    end

    ConsumeEquiproomItem(PRICE_XU_100_HOP_QUA_VUI_VE, 4, 417, 1, 1)

    for i = 1, nCount do
        AddItem(unpack(ITEM_NGUYEN_LIEU_GHEP_HOP_QUA_VUI_VE))
    end

    Talk(1, "Thµnh c«ng", "B¹n ®· mua " .. nCount .. " Nguyªn LiÖu GhÐp Hép Quµ Vui VÎ");
end