Include("\\script\\event\\tetnguyendan\\event.lua")
--return 1 k trõ vp return 0 trõ vËt phÈm
function main()
    if (tbTet.isActive(tbTet) ~= 1) then
        Say("VËt phÈm nµy ®· hÕt h¹n sö dông!", 0);
        return 1
    end
    local nLevel = GetLevel()
    if nLevel < 80 then
        Say("Søc m¹nh cña ®¹i hiÖp ch­a ®ñ ®Ó cã thÓ sö dông vËt phÈm nµy!", 0);
        return 1
    end
    if (GetTask(TASK_TET_USED_ITEM) > TASK_TET_USED_LIMIT) then
        Say("§¹i hiÖp ®· sö dông vËt phÈm nµy qu¸ nhiÒu lÇn råi!", 0);
        return 1;
    end
    if (CalcFreeItemCellCount() < 1) then
        Say("Xin h·y s¾p xÕp l¹i hµnh trang tr­íc ®·!", 0);
        return 1;
    end ;
    if (GetTask(TASK_TET_USED_ITEM) == TASK_TET_USED_LIMIT) then
        tbTet.OpenAwardItem(tbTet, tbVipItem)
        return 0
    end
    tbTet.OpenAwardItem(tbTet, tbOpenItem)
    return 0
end
