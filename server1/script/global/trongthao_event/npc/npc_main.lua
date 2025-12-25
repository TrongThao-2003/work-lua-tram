Include("\\script\\dailogsys\\dailogsay.lua");
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\global\\trongthao_event\\include.lua")

function main()
    local tbOption = {}
    tinsert(tbOption, { "Mua Hép Quµ" ,MuaHopQua});
    tinsert(tbOption, { "Nép lÖnh bµi ®ua TOP" ,NopLenhBaiDuaTop});
    tinsert(tbOption, { "Reset Event" ,ResetEvent});
    tinsert(tbOption, { "Xem th«ng tin c¸ nh©n" ,XemThongTinCaNhan});
    tinsert(tbOption, { "Xem BXH ®ua TOP" ,XemBXH});
    tinsert(tbOption, { "Nguyªn LiÖu Test" ,NguyenLieuTest});
    tinsert(tbOption, { "Tho¸t", no });
    CreateNewSayEx("EVENT", tbOption);
end

function NguyenLieuTest()
    local tbOption = {}
    tinsert(tbOption, { "LÊy 5 Lo¹i Hoa Qu¶", LayCacLoaiHoaQua });
    tinsert(tbOption, { "LÊy 5 LÖnh Bµi §ua Top", LayLenhBaiDuaTop });
    tinsert(tbOption, { "Quay l¹i", main });
    CreateNewSayEx("LÊY NGUY£N LIÖU", tbOption);
end

function MuaHopQua()
    local tbOption = {}
    tinsert(tbOption, { "Mua 10 Hép Quµ", MuaHopQua_Do, {10} });
    tinsert(tbOption, { "Mua 100 Hép Quµ", MuaHopQua_Do, {100} });
    tinsert(tbOption, { "Mua 200 Hép Quµ", MuaHopQua_Do, {200} });
    tinsert(tbOption, { "GhÐp Hép Quµ Sù KiÖn" ,GhepHopQua});
    tinsert(tbOption, { "LÊy 5 Lo¹i Hoa Qu¶", LayCacLoaiHoaQua });
    tinsert(tbOption, { "Quay l¹i", main });
    CreateNewSayEx("MUA HéP QUµ Sù KIÖN", tbOption);
end

function GhepHopQua()
    local tbOption = {}
    tinsert(tbOption, { "GhÐp 10 hép quµ" ,GhepHopQua_Do, {10} });
    tinsert(tbOption, { "GhÐp 100 hép quµ" ,GhepHopQua_Do, {100} });
    tinsert(tbOption, { "GhÐp 200 hép quµ" ,GhepHopQua_Do, {200} });
    tinsert(tbOption, { "Quay l¹i", MuaHopQua });
    CreateNewSayEx("GHÐP HéP QUµ Sù KIÖN", tbOption);
end



function LayCacLoaiHoaQua()
    local tbAwardItem = {
        {tbProp={6, 1, 3094, 1, 0, 0}, nBindState = nBindState, nCount = 10},
        {tbProp={6, 1, 3100, 1, 0, 0}, nBindState = nBindState, nCount = 10},
        {tbProp={6, 1, 3101, 1, 0, 0}, nBindState = nBindState, nCount = 10},
        {tbProp={6, 1, 3093, 1, 0, 0}, nBindState = nBindState, nCount = 10},
        {tbProp={6, 1, 3102, 1, 0, 0}, nBindState = nBindState, nCount = 10}
    }
    tbAwardTemplet:GiveAwardByList(tbAwardItem, "¡n hoa qu¶ th«i nµo")
end

function LayLenhBaiDuaTop()
    local tbAwardItem = {
        {tbProp={6, 1, 2526, 1, 0, 0}, nBindState = nBindState, nCount = 5}
    }
    tbAwardTemplet:GiveAwardByList(tbAwardItem, "LÊy lÖnh bµi §ua TOP")
end

function NopLenhBaiDuaTop()
    NopLenhBaiDuaTop_Do()
end

function XemThongTinCaNhan()
    XemThongTinCaNhan_Do()
end

function ResetEvent()
    ReSetEvent_Do()
end

function XemBXH()
    XemBXH_Do()
end