# Veltrion UI by cuo

Tabbed, draggable UI library for Roblox Lua with config saving, themes, watermark and an open/close button.

## Load

```lua
local Menu = loadstring(game:HttpGet("https://raw.githubusercontent.com/gethttps/Librarys/refs/heads/main/Veltrion/Source.lua"))()
Menu:Init()
```

## Layout

| File | Purpose |
|---|---|
| `Source.lua` | The library. Returns `Menu`. |
| `Example.lua` | Full demo: widgets, theme, config, interface. |

## Widgets

`Tab`, `Container`, `CheckBox`, `Slider`, `ComboBox`, `MultiSelect`, `ListBox`,
`Hotkey`, `ColorPicker`, `TextBox`, `Button`, `Label`, `Notify`.

Every widget call is `Menu.Widget(Tab, Container, Name, ...)` and returns an item index.
Fetch the item with `Menu:GetItem(index)` for `:GetValue()`, `:SetValue()`, `:SetLabel()`, `:SetVisible()`.

## Addons

- `Menu.Config`: save / load / autoload / copy / paste. Call `LoadAutoload()` last.
- `Menu.Theme`: presets, custom themes, default theme.
- `Menu.Interface`: watermark, footer, open/close button, menu dragging.

Config and theme files need executor file functions (`writefile`, `readfile`, `listfiles`, ...). Without them the addons fall back to memory for the session.
