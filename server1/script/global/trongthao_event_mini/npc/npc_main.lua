Include("\\script\\dailogsys\\dailogsay.lua");
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\global\\trongthao_event_mini\\lib\\mua_hop_qua_may_man.lua")
Include("\\script\\global\\trongthao_event_mini\\lib\\nguyen_lieu_test_event_mini.lua")
Include("\\script\\global\\trongthao_event_mini\\lib\\mua_nguyen_lieu_hop_qua_vui_ve.lua")
Include("\\script\\global\\trongthao_event_mini\\lib\\xu_ly_ghep_hop_qua_vui_ve.lua")
Include("\\script\\global\\trongthao_event_mini\\lib\\xu_ly_du_dieu_kien_nhan_qua.lua")
function main()
    local tbOption = {}
    tinsert(tbOption, { "Hép Quµ May M¾n" ,HopQuaMayMan});
    tinsert(tbOption, { "Hép Quµ Vui VÎ" ,HopQuaVuiVe});
    tinsert(tbOption, { "Nguyªn LiÖu Test Event Mini" ,NguyenLieuTestEventMini});
    tinsert(tbOption, { "NhËn Quµ Sù KiÖn" ,NhanQuaSuKien});
    tinsert(tbOption, { "Tho¸t", no });
    CreateNewSayEx("EVENT - MINI", tbOption);
end

function NhanQuaSuKien()
    XuLyDuDieuKienNhanQua()
end

function HopQuaVuiVe()
    local tbOption = {}
    tinsert(tbOption, { "Mua Hép Quµ Vui VÎ" ,MuaHopQuaVuiVe});
    tinsert(tbOption, { "GhÐp Hép Quµ Vui VÎ" ,GhepHopQuaVuiVe});
    tinsert(tbOption, { "Quay L¹i", main });
    CreateNewSayEx("EVENT - MINI", tbOption);
end

function GhepHopQuaVuiVe()
    GiveItemUI("GHÐP HéP QUµ VUI VÎ", "Sö dông nguyªn liÖu GhÐp Hép Quµ Vui VÎ GhÐp thµnh Hép Quµ Vui VÎ ", "XuLyGhepHopQuaVuiVe", "no",1);
end

function MuaHopQuaVuiVe()
    local tbOption = {}
    tinsert(tbOption, { "Mua 100 Hép Quµ Vui VÎ", MuaHopQuaVuiVe_Do, {100} });
    tinsert(tbOption, { "Mua 200 Hép Quµ Vui VÎ", MuaHopQuaVuiVe_Do, {200} });
    tinsert(tbOption, { "Mua 300 Hép Quµ Vui VÎ", MuaHopQuaVuiVe_Do, {300} });
    tinsert(tbOption, { "Quay L¹i", HopQuaVuiVe });
    CreateNewSayEx("EVENT - MINI", tbOption);
end

function HopQuaMayMan()
    local tbOption = {}
    tinsert(tbOption, { "Mua Hép Quµ May M¾n" ,MuaHopQuaMayMan});
    tinsert(tbOption, { "Quay L¹i", main });
    CreateNewSayEx("EVENT - MINI", tbOption);
end

function MuaHopQuaMayMan()
    local tbOption = {}
    tinsert(tbOption, { "Mua 10 Hép Quµ May M¾n", MuaHopQuaMayMan_Do, {10} });
    tinsert(tbOption, { "Mua 50 Hép Quµ May M¾n", MuaHopQuaMayMan_Do, {50} });
    tinsert(tbOption, { "Mua 100 Hép Quµ May M¾n", MuaHopQuaMayMan_Do, {100} });
    tinsert(tbOption, { "Mua 200 Hép Quµ May M¾n", MuaHopQuaMayMan_Do, {200} });
    tinsert(tbOption, { "Quay L¹i", HopQuaMayMan });
    CreateNewSayEx("EVENT - MINI", tbOption);
end

function NguyenLieuTestEventMini()
    local tbOption = {}
    tinsert(tbOption, { "KiÓm Tra Nguyªn LiÖu", KiemTraNguyenLieu });
    tinsert(tbOption, { "NhËn §iÓm Tèng Kim", NhanDiemTongKim });
    tinsert(tbOption, { "NhËn TiÒn V¹n", NhanTienVan });
    tinsert(tbOption, { "NhËn TiÒn §ång", NhanTienDong });
    tinsert(tbOption, { "Quay L¹i", main });
    CreateNewSayEx("EVENT - MINI", tbOption);
end

function no()  end