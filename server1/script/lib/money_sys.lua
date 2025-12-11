-------------------------------------------------------------
-- money_sys.lua
-- HÖ thèng qu¶n lý tiÒn tÖ trong JX1
-- T¸c gi¶: Roxone
-------------------------------------------------------------
IncludeLib("TASKSYS")
MoneySystem = {}
-------------------------------------------------------------
-- Get Money Function
-------------------------------------------------------------
--KiÓm tra Xu
function MoneySystem:get_xu()
    return CalcEquiproomItemCount(4, 417, 1, 1) or 0
end

-- KiÓm tra kim nguyªn b¶o
function MoneySystem:get_knb()
    return CalcEquiproomItemCount(4, 343, 1, 1)  or 0
end

-- KiÓm tra ®iÓm tèng kim
function MoneySystem:get_tongkim()
    return GetTask(747) or 0
end
-- KiÓm tra ®iÓm vinh dù
function MoneySystem:get_honor()
    return GetTask(2501) or 0
end
-- KiÓm tra ®iÓm uy danh
--function MoneySystem:get_reputation()
--    return GetRespect() or 0
--end

-------------------------------------------------------------
-- Add Money Function
-------------------------------------------------------------
--- Thªm Xu
function MoneySystem:add_xu(nAmount)
    if nAmount <= 0 then
        return
    end
    if CalcFreeItemCellCount() < 1 then
        Msg2Player("Hµnh trang kh«ng ®¹t cÊp, kh«ng thÓ thªm xu!")
        return
    end
    for i=1, nAmount do
        AddItem(4, 417, 1, 1, 0, 0, 0);
    end
end
--- Thªm Kim Nguyªn B¶o
function MoneySystem:add_knb(nAmount)
    if nAmount <= 0 then
        return
    end
    if CalcFreeItemCellCount() < 1 then
        Msg2Player("Hµnh trang kh«ng ®¹t cÊp, kh«ng thÓ thªm kim nguyªn b¶o!")
        return
    end
    for i=1, nAmount do
        AddItem(4, 343, 1, 1, 0, 0, 0);
    end
end
--- Thªm ®iÓm t¨ng kim
function MoneySystem:add_tongkim(nAmount)
    if nAmount <= 0 then
        return
    end
    local nCurrent = GetTask(747) or 0
    SetTask(747, nCurrent + nAmount)
end
--- Thªm ®iÓm vinh dù
function MoneySystem:add_honor(nAmount)
    if nAmount <= 0 then
        return
    end
    local nCurrent = GetTask(2501) or 0
    SetTask(2501, nCurrent + nAmount)
end
--- Thªm ®iÓm uy danh
--function MoneySystem:add_reputation(nAmount)
--    if nAmount <= 0 then
--        return
--    end
--    local nCurrent = GetRespect() or 0
--    SetRespect(nCurrent + nAmount)
--end
-------------------------------------------------------------
-- Pay Money Function
-------------------------------------------------------------
--- Pay Xu
function MoneySystem:pay_xu(nAmount)
    ConsumeEquiproomItem(nAmount, 4, 417, 1, 1)
end
--- Pay Kim Nguyªn B¶o
function MoneySystem:pay_knb(nAmount)
    ConsumeEquiproomItem(nAmount, 4, 343, 1, 1)
end
--- Pay ®iÓm t¨ng kim
function MoneySystem:pay_tongkim(nAmount)
    SetTask(747, GetTask(747) - nAmount)
end
--- Pay ®iÓm vinh dù
function MoneySystem:pay_honor(nAmount)
    SetTask(2501, GetTask(2501) - nAmount)
end
--- Pay ®iÓm uy danh
function MoneySystem:pay_respect(nAmount)
    SetRespect(GetRespect() - nAmount)
end
