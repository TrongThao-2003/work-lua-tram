function KiemTraNguyenLieu()
    local nTongKim = GetTask(747);
    local nCash = GetCash();

    Talk(1, "", "ßi”m TËng Kim : ".. nTongKim .. ". Ti“n Vπn: ".. nCash );
end

function NhanDiemTongKim()
    local nTongKim = GetTask(747);
    nTongKim = nTongKim + 10000
    SetTask(747, nTongKim);
    print("----------- Diem Tong Kim: " .. nTongKim);
    Msg2Player("Bπn Æ∑ nhÀn Æ≠Óc 1.000 Æi”m TËng Kim, Æi”m TËng Kim hi÷n tπi lµ :" .. nTongKim );
end

function NhanTienVan()
    local nCash = GetCash();
    Earn(100000)
    print("----------- Tien Van: " .. nCash);
    Msg2Player("Bπn Æ∑ nhÀn Æ≠Óc 100.000 Ti“n Vπn, Ti“n Vπn hi÷n tπi lµ :" .. nCash );
end

function NhanTienDong()
    local nXuHanhTrang= CalcEquiproomItemCount(4, 417, 1, 1)
    print("----------- Tien Xu: " .. nXuHanhTrang);
    local nCoin = tonumber(50)
    AddStackItem(nCoin,4,417,1,1,0,0,0)
    Msg2Player("Bπn Æ∑ nhÀn Æ≠Óc 50 Ti“n Xu, Ti“n Xu hi÷n tπi lµ :" .. nXuHanhTrang );
end