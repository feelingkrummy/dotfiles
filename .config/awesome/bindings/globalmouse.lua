local awful = require("awful")
local gears = require("gears")

local globalmouse

globalmouse = gears.table.join(
    --awful.button({ }, 3, function () mymainmenu:toggle() end),
    awful.button({ }, 4, awful.tag.viewnext),
    awful.button({ }, 5, awful.tag.viewprev)
)

return globalmouse
