-- To Set This Up visit https://forum.cfx.re/t/how-to-updated-discord-rich-presence-custom-image/157686

local QBCore = exports['qb-core']:GetCoreObject()

CreateThread(function()
    while true do
        -- This is the Application ID (Replace this with you own)
        SetDiscordAppId(1020916812386418788)

        -- Here you will have to put the image name for the "large" icon.
        SetDiscordRichPresenceAsset('simple')

        -- (11-11-2018) New Natives:

        -- Here you can add hover text for the "large" icon.
        SetDiscordRichPresenceAssetText('simple')

        -- Here you will have to put the image name for the "small" icon.
        SetDiscordRichPresenceAssetSmall('simple')

        -- Here you can add hover text for the "small" icon.
        SetDiscordRichPresenceAssetSmallText('simple')

        QBCore.Functions.TriggerCallback('smallresources:server:GetCurrentPlayers', function(result)
            SetRichPresence('Players: '..result..'/48')
        end)

        -- (26-02-2021) New Native:

        --[[
            Here you can add buttons that will display in your Discord Status,
            First paramater is the button index (0 or 1), second is the title and
            last is the url (this has to start with "fivem://connect/" or "https://")
        ]]--
        SetDiscordRichPresenceAction(0, "Conectate!", "fivem://connect/localhost:30120")
        SetDiscordRichPresenceAction(1, "Conectate!", "fivem://connect/localhost:30120")

        -- It updates every minute just in case.
        Wait(60000)
    end
end)
