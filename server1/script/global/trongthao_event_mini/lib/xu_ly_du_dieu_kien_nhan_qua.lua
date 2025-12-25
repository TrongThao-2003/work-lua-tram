Include("\\script\\global\\trongthao_event_mini\\item\\hop_qua_vui_ve.lua")
Include("\\script\\global\\trongthao_event_mini\\item\\hop_qua_may_man.lua")
tbItemAward = {
    {szName = "M∆t nπ h÷ Kim c p 1", tbProp = {0, 11, 906, 1, 0, 0},nExpiredTime = 21600},
    {szName = "M∆t nπ h÷ MÈc c p 1", tbProp = {0, 11, 909, 1, 0, 0},nExpiredTime = 21600},
    {szName = "M∆t nπ h÷ Thu˚ c p 1", tbProp = {0, 11, 912, 1, 0, 0},nExpiredTime = 21600},
    {szName = "M∆t nπ h÷ H·a c p 1", tbProp = {0, 11, 915, 1, 0, 0},nExpiredTime = 21600},
    {szName = "M∆t nπ h÷ ThÊ c p 1", tbProp = {0, 11, 918, 1, 0, 0},nExpiredTime = 21600},
}

function XuLyDuDieuKienNhanQua()
    local nCountHopQuaMayMan = GetTask(TASK_GROUP_DEM_HOP_QUA_MAY_MAN)
    print("nCountHopQuaMayMan: " .. nCountHopQuaMayMan)
    local nCountHopQuaVuiVe = GetTask(TASK_GROUP_DEM_HOP_QUA_VUI_VE)
    print("nCountHopQuaVuiVe: " .. nCountHopQuaVuiVe)
    local PhanThuongTheoNguHanhNguoiChoi = GetSeries()

    if nCountHopQuaMayMan == 200 and nCountHopQuaVuiVe == 300 then
        Talk(1, "Ph«n Th≠Îng ß∆t Bi÷t", "Bπn Æ∑ Æπt mËc sˆ dÙng 200 HÈp Quµ May Mæn vµ 300 HÈp Quµ Vui VŒ. Bπn nhÀn Æ≠Óc 1 M∆t Nπ K‹ N®ng c©p 1 (M∆t Nπ Theo H÷)");
        tbAwardTemplet:GiveAwardByList(tbItemAward[PhanThuongTheoNguHanhNguoiChoi + 1], "M∆t Nπ theo h÷", 1)
    end
end