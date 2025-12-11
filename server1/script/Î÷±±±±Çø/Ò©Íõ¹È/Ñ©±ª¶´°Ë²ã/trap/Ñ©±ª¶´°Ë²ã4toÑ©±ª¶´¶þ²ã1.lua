--西北北区 雪豹洞八层4to雪豹洞二层1
--TrapID：西北北区 82

function main(sel)
    local nw, nx, ny = GetWorldPos();
    if (nw and nw == 995) then
        return
    end
    SetFightState(1);
    NewWorld(146, 1630, 3325);

end;