local hs = hs


local ctrl_cmd    = {"cmd","ctrl"}
local hyper       = {"cmd","alt","ctrl"}
local shift_hyper = { "cmd", "alt", "ctrl", "shift" }

local apps = {
    a = "Arc",
    c = "Cursor",
    d = "Discord",
    i = "Intellij IDEA",
    m = "Music",
    n = "Notes",
    p = "Postman",
    r = "RustRover",
    s = "Safari",
    w = "Warp",
}

hs.loadSpoon("SpoonInstall")

-- HAMMERSPOON SETTINGS, VARIABLES
hs.logger.defaultLogLevel = "info"
hs.autoLaunch(true)
hs.automaticallyCheckForUpdates(true)
hs.menuIcon(true)
hs.dockIcon(false)
hs.hotkey.setLogLevel("error")
hs.keycodes.log.setLogLevel("error")
hs.logger.defaultLogLevel = "error"

local SpoonInstall = spoon.SpoonInstall;

SpoonInstall:andUse("ReloadConfiguration", {
    start = true,
});

SpoonInstall:andUse("ClipboardTool",{
    config = {
        show_in_menubar = false,
    },
    hotkeys = {
        toggle_clipboard = {
            shift_hyper, "h"
        }
    },
    start = true,
});

SpoonInstall:andUse("AppLauncher", {
    config = {
        modifiers = shift_hyper
    },
    hotkeys = apps,
});
