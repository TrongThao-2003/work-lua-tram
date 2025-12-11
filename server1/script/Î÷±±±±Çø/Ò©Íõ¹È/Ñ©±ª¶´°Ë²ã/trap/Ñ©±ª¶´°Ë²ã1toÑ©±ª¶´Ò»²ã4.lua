--西北北区 雪豹洞八层1to雪豹洞一层4
--TrapID：西北北区 70

function main(sel)
    local nw, nx, ny = GetWorldPos();
    if (nw and nw == 995) then
        return
    end
    SetFightState(1);
    NewWorld(145, 1527, 3274);

end;