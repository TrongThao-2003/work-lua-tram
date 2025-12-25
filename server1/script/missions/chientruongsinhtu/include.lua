MISSION_MATCH = 71
TIMER_MATCH = 118
TIMER_CLOSE = 119
TIMER_BOARD = 120
--
TIME_SIGNUP = 15
LIMIT_PLAYER_COUNT = 8  -- gioi han toi da 8 player
LIMIT_FINISH = 3 * 60         -- tong thoi gian hoan thanh nhiem vu la 30 phut  (dang test sua con 3phut)
INTERVAL_BOARD = 1 * 60  -- thong bao 1 phut 1 lan
VARV_STATE = 1


-- map chien truong sinh tu
tbLevelMaps = {
    [1] = {
        996,
    }
}

VARV_NPC_BATCH = 1            -- Dot xuat NPC
VARV_NPC_COUNT = 2            -- So luong NPC
VARV_PLAYER_COUNT = 3         -- So luong nguoi choi
VARV_STATE = 4                -- Trang thai mission: 1 = Ghi danh, 2 = Dang dien ra
VARV_SIGNUP_WORLD = 5         -- Map ghi danh
VARV_SIGNUP_POSX = 6          -- Toa do X diem ghi danh
VARV_SIGNUP_POSY = 7          -- Toa do Y diem ghi danh
VARV_BOARD_TIMER = 8          -- Thoi gian dien ra tran dau (giay)
VARV_PLAYER_TOTAL_COUNT = 9   -- Tong so nguoi choi (ke ca da chet)
VARV_PLAYER_USE_INDEX = 10    -- Chi so nguoi choi da su dung
VARV_NPC_USE_INDEX = 11       -- Chi so NPC da su dung
VARV_MISSION_RESULT = 12      -- Ket qua mission: 1 = Thang, 0 = Thua
VARV_PLAYER_SEX = 13       -- Gioi tinh nguoi choi

VARS_PLAYER_NAME = 14   -- Ten nguoi choi
VARV_PLAYER_SERIES = VARV_PLAYER_SEX + LIMIT_PLAYER_COUNT + 1

NPC_INDEX = {}

-- Add NPC to map chien truong sinh tu
new_npc = {
    { 1130, 80, 4, 53, 1621, 3195, 0, "NPC - ChiÕn tr­êng sinh tö", 0, "\\script\\missions\\chientruongsinhtu\\npc\\npc_chientruongsinhtu.lua" },
}

function add_npc(tbnpc)
    for i = 1, getn(tbnpc) do
        Mid = SubWorldID2Idx(tbnpc[i][4]);
        if (Mid >= 0) then
            TabValue5 = tbnpc[i][5] * 32;
            TabValue6 = tbnpc[i][6] * 32;
            local nNpcIdx = AddNpc(tbnpc[i][1], tbnpc[i][2], Mid, TabValue5, TabValue6, tbnpc[i][7], tbnpc[i][8]);
            SetNpcScript(nNpcIdx, tbnpc[i][10]);
            tinsert(NPC_INDEX, nNpcIdx)
        end ;
    end ;
end

function start_close_timer()
    StartMissionTimer(MISSION_MATCH, TIMER_CLOSE, LIMIT_FINISH * 18);  --30 phut  (dang test con 3 phut)
end

function close_close_timer()
    StopMissionTimer(MISSION_MATCH, TIMER_CLOSE);
end

function GetMatchPlayerList()

    local players = {};
    local index = 0;
    local player = 0;
    local player_count = 0;
    for i = 1, GetMSPlayerCount(MISSION_MATCH, 1) do
        index, player = GetNextPlayer(MISSION_MATCH, index, 0);
        if (player > 0) then
            player_count = player_count + 1;
            if (player_count > LIMIT_PLAYER_COUNT) then
                print(format("Sè l­îng ng­êi ch¬i lµm nhiÖm vô ®· qu¸ giíi h¹n %d ng­êi", LIMIT_PLAYER_COUNT));
                break ;
            else
                players[player_count] = player
            end
        end
    end

    return players
end

function kickout()

    local tbPlayers = GetMatchPlayerList()

    --local world = GetMissionV(VARV_SIGNUP_WORLD)
    --local pos_x = GetMissionV(VARV_SIGNUP_POSX)
    --local pos_y = GetMissionV(VARV_SIGNUP_POSY)

    for i = 1, getn(tbPlayers) do
        print("------------------------------------" .. i)
        CallPlayerFunction(tbPlayers[i], DelMSPlayer, MISSION_MATCH, 1)
        CallPlayerFunction(tbPlayers[i], SetLogoutRV, 0)
        CallPlayerFunction(tbPlayers[i], NewWorld, 53, 1609, 3209)

    end
end

function close_match()
    kickout();

    world = SubWorldIdx2ID(SubWorld);
    ClearMapNpc(world, 1);
    ClearMapTrap(world);
    ClearMapObj(world);
end

function start_board_timer()
    StartMissionTimer(MISSION_MATCH, TIMER_BOARD, INTERVAL_BOARD * 18);
end

function close_board_timer()
    StopMissionTimer(MISSION_MATCH, TIMER_BOARD);
end

function save_player_info()
    local players = GetMatchPlayerList()
    for index = 1, getn(players) do

        local szName = CallPlayerFunction(players[index], GetName)
        local nSex = CallPlayerFunction(players[index], GetSex)
        local nSeries = CallPlayerFunction(players[index], GetSeries)

        SetMissionS(VARS_PLAYER_NAME + index, szName)
        SetMissionV(VARV_PLAYER_SEX + index, nSex)
        SetMissionV(VARV_PLAYER_SERIES + index, nSeries)
    end

    SetMissionV(VARV_PLAYER_TOTAL_COUNT, getn(players));
    SetMissionV(VARV_PLAYER_USE_INDEX, 0);
end

function add_npc_golden_seed()
    local golden_seed_npc = { 1111, 90, 4, 996, 1612, 3206, 0, "Qu¶ Huy Hoµng trung", 0, "\\script\\missions\\chientruongsinhtu\\item\\item_hat_huy_hoang.lua" }
    local npc_pos = { { 1472, 3258 }, { 1469, 3260 }, { 1466, 3260 }, { 1468, 3268 }, { 1470, 3277 }, { 1475, 3276 }, { 1477, 3282 }, { 1481, 3275 }, { 1470, 3282 }, { 1464, 3262 }, { 1467, 3250 } }
    for i = 1, getn(npc_pos) do
        local Mid = SubWorldID2Idx(golden_seed_npc[4]);
        if (Mid >= 0) then
            local TabValue5 = npc_pos[i][1] * 32;
            local TabValue6 = npc_pos[i][2] * 32;
            local nNpcIdx = AddNpc(golden_seed_npc[1], golden_seed_npc[2], Mid, TabValue5, TabValue6, golden_seed_npc[7], golden_seed_npc[8]);
            SetNpcScript(nNpcIdx, golden_seed_npc[10]);
        end ;
    end ;
end

function del_npc_chientruongsinhtu()
    for i = 1, getn(NPC_INDEX) do
        DelNpc(NPC_INDEX[i]);
    end ;
end



