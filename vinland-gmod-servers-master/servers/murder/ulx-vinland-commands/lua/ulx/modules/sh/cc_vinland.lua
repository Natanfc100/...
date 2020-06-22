local CATEGORY_NAME = "Vinland"

local addons = ulx.command(CATEGORY_NAME, "ulx addons", function(ply)
    openUrl(ply, "https://steamcommunity.com/sharedfiles/filedetails/?id=1581506103")
end, {"!addons", "!addon"})

addons:defaultAccess(ULib.ACCESS_ALL)
addons:help("Ver addons do servidor.")

local rules = ulx.command(CATEGORY_NAME, "ulx rules", function(ply)
    openUrl(ply, "https://steamcommunity.com/groups/lorybr/discussions/0/2257934448607145092/")
end, {"!rules", "!regras"})

rules:defaultAccess(ULib.ACCESS_ALL)
rules:help("Ver regras do servidor.")

local steamgroup = ulx.command(CATEGORY_NAME, "ulx steamgroup", function(ply)
    openUrl(ply, "https://steamcommunity.com/groups/vinlandgmod")
end, {"!steam", "!group", "!grupo"})

steamgroup:defaultAccess(ULib.ACCESS_ALL)
steamgroup:help("Entre no nosso grupo da steam.")

local discord = ulx.command(CATEGORY_NAME, "ulx discord", function(ply)
    openUrl(ply, "https://discord.gg/FN4mhC")
end, {"!discord"})

discord:defaultAccess(ULib.ACCESS_ALL)
discord:help("Entre no nosso discord.")

local vip = ulx.command(CATEGORY_NAME, "ulx vip", function(ply)
    openUrl(ply, "https://steamcommunity.com/groups/lorybr/discussions/0/1735508423601693879/")
end, {"!vip", "!doador", "!doar", "!donate"})

vip:defaultAccess(ULib.ACCESS_ALL)
vip:help("Ver informações sobre o vip.")

local errors = ulx.command(CATEGORY_NAME, "ulx texturas", function(ply)
    openUrl(ply, "https://steamcommunity.com/groups/vinlandgmod/discussions/0/2514645967867831775/")
end, {"!texturas", "!errors", "!error", "!textura"})

texturas:defaultAccess(ULib.ACCESS_ALL)
texturas:help("Como arrumar as texturas.")

function openUrl(ply, url)
    ply:SendLua(string.format([[gui.OpenURL("%s")]], url))
end
