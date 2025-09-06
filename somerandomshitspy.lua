-- deobfuscated someones skidded simple spy script, https://rscripts.net/script/flasqyus-remote-spy-tool-UnYi 
-- https://rscripts.net/@Flasqyu


local a = game:GetService("Players")
local b = game:GetService("TweenService")
local c = game:GetService("HttpService")
local d = a.LocalPlayer;
local e = d:WaitForChild("PlayerGui")
local f = Instance.new("ScreenGui")
f.Name = "FlasqyuLoader"
f.Parent = e;
f.ResetOnSpawn = false;
local g = Instance.new("Frame")
g.Name = "LoaderFrame"
g.Size = UDim2.new(0, 400, 0, 250)
g.Position = UDim2.new(0.5, - 200, 0.5, - 125)
g.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
g.BorderColor3 = Color3.fromRGB(60, 60, 60)
g.BorderSizePixel = 1;
g.Active = true;
g.Parent = f;
local h = Instance.new("UICorner")
h.CornerRadius = UDim.new(0, 8)
h.Parent = g;
local i = Instance.new("Frame")
i.Name = "TitleBar"
i.Size = UDim2.new(1, 0, 0, 40)
i.Position = UDim2.new(0, 0, 0, 0)
i.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
i.BorderSizePixel = 0;
i.Parent = g;
local j = Instance.new("UICorner")
j.CornerRadius = UDim.new(0, 8)
j.Parent = i;
local k = Instance.new("Frame")
k.Size = UDim2.new(1, 0, 0, 8)
k.Position = UDim2.new(0, 0, 1, - 8)
k.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
k.BorderSizePixel = 0;
k.Parent = i;
local l = Instance.new("TextLabel")
l.Name = "TitleLabel"
l.Size = UDim2.new(1, - 20, 1, 0)
l.Position = UDim2.new(0, 10, 0, 0)
l.BackgroundTransparency = 1;
l.Text = "Flasqyu's Spy Remote"
l.TextColor3 = Color3.fromRGB(220, 220, 220)
l.TextSize = 18;
l.Font = Enum.Font.GothamBold;
l.TextXAlignment = Enum.TextXAlignment.Center;
l.Parent = i;
local m = Instance.new("TextLabel")
m.Name = "VersionLabel"
m.Size = UDim2.new(1, - 20, 0, 30)
m.Position = UDim2.new(0, 10, 0, 50)
m.BackgroundTransparency = 1;
m.Text = "V 0.1 (BETA)"
m.TextColor3 = Color3.fromRGB(150, 150, 150)
m.TextSize = 14;
m.Font = Enum.Font.Gotham;
m.TextXAlignment = Enum.TextXAlignment.Center;
m.Parent = g;
local n = Instance.new("TextLabel")
n.Name = "StatusLabel"
n.Size = UDim2.new(1, - 20, 0, 25)
n.Position = UDim2.new(0, 10, 0, 90)
n.BackgroundTransparency = 1;
n.Text = "Initializing..."
n.TextColor3 = Color3.fromRGB(180, 180, 180)
n.TextSize = 12;
n.Font = Enum.Font.Gotham;
n.TextXAlignment = Enum.TextXAlignment.Center;
n.Parent = g;
local o = Instance.new("Frame")
o.Name = "LoadingBarBg"
o.Size = UDim2.new(0, 360, 0, 8)
o.Position = UDim2.new(0.5, - 180, 0, 180)
o.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
o.BorderSizePixel = 0;
o.Parent = g;
local p = Instance.new("UICorner")
p.CornerRadius = UDim.new(0, 4)
p.Parent = o;
local q = Instance.new("Frame")
q.Name = "LoadingBarFill"
q.Size = UDim2.new(0, 0, 1, 0)
q.Position = UDim2.new(0, 0, 0, 0)
q.BackgroundColor3 = Color3.fromRGB(64, 128, 255)
q.BorderSizePixel = 0;
q.Parent = o;
local r = Instance.new("UICorner")
r.CornerRadius = UDim.new(0, 4)
r.Parent = q;
local s = Instance.new("TextLabel")
s.Name = "PercentLabel"
s.Size = UDim2.new(1, - 20, 0, 20)
s.Position = UDim2.new(0, 10, 0, 200)
s.BackgroundTransparency = 1;
s.Text = "0%"
s.TextColor3 = Color3.fromRGB(64, 128, 255)
s.TextSize = 11;
s.Font = Enum.Font.GothamMedium;
s.TextXAlignment = Enum.TextXAlignment.Center;
s.Parent = g;
local t = {
    "Initializing Remote Spy...",
    "Scanning for RemoteEvents...",
    "Loading interface components...",
    "Setting up event listeners...",
    "Configuring logger system...",
    "Checking game Events...",
    "Finalizing...",
    "Remote Spy ready!"
}
local function u(v, w, x, y)
    y = y or Enum.EasingStyle.Quad;
    local z = TweenInfo.new(x, y, Enum.EasingDirection.Out)
    return b:Create(v, z, w)
end;
local function A()
    local B = math.random(10, 20)
    local C = tick()
    local D = 1;
    local E = B / # t;
    local function F()
        local G = tick() - C;
        local H = math.min(G / B, 1)
        local I = u(q, {
            Size = UDim2.new(H, 0, 1, 0)
        }, 0.2)
        I:Play()
        s.Text = math.floor(H * 100) .. "%"
        local J = math.min(math.ceil(G / E), # t)
        if J ~= D then
            D = J;
            n.Text = t[J]
            local K = u(n, {
                TextTransparency = 1
            }, 0.1)
            K:Play()
            K.Completed:Connect(function()
                n.Text = t[J]
                local L = u(n, {
                    TextTransparency = 0
                }, 0.1)
                L:Play()
            end)
        end;
        if H >= 1 then
            wait(0.5)
            n.Text = "Loading complete!"
            local K = u(g, {
                Size = UDim2.new(0, 400, 0, 0),
                Position = UDim2.new(0.5, - 200, 0.5, 0),
                BackgroundTransparency = 1
            }, 0.3)
            u(l, {
                TextTransparency = 1
            }, 0.3):Play()
            u(m, {
                TextTransparency = 1
            }, 0.3):Play()
            u(n, {
                TextTransparency = 1
            }, 0.3):Play()
            u(s, {
                TextTransparency = 1
            }, 0.3):Play()
            u(o, {
                BackgroundTransparency = 1
            }, 0.3):Play()
            u(q, {
                BackgroundTransparency = 1
            }, 0.3):Play()
            K:Play()
            K.Completed:Connect(function()
                f:Destroy()
                loadstring(game:HttpGet("https://pastebin.com/raw/40L2aprE"))()
                print("Flasqyu's Spy Remote loaded successfully!")
            end)
            return
        end;
        wait(0.1)
        F()
    end;
    F()
end;
local function M()
    g.Size = UDim2.new(0, 50, 0, 50)
    g.Position = UDim2.new(0.5, - 25, 0.5, - 25)
    g.BackgroundTransparency = 1;
    l.TextTransparency = 1;
    m.TextTransparency = 1;
    n.TextTransparency = 1;
    s.TextTransparency = 1;
    o.BackgroundTransparency = 1;
    q.BackgroundTransparency = 1;
    local N = u(g, {
        Size = UDim2.new(0, 400, 0, 250),
        Position = UDim2.new(0.5, - 200, 0.5, - 125),
        BackgroundTransparency = 0
    }, 0.5, Enum.EasingStyle.Back)
    N:Play()
    wait(0.2)
    u(l, {
        TextTransparency = 0
    }, 0.3):Play()
    wait(0.1)
    u(m, {
        TextTransparency = 0
    }, 0.3):Play()
    wait(0.1)
    u(n, {
        TextTransparency = 0
    }, 0.3):Play()
    wait(0.1)
    u(s, {
        TextTransparency = 0
    }, 0.3):Play()
    u(o, {
        BackgroundTransparency = 0
    }, 0.3):Play()
    u(q, {
        BackgroundTransparency = 0
    }, 0.3):Play()
    wait(0.5)
    A()
end;
spawn(M)

--[[
-- source of pastebin link

local a = game:GetService("Players")
local b = game:GetService("UserInputService")
local c = game:GetService("TweenService")
local d = a.LocalPlayer;
local e = d:WaitForChild("PlayerGui")
local f = Instance.new("ScreenGui")
f.Name = "RemoteSpy"
f.Parent = e;
f.ResetOnSpawn = false;
local g = Instance.new("Frame")
g.Name = "MainFrame"
g.Size = UDim2.new(0, 500, 0, 400)
g.Position = UDim2.new(0.5, - 250, 0.5, - 200)
g.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
g.BorderColor3 = Color3.fromRGB(60, 60, 60)
g.BorderSizePixel = 1;
g.Active = true;
g.Draggable = true;
g.Parent = f;
local h = Instance.new("Frame")
h.Name = "TitleBar"
h.Size = UDim2.new(1, 0, 0, 30)
h.Position = UDim2.new(0, 0, 0, 0)
h.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
h.BorderSizePixel = 0;
h.Parent = g;
local i = Instance.new("TextLabel")
i.Name = "TitleLabel"
i.Size = UDim2.new(1, - 60, 1, 0)
i.Position = UDim2.new(0, 10, 0, 0)
i.BackgroundTransparency = 1;
i.Text = "RS (Remote Spy)"
i.TextColor3 = Color3.fromRGB(220, 220, 220)
i.TextSize = 14;
i.Font = Enum.Font.Gotham;
i.TextXAlignment = Enum.TextXAlignment.Left;
i.Parent = h;
local j = Instance.new("TextButton")
j.Name = "CloseButton"
j.Size = UDim2.new(0, 25, 0, 25)
j.Position = UDim2.new(1, - 30, 0, 2.5)
j.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
j.BorderSizePixel = 0;
j.Text = "×"
j.TextColor3 = Color3.fromRGB(200, 200, 200)
j.TextSize = 16;
j.Font = Enum.Font.Gotham;
j.Parent = h;
j.MouseButton1Click:Connect(function()
    f:Destroy()
end)
j.MouseEnter:Connect(function()
    j.BackgroundColor3 = Color3.fromRGB(200, 60, 60)
end)
j.MouseLeave:Connect(function()
    j.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
end)
local k = Instance.new("Frame")
k.Name = "TabContainer"
k.Size = UDim2.new(1, 0, 0, 35)
k.Position = UDim2.new(0, 0, 0, 30)
k.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
k.BorderSizePixel = 0;
k.Parent = g;
local function l(m, n)
    local o = Instance.new("TextButton")
    o.Name = m .. "Tab"
    o.Size = UDim2.new(0.5, - 1, 1, 0)
    o.Position = UDim2.new(n, 0, 0, 0)
    o.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
    o.BorderSizePixel = 0;
    o.Text = m;
    o.TextColor3 = Color3.fromRGB(180, 180, 180)
    o.TextSize = 12;
    o.Font = Enum.Font.Gotham;
    o.Parent = k;
    return o
end;
local p = l("Events", 0)
local q = l("Logger", 0.5)
local r = Instance.new("Frame")
r.Name = "ContentContainer"
r.Size = UDim2.new(1, 0, 1, - 65)
r.Position = UDim2.new(0, 0, 0, 65)
r.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
r.BorderSizePixel = 0;
r.Parent = g;
local s = Instance.new("ScrollingFrame")
s.Name = "EventsScrollFrame"
s.Size = UDim2.new(1, - 10, 1, - 10)
s.Position = UDim2.new(0, 5, 0, 5)
s.BackgroundTransparency = 1;
s.BorderSizePixel = 0;
s.ScrollBarThickness = 6;
s.ScrollBarImageColor3 = Color3.fromRGB(80, 80, 80)
s.Parent = r;
local t = Instance.new("UIListLayout")
t.SortOrder = Enum.SortOrder.LayoutOrder;
t.Padding = UDim.new(0, 2)
t.Parent = s;
local u = Instance.new("ScrollingFrame")
u.Name = "LoggerScrollFrame"
u.Size = UDim2.new(1, - 10, 1, - 10)
u.Position = UDim2.new(0, 5, 0, 5)
u.BackgroundTransparency = 1;
u.BorderSizePixel = 0;
u.ScrollBarThickness = 6;
u.ScrollBarImageColor3 = Color3.fromRGB(80, 80, 80)
u.Visible = false;
u.Parent = r;
local v = Instance.new("UIListLayout")
v.SortOrder = Enum.SortOrder.LayoutOrder;
v.Padding = UDim.new(0, 1)
v.Parent = u;
local w = {}
local x = {}
local y = 0;
local function z(A)
    local B = A.Name;
    local C = A.Parent;
    while C and C ~= game do
        B = C.Name .. "." .. B;
        C = C.Parent
    end;
    return "game." .. B
end;
local function D(E, B)
    local F = Instance.new("Frame")
    F.Name = "EventItem"
    F.Size = UDim2.new(1, - 5, 0, 40)
    F.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
    F.BorderColor3 = Color3.fromRGB(50, 50, 50)
    F.BorderSizePixel = 1;
    F.Parent = s;
    local G = Instance.new("TextLabel")
    G.Name = "EventLabel"
    G.Size = UDim2.new(1, - 10, 0.5, 0)
    G.Position = UDim2.new(0, 5, 0, 2)
    G.BackgroundTransparency = 1;
    G.Text = E.Name;
    G.TextColor3 = Color3.fromRGB(220, 220, 220)
    G.TextSize = 12;
    G.Font = Enum.Font.GothamMedium;
    G.TextXAlignment = Enum.TextXAlignment.Left;
    G.Parent = F;
    local H = Instance.new("TextLabel")
    H.Name = "PathLabel"
    H.Size = UDim2.new(1, - 10, 0.5, 0)
    H.Position = UDim2.new(0, 5, 0.5, - 2)
    H.BackgroundTransparency = 1;
    H.Text = B;
    H.TextColor3 = Color3.fromRGB(150, 150, 150)
    H.TextSize = 10;
    H.Font = Enum.Font.Gotham;
    H.TextXAlignment = Enum.TextXAlignment.Left;
    H.Parent = F;
    F.MouseEnter:Connect(function()
        F.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    end)
    F.MouseLeave:Connect(function()
        F.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
    end)
    return F
end;
local function I(...)
    local J = {
        ...
    }
    local K = {}
    for L, M in ipairs(J) do
        local N = type(M)
        local O = ""
        if N == "string" then
            O = '"' .. tostring(M) .. '"'
        elseif N == "number" then
            O = tostring(M)
        elseif N == "boolean" then
            O = tostring(M)
        elseif N == "table" then
            O = "{...}"
        elseif N == "userdata" then
            if typeof(M) == "Instance" then
                O = tostring(M)
            elseif typeof(M) == "Vector3" then
                O = string.format("Vector3(%g, %g, %g)", M.X, M.Y, M.Z)
            elseif typeof(M) == "CFrame" then
                O = "CFrame(...)"
            else
                O = tostring(typeof(M))
            end
        else
            O = tostring(M)
        end;
        table.insert(K, O)
    end;
    return table.concat(K, ", ")
end;
local function P(Q, B, R, J)
    y = y + 1;
    local S = J and J ~= ""
    local T = S and 55 or 35;
    local U = Instance.new("Frame")
    U.Name = "LogItem" .. y;
    U.Size = UDim2.new(1, - 5, 0, T)
    U.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
    U.BorderColor3 = Color3.fromRGB(45, 45, 45)
    U.BorderSizePixel = 1;
    U.Parent = u;
    local V = Instance.new("Frame")
    V.Name = "TimeBar"
    V.Size = UDim2.new(0, 3, 1, 0)
    V.Position = UDim2.new(0, 0, 0, 0)
    V.BackgroundColor3 = S and Color3.fromRGB(100, 150, 200) or Color3.fromRGB(100, 200, 100)
    V.BorderSizePixel = 0;
    V.Parent = U;
    local W = Instance.new("TextLabel")
    W.Name = "LogLabel"
    W.Size = UDim2.new(1, - 50, S and 0.35 or 0.5, 0)
    W.Position = UDim2.new(0, 8, 0, 2)
    W.BackgroundTransparency = 1;
    W.Text = Q;
    W.TextColor3 = Color3.fromRGB(220, 220, 220)
    W.TextSize = 11;
    W.Font = Enum.Font.GothamMedium;
    W.TextXAlignment = Enum.TextXAlignment.Left;
    W.Parent = U;
    local X = Instance.new("TextLabel")
    X.Name = "LogPath"
    X.Size = UDim2.new(1, - 50, S and 0.25 or 0.5, 0)
    X.Position = UDim2.new(0, 8, S and 0.35 or 0.5, S and - 1 or - 2)
    X.BackgroundTransparency = 1;
    X.Text = B;
    X.TextColor3 = Color3.fromRGB(130, 130, 130)
    X.TextSize = 9;
    X.Font = Enum.Font.Gotham;
    X.TextXAlignment = Enum.TextXAlignment.Left;
    X.Parent = U;
    if S then
        local Y = Instance.new("TextLabel")
        Y.Name = "ArgsLabel"
        Y.Size = UDim2.new(1, - 50, 0.4, 0)
        Y.Position = UDim2.new(0, 8, 0.6, - 2)
        Y.BackgroundTransparency = 1;
        Y.Text = "Args: " .. J;
        Y.TextColor3 = Color3.fromRGB(180, 200, 100)
        Y.TextSize = 9;
        Y.Font = Enum.Font.Gotham;
        Y.TextXAlignment = Enum.TextXAlignment.Left;
        Y.TextTruncate = Enum.TextTruncate.AtEnd;
        Y.Parent = U
    end;
    local Z = Instance.new("TextLabel")
    Z.Name = "TimeLabel"
    Z.Size = UDim2.new(0, 45, S and 0.35 or 1, 0)
    Z.Position = UDim2.new(1, - 45, 0, 0)
    Z.BackgroundTransparency = 1;
    Z.Text = R;
    Z.TextColor3 = Color3.fromRGB(180, 180, 180)
    Z.TextSize = 9;
    Z.Font = Enum.Font.Gotham;
    Z.Parent = U;
    u.CanvasSize = UDim2.new(0, 0, 0, v.AbsoluteContentSize.Y)
    u.CanvasPosition = Vector2.new(0, u.CanvasSize.Y.Offset)
    return U
end;
local function _(A)
    for a0, a1 in pairs(A:GetChildren()) do
        if a1:IsA("RemoteEvent") or a1:IsA("RemoteFunction") or a1:IsA("BindableEvent") or a1:IsA("BindableFunction") then
            local B = z(a1)
            if not w[B] then
                w[B] = a1;
                D(a1, B)
                if a1:IsA("RemoteEvent") then
                    x[B] = a1.OnClientEvent:Connect(function(...)
                        local a2 = os.date("%H:%M:%S")
                        local J = I(...)
                        P(a1.Name, B, a2, J)
                    end)
                elseif a1:IsA("BindableEvent") then
                    x[B] = a1.Event:Connect(function(...)
                        local a2 = os.date("%H:%M:%S")
                        local J = I(...)
                        P(a1.Name, B, a2, J)
                    end)
                end
            end
        end;
        _(a1)
    end
end;
local function a3()
    for a0, a1 in pairs(s:GetChildren()) do
        if a1.Name == "EventItem" then
            a1:Destroy()
        end
    end;
    for a0, a4 in pairs(x) do
        a4:Disconnect()
    end;
    x = {}
    w = {}
    _(game)
    s.CanvasSize = UDim2.new(0, 0, 0, t.AbsoluteContentSize.Y)
end;
local a5 = p;
local function a6(o, a7)
    p.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
    p.TextColor3 = Color3.fromRGB(180, 180, 180)
    q.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
    q.TextColor3 = Color3.fromRGB(180, 180, 180)
    a5 = o;
    o.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
    o.TextColor3 = Color3.fromRGB(220, 220, 220)
    s.Visible = a7 == s;
    u.Visible = a7 == u
end;
p.MouseButton1Click:Connect(function()
    a6(p, s)
end)
q.MouseButton1Click:Connect(function()
    a6(q, u)
end)
a6(p, s)
a3()
spawn(function()
    while f.Parent do
        wait(5)
        if s.Visible then
            a3()
        end
    end
end)
print("RS (Remote Spy) loaded successfully!")

]]--


