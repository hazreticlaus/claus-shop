RegisterNetEvent("claus-shop:openShop", function(shopName)
    local src = source
    local shopData = nil

    for _, shop in pairs(clauss.Shops) do
        if shop.name == shopName then
            shopData = shop
            break
        end
    end

    if not shopData then return end

    local items = {}
    for _, item in pairs(shopData.items) do
        items[#items+1] = {
            name = item.name,
            price = item.price,
        }
    end

    exports.ox_inventory:RegisterShop(shopData.name, {
        name = shopData.label,
        inventory = items
    })

    TriggerClientEvent('ox_inventory:openInventory', src, 'shop', { type = shopData.name })
end)

