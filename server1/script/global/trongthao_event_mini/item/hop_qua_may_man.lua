TASK_GROUP_DEM_HOP_QUA_MAY_MAN = 3325
function main()
    local nCount = GetTask(TASK_GROUP_DEM_HOP_QUA_MAY_MAN)

    if nCount >= 200 then
        Talk(1, "§¹t Giíi H¹n", "Kh«ng thÓ sö dông hép quµ may m¾n khi ®· sö dông ®ñ 200 hép ");
        return 0
    end

    nCount = nCount + 1
    SetTask(TASK_GROUP_DEM_HOP_QUA_MAY_MAN, nCount)
    print("--------- So hop qua may man da su dung: "..nCount)
    AddOwnExp(3000000)
    Msg2Player("B¹n ®· nhËn ®­îc 3.000.000 ®iÓm kinh nghiÖm");

    if nCount == 200 then
        Talk(1, "Hoµn Thµnh", "B¹n ®­îc nhËn 1.000.000.000 EXP sau 200 sö dông Hép Quµ May M¾n ");
        AddOwnExp(1000000000)
    end

    return 0
end