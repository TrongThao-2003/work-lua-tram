Include("\\script\\event\\thorenthanbi\\head.lua")
--return 1 k trõ vp return 0 trõ vËt phÈm
function main()
    if (tbThoRen.isActive(tbThoRen) ~= 1) then
        Say("VËt phÈm nµy ®· hÕt h¹n sö dông!", 0);
        return 1
    end

    if (CalcFreeItemCellCount() < 1) then
        Say("Xin h·y s¾p xÕp l¹i hµnh trang tr­íc ®·!", 0);
        return 1;
    end ;
    tbAwardTemplet:Give(tbOpenChest,1,"Thorenthanbi OpenChestMark")
    tbAwardTemplet:Give(tbOpenItem[23],1,"Thorenthanbi GiveDatiencap")--tbOpenItem[23]:§¸ tiÕn cÊp
    return 0
end
--/script/event/thorenthanbi/item/chest_mask.lua