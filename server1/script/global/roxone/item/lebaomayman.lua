TASK_GROUP = 3320
TASK_USE_COUNT = 1

tbReward = {
    { type = 3, g = 6, d = 1, p = 26, rate = 10 }, -- vo lam mat tich
    { type = 3, g = 6, d = 1, p = 22, rate = 10 }, -- tay tuy kinh
    { type = 3, g = 6, d = 1, p = 71, rate = 10 }, -- tien thao lo
    { type = 2, g = 4, p = 239, rate = 10 }, -- tu thuy tinh
    { type = 2, g = 4, p = 240, rate = 10 }, -- luc thuy tinh
    { type = 2, g = 4, p = 238, rate = 10 }, -- lam thuy tinh
    { type = 2, g = 4, p = 353, rate = 10 }, -- tinh hong bao thach
    { type = 3, g = 6, d = 1, p = 23, rate = 30 }, -- thiet la han
}

function AddRandomItem(tb)
    if tb.type == 3 then
         AddItem(tb.g, tb.d, tb.p, 1,1,0)
    else
         AddItem(tb.g, tb.p, 0,0,1,1,0)
    end
end


function GetRandomReward()
    local nTotalRate = 0
    for i = 1, getn(tbReward) do
        nTotalRate = nTotalRate + tbReward[i].rate
    end

    local nRand = random(1, nTotalRate)
    local nSum = 0

    for i = 1, getn(tbReward) do
        nSum = nSum + tbReward[i].rate
        print("nSum: "..nSum)
        if nRand <= nSum then
            return tbReward[i]
        end
    end

    return tbReward[1] -- Fallback
end



function main()
    local nCount = GetTask(TASK_GROUP)
    nCount = nCount + 1
    SetTask(TASK_GROUP, nCount)
    Msg2Player("L‘ Bao May Mæn Æ∑ Æ≠Óc sˆ dÙng "..nCount.." l«n . Sˆ dÙng ÆÒ 10 l«n sœ nhÀn Æ≠Óc m„n quµ b t ngÍ !")

    if nCount >= 10 then
        AddItem(6, 1, 5127, 1,0,0)
        SetTask(TASK_GROUP, 0)
        Msg2Player( "Ph«n th≠Îng sau 10 vﬂng",  "Bπn nhÀn Æ≠Óc  ph«n th≠Îng m∆t nπ v≠¨ng gi∂")
    end

    local tbSel =GetRandomReward()
    if tbSel then
        AddRandomItem(tbSel)
    end
        return 0
    end
