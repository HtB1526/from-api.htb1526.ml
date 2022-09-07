--Edit by HtB#1526
local a,set = ({...})[1]
if a then set=a else set={PrisonLife={AutoCriminal=true}}end
local LocalPlayer,R = game.Players.LocalPlayer,game:GetService("RunService")
local Character,S,RS,HB = LocalPlayer.Character,R.Stepped,R.RenderStepped,R.Heartbeat
local function w()repeat wait()until LocalPlayer and Character and Character.Humanoid.Health~=0 and Character.InternationalFedora and Character["International Fedora"] end w()
if game.PlaceId == 155615604 and set.PrisonLife.AutoCriminal then
    if firetouchinterest then firetouchinterest(workspace["Criminals Spawn"].SpawnLocation,Character.Head,0)else print("Set AutoCriminal to false, because your exploit is not supporting firetouchinterest()!")end
end
w()
Character.InternationalFedora.Name = "RIGHT-HAND"
Character.InternationalFedora.Name = "RIGHT-LEG"
Character["International Fedora"].Name = "LEFT-HAND"
Character["International Fedora"].Name = "LEFT-LEG"
for i, v in next, LocalPlayer.Character:GetDescendants() do
    if v:IsA("BasePart") and v.Name ~= "HumanoidRootPart" then
        HB:connect(function()
            v.Velocity = Vector3.new(0, -30, 0)
            wait(0.5)
        end)
    end
end
local function Cr(HatName, position, rotation, part)
    for _, m in pairs(Character[HatName]:GetDescendants()) do
        if m:IsA"Mesh"or m:IsA"SpecialMesh"then
            m:Remove()
        end
    end
    Character[HatName].Handle.Color = Color3.fromRGB(255,255,255) --i know it's non fe
    Instance.new("Attachment", Character[HatName].Handle)
    Instance.new("AlignPosition",Character[HatName].Handle)
    Instance.new("AlignOrientation", Character[HatName].Handle)
    Instance.new("Attachment", Character[part])
    Character[part].Attachment.Name = HatName
    Character[HatName].Handle.AccessoryWeld:Destroy()
    Character[HatName].Handle.AlignPosition.Attachment0 = Character[HatName].Handle.Attachment
    Character[HatName].Handle.AlignOrientation.Attachment0 = Character[HatName].Handle.Attachment
    Character[HatName].Handle.AlignPosition.Attachment1 = Character[part][HatName]
    Character[HatName].Handle.AlignOrientation.Attachment1 = Character[part][HatName]
    Character[part][HatName].Position = position
    Character[HatName].Handle.Attachment.Rotation = rotation
    Character[HatName].Handle.AlignPosition.Responsiveness = 200
    Character[HatName].Handle.AlignOrientation.Responsiveness = 200
    Character[HatName].Handle.AlignPosition.RigidityEnabled = true
    Character[HatName].Handle.AlignOrientation.RigidityEnabled = true
end
Cr("RIGHT-HAND", Vector3.new(0, 1.5, 0), Vector3.new(0, 0, 0), "Right Arm")
Cr("RIGHT-LEG", Vector3.new(0, 1.5, 0), Vector3.new(0, 0, 0), "Left Arm")
Cr("LEFT-HAND", Vector3.new(0, 1.5, 0), Vector3.new(0, 0, 0), "Left Leg")
Cr("LEFT-LEG", Vector3.new(0, 1.5, 0), Vector3.new(0, 0, 0), "Right Leg")
Cr("Hat1", Vector3.new(0, -1.4, 0), Vector3.new(0, 90, 0), "Torso")
sethiddenproperty(LocalPlayer, "MaximumSimulationRadius", math.huge)
sethiddenproperty(LocalPlayer, "SimulationRadius", 1.0000000331814e+32)
for i, v in next, LocalPlayer.Character:GetDescendants() do
    if v:IsA("BasePart") and v.Name ~= "HumanoidRootPart" then
        HB:connect(function()
            v.Velocity = Vector3.new(0, -25.05, 0)
            wait(0.5)
        end)
    end
end
workspace.Camera.FieldOfView = 120
local Fling = true --// Recommended: false
local FlingBlockInvisible = false --// Recommended: false (So you can see the flinging block)
local HighlightFlingBlock = true --// Recommended: true
local FlingHighlightColor = Color3.fromRGB(0, 255, 255)

--Uses Mizt's bypass

Bypass = "death"
loadstring(game:GetObjects("rbxassetid://5325226148")[1].Source)()

e = Instance.new("BodyVelocity", LocalPlayer.Character.HumanoidRootPart)
e.Velocity = Vector3.new(0, -25.05, 0)
e.P = math.huge

local IsDead = false
local StateMover = true

local playerss = workspace.non
local bbv, bullet
if Bypass == "death" then
    bullet = LocalPlayer.Character["HumanoidRootPart"]
    bullet.Transparency = (FlingBlockInvisible ~= true and 0 or 1)
    bullet.Massless = true
    if bullet:FindFirstChildOfClass("Attachment") then
        for _, v in pairs(bullet:GetChildren()) do
            if v:IsA("Attachment") then
                v:Destroy()
            end
        end
    end

    bbv = Instance.new("BodyPosition", bullet)
    bbv.Position = playerss.Torso.Position
end

if Bypass == "death" then
    coroutine.wrap(function()
        while true do
            if not playerss or not playerss:FindFirstChildOfClass("Humanoid") or playerss:FindFirstChildOfClass("Humanoid").Health <= 0 then
                IsDead = true
                return
            end
            if StateMover then
                bbv.Position = playerss.Hat1.Handle.Position
                bullet.Position = playerss.Torso.Position
            end
            RS:wait()
        end
    end)()
end

bbav = Instance.new("BodyAngularVelocity", bullet)
bbav.MaxTorque = Vector3.new(math.huge, math.huge, math.huge)
bbav.P = 100000000000000000000000000000
bbav.AngularVelocity = Vector3.new(10000000000000000000000000000000, 100000000000000000000000000, 100000000000000000)

local Character = workspace.non
local position,sine,t,change=nil,0,0,1
local Root = Character["HumanoidRootPart"]
local HEADLERP,TORSOLERP,ROOTLERP,RIGHTARMLERP,LEFTARMLERP,RIGHTLEGLERP,LEFTLEGLERP = Instance.new("ManualWeld",Character["Head"]),Instance.new("ManualWeld",Character["HumanoidRootPart"]),Instance.new("ManualWeld",Character["HumanoidRootPart"]),Instance.new("ManualWeld",Character["Right Arm"]),Instance.new("ManualWeld",Character["Left Arm"]),Instance.new("ManualWeld",Character["Right Leg"]),Instance.new("ManualWeld",Character["Left Leg"])
--Props
HEADLERP.Part0 = Character["Head"]
HEADLERP.Part1 = Character["Head"]
HEADLERP.C0 = CFrame.new(0, -1.5, -0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))
TORSOLERP.Part0 = Character["Torso"]
TORSOLERP.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))
ROOTLERP.Part0 = Character["HumanoidRootPart"]
ROOTLERP.Part1 = Character["Torso"]
ROOTLERP.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))
RIGHTARMLERP.Parent = Character["Right Arm"]
RIGHTARMLERP.Part0 = Character["Right Arm"]
RIGHTARMLERP.Part1 = Character["Torso"]
RIGHTARMLERP.C0 = CFrame.new(-1.5, 0, -0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))
LEFTARMLERP.Part0 = Character["Left Arm"]
LEFTARMLERP.Part1 = Character["Torso"]
LEFTARMLERP.C0 = CFrame.new(1.5, 0, -0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))
RIGHTLEGLERP.Part0 = Character["Right Leg"]
RIGHTLEGLERP.Part1 = Character["Torso"]
RIGHTLEGLERP.C0 = CFrame.new(-0.5, 2, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))
LEFTLEGLERP.Part0 = Character["Left Leg"]
LEFTLEGLERP.Part1 = Character["Torso"]
LEFTLEGLERP.C0 = CFrame.new(0.5, 2, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))
function swait(num)
    if num == 0 or num == nil then
        S:wait()
    else
        for i = 0, num do
            S:wait()
        end
    end
end
local m,cry,idle,toggle = LocalPlayer:GetMouse(),false,true,false
m.KeyDown:Connect(function(k)
    if k == "q" then
        Character.Humanoid.WalkSpeed = 70.1
    end
    if k == "k" then
        Character.Humanoid.WalkSpeed = 60
    end
    if k == "f" then
        if toggle == false then
            toggle = true
            cry = true
            idle = false
        elseif toggle then
            toggle = false
            cry = false
            idle = true
        end
    end
end)
m.KeyUp:connect(function(k)
    if k == "q" then
        Character.Humanoid.WalkSpeed = 16
    end
    if k == "k" then
        Character.Humanoid.WalkSpeed = 20 
    end
end)
coroutine.wrap(function()
    while true do
        if idle then
            if Root.Velocity.y > 1 then
                position = "jump"
            elseif Root.Velocity.y < -1 then
                position = "fall"
            elseif Root.Velocity.Magnitude < 2 then
                position = "idle"
            elseif Root.Velocity.Magnitude < 20 then
                position = "walk"
            elseif Root.Velocity.Magnitude > 60.1 then
                position = "run"
            end
        end
    wait()
    end
end)()
coroutine.wrap(function()
    while true do
        if cry then
            if Root.Velocity.y > 1 then
                position = "jump"
            elseif Root.Velocity.y < -1 then
                position = "fall"
            elseif Root.Velocity.Magnitude < 2 then
                position = "idle2"
            elseif Root.Velocity.Magnitude < 20 then
                position = "walk"
            elseif Root.Velocity.Magnitude > 20 then
                position = "run"
            end
        end
        wait()
    end
end)()
coroutine.wrap(function()
        while true do
            sine = sine + change
            if position == "idle" then
                change = 1
                ROOTLERP.C0=ROOTLERP.C0:lerp(CFrame.new(0+0*math.sin(sine/12),-1+0*math.sin(sine/12),0+0*math.sin(sine/12))*CFrame.Angles(math.rad(-10+-7*math.sin(sine/12)),math.rad(0+0*math.sin(sine/12)),math.rad(0+0*math.sin(sine/12))),0.1)
                RIGHTARMLERP.C0=RIGHTARMLERP.C0:lerp(CFrame.new(-1+0*math.sin(sine/12),0+0*math.sin(sine/12),1+-0.1*math.sin(sine/12))*CFrame.Angles(math.rad(-120+5*math.sin(sine/12)),math.rad(-70+0*math.sin(sine/12)),math.rad(0+0*math.sin(sine/12))),0.1)
                LEFTARMLERP.C0=LEFTARMLERP.C0:lerp(CFrame.new(1+0*math.sin(sine/12),0+0*math.sin(sine/12),1+-0.1*math.sin(sine/12))*CFrame.Angles(math.rad(-120+5*math.sin(sine/12)),math.rad(70+0*math.sin(sine/12)),math.rad(0+0*math.sin(sine/12))),0.1)
                RIGHTLEGLERP.C0=RIGHTLEGLERP.C0:lerp(CFrame.new(-0.5 + 0 * math.sin(sine / 12),1.8 + 0 * math.sin(sine / 12),1 + 0 * math.sin(sine / 12)) *CFrame.Angles(math.rad(-30 + -7 * math.sin(sine / 12)),math.rad(10 + 0 * math.sin(sine / 12)),math.rad(-4 + 0 * math.sin(sine / 12))),0.1)
                LEFTLEGLERP.C0=LEFTLEGLERP.C0:lerp(CFrame.new(0.5 + 0 * math.sin(sine / 12),1.8 + 0 * math.sin(sine / 12),1 + 0 * math.sin(sine / 12)) *CFrame.Angles(math.rad(-30 + -7 * math.sin(sine / 12)),math.rad(-10 + 0 * math.sin(sine / 12)),math.rad(4 + 0 * math.sin(sine / 12))),0.1)
            elseif position == "walk" then
                change = 1
                ROOTLERP.C0=ROOTLERP.C0:lerp(CFrame.new(0+0*math.sin(sine/12),2+0.1*math.sin(sine/12),0+0*math.sin(sine/12))*CFrame.Angles(math.rad(-10+0*math.sin(sine/12)),math.rad(0+0*math.sin(sine/12)),math.rad(0+0*math.sin(sine/12))),0.1)
                RIGHTARMLERP.C0=RIGHTARMLERP.C0:lerp(CFrame.new(-1.5+0*math.sin(sine/12),1+0*math.sin(sine/12),0+0*math.sin(sine/12))*CFrame.Angles(math.rad(0+40*math.sin(sine/12)),math.rad(0+0*math.sin(sine/12)),math.rad(0+0*math.sin(sine/12))),0.1)
                LEFTARMLERP.C0=LEFTARMLERP.C0:lerp(CFrame.new(1.5+0*math.sin(sine/12),1+0*math.sin(sine/12),0+0*math.sin(sine/12))*CFrame.Angles(math.rad(0+-40*math.sin(sine/12)),math.rad(0+0*math.sin(sine/12)),math.rad(0+0*math.sin(sine/12))),0.1)
                RIGHTLEGLERP.C0=RIGHTLEGLERP.C0:lerp(CFrame.new(-0.5+0*math.sin(sine/12),4+0.1*math.sin(sine/12),0.3+0.3*math.sin(sine/12))*CFrame.Angles(math.rad(-5+-20*math.sin(sine/12)),math.rad(0+0*math.sin(sine/12)),math.rad(0+0*math.sin(sine/12))),0.1)
                LEFTLEGLERP.C0=LEFTLEGLERP.C0:lerp(CFrame.new(0.5+0*math.sin(sine/12),4+0.1*math.sin(sine/12),0.3+-0.3*math.sin(sine/12))*CFrame.Angles(math.rad(-5+20*math.sin(sine/12)),math.rad(0+0*math.sin(sine/12)),math.rad(0+0*math.sin(sine/12))),0.1)
            elseif position == "run" then
                change = 5
                ROOTLERP.C0=ROOTLERP.C0:lerp(CFrame.new(0+0*math.sin(sine/12),2+0.2*math.sin(sine/12),0+0*math.sin(sine/12))*CFrame.Angles(math.rad(-10+0*math.sin(sine/12)),math.rad(0+0*math.sin(sine/12)),math.rad(0+0*math.sin(sine/12))),0.1)
                RIGHTARMLERP.C0=RIGHTARMLERP.C0:lerp(CFrame.new(-1.5+0*math.sin(sine/12),2+0*math.sin(sine/12),0.5+0*math.sin(sine/12))*CFrame.Angles(math.rad(-85+5*math.sin(sine/12)),math.rad(0+0*math.sin(sine/12)),math.rad(0+0*math.sin(sine/12))),0.1)
                LEFTARMLERP.C0=LEFTARMLERP.C0:lerp(CFrame.new(1.5+0*math.sin(sine/12),2+0*math.sin(sine/12),0.5+0*math.sin(sine/12))*CFrame.Angles(math.rad(-85+5*math.sin(sine/12)),math.rad(0+0*math.sin(sine/12)),math.rad(0+0*math.sin(sine/12))),0.1)
                RIGHTLEGLERP.C0=RIGHTLEGLERP.C0:lerp(CFrame.new(-0.5+0*math.sin(sine/12),4+0.5*math.sin(sine/12),0+0*math.sin(sine/12))*CFrame.Angles(math.rad(-1+-100*math.sin(sine/12)),math.rad(0+0*math.sin(sine/12)),math.rad(0+0*math.sin(sine/12))),0.1)
                LEFTLEGLERP.C0=LEFTLEGLERP.C0:lerp(CFrame.new(0.5+0*math.sin(sine/12),4+-0.5*math.sin(sine/12),0+0*math.sin(sine/12))*CFrame.Angles(math.rad(-1+100*math.sin(sine/12)),math.rad(0+0*math.sin(sine/12)),math.rad(0+0*math.sin(sine/12))),0.1)
            elseif position == "jump" then --Uhm yes
            elseif position == "fall" then
            elseif position == "idle2" then
                change = 1.3
                ROOTLERP.C0=ROOTLERP.C0:lerp(CFrame.new(0+0*math.sin(sine/12),2+0*math.sin(sine/12),0+0*math.sin(sine/12))*CFrame.Angles(math.rad(0+20*math.sin(sine/12)),math.rad(0+0*math.sin(sine/12)),math.rad(0+0*math.sin(sine/12))),0.1)
                RIGHTARMLERP.C0=RIGHTARMLERP.C0:lerp(CFrame.new(-0.5+0*math.sin(sine/12),1+0*math.sin(sine/12),1+0*math.sin(sine/12))*CFrame.Angles(math.rad(-150+0*math.sin(sine/12)),math.rad(-100+0*math.sin(sine/12)),math.rad(0+0*math.sin(sine/12))),0.1)
                LEFTARMLERP.C0=LEFTARMLERP.C0:lerp(CFrame.new(0.5+0*math.sin(sine/12),1+0*math.sin(sine/12),1+0*math.sin(sine/12))*CFrame.Angles(math.rad(-150+0*math.sin(sine/12)),math.rad(100+0*math.sin(sine/12)),math.rad(0+0*math.sin(sine/12))),0.1)
                RIGHTLEGLERP.C0=RIGHTLEGLERP.C0:lerp(CFrame.new(-0.5+0*math.sin(sine/12),4+0*math.sin(sine/12),0+0*math.sin(sine/12))*CFrame.Angles(math.rad(0+20*math.sin(sine/12)),math.rad(-4+0*math.sin(sine/12)),math.rad(-2+0*math.sin(sine/12))),0.1)
                LEFTLEGLERP.C0=LEFTLEGLERP.C0:lerp(CFrame.new(0.5+0*math.sin(sine/12),4+0*math.sin(sine/12),0+0*math.sin(sine/12))*CFrame.Angles(math.rad(0+20*math.sin(sine/12)),math.rad(4+0*math.sin(sine/12)),math.rad(2+0*math.sin(sine/12))),0.1)
            end
        swait()
    end
end)()
