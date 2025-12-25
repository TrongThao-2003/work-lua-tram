Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\activitysys\\functionlib.lua")

function main()
    local nNpcIndex = GetLastDiagNpc();
    --local idx=GetNpcSettingIdx(nNpcIndex);
    --print("------------------------------------"..idx)
    local tbItem = {
        { szName = "Qu∂ Huy Hoµng (trung)", tbProp = { 6,1,905,1,0,0 }, nCount = 1, nBindState = -2 },  --nBindState: trang thai khoa vat pham
        {szName="M∂nh m∆t nπ - ThÓ rÃn th«n b›",tbProp={6,1,5125,1,0,0},nCount=3,nExpiredTime=20251101}
    };
    tbAwardTemplet:Give(tbItem, 1, { "MapSinhTu", "NhatQuaHuyHoang" });   -- dong nay them phan thuong vao hanh trang nguoi choi dang doi thoai
    DelNpc(nNpcIndex)
end
