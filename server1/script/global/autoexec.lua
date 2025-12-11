-- ×Ô¶¯¼ÓÔØnpc½Å±¾
Include("\\script\\global\\addxishancunnpc.lua")
Include("\\script\\task\\tollgate\\killbosshead.lua")
Include("\\script\\task\\tollgate\\addtollgatenpc.lua") --¼ÓÔØ¹Ø¿¨ÈÎÎñÉæ¼°µÄNPC
Include("\\script\\task\\partner\\partner_head.lua")    --¼ÓÔØÍ¬°éÈÎÎñÉæ¼°µÄNPC
Include("\\script\\missions\\freshman_match\\add_championnpc.lua")
Include("\\script\\event\\mid_autumn\\add_zhongqiunpc.lua")
Include("\\script\\missions\\newcitydefence\\cd_addsignnpc.lua")
Include("\\script\\misc\\league_cityinfo.lua")
Include("\\script\\missions\\leaguematch\\wlls_autoexec.lua")    --WLLS ÎäÁÖÁªÈü
Include("\\script\\missions\\statinfo\\head.lua")    --Êý¾ÝÍ³¼Æ
Include("\\script\\event\\wulin_2nd\\wulin_addmaster.lua")
Include("\\script\\global\\addspreadernpc.lua")            --ÓÎÏ·ÍÆ¹ãÔ±
Include("\\script\\missions\\tongwar\\tongwar_autoexec.lua")
Include("\\script\\task\\lv120skill\\head.lua")    -- 120¼¶¼¼ÄÜÈÎÎñ
Include("\\script\\tong\\addtongnpc.lua")
Include("\\script\\ÖÐÔ­±±Çø\\ãê¾©\\ãê¾©\\trap\\bianjing_ximen_trap.lua")
Include("\\script\\½­ÄÏÇø\\½ðÉ½µº\\addnpcandtrap.lua")
Include("\\script\\event\\jiefang_jieri\\200904\\denggao\\npc.lua");    -- »ÆÁ¬ÀÏÛÅ
Include("\\script\\event\\change_destiny\\npc.lua");    -- ÄæÌì¸ÄÃü
Include("\\script\\missions\\newpracticemap\\addnpc.lua");    -- ÐÂÁ·¼¶µØÍ¼
Include("\\script\\event\\jiefang_jieri\\201004\\beat_tiger\\head.lua"); -- Ñ°»¨´ò»¢
Include("\\script\\misc\\timeline\\timelinemanager.lua") --Ê±¼äÖá
Include("\\script\\global\\autoexec_head.lua")
Include("\\script\\activitysys\\npcfunlib.lua")
Include("\\script\\global\\eurofun\\npc\\add_npc.lua")
Include("\\script\\global\\huashan2013\\npc_hoason.lua")
Include("\\script\\global\\autoexec_npc.lua")
Include("\\script\\global\\thinh\\npc\\add_npc.lua")

if (GetProductRegion() == "vn") then
    -- 2006 ÖÐÇï½Ú»î¶¯Í·ÎÄ¼þ
    Include("\\script\\event\\mid_autumn06\\autoexe.lua");
    Include("\\script\\global\\judgeoffline_special.lua")    --ÓÃÓÚÎÞÃû¹È¡ª¡ªÍÐ¹Ü·þÎñÆ÷µØÍ¼
    Include("\\script\\event\\collect_juanzhou\\autoaddnpc.lua")--ÊÕ¼¯ÉñÃØ¾íÖáÈÎÎñ£¬Ã÷ÔÂÕònpc
    Include("\\script\\event\\act2years_yn\\head.lua")       --Ô½ÄÏÁ½ÖÜÄê»î¶¯£¬Ã÷ÔÂÕònpc
    Include("\\script\\Á½ºþÇø\\ÄÏÔÀÕò\\heisha_autoexec.lua")    -- Ô½ÄÏÔö¼ÓÄÏÔÀÕòtoºÚÉ³¶´trapµã

    Include("\\script\\event\\great_night\\great_night_head.lua")    --Ë«Áú¶´»Æ½ðÖ®ºË
end

MSID_LOCALNEWS = 17 --ÏµÍ³×Ô¶¯·¢ËÍLocalNews¼ÆÊ±Æ÷ÊÂ¼þ±àºÅ

Include([[\script\event\springfestival07\head.lua]]);

Include("\\script\\activitysys\\g_activity.lua")
Include("\\script\\activitysys\\functionlib.lua")
Include("\\script\\event\\other\\shensuanzi\\class.lua")

Include("\\script\\task\\150skilltask\\g_task.lua")
Include("\\script\\event\\tetnguyendan\\event.lua")
Include("\\\\script\\event\\thorenthanbi\\head.lua") --Thî RÌn ThÇn BÝ
function main()

    DynamicExecute("\\script\\missions\\tianchimijing\\floor1\\gamefloor1.lua", "GameFloor1:Start")
    DynamicExecute("\\script\\missions\\tianchimijing\\floor2\\gamefloor2.lua", "GameFloor2:Start")
    DynamicExecute("\\script\\missions\\tianchimijing\\floor3\\gamefloor3.lua", "GameFloor3:Start")
    DynamicExecute("\\script\\missions\\tianchimijing\\floor4\\gamefloor4.lua", "GameFloor4:Start")

    --ÔÂ¸èµº
    DynamicExecute("\\script\\missions\\yuegedao\\yuegedao\\yuegedaoworld.lua", "YueGeDaoWorld:Start")
    DynamicExecute("\\script\\missions\\yuegedao\\yuegemigu\\yuegemiguworld.lua", "YueGeMiGuWorld:Start")

    DynamicExecute("\\script\\changefeature\\initmap.lua", "AddDailogNpc")
    DynamicExecute("\\script\\global\\npc\\huoke.lua", "CallHuoKeInit")
    DynamicExecute("\\script\\missions\\tianchimijing\\floor1\\yunchihead.lua", "AddEnterNpc")
    tbShenSuanZi:Init()

    OpenGlbMission(8)

    -- Æô¶¯Êý¾ÝÍ³¼ÆÈÎÎñ
    OpenGlbMission(MSID_STAT_GOODS_SALE)

    buildAllCityInfoLeague()
    --Event Tet
    tbTet.Init(tbTet)
    tbThoRen.Init(tbThoRen)
    -- ¹Ò»úµØÍ¼ÈÎÎñ
    load_mission_aexp();
    add_dialognpc(adddialognpc);
    add_dialognpc(nw_npclist)
    add_dialognpc(npclist_sevencity)
    add_newtasknpc(addnewtasknpc);
    add_xishancunnpc(xishancunnpc);

    add_spreadernpc(spreadernpc);        --¼ÓÔØÓÎÏ·ÍÆ¹ãÔ±
    add_killertasknpc(addkillertasknpc);
    add_alltollgatenpc();   --¼ÓÔØ¹Ø¿¨ÈÎÎñµÄÏà¹Ønpc
    --add_allpartnernpc();     --¼ÓÔØÍ¬°éÈÎÎñµÄÏà¹Ønpc
    --add_zhongqiunpc();		--¼ÓÔØÖÐÇï»î¶¯npc
    cd_addsignnpc()            --¼ÓÔØÎÀ¹úÕ½Õù±¨ÃûµãNPC
    wlls_autoexe()    --WLLS ÎäÁÖÁªÈü
    --Á½ÖÜÄê»î¶¯NPC
    add_dialognpc(tbActNpcList)
    tongwar_addsignnpc()
    add_tongnpc()    --¼ÓÔØ°ï»áÏà¹Ønpc
    local n_date = tonumber(GetLocalDate("%Y%m%d"));
    local szRegion = GetProductRegion();

    if (szRegion == "vn") then
        --add_dialognpc(ACT2YEAR_YN_NPC);	--Á½ÖÜÄê»î¶¯NPC   by×Ó·ÇÓã 2008-10-09É¾³ý¹ýÆÚNPC
        AnonymVale_auto();            --ÍÐ¹ÜµØÍ¼
        add_dialognpc(tab_springfestivalNPC);
        --add_dialognpc(addmoontown_mulao);	--ÊÕ¼¯ÉñÃØ¾íÖáÈÎÎñ£¬Ã÷ÔÂÕònpc by×Ó·ÇÓã 2008-10-09É¾³ý¹ýÆÚNPC
        --add_dialognpc(tbxmas2007_girl_binger) --2007Ê¥µ®»î¶¯£¬±ù¶ù
        --add_dialognpc(newyear_2008_chunjiecailu) --2008ÐÂÄê²ÉÂ»»î¶¯
        --Î÷É½Óì
        add_dialognpc(tbaddJinShanDao_NpcAndTrap.tbDialogNpc);--Ôö¼Ó¶Ô»°npc
        tbaddJinShanDao_NpcAndTrap:AddTrapR()--Ôö¼ÓÓÒtrapµã
        tbaddJinShanDao_NpcAndTrap:AddTrapL()--Ôö¼Ó×ótrapµã
        tbaddJinShanDao_NpcAndTrap:AddMons()--Ôö¼Ó¹ÖÎï
        --add_obstacle_map();

        if (SubWorldID2Idx(11) >= 0) then
            local npcidx = AddNpc(245, 1, SubWorldID2Idx(11), 390 * 8 * 32, 317 * 16 * 32, 1, "Hoµng Liªn L·o L·o");
            SetNpcScript(npcidx, "\\script\\event\\jiefang_jieri\\200904\\denggao\\npc.lua");
        end
        add_dialognpc(au06_tab_kidnpc);

        tbChangeDestiny:addNpc();    -- ÄæÌì¸ÄÃü
        tbNewPracticeMap:addNpc();    -- ÐÂÁ·¼¶µØÍ¼
        tbBeatTiger:AddNpc();        -- Ñ°»¨´ò»¢
    end

    --Ôö¼Óãê¾©Î÷³ÇÃÅtrapµã
    add_trap_bianjingximen()
    add_heisha_entertrap();

    G_ACTIVITY:LoadActivitys()
    G_TASK:LoadAllConfig()
    G_ACTIVITY:OnMessage("ServerStart");

    tbTimeLineManager:LoadAllTimeLine(tbTimeLineList);
    AutoFunctions:Run()
    add_npc_thinh()
    add_npc_hoason()
    add_npc_vng_new()
    local szFile = "\\script\\event\\great_night\\great_night_head.lua"
    DynamicExecute(szFile, "OnGreatNightServerStart")
end;

function load_mission_aexp()
    mapTab = { 235, 236, 237, 238, 239, 240, 241 };
    nCount = getn(mapTab);

    oldSubWorld = SubWorld;
    for i = 1, nCount do
        idx = SubWorldID2Idx(mapTab[i]);
        if (idx ~= -1) then
            SubWorld = idx;
            OpenMission(9);    -- 9Îª¹Ò»úMission ID
        end ;
    end ;

    SubWorld = oldSubWorld;
end;

function add_dialognpc(Tab)
    for i = 1, getn(Tab) do
        local itemlist = Tab[i]
        SId = SubWorldID2Idx(itemlist[2]);
        if (SId >= 0) then

            npcindex = AddNpc(itemlist[1], 1, SId, itemlist[3] * 32, itemlist[4] * 32, 1, itemlist[6]);
            SetNpcScript(npcindex, itemlist[5]);
        else
            if itemlist[1] == 1454 then
                print(itemlist[6], itemlist[2])
            end
        end ;
    end
end;

function add_newtasknpc(Tab1)
    for i = 1, getn(Tab1) do
        Mid = SubWorldID2Idx(Tab1[i][4]);
        if (Mid >= 0) then
            TabValue5 = Tab1[i][5] * 32
            TabValue6 = Tab1[i][6] * 32
            newtasknpcindex = AddNpc(Tab1[i][1], Tab1[i][2], Mid, TabValue5, TabValue6, Tab1[i][7], Tab1[i][8]);
            SetNpcScript(newtasknpcindex, Tab1[i][10]);
        end ;
    end ;
end;

