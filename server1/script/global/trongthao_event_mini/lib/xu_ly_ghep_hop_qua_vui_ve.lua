ITEM_NGUYEN_LIEU_GHEP_HOP_QUA_VUI_VE = {6, 1, 5130, 1}
ITEM_HOP_QUA_VUI_VE = {6, 1, 5131, 1, 0, 0}

function XuLyGhepHopQuaVuiVe()
    local nNeedXuMoiLanGhep = 1
    local nNguyenLieu = CalcEquiproomItemCount(6, 1, 5130, 1)
    if (CalcFreeItemCellCount() < 1) then
        Talk(1, "", "Hµnh trang kh«ng ®ñ 1 « trèng!");
        return
    end

    if (CalcEquiproomItemCount(4, 417, 1, 1) < 1) then
        Talk(1, "ThÊt B¹i", "B¹n kh«ng ®ñ TiÒn Xu ®Ó ghÐp Hép Quµ Vui VÎ");
        return
    end

    if (CalcEquiproomItemCount(6, 1, 5130, 1) < 1) then
        Say("Kh«ng cã Nguyªn LiÖu GhÐp Hép Quµ Vui VÎ trong hµnh trang", 0);
        return
    end

    ConsumeEquiproomItem(nNeedXuMoiLanGhep, 4, 417, 1, 1)
    ConsumeEquiproomItem(nNguyenLieu, 6, 1, 5130, 1)

    for i = 1, nNguyenLieu do
        AddItem(unpack(ITEM_HOP_QUA_VUI_VE))
    end

    Talk(1, "Thµnh C«ng", "GhÐp Hép Quµ Vui VÎ Thµnh C«ng. GhÐp thµnh c«ng " .. nNguyenLieu .. " hép.");
end