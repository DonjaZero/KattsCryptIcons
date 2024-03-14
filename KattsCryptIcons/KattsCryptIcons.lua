local ADDON_NAME  = "KattsCryptIcons"
local MY_TEXTURES = {
    "KattsCryptIcons/icons/KCAngry.dds",
    "KattsCryptIcons/icons/KCBanHammer.dds",
    "KattsCryptIcons/icons/KCBladeOfWoe.dds",
    "KattsCryptIcons/icons/KCblue.dds",
    "KattsCryptIcons/icons/KCCHICKEN.dds",
    "KattsCryptIcons/icons/KCCozy.dds",
    "KattsCryptIcons/icons/KCDank.dds",
    "KattsCryptIcons/icons/KCDLJ.dds",
    "KattsCryptIcons/icons/KCFart.dds",
    "KattsCryptIcons/icons/KCHeart.dds",
    "KattsCryptIcons/icons/KCHearts.dds",
    "KattsCryptIcons/icons/KCHype.dds",
    "KattsCryptIcons/icons/KCJeffrey.dds",
    "KattsCryptIcons/icons/KCKattAvatar.dds",
    "KattsCryptIcons/icons/KCKitty.dds",
    "KattsCryptIcons/icons/KCKris.dds",
    "KattsCryptIcons/icons/KCLOVE.dds",
    "KattsCryptIcons/icons/KCPinkHeart.dds",
    "KattsCryptIcons/icons/KCSwan.dds",
    "KattsCryptIcons/icons/KCTank.dds",
    "KattsCryptIcons/icons/KCXim.dds",
}

EVENT_MANAGER:RegisterForEvent(ADDON_NAME, EVENT_ADD_ON_LOADED, function(_, addonName)
    if addonName ~= ADDON_NAME then return end
    EVENT_MANAGER:UnregisterForEvent(ADDON_NAME, EVENT_ADD_ON_LOADED)
    -- check if OdySupportIcons is active and supports unique icon packs
    if OSI and OSI.AddCustomIconPack then
        -- add your list of icons
        OSI.AddCustomIconPack(MY_TEXTURES)
    end
end)
