ITEM_HOP_QUA_MAY_MAN = {6, 1, 5129, 1, 0, 0} -- le bao may man
PRICE_TONGKIM  = 100
PRICE_MONEY = 50000
PRICE_XU = 1

function MuaHopQuaMayMan_Do(nCount)
    if (CalcFreeItemCellCount() < 1) then
        Talk(1, "", "Hµnh trang kh«ng ®ñ 1 « trèng!");
        return
    end

    local nNeedTongKim = PRICE_TONGKIM * nCount
    local nNeedMoney   = PRICE_MONEY * nCount
    local nNeedXu      = PRICE_XU * nCount

    local nTongKim = GetTask(747) -- id diem tong kim
    local nMoney   = GetCash()

    if (nTongKim < nNeedTongKim) then
        Talk(1, "ThÊt B¹i", "B¹n kh«ng ®ñ ®iÓm Tèng Kim ®Ó mua Hép Quµ May M¾n");
        return
    end
    if (nMoney < nNeedMoney) then
        Talk(1, "ThÊt B¹i", "B¹n kh«ng ®ñ TiÒn V¹n ®Ó mua Hép Quµ May M¾n");
        return
    end
    if (CalcEquiproomItemCount(4, 417, 1, 1) < nNeedXu) then
        Talk(1, "ThÊt B¹i", "B¹n kh«ng ®ñ TiÒn Xu ®Ó mua Hép Quµ May M¾n");
        return
    end

    SetTask(747, nTongKim - nNeedTongKim)
    Pay(nNeedMoney)
    ConsumeEquiproomItem(nNeedXu, 4, 417, 1, 1)

    for i = 1, nCount do
        AddItem(unpack(ITEM_HOP_QUA_MAY_MAN))
    end
    Talk(1, "Thµnh c«ng", "B¹n ®· mua " .. nCount .. " Hép Quµ Sù KiÖn!");
end