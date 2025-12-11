Include( "\\script\\missions\\leaguematch\\head.lua" )
Include("\\script\\maps\\newworldscript_default.lua")
NCAMP_TASK_TEMP=123

function OnNewWorld(szParam)
    W,X,Y = GetWorldPos(); --l≠u lπi vﬁ tr› tr≠Ìc khi trÍi map
    NCAMP_TASK_TEMP = GetCurCamp()
    --SetTaskTemp(NCAMP_TASK_TEMP,R_res)
    print("OnWorldDefault john invoked---")
    local szTong = GetTong()
    if not szTong or  szTong == "" then
        SetCurCamp(4)
    end
    ForbidChangePK(1)
    SetFightState(1)
    SetPunish(0)

    --OnNewWorldDefault(szParam)
end

function OnLeaveWorld(szParam)
    print("OnLeaveWorldDefault leave invoked---")
    --res = GetTaskTemp(NCAMP_TASK_TEMP)
    local res= NCAMP_TASK_TEMP
    if(res and res ~= 123) then
        SetCurCamp(res)
    else
        SetCurCamp(0)
    end
    ForbidChangePK(0)
    --OnLeaveWorldDefault(szParam)
    end
