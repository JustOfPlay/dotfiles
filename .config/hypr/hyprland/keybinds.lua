require("hyprland.vars")

hl.bind("SUPER + PERIOD",
    hl.dsp.exec_cmd("noctalia msg panel-toggle launcher /emo")
)



hl.bind("SUPER + DELETE",
    hl.dsp.exec_cmd("noctalia msg panel-toggle session")
)

hl.bind("SUPER + SHIFT + M",
    hl.dsp.exec_cmd("noctalia msg panel-toggle control-center media")
)

hl.bind("SUPER + L",
    hl.dsp.exec_cmd("noctalia msg session lock")
)

hl.bind("SUPER + N",
    hl.dsp.exec_cmd("noctalia msg panel-toggle control-center notifications")
)

hl.bind("SUPER + Y",
    hl.dsp.exec_cmd("noctalia msg panel-toggle control-center")
)

hl.bind("SUPER + I",
    hl.dsp.exec_cmd("noctalia msg settings-toggle")
)

hl.bind("SUPER + SPACE",
    hl.dsp.exec_cmd("noctalia msg panel-toggle launcher")
)


hl.bind("SUPER + SHIFT + S",
    hl.dsp.exec_cmd("noctalia msg screenshot-region")
)

-- Full screenshot
hl.bind("PRINT",
    hl.dsp.exec_cmd("noctalia msg screenshot-fullscreen")
)


-- Window Switcher
hl.bind("SUPER + TAB",
    hl.dsp.exec_cmd("noctalia msg window-switcher")
)


hl.bind("SUPER + V",hl.dsp.exec_cmd(
    "noctalia msg panel-toggle clipboard"
))



-- Audio

hl.bind(
  "XF86AudioRaiseVolume",
    hl.dsp.exec_cmd("noctalia msg volume-up"),
    { locked = true, repeating = true }
)

hl.bind(
    "XF86AudioLowerVolume",
    hl.dsp.exec_cmd("noctalia msg volume-down"),
    { locked = true, repeating = true }
)

hl.bind(
    "XF86AudioMute",
    hl.dsp.exec_cmd("noctalia msg volume-mute"),
    { locked = true }
)


-- Brightness

hl.bind(
    "XF86MonBrightnessUp",
    hl.dsp.exec_cmd("noctalia msg brightness-up"),
    { locked = true, repeating = true }
)

hl.bind(
    "XF86MonBrightnessDown",
    hl.dsp.exec_cmd("noctalia msg brightness-down"),
    { locked = true, repeating = true }
)

hl.bind("SUPER + SHIFT + C", hl.dsp.exec_cmd("hyprpicker -a"))

hl.bind("SUPER + A", hl.dsp.focus({ monitor = 0 }))
hl.bind("SUPER + D", hl.dsp.focus({ monitor = 1 }))

hl.bind("SUPER + RETURN", hl.dsp.exec_cmd("kitty"))
hl.bind("SUPER + E", hl.dsp.exec_cmd("dolphin"))
hl.bind("SUPER + B", hl.dsp.exec_cmd("zen-browser"))
hl.bind("SUPER + P", hl.dsp.exec_cmd("zen-browser --private-window"))
hl.bind("SUPER + escape", hl.dsp.exec_cmd("missioncenter"))



-- management

hl.bind("SUPER + K", hl.dsp.layout("togglesplit"))
hl.bind("SUPER + J", hl.dsp.layout("swapsplit"))


hl.bind("SUPER + C", hl.dsp.exec_cmd("vesktop"))


hl.bind("SUPER + mouse:272", hl.dsp.window.drag(), { mouse = true })
hl.bind("SUPER + mouse:273", hl.dsp.window.resize(), { mouse = true })

hl.bind("SUPER + A", hl.dsp.focus({ monitor = 0 }))
hl.bind("SUPER + D", hl.dsp.focus({ monitor = 1 }))

hl.bind("SUPER + Q", hl.dsp.window.close())
hl.bind("SUPER + SHIFT + Q",hl.dsp.exec_cmd("hyprctl kill"))

hl.bind("SUPER + SHIFT + F", hl.dsp.window.float({ action = "toggle" }))

hl.bind("SUPER + R", hl.dsp.window.fullscreen({ mode = "maximized", action = "toggle" }))
hl.bind("SUPER + F", hl.dsp.window.fullscreen({ mode = "fullscreen", action = "toggle" }))

hl.bind("SUPER + S", hl.dsp.workspace.toggle_special("special"))
hl.bind("CTRL + SUPER + S", hl.dsp.workspace.toggle_special("special"))

hl.bind("SUPER + ALT + S", hl.dsp.window.move({ workspace = "special:special" }))
-- Directional focus + move
local dirs = {
    { "Left", "l" },
    { "Right", "r" },
    { "Up", "u" },
    { "Down", "d" }
}

for _, d in ipairs(dirs) do
    hl.bind("SUPER + " .. d[1], hl.dsp.focus({ direction = d[2] }))
    hl.bind("SUPER + SHIFT + " .. d[1], hl.dsp.window.move({ direction = d[2] }))
end



-- Workspaces (1–10)

workspaceGroupSize = 10

local function ws(i)
    local curr = hl.get_active_workspace().id
    local newVal = math.floor((curr - 1) / workspaceGroupSize) * workspaceGroupSize + i
    return newVal
end

for i = 1, 10 do
    local key = tostring(i % 10)

    hl.bind("SUPER + " .. key, function()
        hl.dispatch(hl.dsp.focus({ workspace = ws(i) }))
    end)

    hl.bind("SUPER + SHIFT + " .. key, function()
        hl.dispatch(hl.dsp.window.move({ workspace = ws(i), follow = true }))
    end)

    hl.bind("SUPER + ALT + " .. key, function()
        hl.dispatch(hl.dsp.window.move({ workspace = ws(i), follow = false }))
    end)
end


-- Mouse wheel
local function move_window(ws, follow)
    hl.dispatch(hl.dsp.window.move({
        workspace = ws,
        follow = follow
    }))
end

hl.bind("SUPER + mouse_up", function()
    hl.dispatch(hl.dsp.focus({ workspace = "+1" }))
end)

hl.bind("SUPER + mouse_down", function()
    hl.dispatch(hl.dsp.focus({ workspace = "-1" }))
end)

hl.bind("SUPER + SHIFT + mouse_up", function()
    move_window("+1", true)
end)

hl.bind("SUPER + SHIFT + mouse_down", function()
    move_window("-1", true)
end)

hl.bind("SUPER + ALT + mouse_up", function()
    move_window("+1", false)
end)

hl.bind("SUPER + ALT + mouse_down", function()
    move_window("-1", false)
end)

