TASK_GROUP_DEM_HOP_QUA_VUI_VE = 3326
function main()
    local nCount = GetTask(TASK_GROUP_DEM_HOP_QUA_VUI_VE)

    if nCount >= 300 then
        Talk(1, "§¹t Giíi H¹n", "Kh«ng thÓ sö dông hép quµ vui vÎ khi ®· sö dông ®ñ 300 hép ");
        return 0
    end

    nCount = nCount + 1
    SetTask(TASK_GROUP_DEM_HOP_QUA_VUI_VE, nCount)
    print("--------- So hop qua vui ve da su dung: "..nCount)
    AddOwnExp(4000000)
    Msg2Player("B¹n ®· nhËn ®­îc 4.000.000 ®iÓm kinh nghiÖm");

    if nCount == 300 then
        Talk(1, "Hoµn Thµnh", "B¹n ®­îc nhËn 1.500.000.000 EXP sau 300 sö dông Hép Quµ Vui VÎ ");
        AddOwnExp(1500000000)
    end

    return 0
end