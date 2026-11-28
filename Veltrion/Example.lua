local Menu = loadstring(game:HttpGet("https://raw.githubusercontent.com/gethttps/Librarys/refs/heads/main/Veltrion/Source.lua"))()

Menu:Init()
Menu:SetTitle("Veltrion")
task.spawn(function() Menu:NameUpdate(0.9, "Vel", "trion") end)

Menu.Tab("Main")

Menu.Container("Main", "Toggles", "Left")
Menu.CheckBox("Main", "Toggles", "Enabled", false, function(Value)
    print("Enabled:", Value)
end, "Master switch")
Menu.CheckBox("Main", "Toggles", "Show Hints", true, function(Value)
    print("Show Hints:", Value)
end)
Menu.Hotkey("Main", "Toggles", "Action Key", Enum.KeyCode.E, function(Key, Mode)
    print("Hotkey:", Key and Key.Name or "None", Mode)
end, "Right click the key to switch Toggle / Hold")

Menu.Container("Main", "Values", "Right")
Menu.Slider("Main", "Values", "Amount", 0, 100, 25, "%", 0, function(Value)
    print("Amount:", Value)
end, "Drag, or type a value in the box")
Menu.Slider("Main", "Values", "Precision", 0, 1, 0.5, "", 2, function(Value)
    print("Precision:", Value)
end)
Menu.ComboBox("Main", "Values", "Mode", "Fast", {"Fast", "Balanced", "Slow"}, function(Value)
    print("Mode:", Value)
end)
Menu.MultiSelect("Main", "Values", "Options", {Alpha = true, Beta = false, Gamma = false}, function(Items)
    for Name, On in pairs(Items) do print("Option", Name, On) end
end)

Menu.Tab("Extras")

Menu.Container("Extras", "Widgets", "Left")
Menu.ColorPicker("Extras", "Widgets", "Color", Color3.fromRGB(173, 216, 230), 0, function(Color, Alpha)
    print("Color:", Color:ToHex(), Alpha)
end)
Menu.TextBox("Extras", "Widgets", "Text", "hello", function(Text)
    print("Text:", Text)
end)
Menu.Button("Extras", "Widgets", "Notify", function()
    Menu.Notify("Hello from DogCorn", 3)
end)
Menu.Label("Extras", "Widgets", "Plain label")

Menu.Container("Extras", "List", "Right")
Menu.ListBox("Extras", "List", "Pick one", false, {"One", "Two", "Three", "Four"}, function(Value)
    print("Picked:", Value)
end)

Menu.Tab("Settings")

Menu.Interface:Setup({
    Name = "Veltrion",
    ToggleKey = Enum.KeyCode.RightShift,
})
Menu.Interface:BuildSection("Settings", "Left")

Menu.Theme:SetFolder("Veltrion")
Menu.Theme:BuildSection("Settings", "Right")

Menu.Config:SetFolder("Veltrion")
Menu.Config:SetSubFolder(tostring(game.PlaceId))
Menu.Config:BuildSection("Settings", "Left")

Menu:SetTab("Main")
Menu.Theme:LoadDefault()
Menu.Config:LoadAutoload()
Menu:SetVisible(true)
Menu.Notify("Veltrion loaded - RightShift toggles the menu", 4)
