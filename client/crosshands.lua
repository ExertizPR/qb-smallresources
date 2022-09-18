local dict = "amb@world_human_hang_out_street@female_arms_crossed@base"
local crosshands = false

RegisterCommand('crosshands', function()
    local ped = PlayerPedId()
    if not HasAnimDictLoaded(dict) then
        RequestAnimDict(dict)
        while not HasAnimDictLoaded(dict) do
            Wait(10)
        end
    end
    crosshands = not crosshands
    if crosshands then
        TaskPlayAnim(GetPlayerPed(-1), dict, "base", 8.0, 8.0, -1, 50, 0, false, false, false)
    else
        ClearPedTasks(ped)
    end
end, false)

RegisterKeyMapping('crosshands', 'Cross your hands', 'KEYBOARD', 'G')

exports('crossHands', function() return crosshands end)