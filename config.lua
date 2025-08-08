clauss = {}

-- 'ox' veya 'qb'
clauss.TargetType = 'ox'

clauss.Shops = {
    {
        name = "police_armory",
        label = "Polis Cephaneliği",
        job = "police",
        ped = `s_m_y_cop_01`,
        coords = {
            vec4(441.47, -981.03, 30.69, 172.17),
            vec4(444.29, -980.66, 30.69, 180.61)
        },
        items = {
            { name = "weapon_glock", price = 1},
            { name = "pistol_ammo2", price = 1},
        }
    },
    {
        name = "gunshop",
        label = "Gunshop",
        job = false,
        ped = `g_m_m_chicold_01`,
        coords = {
            vec4(-1306.2, -394.1, 36.6, 210.0),
            vec4(123.4, -321.0, 43.2, 90.0),
            vec4(-1000.5, -1000.5, 2.0, 45.0)
        },
        items = {
            { name = "weapon_g19p", price = 13000},
            { name = "ammo-9", price = 500},
            { name = "armor", price = 1000},
            { name = "medikit", price = 700},
            { name = "pdkit", price = 30000},

        }
    }
}
