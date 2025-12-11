--西北北区 雪豹洞八层2to雪豹洞七层1
--TrapID：西北北区 79

function main(sel)
    local nw, nx, ny = GetWorldPos();
    if (nw and nw == 995) then
        return
    end
    SetFightState(1);
    NewWorld(151, 1612, 3218);

end;