Include("\\script\\battles\\battlehead.lua")
function backTown()
    UseTownPortal();
end;
function main(sel)
    if (GetFightState() == 0 or IsDisabledUseTownP() == 1 or GetTaskTemp(200) == 1) or (SubWorldIdx2ID(SubWorld) >= 387 and SubWorldIdx2ID(SubWorld) <= 395) then
        Msg2Player("HiÖn t¹i b¹n kh«ng thÓ sö dông bïa vÒ thµnh!");
        return 1
    end

    local W, X, Y = GetWorldPos();
    local nMapId = W;
    for i = 1, getn(tbBATTLEMAP) do
        if (nMapId == tbBATTLEMAP[i]) then
            Msg2Player("Lóc nµy b¹n kh«ng thÓ sö dông vËt phÈm nµy");
            return 1;
        end
    end
    Say("§¹i hiÖp cã ch¾c ch¾n muèn quay vÒ thµnh kh«ng?", 2, "Quay vÒ/backTown", "Kh«ng!/no");
    return 1
end;
