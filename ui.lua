-- sorry if it no no work work
-- sorry if it no no work work
local a = tick()
local b = tick()
local c =
    setmetatable(
    {},
    {__index = function(d, e)
            return game:GetService(e)
        end}
)
local f = c.UserInputService
local g = c.RunService
local h = c.CoreGui
local i = c.Players
local j = i.LocalPlayer
local k = Workspace.CurrentCamera
local l = c.HttpService
local m = j:GetMouse()
local n = Instance.new("ScreenGui", h)
local o = {
    Theme = {
        Accent = {
            Color3.fromHex("#7885f5"),
            Color3.fromRGB(180, 156, 255),
            Color3.fromRGB(114, 0, 198),
            Color3.fromRGB(139, 130, 185),
            Color3.fromHex("#a83299")
        },
        Notification = {Error = Color3.fromHex("#c82828"), Warning = Color3.fromHex("#fc9803")},
        Hitbox = Color3.fromRGB(69, 69, 69),
        Friend = Color3.fromRGB(0, 200, 0),
        Outline = Color3.fromHex("#000005"),
        Inline = Color3.fromHex("#323232"),
        LightContrast = Color3.fromHex("#202020"),
        DarkContrast = Color3.fromHex("#191919"),
        Text = Color3.fromHex("#e8e8e8"),
        TextInactive = Color3.fromHex("#aaaaaa"),
        Font = Drawing.Fonts.Plex,
        TextSize = 13,
        UseOutline = false
    },
    Icons = {},
    Flags = {},
    Items = {},
    Drawings = {},
    Ignores = {},
    Keybind = {},
    Watermark = {},
    Connections = {},
    Keys = {
        KeyBoard = {
            ["Q"] = "Q",
            ["W"] = "W",
            ["E"] = "E",
            ["R"] = "R",
            ["T"] = "T",
            ["Y"] = "Y",
            ["U"] = "U",
            ["I"] = "I",
            ["O"] = "O",
            ["P"] = "P",
            ["A"] = "A",
            ["S"] = "S",
            ["D"] = "D",
            ["F"] = "F",
            ["G"] = "G",
            ["H"] = "H",
            ["J"] = "J",
            ["K"] = "K",
            ["L"] = "L",
            ["Z"] = "Z",
            ["X"] = "X",
            ["C"] = "C",
            ["V"] = "V",
            ["B"] = "B",
            ["N"] = "N",
            ["M"] = "M",
            ["One"] = {"1", "!"},
            ["Two"] = {"2", '"'},
            ["Three"] = {"3", "£"},
            ["Four"] = {"4", "$"},
            ["Five"] = {"5", "%"},
            ["Six"] = {"6", "^"},
            ["Seven"] = {"7", "&"},
            ["Eight"] = {"8", "*"},
            ["Nine"] = {"9", "("},
            ["Zero"] = {"0", ")"},
            ["Space"] = " ",
            ["Slash"] = {"/", "?"},
            ["BackSlash"] = {"\\", "|"},
            ["Minus"] = {"-", "_"},
            ["Equals"] = {"=", "+"},
            ["RightBracket"] = {"]", "}"},
            ["LeftBracket"] = {"[", "{"},
            ["Semicolon"] = {";", ":"},
            ["Quote"] = {"'", "@"},
            ["Comma"] = {",", "<"},
            ["Period"] = {".", ">"}
        },
        Letters = {
            "Q",
            "W",
            "E",
            "R",
            "T",
            "Y",
            "U",
            "I",
            "O",
            "P",
            "A",
            "S",
            "D",
            "F",
            "G",
            "H",
            "J",
            "K",
            "L",
            "Z",
            "X",
            "C",
            "V",
            "B",
            "N",
            "M"
        },
        KeyCodes = {
            "Q",
            "W",
            "E",
            "R",
            "T",
            "Y",
            "U",
            "I",
            "O",
            "P",
            "A",
            "S",
            "D",
            "F",
            "G",
            "H",
            "J",
            "K",
            "L",
            "Z",
            "X",
            "C",
            "V",
            "B",
            "N",
            "M",
            "One",
            "Two",
            "Three",
            "Four",
            "Five",
            "Six",
            "Seveen",
            "Eight",
            "Nine",
            "Zero",
            "Insert",
            "Tab",
            "Home",
            "End",
            "LeftAlt",
            "LeftControl",
            "LeftShift",
            "RightAlt",
            "RightControl",
            "RightShift",
            "CapsLock"
        },
        Inputs = {"MouseButton1", "MouseButton2", "MouseButton3"},
        Shortened = {
            ["MouseButton1"] = "M1",
            ["MouseButton2"] = "M2",
            ["MouseButton3"] = "M3",
            ["Insert"] = "INS",
            ["LeftAlt"] = "LA",
            ["LeftControl"] = "LC",
            ["LeftShift"] = "LS",
            ["RightAlt"] = "RA",
            ["RightControl"] = "RC",
            ["RightShift"] = "RS",
            ["CapsLock"] = "CL"
        }
    },
    Input = {Caplock = false, LeftShift = false},
    Images = {},
    WindowVisible = true,
    Communication = Instance.new("BindableEvent")
}
local p = {}
getgenv().Library = o
getgenv().Utility = p
syn.protect_gui(n)
do
    p.AddInstance = function(q, r)
        local q = Instance.new(q)
        for Index, s in pairs(r) do
            q[Index] = s
        end
        return q
    end
    p.CLCheck = function()
        repeat
            task.wait()
        until iswindowactive()
        do
            local t = p.AddInstance("TextBox", {Position = UDim2.new(0, 0, 0, 0)})
            t:CaptureFocus()
            task.wait()
            keypress(0x4E)
            task.wait()
            keyrelease(0x4E)
            t:ReleaseFocus()
            o.Input.Caplock = t.Text == "N" and true or false
            t:Destroy()
        end
    end
    p.Loop = function(u, v)
        local w = typeof(v) == "function" and v or function()
            end
        task.spawn(
            function()
                while task.wait(u) do
                    local x, y =
                        pcall(
                        function()
                            w()
                        end
                    )
                    if y then
                        return
                    end
                end
            end
        )
    end
    p.RemoveDrawing = function(Instance, z)
        local A = 0
        z = z or o.Drawings
        for Index, s in pairs(z) do
            if s[1] == Instance then
                if s[1] then
                    s[1]:Remove()
                end
                if s[2] then
                    s[2] = nil
                end
                A = Index
            end
        end
        table.remove(z, table.find(z, z[A]))
    end
    p.AddConnection = function(B, w)
        local C = B:Connect(w)
        o.Connections[#o.Connections + 1] = C
        return C
    end
    p.Round = function(D, E)
        local F = 1 / E
        return math.floor(D * F) / F
    end
    p.AddDrawing = function(Instance, r, z)
        local G = Instance
        local Instance = Drawing.new(Instance)
        for Index, s in pairs(r) do
            Instance[Index] = s
            if G == "Text" then
                if Index == "Font" then
                    Instance.Font = o.Theme.Font
                end
                if Index == "Size" then
                    Instance.Size = o.Theme.TextSize
                end
            end
        end
        if r.ZIndex ~= nil then
            Instance.ZIndex = r.ZIndex + 20
        else
            Instance.ZIndex = 20
        end
        z = z or o.Drawings
        if G == "Image" then
            z[#z + 1] = {Instance, true}
        else
            z[#z + 1] = {Instance}
        end
        return Instance
    end
    p.OnMouse = function(Instance)
        local m = f:GetMouseLocation()
        if
            Instance.Visible and m.X > Instance.Position.X and m.X < Instance.Position.X + Instance.Size.X and
                m.Y > Instance.Position.Y and
                m.Y < Instance.Position.Y + Instance.Size.Y
         then
            if o.WindowVisible then
                return true
            end
        end
    end
    p.Rounding = function(D, H)
        return tonumber(string.format("%." .. (H or 0) .. "f", D))
    end
    p.AddDrag = function(I, List)
        local J = {MouseStart = Vector2.new(), MouseEnd = Vector2.new(), Dragging = false}
        p.AddConnection(
            f.InputBegan,
            function(K)
                if K.UserInputType == Enum.UserInputType.MouseButton1 then
                    if p.OnMouse(I) then
                        J.Dragging = true
                    end
                end
            end
        )
        p.AddConnection(
            f.InputEnded,
            function(K)
                if K.UserInputType == Enum.UserInputType.MouseButton1 then
                    J.Dragging = false
                end
            end
        )
        p.AddConnection(
            g.RenderStepped,
            function()
                J.MouseStart = f:GetMouseLocation()
                for Index, s in pairs(List) do
                    if Index ~= nil and s ~= nil then
                        if J.Dragging then
                            s[1].Position =
                                Vector2.new(
                                s[1].Position.X + J.MouseStart.X - J.MouseEnd.X,
                                s[1].Position.Y + J.MouseStart.Y - J.MouseEnd.Y
                            )
                        end
                    end
                end
                J.MouseEnd = f:GetMouseLocation()
            end
        )
    end
    p.AddCursor = function(Instance)
        local L =
            p.AddDrawing("Triangle", {Color = o.Theme.Accent[1], Thickness = 1, Filled = false, ZIndex = 5}, o.Ignores)
        local M =
            p.AddDrawing(
            "Triangle",
            {Color = o.Theme.Accent[1], Thickness = 3, Filled = true, Transparency = 1, ZIndex = 5},
            o.Ignores
        )
        p.AddConnection(
            o.Communication.Event,
            function(B, N)
                if B == "Accent" then
                    M.Color = N
                    L.Color = N
                end
            end
        )
        p.AddConnection(
            g.RenderStepped,
            function()
                local m = f:GetMouseLocation()
                if o.WindowVisible then
                    L.Visible = true
                    L.PointA = Vector2.new(m.X, m.Y)
                    L.PointB = Vector2.new(m.X + 15, m.Y + 5)
                    L.PointC = Vector2.new(m.X + 5, m.Y + 15)
                    M.Visible = true
                    M.PointA = Vector2.new(m.X, m.Y)
                    M.PointB = Vector2.new(m.X + 15, m.Y + 5)
                    M.PointC = Vector2.new(m.X + 5, m.Y + 15)
                else
                    L.Visible = false
                    M.Visible = false
                end
            end
        )
    end
    p.MiddlePos = function(Instance)
        return Vector2.new(k.ViewportSize.X / 2 - Instance.Size.X / 2, k.ViewportSize.Y / 2 - Instance.Size.Y / 2)
    end
    p.SaveConfig = function(O)
        writefile("Abyss/Configs/" .. tostring(game.PlaceId) .. "/" .. O .. ".json", l:JSONEncode(UISettings.Flags))
    end
    p.DeleteConfig = function(O)
        delfile("Abyss/Configs/" .. tostring(game.PlaceId) .. "/" .. O .. ".json")
    end
    p.LoadConfig = function(O)
        local O = l:JSONDecode(readfile("Abyss/Configs/" .. tostring(game.PlaceId) .. "/" .. O .. ".json"))
        o.Flags = LoadedConfig
        for Index, s in pairs(o.Flags) do
            if o.Items[Index].TypeOf == "Keybind" then
                o.Items[Index]:Set(s[1], s[2], s[3], true)
            elseif o.Items[Index].TypeOf == "Colorpicker" then
                o.Items[Index]:SetHue(s[1])
                o.Items[Index]:SetSaturationX(s[2])
                o.Items[Index]:SetSaturationY(s[3])
            else
                o.Items[Index]:Set(s)
            end
        end
        rconsoleinfo("Debug: Loaded a config! 0 error.")
    end
    p.AddFolder = function(P)
        local Q = isfolder(P)
        if Q then
            return
        else
            makefolder(P)
            return true
        end
    end
    p.AddImage = function(R, S, T)
        local U = nil
        if isfile(R) then
            U = readfile(R)
        else
            U = game:HttpGet(S)
            writefile(R, U)
        end
        return U
    end
end
do
    function o.CreateLoader(V, W)
        local X = {Max = 2, Current = 0}
        o.Theme.Logo = p.AddImage("Abyss/Assets/UI/Logo2.png", "https://i.imgur.com/HI4UTmZ.png")
        local Y =
            p.AddDrawing("Square", {Size = W, Thickness = 0, Color = o.Theme.Outline, Visible = true, Filled = true})
        Y.Position = p.MiddlePos(Y)
        local Z =
            p.AddDrawing(
            "Square",
            {
                Size = Vector2.new(Y.Size.X - 2, Y.Size.Y - 2),
                Position = Vector2.new(Y.Position.X + 1, Y.Position.Y + 1),
                Thickness = 0,
                Color = o.Theme.Accent[1],
                Visible = true,
                Filled = true
            }
        )
        local _ =
            p.AddDrawing(
            "Square",
            {
                Size = Vector2.new(Z.Size.X - 2, Z.Size.Y - 2),
                Position = Vector2.new(Z.Position.X + 1, Z.Position.Y + 1),
                Thickness = 0,
                Transparency = 1,
                Color = o.Theme.DarkContrast,
                Visible = true,
                Filled = true
            }
        )
        local a0 =
            p.AddDrawing(
            "Square",
            {
                Size = Vector2.new(Y.Size.X - 2, 2),
                Position = Vector2.new(Z.Position.X, Z.Position.Y),
                Thickness = 0,
                Color = o.Theme.Accent[1],
                Visible = false,
                Filled = true
            }
        )
        local a1 =
            p.AddDrawing(
            "Image",
            {Size = _.Size, Position = _.Position, Transparency = 1, Visible = true, Data = o.Theme.Gradient}
        )
        local a2 =
            p.AddDrawing(
            "Text",
            {
                Font = o.Theme.Font,
                Size = o.Theme.TextSize,
                Color = o.Theme.Text,
                Text = V,
                Position = Vector2.new(_.Position.X + _.Size.X / 2, Z.Position.Y + 8),
                Visible = true,
                Center = true,
                Outline = false
            }
        )
        local a3 =
            p.AddDrawing(
            "Text",
            {
                Font = o.Theme.Font,
                Size = o.Theme.TextSize,
                Color = o.Theme.Text,
                Visible = true,
                Center = true,
                Outline = false
            }
        )
        local a4 =
            p.AddDrawing(
            "Square",
            {
                Size = Vector2.new(205, 15),
                Color = o.Theme.Inline,
                Position = Vector2.new(_.Position.X + _.Size.X / 2, Z.Position.Y + 8),
                Transparency = 0.75,
                Thickness = 0,
                Visible = true,
                Filled = true
            }
        )
        local a5 =
            p.AddDrawing(
            "Square",
            {
                Size = Vector2.new(a4.Size.X - 2, a4.Size.Y - 2),
                Color = o.Theme.Outline,
                Transparency = 0.5,
                Thickness = 0,
                Visible = true,
                Filled = true
            }
        )
        local a6 =
            p.AddDrawing(
            "Square",
            {
                Size = Vector2.new((a4.Size.X - 2) / (X.Max / math.clamp(X.Current, 0, X.Max)), a4.Size.Y - 2),
                Color = o.Theme.Accent[1],
                Transparency = 0.75,
                Thickness = 0,
                Visible = true,
                Filled = true
            }
        )
        local a7 =
            p.AddDrawing(
            "Image",
            {
                Size = Vector2.new(a4.Size.X - 2, a4.Size.Y - 2),
                Transparency = 1,
                Visible = true,
                Data = o.Theme.Gradient
            }
        )
        local a8 =
            p.AddDrawing(
            "Image",
            {Size = Vector2.new(175, 175), Rounding = 5, Transparency = 1, Visible = true, Data = o.Theme.Logo}
        )
        a8.Position =
            Vector2.new(Y.Position.X + Y.Size.X / 2 - a8.Size.X / 2, Y.Position.Y + Y.Size.Y / 2 - a8.Size.Y / 2 - 15)
        X.SetText = function(e, a9)
            a6.Size = Vector2.new((a4.Size.X - 2) / (X.Max / math.clamp(e, 0, X.Max)), a4.Size.Y - 2)
            a3.Text = a9
        end
        a4.Position = Vector2.new(Y.Position.X + Y.Size.X / 2 - a5.Size.X / 2, Y.Position.Y + Y.Size.Y - 30)
        a5.Position = Vector2.new(a4.Position.X + 1, a4.Position.Y + 1)
        a6.Position = Vector2.new(a4.Position.X + 1, a4.Position.Y + 1)
        a7.Position = Vector2.new(a4.Position.X + 1, a4.Position.Y + 1)
        a3.Position = Vector2.new(_.Position.X + _.Size.X / 2, a4.Position.Y - 16)
        X.SetText(0, "UI Initialization [ Downloading ]")
        p.AddFolder("Abyss")
        p.AddFolder("Abyss/Caches")
        p.AddFolder("Abyss/Assets")
        p.AddFolder("Abyss/Assets/UI")
        p.AddFolder("Abyss/Configs")
        p.AddFolder("Abyss/Scripts")
        o.Theme.Gradient =
            p.AddImage(
            "Abyss/Assets/UI/Gradient.png",
            "https://raw.githubusercontent.com/mvonwalk/Exterium/main/Gradient.png"
        )
        o.Theme.Hue =
            p.AddImage(
            "Abyss/Assets/UI/Hue.png",
            "https://raw.githubusercontent.com/mvonwalk/Exterium/main/HuePicker.png"
        )
        o.Theme.Saturation =
            p.AddImage(
            "Abyss/Assets/UI/Saturation.png",
            "https://raw.githubusercontent.com/mvonwalk/Exterium/main/SaturationPicker.png"
        )
        o.Theme.SaturationCursor =
            p.AddImage(
            "Abyss/Assets/UI/HueCursor.png",
            "https://raw.githubusercontent.com/mvonwalk/splix-assets/main/Images-cursor.png"
        )
        o.Theme.Astolfo = p.AddImage("Abyss/Assets/UI/Astolfo.png", "https://i.imgur.com/T20cWY9.png")
        o.Theme.Aiko = p.AddImage("Abyss/Assets/UI/Aiko.png", "https://i.imgur.com/1gRIdko.png")
        o.Theme.Rem = p.AddImage("Abyss/Assets/UI/Rem.png", "https://i.imgur.com/ykbRkhJ.png")
        o.Theme.Violet = p.AddImage("Abyss/Assets/UI/Violet.png", "https://i.imgur.com/7B56w4a.png")
        o.Theme.Asuka = p.AddImage("Abyss/Assets/UI/Asuka.png", "https://i.imgur.com/3hwztNM.png")
        X.SetText(1, "Checking Assets")
        X.SetText(1, "Checking Input")
        p.CLCheck(X)
        X.SetText(2, "Finished")
        p.RemoveDrawing(Y)
        p.RemoveDrawing(Z)
        p.RemoveDrawing(a0)
        p.RemoveDrawing(_)
        p.RemoveDrawing(a2)
        p.RemoveDrawing(a3)
        p.RemoveDrawing(a5)
        p.RemoveDrawing(a4)
        p.RemoveDrawing(a6)
        p.RemoveDrawing(a7)
        p.RemoveDrawing(a8)
        p.RemoveDrawing(a1)
        f.MouseIconEnabled = false
        return X
    end
end
do
    function o:ChangeVisible(aa)
        o.WindowVisible = aa
        f.MouseIconEnabled = not o.WindowVisible
        for d, e in pairs(o.Drawings) do
            if e[2] then
                e[1].Transparency = o.WindowVisible and 1 or 0
            else
                if e[1].Color ~= o.Theme.Hitbox then
                    e[1].Transparency = o.WindowVisible and 1 or 0
                end
            end
        end
    end
    function o:UpdateTheme(O)
        if O.Accent ~= nil then
            o.Theme.Accent[1] = O.Accent
            o.Communication:Fire("Accent", O.Accent)
        end
        if O.Outline ~= nil then
            o.Theme.Outline = O.Outline
            o.Communication:Fire("Outline", O.Outline)
        end
        if O.Inline ~= nil then
            o.Theme.Inline = O.Inline
            o.Communication:Fire("Inline", O.Inline)
        end
        if O.LightContrast ~= nil then
            o.Theme.LightContrast = O.LightContrast
            o.Communication:Fire("LightContrast", O.LightContrast)
        end
        if O.DarkContrast ~= nil then
            o.Theme.DarkContrast = O.DarkContrast
            o.Communication:Fire("DarkContrast", O.DarkContrast)
        end
    end
    function o.SelfDestruct()
        f.MouseIconEnabled = true
        for Index, s in pairs(o.Connections) do
            s:Disconnect()
        end
        for Index, s in pairs(o.Drawings) do
            if s[1] then
                s[1]:Remove()
            end
        end
        for Index, s in pairs(o.Watermark) do
            if s[1] then
                s[1]:Remove()
            end
        end
        for Index, s in pairs(o.Keybind) do
            if s[1] then
                s[1]:Remove()
            end
        end
        for Index, s in pairs(o.Ignores) do
            if s[1] then
                s[1]:Remove()
            end
        end
        o.Drawings = {}
        o.Watermark = {}
        o.Keybind = {}
        o.Ignores = {}
    end
    function o.Window(V, ab)
        local X = {Notification = 0, Tabs = {}, LastTab = nil, SelectedTab = nil, BindList = ""}
        local ac =
            p.AddDrawing(
            "Image",
            {Position = Vector2.new(0, 0), Size = Vector2.new(1920, 1080), Transparency = 0, Visible = true},
            o.Ignores
        )
        do
            local Y =
                p.AddDrawing(
                "Square",
                {Size = Vector2.new(120, 20), Thickness = 0, Color = o.Theme.Outline, Visible = true, Filled = true},
                o.Keybind
            )
            Y.Position = Vector2.new(10, k.ViewportSize.Y / 2 - Y.Size.Y / 2)
            local Z =
                p.AddDrawing(
                "Square",
                {
                    Size = Vector2.new(Y.Size.X - 2, Y.Size.Y - 2),
                    Position = Vector2.new(Y.Position.X + 1, Y.Position.Y + 1),
                    Thickness = 0,
                    Color = o.Theme.Accent[1],
                    Visible = false,
                    Filled = true
                },
                o.Keybind
            )
            local _ =
                p.AddDrawing(
                "Square",
                {
                    Size = Vector2.new(Z.Size.X - 2, Z.Size.Y - 2),
                    Position = Vector2.new(Z.Position.X + 1, Z.Position.Y + 1),
                    Thickness = 0,
                    Transparency = 1,
                    Color = o.Theme.DarkContrast,
                    Visible = true,
                    Filled = true
                },
                o.Keybind
            )
            local a0 =
                p.AddDrawing(
                "Square",
                {
                    Size = Vector2.new(Z.Size.X, 1),
                    Position = Vector2.new(Z.Position.X, Z.Position.Y),
                    Thickness = 0,
                    Color = o.Theme.Accent[1],
                    Visible = true,
                    Filled = true
                },
                o.Keybind
            )
            local a1 =
                p.AddDrawing(
                "Image",
                {Size = _.Size, Position = _.Position, Transparency = 1, Visible = true, Data = o.Theme.Gradient},
                o.Keybind
            )
            local a3 =
                p.AddDrawing(
                "Text",
                {
                    Font = o.Theme.Font,
                    Size = o.Theme.TextSize,
                    Color = o.Theme.Text,
                    Text = "Keybinds",
                    Position = Vector2.new(Z.Position.X + Z.Size.X / 2, Z.Position.Y + 2),
                    Visible = true,
                    Center = true,
                    Outline = false
                },
                o.Keybind
            )
            local ad =
                p.AddDrawing(
                "Text",
                {
                    Font = o.Theme.Font,
                    Size = o.Theme.TextSize,
                    Color = o.Theme.Text,
                    Text = "",
                    Position = Vector2.new(Z.Position.X + 3, Z.Position.Y + 8),
                    Visible = true,
                    Center = false,
                    Outline = false
                },
                o.Keybind
            )
            p.AddConnection(
                g.RenderStepped,
                function(B, N)
                    ad.Text = X.BindList
                    local ae =
                        ad.Text ~= "" and
                        Vector2.new(ad.TextBounds.X >= 120 and ad.TextBounds.X + 6 or 120, 20 + ad.TextBounds.Y - 6) or
                        Vector2.new(120, 20)
                    Y.Size = ae
                    Z.Size = Vector2.new(Y.Size.X - 2, Y.Size.Y - 2)
                    Z.Position = Vector2.new(Y.Position.X + 1, Y.Position.Y + 1)
                    a0.Size = Vector2.new(Z.Size.X, 1)
                    a0.Position = Vector2.new(Z.Position.X, Z.Position.Y)
                    a1.Size = _.Size
                    a1.Position = _.Position
                    a3.Position = Vector2.new(Z.Position.X + Z.Size.X / 2, Z.Position.Y + 2)
                end
            )
            p.AddDrag(Y, o.Keybind)
            p.AddConnection(
                o.Communication.Event,
                function(B, N)
                    if B == "Accent" then
                        Z.Color = N
                        a0.Color = N
                    elseif B == "Outline" then
                        Y.Color = N
                    elseif B == "DarkContrast" then
                        _.Color = N
                    elseif B == "Text" then
                        a3.Color = N
                    end
                end
            )
        end
        local af = p.AddDrawing("Image", {Transparency = 0.5, Visible = false}, o.Ignores)
        local Y =
            p.AddDrawing("Square", {Size = ab, Thickness = 0, Color = o.Theme.Outline, Visible = true, Filled = true})
        Y.Position = p.MiddlePos(Y)
        local Z =
            p.AddDrawing(
            "Square",
            {
                Size = Vector2.new(Y.Size.X - 2, Y.Size.Y - 2),
                Position = Vector2.new(Y.Position.X + 1, Y.Position.Y + 1),
                Thickness = 0,
                Color = o.Theme.Accent[1],
                Visible = true,
                Filled = true
            }
        )
        local _ =
            p.AddDrawing(
            "Square",
            {
                Size = Vector2.new(Z.Size.X - 2, Z.Size.Y - 2),
                Position = Vector2.new(Z.Position.X + 1, Z.Position.Y + 1),
                Thickness = 0,
                Transparency = 1,
                Color = o.Theme.DarkContrast,
                Visible = true,
                Filled = true
            }
        )
        local ag =
            p.AddDrawing(
            "Image",
            {
                Size = Vector2.new(70, 70),
                Position = Vector2.new(_.Position.X + _.Size.X / 2 - 35, _.Position.Y - 4),
                Transparency = 1,
                ZIndex = 3,
                Visible = false,
                Data = o.Theme.Logo
            }
        )
        p.AddCursor(_)
        local ah =
            p.AddDrawing(
            "Square",
            {
                Size = Vector2.new(Z.Size.X - 2, 70),
                Position = Vector2.new(Z.Position.X + 1, Z.Position.Y + 1),
                Thickness = 0,
                Transparency = 0,
                Color = o.Theme.Hitbox,
                Visible = true,
                Filled = true
            }
        )
        p.AddDrag(ah, o.Drawings)
        local a0 =
            p.AddDrawing(
            "Square",
            {
                Size = Vector2.new(Z.Size.X, 1),
                Position = Vector2.new(Z.Position.X, Z.Position.Y),
                Thickness = 0,
                Color = o.Theme.Accent[1],
                Visible = false,
                Filled = true
            }
        )
        local a1 =
            p.AddDrawing(
            "Image",
            {Size = _.Size, Position = _.Position, Transparency = 1, Visible = true, Data = o.Theme.Gradient}
        )
        local a2 =
            p.AddDrawing(
            "Text",
            {
                Font = o.Theme.Font,
                Size = o.Theme.TextSize,
                Color = o.Theme.Text,
                Text = V,
                Position = Vector2.new(Z.Position.X + 8, Z.Position.Y + 6),
                Visible = true,
                Center = false,
                Outline = false
            }
        )
        local ai =
            p.AddDrawing(
            "Square",
            {
                Size = Vector2.new(ab.X - 17, ab.Y - 50),
                Position = Vector2.new(Z.Position.X + 8, Z.Position.Y + 42),
                Thickness = 0,
                Color = o.Theme.Inline,
                Visible = true,
                Filled = true
            }
        )
        local aj =
            p.AddDrawing(
            "Square",
            {
                Size = Vector2.new(ai.Size.X - 2, ai.Size.Y - 2),
                Position = Vector2.new(ai.Position.X + 1, ai.Position.Y + 1),
                Thickness = 0,
                Color = o.Theme.LightContrast,
                Visible = true,
                Filled = true
            }
        )
        local ak =
            p.AddDrawing(
            "Square",
            {Thickness = 0, Color = o.Theme.Accent[1], Visible = true, Filled = true, ZIndex = 2}
        )
        local al =
            p.AddDrawing(
            "Square",
            {Thickness = 0, Color = o.Theme.LightContrast, Visible = true, Filled = true, ZIndex = 3}
        )
        p.AddConnection(
            o.Communication.Event,
            function(B, N)
                if B == "Accent" then
                    Z.Color = N
                    a0.Color = N
                    ak.Color = N
                elseif B == "Outline" then
                    Y.Color = N
                elseif B == "LightContrast" then
                    al.Color = N
                    aj.Color = N
                elseif B == "DarkContrast" then
                    _.Color = N
                elseif B == "Text" then
                    a2.Color = N
                elseif B == "Inline" then
                    ai.Color = N
                end
            end
        )
        X["PageCover"] = ai
        function X.ChangeAnime(am)
            af.Data =
                am == "Astolfo" and o.Theme.Astolfo or am == "Aiko" and o.Theme.Aiko or am == "Rem" and o.Theme.Rem or
                am == "Violet" and o.Theme.Violet or
                am == "Asuka" and o.Theme.Asuka
            af.Size =
                am == "Astolfo" and Vector2.new(412, 605) or am == "Aiko" and Vector2.new(390, 630) or
                am == "Rem" and Vector2.new(390, 639) or
                am == "Violet" and Vector2.new(1029 / 3, 1497 / 3) or
                am == "Asuka" and Vector2.new(415, 601)
            af.Position = Vector2.new(k.ViewportSize.X - 400, k.ViewportSize.Y - af.Size.Y)
        end
        function X.ToggleAnime(aa)
            af.Visible = aa
        end
        function X.SendNotification(B, V, an)
            local ao, ap = X.Notification, false
            local aq =
                p.AddDrawing(
                "Square",
                {
                    Size = Vector2.new(0, 21),
                    Position = Vector2.new(0, X.Notification * 25 + 100),
                    Thickness = 0,
                    Color = o.Theme.Inline,
                    Visible = true,
                    Filled = true
                },
                o.Ignores
            )
            local ar =
                p.AddDrawing(
                "Square",
                {
                    Size = Vector2.new(0, aq.Size.Y - 1),
                    Position = Vector2.new(aq.Position.X + 2, aq.Position.Y + 2),
                    Thickness = 0,
                    Color = o.Theme.DarkContrast,
                    Visible = true,
                    Filled = true
                },
                o.Ignores
            )
            local as =
                p.AddDrawing(
                "Square",
                {
                    Size = Vector2.new(ar.Size.X - 2, ar.Size.Y + 5),
                    Position = Vector2.new(ar.Position.X + 1, ar.Position.Y + 1),
                    Thickness = 0,
                    Color = o.Theme.Accent[1],
                    Visible = false,
                    Filled = true
                },
                o.Ignores
            )
            local at =
                p.AddDrawing(
                "Square",
                {
                    Size = Vector2.new(ar.Size.X, 1),
                    Position = Vector2.new(ar.Position.X, ar.Position.Y),
                    Thickness = 0,
                    Color = B == "Warning" and o.Theme.Notification.Warning or
                        B == "Error" and o.Theme.Notification.Error or
                        o.Theme.DarkContrast,
                    Visible = B == "Warning" or B == "Error",
                    Filled = true
                },
                o.Ignores
            )
            local au =
                p.AddDrawing(
                "Square",
                {
                    Size = Vector2.new(1, ar.Size.Y),
                    Position = Vector2.new(ar.Position.X, ar.Position.Y),
                    Thickness = 0,
                    Color = B == "Normal" and o.Theme.Accent[1] or o.Theme.DarkContrast,
                    Visible = B == "Normal",
                    Filled = true
                },
                o.Ignores
            )
            local av =
                p.AddDrawing(
                "Image",
                {Size = as.Size, Position = as.Position, Transparency = 1, Visible = true, Data = o.Theme.Gradient},
                o.Ignores
            )
            local aw =
                p.AddDrawing(
                "Text",
                {
                    Font = o.Theme.Font,
                    Size = o.Theme.TextSize,
                    Color = o.Theme.Text,
                    Text = V,
                    Position = Vector2.new(as.Position.X + 6, as.Position.Y + 3),
                    Visible = true,
                    Center = false,
                    Outline = false
                },
                o.Ignores
            )
            aq.Size = Vector2.new(aw.TextBounds.X + 15, 21)
            ar.Size = Vector2.new(aq.Size.X - 1, aq.Size.Y - 1)
            ar.Position = Vector2.new(aq.Position.X + 2, aq.Position.Y + 2)
            as.Size = Vector2.new(ar.Size.X - 2, ar.Size.Y - 2)
            as.Position = Vector2.new(ar.Position.X + 1, ar.Position.Y + 1)
            au.Size = Vector2.new(2, ar.Size.Y)
            at.Size = Vector2.new(ar.Size.X, 1)
            av.Size = ar.Size
            av.Position = ar.Position
            task.spawn(
                function()
                    for Index = -100, 0, 2 do
                        pcall(
                            function()
                                aq.Position = Vector2.new(Index, ao * 25 + 100)
                                ar.Position = Vector2.new(aq.Position.X + 2, aq.Position.Y + 2)
                                as.Position = Vector2.new(ar.Position.X + 2, ar.Position.Y + 2)
                                aw.Position = Vector2.new(ar.Position.X + 6, ar.Position.Y + 3)
                                at.Position = Vector2.new(ar.Position.X, ar.Position.Y)
                                av.Position = ar.Position
                                au.Position = Vector2.new(ar.Position.X, ar.Position.Y)
                            end
                        )
                        task.wait()
                    end
                end
            )
            p.AddConnection(
                o.Communication.Event,
                function(B)
                    if B == "UpdateNotification" then
                        ao = 1
                        pcall(
                            function()
                                aq.Size = Vector2.new(Index, ao * 25 + 100)
                                ar.Position = Vector2.new(aq.Position.X + 2, aq.Position.Y + 2)
                                aw.Position = Vector2.new(ar.Position.X + 6, ar.Position.Y + 3)
                                at.Position = Vector2.new(ar.Position.X, ar.Position.Y)
                                av.Position = ar.Position
                                au.Position = Vector2.new(ar.Position.X, ar.Position.Y)
                            end
                        )
                    end
                end
            )
            X.Notification = 1
            task.spawn(
                function()
                    task.wait(an)
                    pcall(
                        function()
                            p.RemoveDrawing(aq, o.Ignores)
                            p.RemoveDrawing(au, o.Ignores)
                            p.RemoveDrawing(ar, o.Ignores)
                            p.RemoveDrawing(as, o.Ignores)
                            p.RemoveDrawing(aw, o.Ignores)
                            p.RemoveDrawing(at, o.Ignores)
                            p.RemoveDrawing(av, o.Ignores)
                        end
                    )
                    o.Communication:Fire("UpdateNotification")
                    X.Notification = 1
                end
            )
        end
        function X:RefreshPages()
            for Index, s in pairs(X.Tabs) do
                s:Resize(Index)
            end
        end
        function X:SwitchTab(ax)
            for Index, s in pairs(self.Tabs) do
                s["TabTitle"].Color = o.Theme.TextInactive
                s["TabOutline"].Color = o.Theme.DarkContrast
                for ay, az in pairs(s["Render"]) do
                    az.Visible = false
                end
            end
            ax["TabOutline"].Color = o.Theme.LightContrast
            ax["TabTitle"].Color = o.Theme.Text
            ak.Size = Vector2.new(ax["TabOutline"].Size.X, 1)
            ak.Position = Vector2.new(ax["TabOutline"].Position.X, ax["TabOutline"].Position.Y)
            al.Size = Vector2.new(ax["TabOutline"].Size.X, 1)
            al.Position =
                Vector2.new(ax["TabOutline"].Position.X, ax["TabOutline"].Position.Y + ax["TabOutline"].Size.Y)
            X.SelectedTab = ax.CurrentTab
            for ay, az in pairs(ax["Render"]) do
                az.Visible = true
            end
        end
        function X:Tab(V)
            local ax = {
                Visible = {},
                SectionAxis = {0, 0},
                Sections = {},
                Dropdowns = {["Left"] = {}, ["Right"] = {}},
                CurrentTab = #self.Tabs
            }
            local aA =
                p.AddDrawing(
                "Square",
                {
                    Position = Vector2.new(ai.Position.X, aj.Position.Y - 20),
                    Size = Vector2.new(0, 20),
                    Thickness = 0,
                    Color = o.Theme.Inline,
                    Visible = true,
                    Filled = true
                }
            )
            local aB =
                p.AddDrawing(
                "Square",
                {
                    Size = Vector2.new(aA.Size.X - 2, aA.Size.Y - 2),
                    Position = Vector2.new(aA.Position.X + 1, aA.Position.Y + 1),
                    Thickness = 0,
                    Color = o.Theme.DarkContrast,
                    Visible = true,
                    Filled = true
                }
            )
            local aC =
                p.AddDrawing(
                "Text",
                {
                    Text = V,
                    Center = true,
                    Outline = false,
                    Font = o.Theme.Font,
                    Size = o.Theme.TextSize,
                    Color = o.Theme.Text,
                    Visible = true,
                    ZIndex = 2
                }
            )
            p.AddConnection(
                o.Communication.Event,
                function(B, N)
                    if B == "DarkContrast" and X.SelectedTab == ax then
                        aB.Color = N
                    elseif B == "LightContrast" and X.SelectedTab ~= ax then
                        aB.Color = N
                    elseif B == "Text" then
                        aC.Color = N
                    elseif B == "Inline" then
                        aA.Color = N
                    end
                end
            )
            function ax:Install()
                aA.Size = Vector2.new(aC.TextBounds.X + 50, 20)
                aA.Position =
                    Vector2.new(
                    X.LastTab ~= nil and X.LastTab.Position.X + X.LastTab.Size.X + 5 or ai.Position.X,
                    aj.Position.Y - 20
                )
                aB.Size = Vector2.new(aA.Size.X - 2, aA.Size.Y - 2)
                aB.Position = Vector2.new(aA.Position.X + 1, aA.Position.Y + 1)
                if X.LastTab == nil then
                    ak.Size = Vector2.new(aB.Size.X, 1)
                    ak.Position = Vector2.new(aB.Position.X + 1, aB.Position.Y)
                    al.Size = Vector2.new(aB.Size.X, 1)
                    al.Position = Vector2.new(aB.Position.X, aB.Position.Y + aB.Size.Y)
                    X.SelectedTab = ax.CurrentTab
                end
                aC.Position = Vector2.new(aB.Position.X + aB.Size.X / 2, aB.Position.Y + aB.Size.Y / 2 - 7)
            end
            function ax:RemoveDrawing(Instance)
                local A = 0
                for Index, s in pairs(ax["Render"]) do
                    if s == Instance then
                        A = Index
                    end
                end
                table.remove(ax["Render"], table.find(ax["Render"], ax["Render"][A]))
                local aD = 0
                for Index, s in pairs(o.Drawings) do
                    if s[1] == Instance then
                        if s[1] then
                            s[1]:Remove()
                        end
                        if s[2] then
                            s[2] = nil
                        end
                        aD = Index
                    end
                end
                table.remove(o.Drawings, table.find(o.Drawings, o.Drawings[aD]))
            end
            function ax:Section(V, aE)
                local aF = {ContentAxis = 0}
                local aG = aE == "Left" and aj.Position.X + 6 or aj.Position.X + aj.Size.X / 2 - 10 + 12
                local aH =
                    p.AddDrawing(
                    "Square",
                    {
                        Position = Vector2.new(
                            aG,
                            ax.SectionAxis[aE == "Left" and 1 or 2] == 0 and aB.Position.Y + aB.Size.Y + 6 or
                                6 + ax.SectionAxis[aE == "Left" and 1 or 2]
                        ),
                        Size = Vector2.new(aj.Size.X / 2 - 8, 24),
                        Thickness = 0,
                        Color = o.Theme.Inline,
                        Visible = true,
                        Filled = true
                    }
                )
                local aI =
                    p.AddDrawing(
                    "Square",
                    {
                        Size = Vector2.new(aH.Size.X - 2, aH.Size.Y - 2),
                        Position = Vector2.new(aH.Position.X + 1, aH.Position.Y + 1),
                        Thickness = 0,
                        Color = o.Theme.DarkContrast,
                        Visible = true,
                        Filled = true
                    }
                )
                local aJ =
                    p.AddDrawing(
                    "Square",
                    {
                        Size = Vector2.new(aI.Size.X, 1),
                        Position = Vector2.new(aI.Position.X, aI.Position.Y),
                        Thickness = 0,
                        Color = o.Theme.Accent[1],
                        Visible = true,
                        Filled = true
                    }
                )
                local aK =
                    p.AddDrawing(
                    "Text",
                    {
                        Text = V,
                        Position = Vector2.new(aI.Position.X + 4, aI.Position.Y + 4),
                        Center = false,
                        Outline = false,
                        Font = o.Theme.Font,
                        Size = o.Theme.TextSize,
                        Color = o.Theme.Text,
                        Visible = true,
                        ZIndex = 2
                    }
                )
                p.AddConnection(
                    o.Communication.Event,
                    function(B, N)
                        if B == "Accent" then
                            aJ.Color = N
                        elseif B == "DarkContrast" then
                            aI.Color = N
                        elseif B == "Text" then
                            aK.Color = N
                        elseif B == "Inline" then
                            aH.Color = N
                        end
                    end
                )
                function aF:UpdateSizeY(aL)
                    aH.Size = Vector2.new(aH.Size.X, aL + 10)
                    aI.Size = Vector2.new(aH.Size.X - 2, aH.Size.Y - 2)
                    aI.Position = Vector2.new(aH.Position.X + 1, aH.Position.Y + 1)
                end
                ax.SectionAxis = {
                    aE == "Left" and aH.Position.Y + aH.Size.Y or ax.SectionAxis[1],
                    aE == "Right" and aH.Position.Y + aH.Size.Y or ax.SectionAxis[2]
                }
                ax["Render"][#ax["Render"] + 1] = aH
                ax["Render"][#ax["Render"] + 1] = aI
                ax["Render"][#ax["Render"] + 1] = aJ
                ax["Render"][#ax["Render"] + 1] = aK
                function aF:Toggle(aM)
                    local aN = {
                        Axis = aF.ContentAxis,
                        Toggled = aM.State,
                        Drop = false,
                        Callback = typeof(aM.Callback) == "function" and aM.Callback or function()
                            end
                    }
                    aM.Flag = aM.Flag or "AWGWJIjgAWJIGIJAWG"
                    o.Flags[aM.Flag] = false
                    local aO =
                        p.AddDrawing(
                        "Square",
                        {
                            Position = Vector2.new(aH.Position.X + 8, aH.Position.Y + 23 + aN.Axis),
                            Size = Vector2.new(13, 13),
                            Thickness = 0,
                            Color = o.Theme.Inline,
                            Visible = true,
                            Filled = true
                        }
                    )
                    local aP =
                        p.AddDrawing(
                        "Square",
                        {
                            Size = Vector2.new(aO.Size.X - 2, aO.Size.Y - 2),
                            Position = Vector2.new(aO.Position.X + 1, aO.Position.Y + 1),
                            Thickness = 0,
                            Color = o.Theme.LightContrast,
                            Visible = true,
                            Filled = true
                        }
                    )
                    local aQ =
                        p.AddDrawing(
                        "Square",
                        {
                            Size = Vector2.new(aI.Size.X - 60, aO.Size.Y - 2),
                            Position = Vector2.new(aO.Position.X + 1, aO.Position.Y + 1),
                            Thickness = 0,
                            Color = o.Theme.Hitbox,
                            Transparency = 0,
                            Visible = true,
                            Filled = true
                        }
                    )
                    local aR =
                        p.AddDrawing(
                        "Image",
                        {
                            Size = Vector2.new(aO.Size.X - 2, aO.Size.Y - 2),
                            Position = Vector2.new(aO.Position.X + 1, aO.Position.Y + 1),
                            Data = o.Theme.Gradient,
                            Transparency = 0.5,
                            Visible = true
                        }
                    )
                    local aS =
                        p.AddDrawing(
                        "Text",
                        {
                            Text = aM.Title,
                            Position = Vector2.new(aO.Position.X + aO.Size.X + 8, aO.Position.Y),
                            Center = false,
                            Outline = false,
                            Font = o.Theme.Font,
                            Size = o.Theme.TextSize,
                            Color = aM.Type ~= nil and aM.Type == "Dangerous" and o.Theme.Accent[1] or o.Theme.Text,
                            Visible = true,
                            ZIndex = 2
                        }
                    )
                    function aN:Set(aa)
                        aN.Toggled = aa
                        aP.Color = aN.Toggled and o.Theme.Accent[1] or o.Theme.DarkContrast
                        o.Flags[aM.Flag] = aN.Toggled
                        aN.Callback(aN.Toggled)
                    end
                    p.AddConnection(
                        f.InputBegan,
                        function(K, aT)
                            for Index, s in pairs(ax.Dropdowns[aE]) do
                                if s then
                                    return
                                end
                            end
                            if K.UserInputType == Enum.UserInputType.MouseButton1 and p.OnMouse(aQ) then
                                aN.Toggled = not aN.Toggled
                                aN:Set(aN.Toggled)
                            end
                        end
                    )
                    p.AddConnection(
                        f.InputChanged,
                        function(K, aT)
                            if K.UserInputType == Enum.UserInputType.MouseMovement then
                                if p.OnMouse(aQ) then
                                    aO.Color = o.Theme.Accent[1]
                                else
                                    aO.Color = o.Theme.Inline
                                end
                            end
                        end
                    )
                    p.AddConnection(
                        o.Communication.Event,
                        function(B, N)
                            if B == "Accent" and aN.Toggled then
                                aP.Color = N
                                if aM.Type == "Dangerous" then
                                    aS.Color = N
                                end
                            elseif B == "LightContrast" and not aN.Toggled then
                                aP.Color = N
                            elseif B == "Text" then
                                aS.Color = N
                            elseif B == "Inline" then
                                aO.Color = N
                            end
                        end
                    )
                    aF.ContentAxis = aF.ContentAxis + aP.Size.Y + 8
                    ax.SectionAxis = {
                        aE == "Left" and ax.SectionAxis[1] + aP.Size.Y + 8 or ax.SectionAxis[1],
                        aE == "Right" and ax.SectionAxis[2] + aP.Size.Y + 8 or ax.SectionAxis[2]
                    }
                    self:UpdateSizeY(aF.ContentAxis + aP.Size.Y)
                    ax["Render"][#ax["Render"] + 1] = aO
                    ax["Render"][#ax["Render"] + 1] = aP
                    ax["Render"][#ax["Render"] + 1] = aS
                    ax["Render"][#ax["Render"] + 1] = aR
                    ax["Render"][#ax["Render"] + 1] = aQ
                    function aN:Colorpicker(aM)
                        local aU = {
                            Axis = aF.ContentAxis,
                            Color = aM.Color,
                            HexColor = aM.Color:ToHex(),
                            Dropped = false,
                            Offsets = {X = 0, Y = 0},
                            Colors = {HSV = {1, 1, 1}},
                            SaturationDragging = false,
                            HueDragging = false,
                            Decimals = 50,
                            Rainbow = false,
                            Flag = aM.Flag,
                            Callback = typeof(aM.Callback) == "function" and aM.Callback or function()
                                end
                        }
                        aU.Flag = aU.Flag or "AWIJGHUIWGHuAW"
                        o.Flags[aU.Flag] = aU.HexColor
                        local aV, aW, aX = aU.Color:ToHSV()
                        aU.Colors.HSV[1] = aV
                        aU.Colors.HSV[2] = aW
                        aU.Colors.HSV[3] = aX
                        local aY =
                            p.AddDrawing(
                            "Square",
                            {
                                Position = Vector2.new(aH.Position.X + aH.Size.X - 38, aO.Position.Y + 1),
                                Size = Vector2.new(30, 12),
                                Thickness = 0,
                                Color = o.Theme.Inline,
                                Visible = true,
                                Filled = true
                            }
                        )
                        local aZ =
                            p.AddDrawing(
                            "Square",
                            {
                                Size = Vector2.new(aY.Size.X - 2, aY.Size.Y - 2),
                                Position = Vector2.new(aY.Position.X + 1, aY.Position.Y + 1),
                                Thickness = 0,
                                Color = o.Theme.LightContrast,
                                Visible = true,
                                Filled = true
                            }
                        )
                        local a_ =
                            p.AddDrawing(
                            "Square",
                            {
                                Size = Vector2.new(aY.Size.X - 2, aY.Size.Y - 2),
                                Position = Vector2.new(aY.Position.X + 1, aY.Position.Y + 1),
                                Thickness = 0,
                                Color = aU.Color,
                                Visible = true,
                                Filled = true
                            }
                        )
                        local b0 =
                            p.AddDrawing(
                            "Image",
                            {
                                Size = Vector2.new(aY.Size.X - 2, aY.Size.Y - 2),
                                Position = Vector2.new(aY.Position.X + 1, aY.Position.Y + 1),
                                Data = o.Theme.Gradient,
                                Transparency = 0.5,
                                Visible = true
                            }
                        )
                        local b1 =
                            p.AddDrawing(
                            "Square",
                            {
                                Position = Vector2.new(aY.Position.X - 225 + aY.Size.X, aO.Position.Y + 18),
                                Size = Vector2.new(225, 250),
                                Thickness = 0,
                                Color = o.Theme.Inline,
                                Visible = true,
                                Filled = true,
                                ZIndex = 3
                            }
                        )
                        local b2 =
                            p.AddDrawing(
                            "Square",
                            {
                                Size = Vector2.new(b1.Size.X - 2, b1.Size.Y - 2),
                                Position = Vector2.new(b1.Position.X + 1, b1.Position.Y + 1),
                                Thickness = 0,
                                Color = o.Theme.LightContrast,
                                Visible = true,
                                Filled = true,
                                ZIndex = 3
                            }
                        )
                        local b3 =
                            p.AddDrawing(
                            "Square",
                            {
                                Size = Vector2.new(b2.Size.X, 1),
                                Position = Vector2.new(b2.Position.X, b2.Position.Y),
                                Thickness = 0,
                                Color = o.Theme.Accent[1],
                                Visible = true,
                                Filled = true,
                                ZIndex = 3
                            }
                        )
                        p.AddConnection(
                            o.Communication.Event,
                            function(B, N)
                                if B == "Accent" then
                                    b3.Color = N
                                end
                            end
                        )
                        local b4 =
                            p.AddDrawing(
                            "Text",
                            {
                                Text = aS.Text,
                                Position = Vector2.new(b2.Position.X + 8, b2.Position.Y + 6),
                                Center = false,
                                Outline = false,
                                Font = o.Theme.Font,
                                Size = o.Theme.TextSize,
                                Color = o.Theme.Text,
                                Visible = true,
                                ZIndex = 3
                            }
                        )
                        local b5 =
                            p.AddDrawing(
                            "Square",
                            {
                                Position = Vector2.new(b2.Position.X + 8, b2.Position.Y + 25),
                                Size = Vector2.new(192, 192),
                                Thickness = 0,
                                Color = o.Theme.Inline,
                                Visible = true,
                                Filled = true,
                                ZIndex = 3
                            }
                        )
                        local b6 =
                            p.AddDrawing(
                            "Square",
                            {
                                Size = Vector2.new(192 - 4, 192 - 4),
                                Position = Vector2.new(b5.Position.X + 2, b5.Position.Y + 2),
                                Thickness = 0,
                                Color = aM.Color,
                                Visible = true,
                                Filled = true,
                                ZIndex = 3
                            }
                        )
                        local b7 =
                            p.AddDrawing(
                            "Image",
                            {
                                Size = Vector2.new(196 - 2, 196 - 2),
                                Position = Vector2.new(b2.Position.X + 8 + 1, b2.Position.Y + 25 + 1),
                                Data = o.Theme.Saturation,
                                Transparency = 1,
                                Visible = true,
                                ZIndex = 3
                            }
                        )
                        local b8 =
                            p.AddDrawing(
                            "Square",
                            {
                                Position = Vector2.new(b2.Position.X + b6.Size.X + 14, b2.Position.Y + 26),
                                Size = Vector2.new(16, 196),
                                Thickness = 0,
                                Color = o.Theme.Inline,
                                Visible = true,
                                Filled = true,
                                ZIndex = 3
                            }
                        )
                        local b9 =
                            p.AddDrawing(
                            "Image",
                            {
                                Size = Vector2.new(b8.Size.X - 2, b8.Size.Y - 2),
                                Position = Vector2.new(b8.Position.X + 1, b8.Position.Y + 1),
                                Data = o.Theme.Hue,
                                Transparency = 1,
                                Visible = true,
                                ZIndex = 3
                            }
                        )
                        local ba =
                            p.AddDrawing(
                            "Square",
                            {
                                Position = Vector2.new(b2.Position.X + b6.Size.X + 12, b2.Position.Y + 26),
                                Size = Vector2.new(b8.Size.X + 2, 6),
                                Thickness = 2,
                                Color = o.Theme.Outline,
                                Visible = true,
                                Filled = false,
                                ZIndex = 3
                            }
                        )
                        local bb =
                            p.AddDrawing(
                            "Square",
                            {
                                Position = Vector2.new(ba.Position.X + 1, ba.Position.Y + 1),
                                Size = Vector2.new(ba.Size.X - 2, ba.Size.Y - 2),
                                Thickness = 2,
                                Color = o.Theme.Text,
                                Visible = true,
                                Filled = false,
                                ZIndex = 3
                            }
                        )
                        local M =
                            p.AddDrawing(
                            "Image",
                            {
                                Size = Vector2.new(6, 6),
                                Data = o.Theme.SaturationCursor,
                                Transparency = 1,
                                Visible = true,
                                ZIndex = 6
                            }
                        )
                        local bc =
                            p.AddDrawing(
                            "Square",
                            {
                                Size = Vector2.new(80 - 2, 18 - 2),
                                Position = Vector2.new(b2.Position.X + 8 + 1, b2.Position.Y + b7.Size.Y + 30 + 1),
                                Thickness = 0,
                                Color = o.Theme.Inline,
                                Visible = true,
                                Filled = true,
                                ZIndex = 3
                            }
                        )
                        local bd =
                            p.AddDrawing(
                            "Square",
                            {
                                Size = Vector2.new(bc.Size.X - 2, bc.Size.Y - 2),
                                Position = Vector2.new(bc.Position.X + 1, bc.Position.Y + 1),
                                Thickness = 0,
                                Color = o.Theme.LightContrast,
                                Visible = true,
                                Filled = true,
                                ZIndex = 3
                            }
                        )
                        local be =
                            p.AddDrawing(
                            "Text",
                            {
                                Text = ("#%s"):format(tostring(aU.HexColor)),
                                Position = Vector2.new(bd.Position.X + bd.Size.X / 2, bd.Position.Y),
                                Center = true,
                                Outline = false,
                                Font = o.Theme.Font,
                                Size = o.Theme.TextSize,
                                Color = o.Theme.Text,
                                Visible = true,
                                ZIndex = 3
                            }
                        )
                        local bf =
                            p.AddDrawing(
                            "Square",
                            {
                                Size = Vector2.new(130 - 2, 18 - 2),
                                Position = Vector2.new(b2.Position.X + 90 + 1, b2.Position.Y + b7.Size.Y + 30 + 1),
                                Thickness = 0,
                                Color = o.Theme.Inline,
                                Visible = true,
                                Filled = true,
                                ZIndex = 3
                            }
                        )
                        local bg =
                            p.AddDrawing(
                            "Square",
                            {
                                Size = Vector2.new(bf.Size.X - 2, bf.Size.Y - 2),
                                Position = Vector2.new(bf.Position.X + 1, bf.Position.Y + 1),
                                Thickness = 0,
                                Color = o.Theme.LightContrast,
                                Visible = true,
                                Filled = true,
                                ZIndex = 3
                            }
                        )
                        local bh =
                            p.AddDrawing(
                            "Text",
                            {
                                Text = ("%s, %s, %s"):format(
                                    math.floor(aU.Color.R * 255),
                                    math.floor(aU.Color.G * 255),
                                    math.floor(aU.Color.B * 255)
                                ),
                                Position = Vector2.new(bg.Position.X + bg.Size.X / 2, bg.Position.Y),
                                Center = true,
                                Outline = false,
                                Font = o.Theme.Font,
                                Size = o.Theme.TextSize,
                                Color = o.Theme.Text,
                                Visible = true,
                                ZIndex = 3
                            }
                        )
                        local bi =
                            p.AddDrawing(
                            "Square",
                            {
                                Size = Vector2.new(100 - 2, 18 - 2),
                                Position = Vector2.new(b2.Position.X + b2.Size.X - 100 - 2 + 1, b2.Position.Y + 4 + 1),
                                Thickness = 0,
                                Color = o.Theme.Inline,
                                Visible = true,
                                Filled = true,
                                ZIndex = 3
                            }
                        )
                        local bj =
                            p.AddDrawing(
                            "Square",
                            {
                                Size = Vector2.new(bi.Size.X - 2, bi.Size.Y - 2),
                                Position = Vector2.new(bi.Position.X + 1, bi.Position.Y + 1),
                                Thickness = 0,
                                Color = o.Theme.LightContrast,
                                Visible = true,
                                Filled = true,
                                ZIndex = 3
                            }
                        )
                        local bk =
                            p.AddDrawing(
                            "Text",
                            {
                                Text = "Rainbow",
                                Position = Vector2.new(bj.Position.X + bj.Size.X / 2, bj.Position.Y),
                                Center = true,
                                Outline = false,
                                Font = o.Theme.Font,
                                Size = o.Theme.TextSize,
                                Color = o.Theme.Text,
                                Visible = true,
                                ZIndex = 3
                            }
                        )
                        function aU:Drop(aa)
                            b1.Visible = aa
                            b2.Visible = aa
                            b4.Visible = aa
                            b5.Visible = aa
                            b6.Visible = aa
                            b7.Visible = aa
                            b8.Visible = aa
                            b9.Visible = aa
                            bd.Visible = aa
                            bc.Visible = aa
                            be.Visible = aa
                            bf.Visible = aa
                            bg.Visible = aa
                            bh.Visible = aa
                            bi.Visible = aa
                            bj.Visible = aa
                            bk.Visible = aa
                            b3.Visible = aa
                            M.Visible = aa
                            ba.Visible = aa
                            bb.Visible = aa
                            ax.Dropdowns[aE][aS.Text] = aa
                        end
                        p.AddConnection(
                            o.Communication.Event,
                            function(B, N)
                                if B == "Accent" then
                                elseif B == "LightContrast" then
                                elseif B == "Text" then
                                    b4.Color = N
                                elseif B == "Inline" then
                                    b1.Color = N
                                    b5.Color = N
                                    b8.Color = N
                                    bc.Color = N
                                elseif B == "Outline" then
                                    b2.Color = N
                                    bd.Color = N
                                    b1.Color = N
                                end
                            end
                        )
                        aU.Offsets.X = b6.Position.X
                        aU.Offsets.Y = b6.Position.Y
                        function aU:SetHue(aM)
                            local bl = aM.Percent or aM.Value
                            aU.Colors.HSV[1] = aM.Value
                            local bm = Color3.fromHSV(aU.Colors.HSV[1], aU.Colors.HSV[2], aU.Colors.HSV[3])
                            ba.Position =
                                Vector2.new(b2.Position.X + b6.Size.X + 12, b9.Position.Y + b9.Size.Y * bl - 4)
                            bb.Position = Vector2.new(ba.Position.X + 1, ba.Position.Y + 1)
                            b6.Color = Color3.fromHSV(aU.Colors.HSV[1], 1, 1)
                            be.Text = ("#%s"):format(tostring(bm:ToHex()))
                            local bn =
                                Color3.fromRGB(math.floor(bm.R * 255), math.floor(bm.G * 255), math.floor(bm.B * 255))
                            bh.Text =
                                ("%s, %s, %s"):format(
                                math.floor(bn.R * 255),
                                math.floor(bn.G * 255),
                                math.floor(bn.B * 255)
                            )
                            a_.Color = bm
                            if not aM.Visual then
                                o.Flags[aU.Flag] = bm
                                aU.Callback(bm)
                            end
                        end
                        function aU:RefreshHue()
                            local bo = math.clamp((m.Y + 36 - b9.Position.Y) / b9.Size.Y, 0, 1)
                            local bp = math.floor((0 + (1 - 0) * bo) * aU.Decimals) / aU.Decimals
                            bp = math.clamp(bp, 0, 1)
                            self:SetHue({Value = bp, Percent = bo})
                        end
                        function aU:SetSaturationX(aM)
                            local bq = aM.Percent or aM.Value
                            local bm = Color3.fromHSV(aU.Colors.HSV[1], aU.Colors.HSV[2], aU.Colors.HSV[3])
                            aU.Colors.HSV[2] = aM.Value
                            M.Position = Vector2.new(b6.Position.X + b6.Size.X * bq - 4, aU.Offsets.Y)
                            aU.Offsets.X = M.Position.X
                            be.Text = ("#%s"):format(tostring(bm:ToHex()))
                            local bn =
                                Color3.fromRGB(math.floor(bm.R * 255), math.floor(bm.G * 255), math.floor(bm.B * 255))
                            bh.Text =
                                ("%s, %s, %s"):format(
                                math.floor(bn.R * 255),
                                math.floor(bn.G * 255),
                                math.floor(bn.B * 255)
                            )
                            a_.Color = bm
                            if not aM.Visual then
                                o.Flags[aU.Flag] = bm
                                aU.Callback(bm)
                            end
                        end
                        function aU:SetSaturationY(aM)
                            local br = aM.Percent or 1 - aM.Value
                            local bm = Color3.fromHSV(aU.Colors.HSV[1], aU.Colors.HSV[2], aU.Colors.HSV[3])
                            aU.Colors.HSV[3] = aM.Value
                            M.Position = Vector2.new(aU.Offsets.X, b6.Position.Y + b6.Size.Y * br - 4)
                            aU.Offsets.Y = M.Position.Y
                            be.Text = ("#%s"):format(tostring(bm:ToHex()))
                            local bn =
                                Color3.fromRGB(math.floor(bm.R * 255), math.floor(bm.G * 255), math.floor(bm.B * 255))
                            bh.Text =
                                ("%s, %s, %s"):format(
                                math.floor(bn.R * 255),
                                math.floor(bn.G * 255),
                                math.floor(bn.B * 255)
                            )
                            a_.Color = bm
                            if not aM.Visual then
                                o.Flags[aU.Flag] = bm
                                aU.Callback(bm)
                            end
                        end
                        function aU:RefreshSaturation()
                            local bq = math.clamp((m.X - b7.Position.X) / b7.Size.X, 0, 1)
                            local bs = math.floor(1 * bq * aU.Decimals) / aU.Decimals
                            bs = math.clamp(bs, 0, 1)
                            self:SetSaturationX({Value = bs, Percent = bq})
                            local br = math.clamp((m.Y + 36 - b7.Position.Y) / b7.Size.Y, 0, 1)
                            local bt = 1 - math.floor(1 * br * aU.Decimals) / aU.Decimals
                            bt = math.clamp(bt, 0, 1)
                            self:SetSaturationY({Value = bt, Percent = br})
                        end
                        p.AddConnection(
                            f.InputEnded,
                            function(K, aT)
                                if aT then
                                    return
                                end
                                for Index, s in pairs(ax.Dropdowns[aE]) do
                                    if Index ~= aS.Text and s then
                                        return
                                    end
                                end
                                if K.UserInputType == Enum.UserInputType.MouseButton1 then
                                    aU.HueDragging = false
                                    aU.SaturationDragging = false
                                end
                            end
                        )
                        p.AddConnection(
                            f.InputChanged,
                            function(K, aT)
                                if aT then
                                    return
                                end
                                if K.UserInputType == Enum.UserInputType.MouseMovement then
                                    for Index, s in pairs(ax.Dropdowns[aE]) do
                                        if Index ~= aS.Text and s then
                                            return
                                        end
                                    end
                                    if aU.HueDragging then
                                        aU:RefreshHue()
                                    elseif aU.SaturationDragging then
                                        aU:RefreshSaturation()
                                    end
                                end
                            end
                        )
                        p.AddConnection(
                            f.InputBegan,
                            function(K, aT)
                                if aT then
                                    return
                                end
                                if K.UserInputType == Enum.UserInputType.MouseButton1 then
                                    for Index, s in pairs(ax.Dropdowns[aE]) do
                                        if Index ~= aS.Text and s then
                                            return
                                        end
                                    end
                                    if p.OnMouse(aY) then
                                        aU.Dropped = not aU.Dropped
                                        ax.Dropdowns[aE][aS.Text] = aU.Dropped
                                        aU:Drop(aU.Dropped)
                                    elseif p.OnMouse(b7) then
                                        aU:RefreshSaturation()
                                        aU.SaturationDragging = true
                                    elseif p.OnMouse(b9) then
                                        aU:RefreshHue()
                                        aU.HueDragging = true
                                    elseif p.OnMouse(bi) then
                                        aU.Rainbow = not aU.Rainbow
                                        bk.Color = aU.Rainbow and o.Theme.Accent[1] or o.Theme.Text
                                        if not aU.Rainbow then
                                            aU:SetHue({Value = aU.Colors.HSV[1]})
                                            aU:SetSaturationX({Value = aU.Colors.HSV[2]})
                                            aU:SetSaturationY({Value = aU.Colors.HSV[3]})
                                        end
                                    else
                                        aU.Dropped = false
                                        ax.Dropdowns[aE][aS.Text] = aU.Dropped
                                        aU:Drop(aU.Dropped)
                                    end
                                end
                            end
                        )
                        p.AddConnection(
                            g.RenderStepped,
                            function(K, aT)
                                if aU.Rainbow then
                                    o.Flags[aU.Flag] = Color3.fromHSV(tick() % 2 / 2, 0.5, 1)
                                    aU.Callback(Color3.fromHSV(tick() % 2 / 2, 0.5, 1))
                                end
                            end
                        )
                        aU:SetHue({Value = aU.Colors.HSV[1]})
                        aU:SetSaturationX({Value = aU.Colors.HSV[2]})
                        aU:SetSaturationY({Value = aU.Colors.HSV[3]})
                        ax["Render"][#ax["Render"] + 1] = aY
                        ax["Render"][#ax["Render"] + 1] = aZ
                        ax["Render"][#ax["Render"] + 1] = a_
                        ax["Render"][#ax["Render"] + 1] = b0
                        aU:Drop(false)
                        return aU
                    end
                    function aN:Keybind(aM)
                        local bu = {
                            Axis = aF.ContentAxis,
                            Title = aM.Title or "LOL",
                            EnumType = aM.Key.EnumType == Enum.KeyCode and "KeyCode" or "UserInputType",
                            Key = aM.Key or Enum.UserInputType.MouseButton2,
                            StateType = aM.StateType or "Hold",
                            State = false,
                            Shorten = "",
                            Binding = false,
                            Dropped = false,
                            Callback = typeof(aM.Callback) == "function" and aM.Callback or function()
                                end,
                            ShowRender = "",
                            AddN = false
                        }
                        aM.Flag = aM.Flag or "AWGWJIjgAWJIGIJAWG"
                        o.Flags[aM.Flag] = bu.State
                        if bu.StateType == "Always" then
                            bu.Callback(bu.State, bu.Key)
                            o.Flags[aM.Flag] = true
                        end
                        bu.Shorten = o.Keys.Shortened[bu.Key.Name] or bu.Key.Name
                        bu.ShowRender = ("[%s] %s"):format(bu.Shorten, aM.Title)
                        local bv =
                            p.AddDrawing(
                            "Square",
                            {
                                Position = Vector2.new(aH.Position.X + aH.Size.X - 40 - 6, aH.Position.Y + bu.Axis + 2),
                                Size = Vector2.new(40, 14),
                                Thickness = 0,
                                Color = o.Theme.Inline,
                                Visible = true,
                                Filled = true
                            }
                        )
                        local bw =
                            p.AddDrawing(
                            "Square",
                            {
                                Size = Vector2.new(bv.Size.X - 2, bv.Size.Y - 2),
                                Position = Vector2.new(bv.Position.X + 1, bv.Position.Y + 1),
                                Thickness = 0,
                                Color = o.Theme.LightContrast,
                                Visible = true,
                                Filled = true
                            }
                        )
                        local bx =
                            p.AddDrawing(
                            "Image",
                            {
                                Size = Vector2.new(bv.Size.X - 2, bv.Size.Y - 2),
                                Position = Vector2.new(bv.Position.X + 1, bv.Position.Y + 1),
                                Data = o.Theme.Gradient,
                                Transparency = 1,
                                Visible = true
                            }
                        )
                        local by =
                            p.AddDrawing(
                            "Text",
                            {
                                Text = bu.Shorten,
                                Position = Vector2.new(bv.Position.X + bv.Size.X / 2, bv.Position.Y),
                                Center = true,
                                Outline = false,
                                Font = o.Theme.Font,
                                Size = o.Theme.TextSize,
                                Color = o.Theme.Text,
                                Visible = true,
                                ZIndex = 2
                            }
                        )
                        local bz =
                            p.AddDrawing(
                            "Square",
                            {
                                Position = Vector2.new(aH.Position.X + aH.Size.X + 2 - 6, aH.Position.Y + bu.Axis + 2),
                                Size = Vector2.new(60, 16),
                                Thickness = 0,
                                Color = o.Theme.Inline,
                                Visible = true,
                                Filled = true,
                                ZIndex = 3
                            }
                        )
                        local bA =
                            p.AddDrawing(
                            "Square",
                            {
                                Size = Vector2.new(bz.Size.X - 2, bz.Size.Y - 2),
                                Position = Vector2.new(bz.Position.X + 1, bz.Position.Y + 1),
                                Thickness = 0,
                                Color = o.Theme.LightContrast,
                                Visible = true,
                                Filled = true,
                                ZIndex = 3
                            }
                        )
                        local bB =
                            p.AddDrawing(
                            "Image",
                            {
                                Size = Vector2.new(bz.Size.X - 2, bz.Size.Y - 2),
                                Position = Vector2.new(bz.Position.X + 1, bz.Position.Y + 1),
                                Data = o.Theme.Gradient,
                                Transparency = 1,
                                Visible = true,
                                ZIndex = 3
                            }
                        )
                        local bC =
                            p.AddDrawing(
                            "Text",
                            {
                                Text = "Hold",
                                Position = Vector2.new(bz.Position.X + bz.Size.X / 2, bz.Position.Y),
                                Center = true,
                                Outline = false,
                                Font = o.Theme.Font,
                                Size = o.Theme.TextSize,
                                Color = o.Theme.Text,
                                Visible = true,
                                ZIndex = 3
                            }
                        )
                        local bD =
                            p.AddDrawing(
                            "Square",
                            {
                                Position = Vector2.new(aH.Position.X + aH.Size.X + 2 - 6, aH.Position.Y + bu.Axis + 18),
                                Size = Vector2.new(60, 16),
                                Thickness = 0,
                                Color = o.Theme.Inline,
                                Visible = true,
                                Filled = true
                            }
                        )
                        local bE =
                            p.AddDrawing(
                            "Square",
                            {
                                Size = Vector2.new(bD.Size.X - 2, bD.Size.Y - 2),
                                Position = Vector2.new(bD.Position.X + 1, bD.Position.Y + 1),
                                Thickness = 0,
                                Color = o.Theme.LightContrast,
                                Visible = true,
                                Filled = true,
                                ZIndex = 3
                            }
                        )
                        local bF =
                            p.AddDrawing(
                            "Image",
                            {
                                Size = Vector2.new(bD.Size.X - 2, bD.Size.Y - 2),
                                Position = Vector2.new(bD.Position.X + 1, bD.Position.Y + 1),
                                Data = o.Theme.Gradient,
                                Transparency = 1,
                                Visible = true,
                                ZIndex = 3
                            }
                        )
                        local bG =
                            p.AddDrawing(
                            "Text",
                            {
                                Text = "Toggle",
                                Position = Vector2.new(bD.Position.X + bD.Size.X / 2, bD.Position.Y),
                                Center = true,
                                Outline = false,
                                Font = o.Theme.Font,
                                Size = o.Theme.TextSize,
                                Color = o.Theme.Text,
                                Visible = true,
                                ZIndex = 3
                            }
                        )
                        local bH =
                            p.AddDrawing(
                            "Square",
                            {
                                Position = Vector2.new(aH.Position.X + aH.Size.X + 2 - 6, aH.Position.Y + bu.Axis + 34),
                                Size = Vector2.new(60, 16),
                                Thickness = 0,
                                Color = o.Theme.Inline,
                                Visible = true,
                                Filled = true,
                                ZIndex = 3
                            }
                        )
                        local bI =
                            p.AddDrawing(
                            "Square",
                            {
                                Size = Vector2.new(bH.Size.X - 2, bH.Size.Y - 2),
                                Position = Vector2.new(bH.Position.X + 1, bH.Position.Y + 1),
                                Thickness = 0,
                                Color = o.Theme.LightContrast,
                                Visible = true,
                                Filled = true,
                                ZIndex = 3
                            }
                        )
                        local bJ =
                            p.AddDrawing(
                            "Image",
                            {
                                Size = Vector2.new(bH.Size.X - 2, bH.Size.Y - 2),
                                Position = Vector2.new(bH.Position.X + 1, bH.Position.Y + 1),
                                Data = o.Theme.Gradient,
                                Transparency = 1,
                                Visible = true,
                                ZIndex = 3
                            }
                        )
                        local bK =
                            p.AddDrawing(
                            "Text",
                            {
                                Text = "Always",
                                Position = Vector2.new(bH.Position.X + bH.Size.X / 2, bH.Position.Y),
                                Center = true,
                                Outline = false,
                                Font = o.Theme.Font,
                                Size = o.Theme.TextSize,
                                Color = o.Theme.Text,
                                Visible = true,
                                ZIndex = 3
                            }
                        )
                        function bu:Drop(aa)
                            bz.Visible = aa
                            bA.Visible = aa
                            bB.Visible = aa
                            bC.Visible = aa
                            bD.Visible = aa
                            bE.Visible = aa
                            bF.Visible = aa
                            bG.Visible = aa
                            bH.Visible = aa
                            bI.Visible = aa
                            bJ.Visible = aa
                            bK.Visible = aa
                        end
                        function bu:SetStateType(aa)
                            if aa == "Hold" then
                                bu.StateType = "Hold"
                                bK.Color = o.Theme.Text
                                bG.Color = o.Theme.Text
                                bC.Color = o.Theme.Accent[1]
                            elseif aa == "Toggle" then
                                bu.StateType = "Toggle"
                                bK.Color = o.Theme.Text
                                bG.Color = o.Theme.Accent[1]
                                bC.Color = o.Theme.Text
                            else
                                bu.StateType = "Always"
                                bK.Color = o.Theme.Accent[1]
                                bG.Color = o.Theme.Text
                                bC.Color = o.Theme.Text
                            end
                        end
                        p.AddConnection(
                            f.InputBegan,
                            function(K, aT)
                                if K.UserInputType == Enum.UserInputType.MouseButton1 then
                                    if bu.Binding then
                                        bu.Binding = false
                                        bu.Key = Enum.UserInputType.MouseButton1
                                        bu.EnumType = "UserInputType"
                                        local bL = bu.Shorten
                                        bu.Shorten = o.Keys.Shortened[bu.Key.Name] or bu.Key.Name
                                        X.BindList =
                                            string.gsub(
                                            X.BindList,
                                            "\n%[" .. bL .. "%] " .. aM.Title,
                                            ("\n[%s] %s"):format(bu.Shorten, aM.Title)
                                        )
                                        by.Text = bu.Binding and "[...]" or bu.Shorten
                                    end
                                    if p.OnMouse(bz) then
                                        bu:SetStateType("Hold")
                                    end
                                    if p.OnMouse(bD) then
                                        bu:SetStateType("Toggle")
                                    end
                                    if p.OnMouse(bH) then
                                        bu:SetStateType("Always")
                                    end
                                    if p.OnMouse(bv) then
                                        for Index, s in pairs(ax.Dropdowns[aE]) do
                                            if s then
                                                return
                                            end
                                        end
                                        if bu.Binding then
                                            bu.Binding = false
                                            by.Text = bu.Shorten
                                            bu.ShowRender = ("[%s] %s"):format(bu.Shorten, aM.Title)
                                        else
                                            bu.Binding = true
                                            by.Text = bu.Binding and "[...]" or bu.Shorten
                                        end
                                    else
                                        if p.OnMouse(bz) or p.OnMouse(bD) or p.OnMouse(bH) then
                                            return
                                        end
                                        bu.Dropped = false
                                        bu:Drop(bu.Dropped)
                                        ax.Dropdowns["Left"][aS.Text] = bu.Dropped
                                        ax.Dropdowns["Right"][aS.Text] = bu.Dropped
                                    end
                                elseif K.UserInputType == Enum.UserInputType.Keyboard then
                                    if bu.Binding then
                                        bu.Binding = false
                                        bu.Key = K.KeyCode
                                        bu.EnumType = "KeyCode"
                                        local bL = bu.Shorten
                                        bu.Shorten = o.Keys.Shortened[bu.Key.Name] or bu.Key.Name
                                        by.Text = bu.Shorten
                                        X.BindList =
                                            string.gsub(
                                            X.BindList,
                                            "\n%[" .. bL .. "%] " .. aM.Title,
                                            ("\n[%s] %s"):format(bu.Shorten, aM.Title)
                                        )
                                        bu.ShowRender = ("[%s] %s"):format(bu.Shorten, aM.Title)
                                    end
                                elseif K.UserInputType == Enum.UserInputType.MouseButton2 then
                                    if bu.Binding then
                                        bu.Binding = false
                                        bu.Key = Enum.UserInputType.MouseButton2
                                        bu.EnumType = "UserInputType"
                                        local bL = bu.Shorten
                                        bu.Shorten = o.Keys.Shortened[bu.Key.Name] or bu.Key.Name
                                        by.Text = bu.Shorten
                                        X.BindList =
                                            string.gsub(
                                            X.BindList,
                                            "\n%[" .. bL .. "%] " .. aM.Title,
                                            ("\n[%s] %s"):format(bu.Shorten, aM.Title)
                                        )
                                        bu.ShowRender = ("[%s] %s"):format(bu.Shorten, aM.Title)
                                    end
                                    if p.OnMouse(bv) then
                                        bu.Dropped = not bu.Dropped
                                        bu:Drop(bu.Dropped)
                                        ax.Dropdowns["Left"][aS.Text] = bu.Dropped
                                        ax.Dropdowns["Right"][aS.Text] = bu.Dropped
                                    end
                                end
                            end
                        )
                        p.AddConnection(
                            f.InputBegan,
                            function(K, aT)
                                if
                                    bu.EnumType == "KeyCode" and K.KeyCode == bu.Key or
                                        bu.EnumType == "UserInputType" and K.UserInputType == bu.Key
                                 then
                                    if bu.StateType ~= "Always" then
                                        if bu.StateType == "Toggle" then
                                            bu.State = not bu.State
                                        elseif bu.StateType == "Hold" then
                                            bu.State = true
                                        end
                                        if bu.State then
                                            if not string.find(X.BindList, "\n%[" .. bu.Shorten .. "%] " .. aM.Title) then
                                                X.BindList = X.BindList .. "\n" .. bu.ShowRender
                                            end
                                        else
                                            bu:RemoveFromKeyBindGui()
                                        end
                                        bu.Callback(bu.State, bu.Key)
                                        o.Flags[aM.Flag] = bu.State
                                    end
                                end
                            end
                        )
                        p.AddConnection(
                            g.Stepped,
                            function(K, aT)
                                if bu.StateType == "Always" then
                                    bu.State = true
                                    bu.Callback(bu.State, bu.Key)
                                    o.Flags[aM.Flag] = bu.State
                                    if not string.find(X.BindList, "\n%[" .. bu.Shorten .. "%] " .. aM.Title) then
                                        X.BindList = X.BindList .. "\n" .. bu.ShowRender
                                    end
                                end
                            end
                        )
                        bu:SetStateType(bu.StateType)
                        function bu:RemoveFromKeyBindGui()
                            X.BindList = string.gsub(X.BindList, "\n%[" .. bu.Shorten .. "%] " .. aM.Title, "")
                        end
                        p.AddConnection(
                            f.InputEnded,
                            function(K, aT)
                                if
                                    bu.EnumType == "KeyCode" and K.KeyCode == bu.Key or
                                        bu.EnumType == "UserInputType" and K.UserInputType == bu.Key
                                 then
                                    if bu.StateType ~= "Always" then
                                        if bu.StateType == "Hold" then
                                            bu.State = false
                                            bu:RemoveFromKeyBindGui()
                                            bu.Callback(bu.State, bu.Key)
                                            o.Flags[aM.Flag] = bu.State
                                        end
                                    end
                                end
                            end
                        )
                        bu:Drop(false)
                        ax["Render"][#ax["Render"] + 1] = KeybindTitle
                        ax["Render"][#ax["Render"] + 1] = bx
                        ax["Render"][#ax["Render"] + 1] = bv
                        ax["Render"][#ax["Render"] + 1] = bw
                        ax["Render"][#ax["Render"] + 1] = by
                        return bu
                    end
                    return aN
                end
                function aF:Slider(aM)
                    local bM = {
                        TypeOf = "Slider",
                        Default = aM.Default or 100,
                        Decimals = aM.Decimals or 1,
                        Axis = aF.ContentAxis,
                        Max = aM.Max or 200,
                        Min = aM.Min or 0,
                        Dragging = false,
                        Symbol = aM.Symbol or "",
                        Current = aM.Default,
                        Callback = typeof(aM.Callback) == "function" and aM.Callback or function()
                            end
                    }
                    aM.Flag = aM.Flag or "AWGWJIjgAWJIGIJAWG"
                    o.Flags[aM.Flag] = bM.Default
                    if bM.Min > bM.Max then
                        bM.Min = bM.Max - 1
                    end
                    if bM.Default < bM.Min then
                        bM.Default = bM.Min
                    end
                    if bM.Default > bM.Max then
                        bM.Default = bM.Max
                    end
                    local a4 =
                        p.AddDrawing(
                        "Square",
                        {
                            Position = Vector2.new(aH.Position.X + 8, aH.Position.Y + 23 + bM.Axis + 15),
                            Size = Vector2.new(aI.Size.X - 12, 13),
                            Thickness = 0,
                            Color = o.Theme.Inline,
                            Visible = true,
                            Filled = true
                        }
                    )
                    local a5 =
                        p.AddDrawing(
                        "Square",
                        {
                            Size = Vector2.new(a4.Size.X - 2, a4.Size.Y - 2),
                            Position = Vector2.new(a4.Position.X + 1, a4.Position.Y + 1),
                            Thickness = 0,
                            Color = o.Theme.LightContrast,
                            Visible = true,
                            Filled = true
                        }
                    )
                    local bN =
                        p.AddDrawing(
                        "Square",
                        {
                            Size = Vector2.new(a5.Size.X / 2, a5.Size.Y),
                            Position = Vector2.new(a5.Position.X, a5.Position.Y),
                            Thickness = 0,
                            Transparency = 0.75,
                            Color = o.Theme.Accent[1],
                            Visible = true,
                            Filled = true
                        }
                    )
                    local bO =
                        p.AddDrawing(
                        "Image",
                        {
                            Size = Vector2.new(a4.Size.X - 2, a4.Size.Y - 2),
                            Position = Vector2.new(a4.Position.X + 1, a4.Position.Y + 1),
                            Data = o.Theme.Gradient,
                            Transparency = 0.5,
                            Visible = false
                        }
                    )
                    local bP =
                        p.AddDrawing(
                        "Text",
                        {
                            Text = aM.Title,
                            Position = Vector2.new(a4.Position.X, a4.Position.Y - 17),
                            Center = false,
                            Outline = false,
                            Font = o.Theme.Font,
                            Size = o.Theme.TextSize,
                            Color = o.Theme.Text,
                            Visible = true,
                            ZIndex = 2
                        }
                    )
                    local bQ =
                        p.AddDrawing(
                        "Text",
                        {
                            Position = Vector2.new(a4.Position.X + a4.Size.X / 2, a4.Position.Y),
                            Center = true,
                            Outline = false,
                            Font = o.Theme.Font,
                            Size = o.Theme.TextSize,
                            Color = o.Theme.Text,
                            Visible = true,
                            ZIndex = 2
                        }
                    )
                    bQ.Outline = true
                    p.AddConnection(
                        o.Communication.Event,
                        function(B, N)
                            if B == "Accent" then
                                bN.Color = N
                            elseif B == "LightContrast" then
                                a5.Color = N
                            elseif B == "Text" then
                                bP.Color = N
                                bQ.Color = N
                            elseif B == "Inline" then
                                a4.Color = N
                            end
                        end
                    )
                    function bM:SetText(bR)
                        SliderText.Text = bR
                    end
                    function bM:Set(bS, bT)
                        if bS > bM.Max then
                            return
                        end
                        if bS < bM.Min then
                            return
                        end
                        local F = 1 / bM.Decimals
                        local bU = math.clamp(math.round(bS * F) / F, bM.Min, bM.Max)
                        local bl = 1 - (bM.Max - bU) / (bM.Max - bM.Min)
                        bN.Size = Vector2.new(a5.Size.X * bl, a5.Size.Y)
                        bQ.Text = ("%s%s/%s%s"):format(bU, bM.Symbol, bM.Max, bM.Symbol)
                        o.Flags[aM.Flag] = bS
                        bM.Callback(bS)
                    end
                    function bM:SetMax(bV)
                        if bV < bM.Current then
                            bM.Current = bV
                        end
                        if bM.Current < bM.Min then
                            return
                        end
                        bM.Max = bV
                        local bU = math.clamp(math.round(bM.Current * bM.Decimals) / bM.Decimals, bM.Min, bM.Max)
                        local bl = 1 - (bM.Max - bU) / (bM.Max - bM.Min)
                        bN.Size = Vector2.new(a5.Size.X * bl, a5.Size.Y)
                        bQ.Text = ("%s%s/%s%s"):format(bU, bM.Symbol, bM.Max, bM.Symbol)
                        o.Flags[aM.Flag] = bM.Current
                        bM.Callback(bM.Current)
                    end
                    function bM:SetMin(bW)
                        bM.Min = bW
                        if bM.Current > bM.Max then
                            return
                        end
                        if bM.Current < bM.Min then
                            return
                        end
                        local bU = math.clamp(math.round(bM.Current * bM.Decimals) / bM.Decimals, bM.Min, bM.Max)
                        local bl = 1 - (bM.Max - bU) / (bM.Max - bM.Min)
                        bN.Size = Vector2.new(a5.Size.X * bl, a5.Size.Y)
                        bQ.Text = ("%s%s/%s%s"):format(bU, bM.Symbol, bM.Max, bM.Symbol)
                        o.Flags[aM.Flag] = bM.Current
                        bM.Callback(bM.Current)
                    end
                    function bM:Refresh()
                        local bl = math.clamp((m.X - a5.Position.X) / a5.Size.X, 0, 1)
                        local F = 1 / bM.Decimals
                        local s = math.floor((bM.Min + (bM.Max - bM.Min) * bl) * F) / F
                        s = math.clamp(s, bM.Min, bM.Max)
                        bM:Set(s)
                    end
                    bM:Set(bM.Default)
                    p.AddConnection(
                        f.InputBegan,
                        function(K, aT)
                            for Index, s in pairs(ax.Dropdowns[aE]) do
                                if s then
                                    return
                                end
                            end
                            if K.UserInputType == Enum.UserInputType.MouseButton1 and p.OnMouse(a5) then
                                bM:Refresh()
                                bM.Dragging = true
                            end
                        end
                    )
                    p.AddConnection(
                        f.InputEnded,
                        function(K, aT)
                            for Index, s in pairs(ax.Dropdowns[aE]) do
                                if s then
                                    return
                                end
                            end
                            if K.UserInputType == Enum.UserInputType.MouseButton1 then
                                bM.Dragging = false
                            end
                        end
                    )
                    p.AddConnection(
                        f.InputChanged,
                        function(K, aT)
                            if p.OnMouse(a4) then
                                a4.Color = o.Theme.Accent[1]
                            else
                                a4.Color = o.Theme.Inline
                            end
                            for Index, s in pairs(ax.Dropdowns[aE]) do
                                if s then
                                    return
                                end
                            end
                            if K.UserInputType == Enum.UserInputType.MouseMovement and bM.Dragging then
                                bM:Refresh()
                            end
                        end
                    )
                    aF.ContentAxis = aF.ContentAxis + a5.Size.Y + 24
                    ax.SectionAxis = {
                        aE == "Left" and ax.SectionAxis[1] + a5.Size.Y + 24 or ax.SectionAxis[1],
                        aE == "Right" and ax.SectionAxis[2] + a5.Size.Y + 24 or ax.SectionAxis[2]
                    }
                    self:UpdateSizeY(aF.ContentAxis + a5.Size.Y)
                    ax["Render"][#ax["Render"] + 1] = a4
                    ax["Render"][#ax["Render"] + 1] = a5
                    ax["Render"][#ax["Render"] + 1] = bP
                    ax["Render"][#ax["Render"] + 1] = bO
                    ax["Render"][#ax["Render"] + 1] = bN
                    ax["Render"][#ax["Render"] + 1] = bQ
                    return bM
                end
                function aF:Button(aM)
                    local bX = {
                        Title = aM.Title or "LMAO",
                        Axis = aF.ContentAxis,
                        Callback = typeof(aM.Callback) == "function" and aM.Callback or function()
                            end
                    }
                    local bY =
                        p.AddDrawing(
                        "Square",
                        {
                            Position = Vector2.new(aH.Position.X + 8, aH.Position.Y + 24 + bX.Axis),
                            Size = Vector2.new(aI.Size.X - 12, 18),
                            Thickness = 0,
                            Color = o.Theme.Inline,
                            Visible = true,
                            Filled = true
                        }
                    )
                    local bZ =
                        p.AddDrawing(
                        "Square",
                        {
                            Size = Vector2.new(bY.Size.X - 2, bY.Size.Y - 2),
                            Position = Vector2.new(bY.Position.X + 1, bY.Position.Y + 1),
                            Thickness = 0,
                            Color = o.Theme.LightContrast,
                            Visible = true,
                            Filled = true
                        }
                    )
                    local b_ =
                        p.AddDrawing(
                        "Image",
                        {
                            Size = bZ.Size,
                            Position = bZ.Position,
                            Data = o.Theme.Gradient,
                            Transparency = 0.5,
                            Visible = true
                        }
                    )
                    local c0 =
                        p.AddDrawing(
                        "Text",
                        {
                            Text = aM.Title,
                            Position = Vector2.new(bY.Position.X + bY.Size.X / 2, bY.Position.Y + 2),
                            Center = true,
                            Outline = false,
                            Font = o.Theme.Font,
                            Size = o.Theme.TextSize,
                            Color = o.Theme.Text,
                            Visible = true,
                            ZIndex = 2
                        }
                    )
                    p.AddConnection(
                        o.Communication.Event,
                        function(B, N)
                            if B == "LightContrast" then
                                bZ.Color = N
                            elseif B == "Text" then
                                c0.Color = N
                            elseif B == "Inline" then
                                bY.Color = N
                            end
                        end
                    )
                    p.AddConnection(
                        f.InputChanged,
                        function(K, aT)
                            if p.OnMouse(bY) then
                                bY.Color = o.Theme.Accent[1]
                            else
                                bY.Color = o.Theme.Inline
                            end
                        end
                    )
                    function bX:EmitEffect()
                        bZ.Color = o.Theme.LightContrast
                        delay(
                            0.1,
                            function()
                                pcall(
                                    function()
                                        bZ.Color = o.Theme.DarkContrast
                                    end
                                )
                            end
                        )
                    end
                    p.AddConnection(
                        f.InputBegan,
                        function(K, aT)
                            if K.UserInputType == Enum.UserInputType.MouseButton1 and p.OnMouse(bZ) then
                                for Index, s in pairs(ax.Dropdowns[aE]) do
                                    if s then
                                        return
                                    end
                                end
                                bX:EmitEffect()
                                bX.Callback()
                            end
                        end
                    )
                    aF.ContentAxis = aF.ContentAxis + bZ.Size.Y + 6
                    ax.SectionAxis = {
                        aE == "Left" and ax.SectionAxis[1] + bZ.Size.Y + 6 or ax.SectionAxis[1],
                        aE == "Right" and ax.SectionAxis[2] + bZ.Size.Y + 6 or ax.SectionAxis[2]
                    }
                    self:UpdateSizeY(aF.ContentAxis + bZ.Size.Y)
                    ax["Render"][#ax["Render"] + 1] = bY
                    ax["Render"][#ax["Render"] + 1] = b_
                    ax["Render"][#ax["Render"] + 1] = bZ
                    ax["Render"][#ax["Render"] + 1] = c0
                    return bX
                end
                function aF:Colorpicker(aM)
                    local aU = {
                        Axis = aF.ContentAxis,
                        Color = aM.Color,
                        HexColor = aM.Color:ToHex(),
                        Dropped = false,
                        Offsets = {X = 0, Y = 0},
                        Colors = {HSV = {1, 1, 1}},
                        SaturationDragging = false,
                        HueDragging = false,
                        Decimals = 50,
                        Rainbow = false,
                        Flag = aM.Flag,
                        Title = aM.Title or "Color Picker",
                        Callback = typeof(aM.Callback) == "function" and aM.Callback or function()
                            end
                    }
                    o.Flags[aU.Flag] = aU.HexColor
                    local aV, aW, aX = aU.Color:ToHSV()
                    aU.Colors.HSV[1] = aV
                    aU.Colors.HSV[2] = aW
                    aU.Colors.HSV[3] = aX
                    local c1 =
                        p.AddDrawing(
                        "Text",
                        {
                            Text = aM.Title,
                            Position = Vector2.new(aH.Position.X + 8, aH.Position.Y + 23 + aU.Axis),
                            Center = false,
                            Outline = false,
                            Font = o.Theme.Font,
                            Size = o.Theme.TextSize,
                            Color = o.Theme.Text,
                            Visible = true,
                            ZIndex = 2
                        }
                    )
                    local aY =
                        p.AddDrawing(
                        "Square",
                        {
                            Position = Vector2.new(aH.Position.X + aH.Size.X - 38, aH.Position.Y + 23 + aU.Axis),
                            Size = Vector2.new(30, 12),
                            Thickness = 0,
                            Color = o.Theme.Inline,
                            Visible = true,
                            Filled = true
                        }
                    )
                    local aZ =
                        p.AddDrawing(
                        "Square",
                        {
                            Size = Vector2.new(aY.Size.X - 2, aY.Size.Y - 2),
                            Position = Vector2.new(aY.Position.X + 1, aY.Position.Y + 1),
                            Thickness = 0,
                            Color = o.Theme.LightContrast,
                            Visible = true,
                            Filled = true
                        }
                    )
                    local a_ =
                        p.AddDrawing(
                        "Square",
                        {
                            Size = Vector2.new(aY.Size.X - 2, aY.Size.Y - 2),
                            Position = Vector2.new(aY.Position.X + 1, aY.Position.Y + 1),
                            Thickness = 0,
                            Color = aU.Color,
                            Visible = true,
                            Filled = true
                        }
                    )
                    local b0 =
                        p.AddDrawing(
                        "Image",
                        {
                            Size = Vector2.new(aY.Size.X - 2, aY.Size.Y - 2),
                            Position = Vector2.new(aY.Position.X + 1, aY.Position.Y + 1),
                            Data = o.Theme.Gradient,
                            Transparency = 0.5,
                            Visible = true
                        }
                    )
                    local b1 =
                        p.AddDrawing(
                        "Square",
                        {
                            Position = Vector2.new(aY.Position.X - 225 + aY.Size.X, aY.Position.Y + 18),
                            Size = Vector2.new(225, 250),
                            Thickness = 0,
                            Color = o.Theme.Inline,
                            Visible = true,
                            Filled = true,
                            ZIndex = 3
                        }
                    )
                    local b2 =
                        p.AddDrawing(
                        "Square",
                        {
                            Size = Vector2.new(b1.Size.X - 2, b1.Size.Y - 2),
                            Position = Vector2.new(b1.Position.X + 1, b1.Position.Y + 1),
                            Thickness = 0,
                            Color = o.Theme.LightContrast,
                            Visible = true,
                            Filled = true,
                            ZIndex = 3
                        }
                    )
                    local b3 =
                        p.AddDrawing(
                        "Square",
                        {
                            Size = Vector2.new(b2.Size.X, 1),
                            Position = Vector2.new(b2.Position.X, b2.Position.Y),
                            Thickness = 0,
                            Color = o.Theme.Accent[1],
                            Visible = true,
                            Filled = true,
                            ZIndex = 3
                        }
                    )
                    p.AddConnection(
                        o.Communication.Event,
                        function(B, N)
                            if B == "Accent" then
                                b3.Color = N
                            end
                        end
                    )
                    local b4 =
                        p.AddDrawing(
                        "Text",
                        {
                            Text = aM.Title,
                            Position = Vector2.new(b2.Position.X + 8, b2.Position.Y + 6),
                            Center = false,
                            Outline = false,
                            Font = o.Theme.Font,
                            Size = o.Theme.TextSize,
                            Color = o.Theme.Text,
                            Visible = true,
                            ZIndex = 3
                        }
                    )
                    local b5 =
                        p.AddDrawing(
                        "Square",
                        {
                            Position = Vector2.new(b2.Position.X + 8, b2.Position.Y + 25),
                            Size = Vector2.new(192, 192),
                            Thickness = 0,
                            Color = o.Theme.Inline,
                            Visible = true,
                            Filled = true,
                            ZIndex = 3
                        }
                    )
                    local b6 =
                        p.AddDrawing(
                        "Square",
                        {
                            Size = Vector2.new(192 - 4, 192 - 4),
                            Position = Vector2.new(b5.Position.X + 2, b5.Position.Y + 2),
                            Thickness = 0,
                            Color = aM.Color,
                            Visible = true,
                            Filled = true,
                            ZIndex = 3
                        }
                    )
                    local b7 =
                        p.AddDrawing(
                        "Image",
                        {
                            Size = Vector2.new(196 - 2, 196 - 2),
                            Position = Vector2.new(b2.Position.X + 8 + 1, b2.Position.Y + 25 + 1),
                            Data = o.Theme.Saturation,
                            Transparency = 1,
                            Visible = true,
                            ZIndex = 3
                        }
                    )
                    local b8 =
                        p.AddDrawing(
                        "Square",
                        {
                            Position = Vector2.new(b2.Position.X + b6.Size.X + 14, b2.Position.Y + 26),
                            Size = Vector2.new(16, 196),
                            Thickness = 0,
                            Color = o.Theme.Inline,
                            Visible = true,
                            Filled = true,
                            ZIndex = 3
                        }
                    )
                    local b9 =
                        p.AddDrawing(
                        "Image",
                        {
                            Size = Vector2.new(b8.Size.X - 2, b8.Size.Y - 2),
                            Position = Vector2.new(b8.Position.X + 1, b8.Position.Y + 1),
                            Data = o.Theme.Hue,
                            Transparency = 1,
                            Visible = true,
                            ZIndex = 3
                        }
                    )
                    local ba =
                        p.AddDrawing(
                        "Square",
                        {
                            Position = Vector2.new(b2.Position.X + b6.Size.X + 12, b2.Position.Y + 26),
                            Size = Vector2.new(b8.Size.X + 2, 6),
                            Thickness = 2,
                            Color = o.Theme.Outline,
                            Visible = true,
                            Filled = false,
                            ZIndex = 3
                        }
                    )
                    local bb =
                        p.AddDrawing(
                        "Square",
                        {
                            Position = Vector2.new(ba.Position.X + 1, ba.Position.Y + 1),
                            Size = Vector2.new(ba.Size.X - 2, ba.Size.Y - 2),
                            Thickness = 2,
                            Color = o.Theme.Text,
                            Visible = true,
                            Filled = false,
                            ZIndex = 3
                        }
                    )
                    local M =
                        p.AddDrawing(
                        "Image",
                        {
                            Size = Vector2.new(6, 6),
                            Data = o.Theme.SaturationCursor,
                            Transparency = 1,
                            Visible = true,
                            ZIndex = 6
                        }
                    )
                    local bc =
                        p.AddDrawing(
                        "Square",
                        {
                            Size = Vector2.new(80 - 2, 18 - 2),
                            Position = Vector2.new(b2.Position.X + 8 + 1, b2.Position.Y + b7.Size.Y + 30 + 1),
                            Thickness = 0,
                            Color = o.Theme.Inline,
                            Visible = true,
                            Filled = true,
                            ZIndex = 3
                        }
                    )
                    local bd =
                        p.AddDrawing(
                        "Square",
                        {
                            Size = Vector2.new(bc.Size.X - 2, bc.Size.Y - 2),
                            Position = Vector2.new(bc.Position.X + 1, bc.Position.Y + 1),
                            Thickness = 0,
                            Color = o.Theme.LightContrast,
                            Visible = true,
                            Filled = true,
                            ZIndex = 3
                        }
                    )
                    local be =
                        p.AddDrawing(
                        "Text",
                        {
                            Text = ("#%s"):format(tostring(aU.HexColor)),
                            Position = Vector2.new(bd.Position.X + bd.Size.X / 2, bd.Position.Y),
                            Center = true,
                            Outline = false,
                            Font = o.Theme.Font,
                            Size = o.Theme.TextSize,
                            Color = o.Theme.Text,
                            Visible = true,
                            ZIndex = 3
                        }
                    )
                    local bf =
                        p.AddDrawing(
                        "Square",
                        {
                            Size = Vector2.new(130 - 2, 18 - 2),
                            Position = Vector2.new(b2.Position.X + 90 + 1, b2.Position.Y + b7.Size.Y + 30 + 1),
                            Thickness = 0,
                            Color = o.Theme.Inline,
                            Visible = true,
                            Filled = true,
                            ZIndex = 3
                        }
                    )
                    local bg =
                        p.AddDrawing(
                        "Square",
                        {
                            Size = Vector2.new(bf.Size.X - 2, bf.Size.Y - 2),
                            Position = Vector2.new(bf.Position.X + 1, bf.Position.Y + 1),
                            Thickness = 0,
                            Color = o.Theme.LightContrast,
                            Visible = true,
                            Filled = true,
                            ZIndex = 3
                        }
                    )
                    local bh =
                        p.AddDrawing(
                        "Text",
                        {
                            Text = ("%s, %s, %s"):format(
                                math.floor(aU.Color.R * 255),
                                math.floor(aU.Color.G * 255),
                                math.floor(aU.Color.B * 255)
                            ),
                            Position = Vector2.new(bg.Position.X + bg.Size.X / 2, bg.Position.Y),
                            Center = true,
                            Outline = false,
                            Font = o.Theme.Font,
                            Size = o.Theme.TextSize,
                            Color = o.Theme.Text,
                            Visible = true,
                            ZIndex = 3
                        }
                    )
                    local bi =
                        p.AddDrawing(
                        "Square",
                        {
                            Size = Vector2.new(100 - 2, 18 - 2),
                            Position = Vector2.new(b2.Position.X + b2.Size.X - 100 - 2 + 1, b2.Position.Y + 4 + 1),
                            Thickness = 0,
                            Color = o.Theme.Inline,
                            Visible = true,
                            Filled = true,
                            ZIndex = 3
                        }
                    )
                    local bj =
                        p.AddDrawing(
                        "Square",
                        {
                            Size = Vector2.new(bi.Size.X - 2, bi.Size.Y - 2),
                            Position = Vector2.new(bi.Position.X + 1, bi.Position.Y + 1),
                            Thickness = 0,
                            Color = o.Theme.LightContrast,
                            Visible = true,
                            Filled = true,
                            ZIndex = 3
                        }
                    )
                    local bk =
                        p.AddDrawing(
                        "Text",
                        {
                            Text = "Rainbow",
                            Position = Vector2.new(bj.Position.X + bj.Size.X / 2, bj.Position.Y),
                            Center = true,
                            Outline = false,
                            Font = o.Theme.Font,
                            Size = o.Theme.TextSize,
                            Color = o.Theme.Text,
                            Visible = true,
                            ZIndex = 3
                        }
                    )
                    function aU:Drop(aa)
                        b1.Visible = aa
                        b2.Visible = aa
                        b4.Visible = aa
                        b5.Visible = aa
                        b6.Visible = aa
                        b7.Visible = aa
                        b8.Visible = aa
                        b9.Visible = aa
                        bd.Visible = aa
                        bc.Visible = aa
                        be.Visible = aa
                        bf.Visible = aa
                        bg.Visible = aa
                        bh.Visible = aa
                        bi.Visible = aa
                        bj.Visible = aa
                        bk.Visible = aa
                        b3.Visible = aa
                        M.Visible = aa
                        ba.Visible = aa
                        bb.Visible = aa
                        ax.Dropdowns[aE][c1.Text] = aa
                    end
                    aU.Offsets.X = b6.Position.X
                    aU.Offsets.Y = b6.Position.Y
                    function aU:SetHue(aM)
                        local bl = aM.Percent or aM.Value
                        aU.Colors.HSV[1] = aM.Value
                        local bm = Color3.fromHSV(aU.Colors.HSV[1], aU.Colors.HSV[2], aU.Colors.HSV[3])
                        ba.Position = Vector2.new(b2.Position.X + b6.Size.X + 12, b9.Position.Y + b9.Size.Y * bl - 4)
                        bb.Position = Vector2.new(ba.Position.X + 1, ba.Position.Y + 1)
                        b6.Color = Color3.fromHSV(aU.Colors.HSV[1], 1, 1)
                        be.Text = ("#%s"):format(tostring(bm:ToHex()))
                        local bn =
                            Color3.fromRGB(math.floor(bm.R * 255), math.floor(bm.G * 255), math.floor(bm.B * 255))
                        bh.Text =
                            ("%s, %s, %s"):format(
                            math.floor(bn.R * 255),
                            math.floor(bn.G * 255),
                            math.floor(bn.B * 255)
                        )
                        a_.Color = bm
                        if not aM.Visual then
                            o.Flags[aU.Flag] = bm
                            aU.Callback(bm)
                        end
                    end
                    function aU:RefreshHue()
                        local bo = math.clamp((m.Y + 36 - b9.Position.Y) / b9.Size.Y, 0, 1)
                        local bp = math.floor((0 + (1 - 0) * bo) * aU.Decimals) / aU.Decimals
                        bp = math.clamp(bp, 0, 1)
                        self:SetHue({Value = bp, Percent = bo})
                    end
                    function aU:SetSaturationX(aM)
                        local bq = aM.Percent or aM.Value
                        local bm = Color3.fromHSV(aU.Colors.HSV[1], aU.Colors.HSV[2], aU.Colors.HSV[3])
                        aU.Colors.HSV[2] = aM.Value
                        M.Position = Vector2.new(b6.Position.X + b6.Size.X * bq - 4, aU.Offsets.Y)
                        aU.Offsets.X = M.Position.X
                        be.Text = ("#%s"):format(tostring(bm:ToHex()))
                        local bn =
                            Color3.fromRGB(math.floor(bm.R * 255), math.floor(bm.G * 255), math.floor(bm.B * 255))
                        bh.Text =
                            ("%s, %s, %s"):format(
                            math.floor(bn.R * 255),
                            math.floor(bn.G * 255),
                            math.floor(bn.B * 255)
                        )
                        a_.Color = bm
                        if not aM.Visual then
                            o.Flags[aU.Flag] = bm
                            aU.Callback(bm)
                        end
                    end
                    function aU:SetSaturationY(aM)
                        local br = aM.Percent or 1 - aM.Value
                        local bm = Color3.fromHSV(aU.Colors.HSV[1], aU.Colors.HSV[2], aU.Colors.HSV[3])
                        aU.Colors.HSV[3] = aM.Value
                        M.Position = Vector2.new(aU.Offsets.X, b6.Position.Y + b6.Size.Y * br - 4)
                        aU.Offsets.Y = M.Position.Y
                        be.Text = ("#%s"):format(tostring(bm:ToHex()))
                        local bn =
                            Color3.fromRGB(math.floor(bm.R * 255), math.floor(bm.G * 255), math.floor(bm.B * 255))
                        bh.Text =
                            ("%s, %s, %s"):format(
                            math.floor(bn.R * 255),
                            math.floor(bn.G * 255),
                            math.floor(bn.B * 255)
                        )
                        a_.Color = bm
                        if not aM.Visual then
                            o.Flags[aU.Flag] = bm
                            aU.Callback(bm)
                        end
                    end
                    function aU:RefreshSaturation()
                        local bq = math.clamp((m.X - b7.Position.X) / b7.Size.X, 0, 1)
                        local bs = math.floor(1 * bq * aU.Decimals) / aU.Decimals
                        bs = math.clamp(bs, 0, 1)
                        self:SetSaturationX({Value = bs, Percent = bq})
                        local br = math.clamp((m.Y + 36 - b7.Position.Y) / b7.Size.Y, 0, 1)
                        local bt = 1 - math.floor(1 * br * aU.Decimals) / aU.Decimals
                        bt = math.clamp(bt, 0, 1)
                        self:SetSaturationY({Value = bt, Percent = br})
                    end
                    p.AddConnection(
                        f.InputEnded,
                        function(K, aT)
                            for Index, s in pairs(ax.Dropdowns[aE]) do
                                if Index ~= c1.Text and s then
                                    return
                                end
                            end
                            if K.UserInputType == Enum.UserInputType.MouseButton1 then
                                aU.HueDragging = false
                                aU.SaturationDragging = false
                            end
                        end
                    )
                    p.AddConnection(
                        f.InputChanged,
                        function(K, aT)
                            if p.OnMouse(aY) then
                                aY.Color = o.Theme.Accent[1]
                            else
                                aY.Color = o.Theme.Inline
                            end
                            if p.OnMouse(aY) then
                                aY.Color = o.Theme.Accent[1]
                            else
                                aY.Color = o.Theme.Inline
                            end
                            if K.UserInputType == Enum.UserInputType.MouseMovement then
                                for Index, s in pairs(ax.Dropdowns[aE]) do
                                    if Index ~= c1.Text and s then
                                        return
                                    end
                                end
                                if aU.HueDragging then
                                    aU:RefreshHue()
                                elseif aU.SaturationDragging then
                                    aU:RefreshSaturation()
                                end
                            end
                        end
                    )
                    p.AddConnection(
                        f.InputBegan,
                        function(K, aT)
                            if K.UserInputType == Enum.UserInputType.MouseButton1 then
                                for Index, s in pairs(ax.Dropdowns[aE]) do
                                    if Index ~= c1.Text and s then
                                        return
                                    end
                                end
                                if p.OnMouse(aY) then
                                    aU.Dropped = not aU.Dropped
                                    ax.Dropdowns[aE][c1.Text] = aU.Dropped
                                    aU:Drop(aU.Dropped)
                                elseif p.OnMouse(b7) then
                                    aU:RefreshSaturation()
                                    aU.SaturationDragging = true
                                elseif p.OnMouse(b9) then
                                    aU:RefreshHue()
                                    aU.HueDragging = true
                                elseif p.OnMouse(bi) then
                                    aU.Rainbow = not aU.Rainbow
                                    bk.Color = aU.Rainbow and o.Theme.Accent[1] or o.Theme.Text
                                    if not aU.Rainbow then
                                        aU:SetHue({Value = aU.Colors.HSV[1]})
                                        aU:SetSaturationX({Value = aU.Colors.HSV[2]})
                                        aU:SetSaturationY({Value = aU.Colors.HSV[3]})
                                    end
                                else
                                    aU.Dropped = false
                                    ax.Dropdowns[aE][c1.Text] = aU.Dropped
                                    aU:Drop(aU.Dropped)
                                end
                            end
                        end
                    )
                    p.AddConnection(
                        g.RenderStepped,
                        function(K, aT)
                            if aU.Rainbow then
                                o.Flags[aU.Flag] = Color3.fromHSV(tick() % 2 / 2, 0.5, 1)
                                aU.Callback(Color3.fromHSV(tick() % 2 / 2, 0.5, 1))
                            end
                        end
                    )
                    aU:SetHue({Value = aU.Colors.HSV[1]})
                    aU:SetSaturationX({Value = aU.Colors.HSV[2]})
                    aU:SetSaturationY({Value = aU.Colors.HSV[3]})
                    aF.ContentAxis = aF.ContentAxis + a_.Size.Y + 10
                    ax.SectionAxis = {
                        aE == "Left" and ax.SectionAxis[1] + a_.Size.Y + 10 or ax.SectionAxis[1],
                        aE == "Right" and ax.SectionAxis[2] + a_.Size.Y + 10 or ax.SectionAxis[2]
                    }
                    self:UpdateSizeY(aF.ContentAxis + a_.Size.Y)
                    ax["Render"][#ax["Render"] + 1] = c1
                    ax["Render"][#ax["Render"] + 1] = aY
                    ax["Render"][#ax["Render"] + 1] = aZ
                    ax["Render"][#ax["Render"] + 1] = a_
                    ax["Render"][#ax["Render"] + 1] = b0
                    aU:Drop(false)
                    return aU
                end
                function aF:Dropdown(aM)
                    local c2 = {
                        TypeOf = "Dropdown",
                        Axis = aF.ContentAxis,
                        List = List or {""},
                        ListRender = {Texts = {}, Objects = {}},
                        Show = true,
                        Selected = aM.Default or aM.List[1],
                        BaseSize = 16,
                        Callback = typeof(aM.Callback) == "function" and aM.Callback or function()
                            end
                    }
                    aM.Flag = aM.Flag or "AWGWJIjgAWJIGIJAWG"
                    o.Flags[aM.Flag] = c2.Selected
                    local c3 =
                        p.AddDrawing(
                        "Square",
                        {
                            Position = Vector2.new(aH.Position.X + 8, aH.Position.Y + 23 + c2.Axis + 16),
                            Size = Vector2.new(aI.Size.X - 12, c2.BaseSize),
                            Thickness = 0,
                            Color = o.Theme.Inline,
                            Visible = true,
                            Filled = true
                        }
                    )
                    local c4 =
                        p.AddDrawing(
                        "Square",
                        {
                            Size = Vector2.new(c3.Size.X - 2, c3.Size.Y - 2),
                            Position = Vector2.new(c3.Position.X + 1, c3.Position.Y + 1),
                            Thickness = 0,
                            Color = o.Theme.LightContrast,
                            Visible = true,
                            Filled = true
                        }
                    )
                    local c5 =
                        p.AddDrawing(
                        "Image",
                        {
                            Size = Vector2.new(c3.Size.X - 2, c3.Size.Y - 2),
                            Position = Vector2.new(c3.Position.X + 1, c3.Position.Y + 1),
                            Data = o.Theme.Gradient,
                            Transparency = 1,
                            Visible = true
                        }
                    )
                    local c6 =
                        p.AddDrawing(
                        "Text",
                        {
                            Text = aM.Title,
                            Position = Vector2.new(c3.Position.X + 2, c3.Position.Y - 16),
                            Center = false,
                            Outline = false,
                            Font = o.Theme.Font,
                            Size = o.Theme.TextSize,
                            Color = o.Theme.Text,
                            Visible = true,
                            ZIndex = 2
                        }
                    )
                    local c7 =
                        p.AddDrawing(
                        "Text",
                        {
                            Text = aM.Default,
                            Position = Vector2.new(c4.Position.X + 4, c4.Position.Y),
                            Center = false,
                            Outline = false,
                            Font = o.Theme.Font,
                            Size = o.Theme.TextSize,
                            Color = o.Theme.Text,
                            Visible = true,
                            ZIndex = 2
                        }
                    )
                    local c8 =
                        p.AddDrawing(
                        "Text",
                        {
                            Text = "+",
                            Position = Vector2.new(c4.Position.X + c4.Size.X - 12, c4.Position.Y),
                            Center = false,
                            Outline = false,
                            Font = o.Theme.Font,
                            Size = o.Theme.TextSize,
                            Color = o.Theme.Text,
                            Visible = true,
                            ZIndex = 2
                        }
                    )
                    local c9 =
                        p.AddDrawing(
                        "Square",
                        {Thickness = 0, Transparency = 0, Color = o.Theme.Hitbox, Visible = true, Filled = true}
                    )
                    function c2:Set(ca)
                        for Index, s in pairs(c2.ListRender.Texts) do
                            s.Color = o.Theme.Text
                        end
                        c2.ListRender.Texts[ca].Color = o.Theme.Accent[1]
                        c2.Selected = ca
                        c7.Text = ca
                        c2.Callback(c2.Selected)
                        o.Flags[aM.Flag] = c2.Selected
                    end
                    function c2:ShowList(aa)
                        for Index, s in pairs(c2.ListRender.Objects) do
                            s.Visible = aa
                        end
                        for Index, s in pairs(c2.ListRender.Texts) do
                            s.Visible = aa
                        end
                        ax.Dropdowns[aE][c6.Text] = aa
                    end
                    p.AddConnection(
                        o.Communication.Event,
                        function(B, N)
                            if B == "Accent" then
                                c2.ListRender.Texts[c2.Selected].Color = N
                            elseif B == "LightContrast" then
                                c4.Color = N
                            elseif B == "Text" then
                                c6.Color = N
                                c8.Color = N
                                c7.Color = N
                            elseif B == "Inline" then
                                c3.Color = N
                            end
                        end
                    )
                    for Index, s in pairs(aM.List) do
                        local cb =
                            p.AddDrawing(
                            "Square",
                            {
                                Position = Vector2.new(c3.Position.X, c3.Position.Y + Index * 18),
                                Size = Vector2.new(aI.Size.X - 12, 18),
                                Thickness = 0,
                                Color = o.Theme.Inline,
                                Visible = true,
                                Filled = true,
                                ZIndex = 3
                            }
                        )
                        local cc =
                            p.AddDrawing(
                            "Square",
                            {
                                Size = Vector2.new(cb.Size.X - 2, cb.Size.Y - 2),
                                Position = Vector2.new(cb.Position.X + 1, cb.Position.Y + 1),
                                Thickness = 0,
                                Color = o.Theme.LightContrast,
                                Visible = true,
                                Filled = true,
                                ZIndex = 3
                            }
                        )
                        local cd =
                            p.AddDrawing(
                            "Image",
                            {
                                Size = Vector2.new(cb.Size.X - 2, cb.Size.Y - 2),
                                Position = Vector2.new(cb.Position.X + 1, cb.Position.Y + 1),
                                Data = o.Theme.Gradient,
                                Transparency = 1,
                                Visible = true,
                                ZIndex = 3
                            }
                        )
                        local ce =
                            p.AddDrawing(
                            "Text",
                            {
                                Text = s,
                                Position = Vector2.new(cb.Position.X + 6, cb.Position.Y + 3),
                                Center = false,
                                Outline = false,
                                Font = o.Theme.Font,
                                Size = o.Theme.TextSize,
                                Color = o.Theme.Text,
                                Visible = true,
                                ZIndex = 3
                            }
                        )
                        p.AddConnection(
                            o.Communication.Event,
                            function(B, N)
                                if B == "LightContrast" then
                                    cc.Color = N
                                elseif B == "Text" then
                                    ce.Color = N
                                elseif B == "Inline" then
                                    cb.Color = N
                                end
                            end
                        )
                        p.AddConnection(
                            f.InputChanged,
                            function(K, aT)
                                if K.UserInputType == Enum.UserInputType.MouseMovement then
                                    if p.OnMouse(cb) then
                                        cb.Color = o.Theme.Accent[1]
                                    else
                                        cb.Color = o.Theme.Inline
                                    end
                                end
                            end
                        )
                        c2.ListRender.Objects[#c2.ListRender.Objects + 1] = cb
                        c2.ListRender.Objects[#c2.ListRender.Objects + 1] = cc
                        c2.ListRender.Objects[#c2.ListRender.Objects + 1] = cd
                        c2.ListRender.Texts[s] = ce
                        p.AddConnection(
                            f.InputBegan,
                            function(K, aT)
                                if aT then
                                    return
                                end
                                for Index, s in pairs(ax.Dropdowns[aE]) do
                                    if Index ~= c6.Text and s then
                                        return
                                    end
                                end
                                if K.UserInputType == Enum.UserInputType.MouseButton1 and p.OnMouse(cb) then
                                    c2:Set(s)
                                end
                            end
                        )
                    end
                    c9.Position = Vector2.new(c3.Position.X, c3.Position.Y + c3.Size.Y)
                    c9.Size = Vector2.new(aI.Size.X - 12, #aM.List * c2.BaseSize + c2.BaseSize)
                    c2:Set(c2.Selected)
                    c2:ShowList(false)
                    p.AddConnection(
                        f.InputBegan,
                        function(K, aT)
                            if K.UserInputType == Enum.UserInputType.MouseButton1 then
                                if p.OnMouse(c3) then
                                    for Index, s in pairs(ax.Dropdowns[aE]) do
                                        if Index ~= c6.Text and s then
                                            return
                                        end
                                    end
                                    c2.Show = not c2.Show
                                    ax.Dropdowns[aE][c6.Text] = c2.Show
                                    c8.Text = c2.Show and "-" or "+"
                                    c2:ShowList(c2.Show)
                                elseif not p.OnMouse(c9) then
                                    c2.Show = false
                                    ax.Dropdowns[aE][c6.Text] = c2.Show
                                    c8.Text = "+"
                                    c2:ShowList(false)
                                end
                            end
                        end
                    )
                    p.AddConnection(
                        f.InputChanged,
                        function(K, aT)
                            if K.UserInputType == Enum.UserInputType.MouseMovement then
                                if p.OnMouse(c3) then
                                    c3.Color = o.Theme.Accent[1]
                                else
                                    c3.Color = o.Theme.Inline
                                end
                            end
                        end
                    )
                    aF.ContentAxis = aF.ContentAxis + c4.Size.Y + 20
                    ax.SectionAxis = {
                        aE == "Left" and ax.SectionAxis[1] + c4.Size.Y + 20 or ax.SectionAxis[1],
                        aE == "Right" and ax.SectionAxis[2] + c4.Size.Y + 20 or ax.SectionAxis[2]
                    }
                    self:UpdateSizeY(aF.ContentAxis + c4.Size.Y)
                    ax["Render"][#ax["Render"] + 1] = c3
                    ax["Render"][#ax["Render"] + 1] = c4
                    ax["Render"][#ax["Render"] + 1] = c6
                    ax["Render"][#ax["Render"] + 1] = c5
                    ax["Render"][#ax["Render"] + 1] = c8
                    ax["Render"][#ax["Render"] + 1] = c7
                    return c2
                end
                function aF:Label(V)
                    local cf = {Axis = aF.ContentAxis}
                    local cg =
                        p.AddDrawing(
                        "Text",
                        {
                            Text = V,
                            Position = Vector2.new(aH.Position.X + 6, aH.Position.Y + 23 + cf.Axis),
                            Center = false,
                            Outline = false,
                            Font = o.Theme.Font,
                            Size = o.Theme.TextSize,
                            Color = o.Theme.Text,
                            Visible = true,
                            ZIndex = 2
                        }
                    )
                    function cf:Set(a9)
                        cg.Text = a9
                    end
                    aF.ContentAxis = aF.ContentAxis + cg.Size + 8
                    ax.SectionAxis = {
                        aE == "Left" and ax.SectionAxis[1] + cg.Size + 8 or ax.SectionAxis[1],
                        aE == "Right" and ax.SectionAxis[2] + cg.Size + 8 or ax.SectionAxis[2]
                    }
                    self:UpdateSizeY(aF.ContentAxis + cg.Size)
                    ax["Render"][#ax["Render"] + 1] = cg
                    return cf
                end
                function aF:Keybind(aM)
                    local bu = {
                        Axis = aF.ContentAxis,
                        Title = aM.Title and aM.Title or "LOL",
                        EnumType = aM.Key.EnumType == Enum.KeyCode and "KeyCode" or "UserInputType",
                        Key = aM.Key or Enum.UserInputType.MouseButton2,
                        StateType = aM.StateType or "Hold",
                        State = false,
                        Shorten = "",
                        Binding = false,
                        Dropped = false,
                        Callback = typeof(aM.Callback) == "function" and aM.Callback or function()
                            end
                    }
                    if bu.StateType == "Always" then
                        bu.Callback(bu.State, bu.Key)
                    end
                    bu.Shorten = o.Keys.Shortened[bu.Key.Name] or bu.Key.Name
                    local KeybindTitle =
                        p.AddDrawing(
                        "Text",
                        {
                            Text = aM.Title,
                            Position = Vector2.new(aH.Position.X + 6, aH.Position.Y + 26 + bu.Axis),
                            Center = false,
                            Outline = false,
                            Font = o.Theme.Font,
                            Size = o.Theme.TextSize,
                            Color = o.Theme.Text,
                            Visible = true,
                            ZIndex = 2
                        }
                    )
                    local bv =
                        p.AddDrawing(
                        "Square",
                        {
                            Position = Vector2.new(aH.Position.X + aH.Size.X - 40 - 6, aH.Position.Y + 23 + bu.Axis + 2),
                            Size = Vector2.new(40, 14),
                            Thickness = 0,
                            Color = o.Theme.Inline,
                            Visible = true,
                            Filled = true
                        }
                    )
                    local bw =
                        p.AddDrawing(
                        "Square",
                        {
                            Size = Vector2.new(bv.Size.X - 2, bv.Size.Y - 2),
                            Position = Vector2.new(bv.Position.X + 1, bv.Position.Y + 1),
                            Thickness = 0,
                            Color = o.Theme.LightContrast,
                            Visible = true,
                            Filled = true
                        }
                    )
                    local bx =
                        p.AddDrawing(
                        "Image",
                        {
                            Size = Vector2.new(bv.Size.X - 2, bv.Size.Y - 2),
                            Position = Vector2.new(bv.Position.X + 1, bv.Position.Y + 1),
                            Data = o.Theme.Gradient,
                            Transparency = 1,
                            Visible = true
                        }
                    )
                    local by =
                        p.AddDrawing(
                        "Text",
                        {
                            Text = bu.Shorten,
                            Position = Vector2.new(bv.Position.X + bv.Size.X / 2, bv.Position.Y),
                            Center = true,
                            Outline = false,
                            Font = o.Theme.Font,
                            Size = o.Theme.TextSize,
                            Color = o.Theme.Text,
                            Visible = true,
                            ZIndex = 2
                        }
                    )
                    local bz =
                        p.AddDrawing(
                        "Square",
                        {
                            Position = Vector2.new(aH.Position.X + aH.Size.X + 2 - 6, aH.Position.Y + 23 + bu.Axis + 2),
                            Size = Vector2.new(60, 16),
                            Thickness = 0,
                            Color = o.Theme.Inline,
                            Visible = true,
                            Filled = true
                        }
                    )
                    local bA =
                        p.AddDrawing(
                        "Square",
                        {
                            Size = Vector2.new(bz.Size.X - 2, bz.Size.Y - 2),
                            Position = Vector2.new(bz.Position.X + 1, bz.Position.Y + 1),
                            Thickness = 0,
                            Color = o.Theme.LightContrast,
                            Visible = true,
                            Filled = true
                        }
                    )
                    local bB =
                        p.AddDrawing(
                        "Image",
                        {
                            Size = Vector2.new(bz.Size.X - 2, bz.Size.Y - 2),
                            Position = Vector2.new(bz.Position.X + 1, bz.Position.Y + 1),
                            Data = o.Theme.Gradient,
                            Transparency = 1,
                            Visible = true
                        }
                    )
                    local bC =
                        p.AddDrawing(
                        "Text",
                        {
                            Text = "Hold",
                            Position = Vector2.new(bz.Position.X + bz.Size.X / 2, bz.Position.Y),
                            Center = true,
                            Outline = false,
                            Font = o.Theme.Font,
                            Size = o.Theme.TextSize,
                            Color = o.Theme.Text,
                            Visible = true,
                            ZIndex = 2
                        }
                    )
                    local bD =
                        p.AddDrawing(
                        "Square",
                        {
                            Position = Vector2.new(
                                aH.Position.X + aH.Size.X + 2 - 6,
                                aH.Position.Y + 23 + bu.Axis + 2 + 18
                            ),
                            Size = Vector2.new(60, 16),
                            Thickness = 0,
                            Color = o.Theme.Inline,
                            Visible = true,
                            Filled = true
                        }
                    )
                    local bE =
                        p.AddDrawing(
                        "Square",
                        {
                            Size = Vector2.new(bD.Size.X - 2, bD.Size.Y - 2),
                            Position = Vector2.new(bD.Position.X + 1, bD.Position.Y + 1),
                            Thickness = 0,
                            Color = o.Theme.LightContrast,
                            Visible = true,
                            Filled = true
                        }
                    )
                    local bF =
                        p.AddDrawing(
                        "Image",
                        {
                            Size = Vector2.new(bD.Size.X - 2, bD.Size.Y - 2),
                            Position = Vector2.new(bD.Position.X + 1, bD.Position.Y + 1),
                            Data = o.Theme.Gradient,
                            Transparency = 1,
                            Visible = true
                        }
                    )
                    local bG =
                        p.AddDrawing(
                        "Text",
                        {
                            Text = "Toggle",
                            Position = Vector2.new(bD.Position.X + bD.Size.X / 2, bD.Position.Y),
                            Center = true,
                            Outline = false,
                            Font = o.Theme.Font,
                            Size = o.Theme.TextSize,
                            Color = o.Theme.Text,
                            Visible = true,
                            ZIndex = 2
                        }
                    )
                    local bH =
                        p.AddDrawing(
                        "Square",
                        {
                            Position = Vector2.new(
                                aH.Position.X + aH.Size.X + 2 - 6,
                                aH.Position.Y + 23 + bu.Axis + 2 + 34
                            ),
                            Size = Vector2.new(60, 16),
                            Thickness = 0,
                            Color = o.Theme.Inline,
                            Visible = true,
                            Filled = true
                        }
                    )
                    local bI =
                        p.AddDrawing(
                        "Square",
                        {
                            Size = Vector2.new(bH.Size.X - 2, bH.Size.Y - 2),
                            Position = Vector2.new(bH.Position.X + 1, bH.Position.Y + 1),
                            Thickness = 0,
                            Color = o.Theme.LightContrast,
                            Visible = true,
                            Filled = true
                        }
                    )
                    local bJ =
                        p.AddDrawing(
                        "Image",
                        {
                            Size = Vector2.new(bH.Size.X - 2, bH.Size.Y - 2),
                            Position = Vector2.new(bH.Position.X + 1, bH.Position.Y + 1),
                            Data = o.Theme.Gradient,
                            Transparency = 1,
                            Visible = true
                        }
                    )
                    local bK =
                        p.AddDrawing(
                        "Text",
                        {
                            Text = "Always",
                            Position = Vector2.new(bH.Position.X + bH.Size.X / 2, bH.Position.Y),
                            Center = true,
                            Outline = false,
                            Font = o.Theme.Font,
                            Size = o.Theme.TextSize,
                            Color = o.Theme.Text,
                            Visible = true,
                            ZIndex = 2
                        }
                    )
                    function bu:Drop(aa)
                        bz.Visible = aa
                        bA.Visible = aa
                        bB.Visible = aa
                        bC.Visible = aa
                        bD.Visible = aa
                        bE.Visible = aa
                        bF.Visible = aa
                        bG.Visible = aa
                        bH.Visible = aa
                        bI.Visible = aa
                        bJ.Visible = aa
                        bK.Visible = aa
                    end
                    function bu:SetStateType(aa)
                        if aa == "Hold" then
                            bu.StateType = "Hold"
                            bK.Color = o.Theme.Text
                            bG.Color = o.Theme.Text
                            bC.Color = o.Theme.Accent[1]
                        elseif aa == "Toggle" then
                            bu.StateType = "Toggle"
                            bK.Color = o.Theme.Text
                            bG.Color = o.Theme.Accent[1]
                            bC.Color = o.Theme.Text
                        else
                            bu.StateType = "Always"
                            bK.Color = o.Theme.Accent[1]
                            bG.Color = o.Theme.Text
                            bC.Color = o.Theme.Text
                            bu.State = true
                            bu.Callback(bu.State, bu.Key)
                        end
                    end
                    p.AddConnection(
                        f.InputBegan,
                        function(K, aT)
                            if K.UserInputType == Enum.UserInputType.MouseButton1 then
                                if bu.Binding then
                                    bu.Binding = false
                                    bu.Key = Enum.UserInputType.MouseButton1
                                    bu.EnumType = "UserInputType"
                                    bu.Shorten = o.Keys.Shortened[bu.Key.Name] or bu.Key.Name
                                    by.Text = bu.Binding and "[...]" or bu.Shorten
                                end
                                if p.OnMouse(bv) then
                                    for Index, s in pairs(ax.Dropdowns[aE]) do
                                        if Index ~= KeybindTitle.Text and s then
                                            return
                                        end
                                    end
                                    if bu.Binding then
                                        bu.Binding = false
                                        by.Text = bu.Shorten
                                    else
                                        bu.Binding = true
                                        by.Text = bu.Binding and "[...]" or bu.Shorten
                                    end
                                end
                                if p.OnMouse(bz) then
                                    bu:SetStateType("Hold")
                                end
                                if p.OnMouse(bD) then
                                    bu:SetStateType("Toggle")
                                end
                                if p.OnMouse(bH) then
                                    bu:SetStateType("Always")
                                end
                            elseif K.UserInputType == Enum.UserInputType.Keyboard then
                                if bu.Binding then
                                    bu.Binding = false
                                    bu.Key = K.KeyCode
                                    bu.EnumType = "KeyCode"
                                    bu.Shorten = o.Keys.Shortened[bu.Key.Name] or bu.Key.Name
                                    by.Text = bu.Binding and "[...]" or bu.Shorten
                                end
                            elseif K.UserInputType == Enum.UserInputType.MouseButton2 then
                                if bu.Binding then
                                    bu.Binding = false
                                    bu.Key = Enum.UserInputType.MouseButton2
                                    bu.EnumType = "UserInputType"
                                    bu.Shorten = o.Keys.Shortened[bu.Key.Name] or bu.Key.Name
                                    by.Text = bu.Binding and "[...]" or bu.Shorten
                                end
                                if p.OnMouse(bv) then
                                    bu.Dropped = not bu.Dropped
                                    bu:Drop(bu.Dropped)
                                end
                            end
                        end
                    )
                    p.AddConnection(
                        f.InputBegan,
                        function(K, aT)
                            if
                                bu.EnumType == "KeyCode" and K.KeyCode == bu.Key or
                                    bu.EnumType == "UserInputType" and K.UserInputType == bu.Key
                             then
                                if bu.StateType == "Toggle" then
                                    bu.State = not bu.State
                                elseif bu.StateType == "Hold" then
                                    bu.State = true
                                end
                                bu.Callback(bu.State, bu.Key)
                            end
                        end
                    )
                    bu:SetStateType(bu.StateType)
                    p.AddConnection(
                        f.InputEnded,
                        function(K, aT)
                            if
                                bu.EnumType == "KeyCode" and K.KeyCode == bu.Key or
                                    bu.EnumType == "UserInputType" and K.UserInputType == bu.Key
                             then
                                if bu.StateType == "Hold" then
                                    bu.State = false
                                    bu.Callback(bu.State, bu.Key)
                                end
                            end
                        end
                    )
                    bu:Drop(false)
                    aF.ContentAxis = aF.ContentAxis + bv.Size.Y + 8
                    ax.SectionAxis = {
                        aE == "Left" and ax.SectionAxis[1] + bv.Size.Y + 8 or ax.SectionAxis[1],
                        aE == "Right" and ax.SectionAxis[2] + bv.Size.Y + 8 or ax.SectionAxis[2]
                    }
                    self:UpdateSizeY(aF.ContentAxis + bv.Size.Y)
                    ax["Render"][#ax["Render"] + 1] = KeybindTitle
                    ax["Render"][#ax["Render"] + 1] = bv
                    ax["Render"][#ax["Render"] + 1] = bw
                    ax["Render"][#ax["Render"] + 1] = by
                    ax["Render"][#ax["Render"] + 1] = bx
                    return bu
                end
                return aF
            end
            p.AddConnection(
                f.InputBegan,
                function(K, aT)
                    if aT then
                        return
                    end
                    if K.UserInputType == Enum.UserInputType.MouseButton1 and p.OnMouse(aA) then
                        task.spawn(
                            function()
                                self:SwitchTab(ax)
                            end
                        )
                    end
                end
            )
            function ax:AddPlayerlist()
                local ch = {PlayersInList = 0}
                local ci =
                    p.AddDrawing(
                    "Square",
                    {
                        Size = Vector2.new(aj.Size.X - 16, 40),
                        Position = Vector2.new(aj.Position.X + 8, aj.Position.Y + 6),
                        Thickness = 0,
                        Color = o.Theme.Inline,
                        Visible = true,
                        Filled = true
                    }
                )
                local cj =
                    p.AddDrawing(
                    "Square",
                    {
                        Size = Vector2.new(ci.Size.X - 2, ci.Size.Y - 2),
                        Position = Vector2.new(ci.Position.X + 1, ci.Position.Y + 1),
                        Thickness = 0,
                        Color = o.Theme.Outline,
                        Visible = true,
                        Filled = true
                    }
                )
                local ck =
                    p.AddDrawing(
                    "Square",
                    {
                        Size = Vector2.new(cj.Size.X - 4, cj.Size.Y - 4),
                        Position = Vector2.new(cj.Position.X + 2, cj.Position.Y + 2),
                        Thickness = 0,
                        Color = o.Theme.DarkContrast,
                        Visible = true,
                        Filled = true
                    }
                )
                local cl =
                    p.AddDrawing(
                    "Square",
                    {
                        Size = Vector2.new(cj.Size.X, 1),
                        Position = Vector2.new(cj.Position.X, cj.Position.Y),
                        Thickness = 0,
                        Color = o.Theme.Accent[1],
                        Visible = true,
                        Filled = true
                    }
                )
                local cm =
                    p.AddDrawing(
                    "Text",
                    {
                        Text = "Player List",
                        Outline = false,
                        Font = o.Theme.Font,
                        Size = o.Theme.TextSize,
                        Position = Vector2.new(ci.Position.X + 4, ci.Position.Y + 4),
                        Color = o.Theme.Text,
                        Visible = true
                    }
                )
                local cn =
                    p.AddDrawing(
                    "Text",
                    {
                        Text = "Name",
                        Outline = false,
                        Font = o.Theme.Font,
                        Size = o.Theme.TextSize,
                        Position = Vector2.new(ci.Position.X + 6, ci.Position.Y + 20),
                        Color = o.Theme.Text,
                        Visible = true
                    }
                )
                local co =
                    p.AddDrawing(
                    "Text",
                    {
                        Text = "Team",
                        Outline = false,
                        Font = o.Theme.Font,
                        Size = o.Theme.TextSize,
                        Position = Vector2.new(ci.Position.X + 182, ci.Position.Y + 20),
                        Color = o.Theme.Text,
                        Visible = true
                    }
                )
                local cp =
                    p.AddDrawing(
                    "Text",
                    {
                        Text = "Status",
                        Outline = false,
                        Font = o.Theme.Font,
                        Size = o.Theme.TextSize,
                        Position = Vector2.new(ci.Position.X + 334, ci.Position.Y + 20),
                        Color = o.Theme.Text,
                        Visible = true
                    }
                )
                function ch:RefreshList(cq)
                    ci.Size = Vector2.new(aj.Size.X - 16, 22 * cq + 37)
                    cj.Size = Vector2.new(ci.Size.X - 2, ci.Size.Y - 2)
                    cj.Position = Vector2.new(ci.Position.X + 1, ci.Position.Y + 1)
                    ck.Size = Vector2.new(cj.Size.X - 4, cj.Size.Y - 4)
                    ck.Position = Vector2.new(cj.Position.X + 2, cj.Position.Y + 2)
                end
                function ch:AddPlayer(cr)
                    ch.PlayersInList = 1
                    local cs, ap = ch.PlayersInList, false
                    local ct =
                        p.AddDrawing(
                        "Square",
                        {
                            Size = Vector2.new(ci.Size.X - 2, 22),
                            Position = Vector2.new(ci.Position.X + 1, ci.Position.Y + 15 + ch.PlayersInList * 22),
                            Thickness = 0,
                            Color = o.Theme.Inline,
                            Visible = X.SelectedTab == "Settings",
                            Filled = true
                        }
                    )
                    local cu =
                        p.AddDrawing(
                        "Square",
                        {
                            Size = Vector2.new(ct.Size.X - 2, ct.Size.Y - 2),
                            Position = Vector2.new(ct.Position.X + 1, ct.Position.Y + 1),
                            Thickness = 0,
                            Color = o.Theme.Outline,
                            Visible = X.SelectedTab == "Settings",
                            Filled = true
                        }
                    )
                    local cv =
                        p.AddDrawing(
                        "Text",
                        {
                            Text = cr.Name,
                            Outline = false,
                            Font = o.Theme.Font,
                            Size = o.Theme.TextSize,
                            Position = Vector2.new(ct.Position.X + 4, ct.Position.Y + 4),
                            Color = o.Theme.Text,
                            Visible = X.SelectedTab == "Settings"
                        }
                    )
                    local cw =
                        p.AddDrawing(
                        "Text",
                        {
                            Text = cr.Team ~= nil and cr.Team.Name or "Neutral",
                            Outline = false,
                            Font = o.Theme.Font,
                            Size = o.Theme.TextSize,
                            Position = Vector2.new(ct.Position.X + 180, ct.Position.Y + 4),
                            Color = cr.Team ~= nil and cr.TeamColor.Color or o.Theme.TextInactive,
                            Visible = X.SelectedTab == "Settings"
                        }
                    )
                    local cx =
                        p.AddDrawing(
                        "Text",
                        {
                            Text = cr == j and "Client" or "None",
                            Outline = false,
                            Font = o.Theme.Font,
                            Size = o.Theme.TextSize,
                            Position = Vector2.new(ct.Position.X + 330, ct.Position.Y + 4),
                            Color = cr == j and o.Theme.Accent[1] or o.Theme.Text,
                            Visible = X.SelectedTab == "Settings"
                        }
                    )
                    ax["Render"][#ax["Render"] + 1] = ct
                    ax["Render"][#ax["Render"] + 1] = cu
                    ax["Render"][#ax["Render"] + 1] = cv
                    ax["Render"][#ax["Render"] + 1] = cw
                    ax["Render"][#ax["Render"] + 1] = cx
                    self:RefreshList(cs)
                    p.AddConnection(
                        o.Communication.Event,
                        function(B, cy)
                            if B == "RemovePlayer" then
                                if cy == cr.Name then
                                    ax:RemoveDrawing(ct)
                                    ax:RemoveDrawing(cu)
                                    ax:RemoveDrawing(cv)
                                    ax:RemoveDrawing(cw)
                                    ax:RemoveDrawing(cx)
                                end
                                cs = 1
                                self:RefreshList(cs)
                            end
                        end
                    )
                end
                function ch:RemovePlayer(cr)
                    ch[cr.Name] = {}
                    o.Communication:Fire("RemovePlayer", cr.Name)
                    ch.PlayersInList = 1
                    self:RefreshList(ch.PlayersInList)
                end
                ax["Render"][#ax["Render"] + 1] = ci
                ax["Render"][#ax["Render"] + 1] = cj
                ax["Render"][#ax["Render"] + 1] = cl
                ax["Render"][#ax["Render"] + 1] = cn
                ax["Render"][#ax["Render"] + 1] = co
                ax["Render"][#ax["Render"] + 1] = cp
                ax["Render"][#ax["Render"] + 1] = ck
                ax["Render"][#ax["Render"] + 1] = cm
                return ch
            end
            ax["TabInline"] = aA
            ax["TabOutline"] = aB
            ax["TabTitle"] = aC
            ax:Install()
            X.LastTab = aA
            self.Tabs[#self.Tabs + 1] = ax
            ax["Render"] = {}
            return ax
        end
        function X:AddSettingsTab(cz)
            cz = typeof(cz) == "function" and cz or function()
                end
            local cA = {
                Accent = o.Theme.Accent[1],
                Outline = Color3.fromHex("#000005"),
                Inline = Color3.fromHex("#323232"),
                LightContrast = Color3.fromHex("#202020"),
                DarkContrast = Color3.fromHex("#191919"),
                Text = Color3.fromHex("#e8e8e8"),
                TextInactive = Color3.fromHex("#aaaaaa")
            }
            local cB = X:Tab("Settings")
            local cC = cB:Section("Theme", "Left")
            cC:Colorpicker(
                {Title = "Accent", Color = cA.Accent, Flag = "UIAccent", Callback = function(N)
                        o:UpdateTheme({Accent = N})
                        cA.Accent = N
                    end}
            )
            cC:Colorpicker(
                {Title = "Outline", Color = cA.Outline, Flag = "UIOutline", Callback = function(N)
                        o:UpdateTheme({Outline = N})
                        cA.Outline = N
                    end}
            )
            cC:Colorpicker(
                {Title = "Inline", Color = cA.Inline, Flag = "UIInline", Callback = function(N)
                        o:UpdateTheme({Inline = N})
                        cA.Inline = N
                    end}
            )
            cC:Colorpicker(
                {Title = "Inline Contrast", Color = cA.LightContrast, Flag = "UILightContrast", Callback = function(N)
                        o:UpdateTheme({LightContrast = N})
                        cA.LightContrast = N
                    end}
            )
            cC:Colorpicker(
                {Title = "Dark Contrast", Color = cA.DarkContrast, Flag = "UIDarkContrast", Callback = function(N)
                        o:UpdateTheme({DarkContrast = N})
                        cA.DarkContrast = N
                    end}
            )
            cC:Colorpicker(
                {Title = "Text", Color = cA.Text, Flag = "UIText", Callback = function(N)
                        o:UpdateTheme({Text = N})
                        cA.Text = N
                    end}
            )
            cC:Colorpicker(
                {Title = "Text Inactive", Color = cA.TextInactive, Flag = "UITextInactive", Callback = function(N)
                        o:UpdateTheme({TextInactive = N})
                        cA.TextInactive = N
                    end}
            )
            cC:Dropdown(
                {
                    Title = "Theme",
                    List = {"Default", "Neverlose", "Fatality", "Aimware", "Onetap", "Vape", "Gamesesne", "OldAbyss"},
                    Default = "Default",
                    Callback = function(cD)
                        if cD == "Default" then
                            o:UpdateTheme(
                                {
                                    Accent = Color3.fromHex("#7583fa"),
                                    Outline = Color3.fromHex("#000005"),
                                    Inline = Color3.fromHex("#323232"),
                                    LightContrast = Color3.fromHex("#202020"),
                                    DarkContrast = Color3.fromHex("#191919"),
                                    Text = Color3.fromHex("#e8e8e8"),
                                    TextInactive = Color3.fromHex("#aaaaaa")
                                }
                            )
                        elseif cD == "Neverlose" then
                            o:UpdateTheme(
                                {
                                    Outline = Color3.fromHex("#000005"),
                                    Inline = Color3.fromHex("#0a1e28"),
                                    Accent = Color3.fromHex("#00b4f0"),
                                    Text = Color3.fromHex("#ffffff"),
                                    TextInactive = Color3.fromHex("#afafaf"),
                                    LightContrast = Color3.fromHex("#000f1e"),
                                    DarkContrast = Color3.fromHex("#050514")
                                }
                            )
                        elseif cD == "Octohook" then
                            o:UpdateTheme(
                                {
                                    Outline = Color3.fromHex("#000000"),
                                    Inline = Color3.fromHex("#3c3c3c"),
                                    Accent = Color3.fromHex("#8f4b67"),
                                    Text = Color3.fromHex("#ffffff"),
                                    TextInactive = Color3.fromHex("#afafaf"),
                                    LightContrast = Color3.fromHex("#171717"),
                                    DarkContrast = Color3.fromHex("#121112")
                                }
                            )
                        elseif cD == "Fatality" then
                            o:UpdateTheme(
                                {
                                    Outline = Color3.fromHex("#322850"),
                                    Inline = Color3.fromHex("#3c3c3c"),
                                    Accent = Color3.fromHex("#f00f50"),
                                    Text = Color3.fromHex("#c8c8ff"),
                                    TextInactive = Color3.fromHex("#afafaf"),
                                    LightContrast = Color3.fromHex("#231946"),
                                    DarkContrast = Color3.fromHex("#191432")
                                }
                            )
                        elseif cD == "Aimware" then
                            o:UpdateTheme(
                                {
                                    Outline = Color3.fromHex("#000005"),
                                    Inline = Color3.fromHex("#373737"),
                                    Accent = Color3.fromHex("#c82828"),
                                    Text = Color3.fromHex("#e8e8e8"),
                                    TextInactive = Color3.fromHex("#afafaf"),
                                    LightContrast = Color3.fromHex("#2b2b2b"),
                                    DarkContrast = Color3.fromHex("#191919")
                                }
                            )
                        elseif cD == "Onetap" then
                            o:UpdateTheme(
                                {
                                    Outline = Color3.fromHex("#000000"),
                                    Inline = Color3.fromHex("#4e5158"),
                                    Accent = Color3.fromHex("#dda85d"),
                                    Text = Color3.fromHex("#d6d9e0"),
                                    TextInactive = Color3.fromHex("#afafaf"),
                                    LightContrast = Color3.fromHex("#2c3037"),
                                    DarkContrast = Color3.fromHex("#1f2125")
                                }
                            )
                        elseif cD == "Vape" then
                            o:UpdateTheme(
                                {
                                    Outline = Color3.fromHex("#0a0a0a"),
                                    Inline = Color3.fromHex("#363636"),
                                    Accent = Color3.fromHex("#26866a"),
                                    Text = Color3.fromHex("#d6d9e0"),
                                    TextInactive = Color3.fromHex("#afafaf"),
                                    LightContrast = Color3.fromHex("#1f1f1f"),
                                    DarkContrast = Color3.fromHex("#1a1a1a")
                                }
                            )
                        elseif cD == "Gamesesne" then
                            o:UpdateTheme(
                                {
                                    Outline = Color3.fromHex("#000000"),
                                    Inline = Color3.fromHex("#4e5158"),
                                    Accent = Color3.fromHex("#a7d94d"),
                                    Text = Color3.fromHex("#ffffff"),
                                    TextInactive = Color3.fromHex("#afafaf"),
                                    LightContrast = Color3.fromHex("#171717"),
                                    DarkContrast = Color3.fromHex("#0c0c0c")
                                }
                            )
                        elseif cD == "OldAbyss" then
                            o:UpdateTheme(
                                {
                                    Outline = Color3.fromHex("#0a0a0a"),
                                    Inline = Color3.fromHex("#322850"),
                                    Accent = Color3.fromHex("#8c87b4"),
                                    Text = Color3.fromHex("#ffffff"),
                                    TextInactive = Color3.fromHex("#afafaf"),
                                    LightContrast = Color3.fromHex("#1e1e1e"),
                                    DarkContrast = Color3.fromHex("#141414")
                                }
                            )
                        end
                    end
                }
            )
            local cE = cB:Section("Click GUI", "Right")
            cE:Toggle(
                {Title = "Enable Anime", Callback = function(aa)
                        X.ToggleAnime(aa)
                    end}
            )
            cE:Dropdown(
                {
                    Title = "Anime",
                    List = {"Astolfo", "Violet", "Rem", "Aiko", "Asuka"},
                    Default = "Astolfo",
                    Callback = function(am)
                        X.ChangeAnime(am)
                    end
                }
            )
            cE:Button(
                {Title = "Self Destruct", Callback = function()
                        o.SelfDestruct()
                        cz()
                    end}
            )
            return cB
        end
        function X.Watermark(V)
            local cF = {Title = V, FPS = 60, Visible = true}
            local Y =
                p.AddDrawing(
                "Square",
                {
                    Size = Vector2.new(475, 24),
                    Position = Vector2.new(150, 8),
                    Thickness = 0,
                    Color = o.Theme.Outline,
                    Visible = true,
                    Filled = true
                },
                o.Watermark
            )
            local ag =
                p.AddDrawing(
                "Image",
                {
                    Size = Vector2.new(18, 20),
                    Position = Vector2.new(Y.Position.X + 2, Y.Position.Y + 2),
                    Transparency = 1,
                    ZIndex = 3,
                    Visible = true,
                    Data = o.Theme.Logo
                },
                o.Watermark
            )
            local Z =
                p.AddDrawing(
                "Square",
                {
                    Size = Vector2.new(Y.Size.X - 2, Y.Size.Y - 2),
                    Position = Vector2.new(Y.Position.X + 1, Y.Position.Y + 1),
                    Thickness = 0,
                    Color = o.Theme.Accent[1],
                    Visible = false,
                    Filled = true
                },
                o.Watermark
            )
            local _ =
                p.AddDrawing(
                "Square",
                {
                    Size = Vector2.new(Z.Size.X - 2, Z.Size.Y - 2),
                    Position = Vector2.new(Z.Position.X + 1, Z.Position.Y + 1),
                    Thickness = 0,
                    Transparency = 1,
                    Color = o.Theme.DarkContrast,
                    Visible = true,
                    Filled = true
                },
                o.Watermark
            )
            local a0 =
                p.AddDrawing(
                "Square",
                {
                    Size = Vector2.new(Z.Size.X, 1),
                    Position = Vector2.new(Z.Position.X, Z.Position.Y),
                    Thickness = 0,
                    Color = o.Theme.Accent[1],
                    Visible = true,
                    Filled = true
                },
                o.Watermark
            )
            p.AddConnection(
                o.Communication.Event,
                function(B, N)
                    if B == "Accent" then
                        Z.Color = N
                        a0.Color = N
                    end
                end
            )
            local a1 =
                p.AddDrawing(
                "Image",
                {Size = _.Size, Position = _.Position, Transparency = 1, Visible = true, Data = o.Theme.Gradient},
                o.Watermark
            )
            local a2 =
                p.AddDrawing(
                "Text",
                {
                    Font = o.Theme.Font,
                    Size = o.Theme.TextSize,
                    Color = o.Theme.Text,
                    Text = cF.Title .. " | " .. ("%s, %s, %s"):format(os.date("%B"), os.date("%d"), os.date("%Y")),
                    Position = Vector2.new(_.Position.X + _.Size.X / 2, Z.Position.Y + 4),
                    Visible = true,
                    Center = false,
                    Outline = false
                },
                o.Watermark
            )
            Y.Size = Vector2.new(a2.TextBounds.X + 19, 20)
            a0.Size = Vector2.new(Y.Size.X - 2, 2)
            _.Size = Vector2.new(Y.Size.X - 2, Y.Size.Y - 2)
            p.AddDrag(Y, o.Watermark)
            p.AddConnection(
                g.RenderStepped,
                function()
                    cF.FPS = 1
                    if cF.Visible then
                        local cG, cH, cI = os.date("*t")["hour"], os.date("*t")["min"], os.date("*t")["sec"]
                        local cJ = cG > 12 and cG - 12 or cG
                        local cK = cG > 12 and "PM" or "AM"
                        local cL = string.len(tostring(cI)) == 1 and "0" .. cI or cI
                        a2.Text =
                            ("%s | %s:%s:%s %s | %s, %s, %s, %s"):format(
                            cF.Title,
                            cJ,
                            cH,
                            cL,
                            cK,
                            os.date("%A"),
                            os.date("%B"),
                            os.date("%d"),
                            os.date("%Y")
                        )
                        Y.Visible = true
                        a1.Visible = true
                        Y.Size = Vector2.new(a2.TextBounds.X + 28, 22)
                        Z.Size = Y.Size
                        a0.Size = Vector2.new(Y.Size.X - 2, 1)
                        _.Size = Vector2.new(Y.Size.X - 2, Y.Size.Y - 2)
                        a1.Size = _.Size
                        a2.Position = Vector2.new(a0.Position.X + 22, a0.Position.Y + 4)
                        _.Visible = true
                        a2.Visible = true
                        ag.Visible = true
                        a0.Visible = true
                    else
                        ag.Visible = false
                        Y.Visible = false
                        _.Visible = false
                        a2.Visible = false
                        a0.Visible = false
                    end
                end
            )
            return cF
        end
        return X
    end
end
p.AddConnection(
    f.InputBegan,
    function(K, aT)
        if aT then
            return
        end
        if K.KeyCode == Enum.KeyCode.RightShift then
            o:ChangeVisible(not o.WindowVisible)
        end
    end
)
local cM = {Connections = {}}
cM.AddConnection = function(cN, B, w)
    local C = B:Connect(w)
    cN = cN or #cM.Connections + 1
    cM.Connections[cN] = C
    return C
end
cM.DelConnection = function(cN)
    cM.Connections[cN]:Disconnect()
end
cM.DisconnectAll = function()
    for d, e in pairs(cM.Connections) do
        e:Disconnect()
    end
end
