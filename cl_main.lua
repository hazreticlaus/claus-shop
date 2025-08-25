local claus = exports['qb-core']:GetCoreObject()

CreateThread(function()
    for _, shop in pairs(clauss.Shops) do
        for _, coord in ipairs(shop.coords) do
            RequestModel(shop.ped)
            while not HasModelLoaded(shop.ped) do
                Wait(10)
            end
            local ped = CreatePed(0, shop.ped, coord.x, coord.y, coord.z - 1, coord.w, false, false)
            SetEntityInvincible(ped, true)
            FreezeEntityPosition(ped, true)
            SetBlockingOfNonTemporaryEvents(ped, true)

            if clauss.TargetType == 'ox' then
                exports.ox_target:addLocalEntity(ped, {
                    {
                        name = shop.name,
                        icon = 'fa-solid fa-cart-shopping',
                        label = shop.label,
                        onSelect = function()
                            local PlayerData = claus.Functions.GetPlayerData()
                            if shop.job and shop.job ~= false and PlayerData.job.name ~= shop.job then
                                claus.Functions.Notify("Bu dükkana erişimin yok!", "error")
                                return
                            end
                            TriggerServerEvent("claus-shop:openShop", shop.name)
                        end
                    }
                })
            elseif clauss.TargetType == 'qb' then
                exports['qb-target']:AddTargetEntity(ped, {
                    options = {
                        {
                            icon = "fa-solid fa-cart-shopping",
                            label = shop.label,
                            action = function()
                                local PlayerData = claus.Functions.GetPlayerData()
                                if shop.job and shop.job ~= false and PlayerData.job.name ~= shop.job then
                                    claus.Functions.Notify("Bu dükkana erişimin yok!", "error")
                                    return
                                end
                                TriggerServerEvent("claus-shop:openShop", shop.name)
                            end
                        }
                    },
                    distance = 2.0
                })
            end
        end
    end
end)
