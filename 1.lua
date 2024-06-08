everyClipboard = toclipboard
function toClipboard(txt)
    if everyClipboard then
        everyClipboard(tostring(txt))
    end
end
local gethwid = 
game:GetService("RbxAnalyticsService"):GetClientId()
toClipboard(gethwid)
