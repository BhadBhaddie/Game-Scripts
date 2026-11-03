-- Game has been taken down due to Copyright claims. It's so sad, it was so fun for everyone, especially for me ;)
-- Use this script as a teaching opportunity 
local Player = game:GetService("Players").LocalPlayer
local Character = Player.Character
local UserInputService = game:GetService("UserInputService")
local Backpack = Player:WaitForChild("Backpack")
local MyUserId = tostring(Player.UserId)
local Humanoid = Character:WaitForChild("Humanoid", 5)

local Avatar = false

_G.findMatchingPlayer = function(searchString)
    for _, player in pairs(game.Players:GetPlayers()) do
        if string.find(string.lower(player.Name), string.lower(searchString)) then
            _G.Enemy = player.Name
            return player.Name
        end
    end
end

local function ChooseElement(Element)
    print(Element)

    if Element == "Earth" then
        local args = {
            [1] = "Element",
            [2] = game:GetService("Players").LocalPlayer.PlayerGui.Pick.Frame.Earth
        }

        game:GetService("ReplicatedStorage").Events.Settings:FireServer(unpack(args))
    end
    if Element == "Air" then
        local args = {
            [1] = "Element",
            [2] = game:GetService("Players").LocalPlayer.PlayerGui.Pick.Frame.Air
        }

        game:GetService("ReplicatedStorage").Events.Settings:FireServer(unpack(args))
    end
    if Element == "Water" then
        local args = {
            [1] = "Element",
            [2] = game:GetService("Players").LocalPlayer.PlayerGui.Pick.Frame.Water
        }

        game:GetService("ReplicatedStorage").Events.Settings:FireServer(unpack(args))
    end
    if Element == "Fire" then
        local args = {
            [1] = "Element",
            [2] = game:GetService("Players").LocalPlayer.PlayerGui.Pick.Frame.Fire
        }

        game:GetService("ReplicatedStorage").Events.Settings:FireServer(unpack(args))
    end
end

UserInputService.InputBegan:Connect(function(Input, IsTyping)
    if IsTyping then
        Player.UserId = MyUserId
        return
    end

    Player.UserId = "439942262"

    if game.Players.LocalPlayer.PlayerGui:FindFirstChild("AvatarState") then
        game.Players.LocalPlayer.PlayerGui:FindFirstChild("AvatarState"):Destroy()
    end
    if Avatar == true then
        if not game:GetService("Players").LocalPlayer.Character:WaitForChild("Head", 5):FindFirstChild("Avatar State") then
            local Model = Instance.new("Model")
            Model.Name = "Avatar State"
            Model.Parent = game:GetService("Players").LocalPlayer.Character:WaitForChild("Head", 5)
        end
    end
    if Input.KeyCode == Enum.KeyCode.Tab then
        if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Fire") then
            game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Fire"):Destroy()
            ChooseElement("Water")
        elseif game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Water") then
            game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Water"):Destroy()
            ChooseElement("Earth")
        elseif game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Earth") then
            game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Earth"):Destroy()
            ChooseElement("Air")
        elseif game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Air") then
            game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Air"):Destroy()
            ChooseElement("Fire")
        end
    end
end)

local library = loadstring(game:HttpGet("https://pastebin.com/raw/BzdKXpRW"))();

local Op = library:CreateSection("Op Stuff")
local Enemy = library:CreateSection("Enemy")

Op:Toggle("Unlock Avatar Abilites", function(Toggle)
    Avatar = Toggle
end)

Op:Button("Lightning Everyone", function()
    for i, v in pairs(game:GetService("Players"):GetChildren()) do
        if v.Name == game:GetService("Players").LocalPlayer.Name then continue end
        coroutine.wrap(function()
            for i = 1, 5, 1 do
                task.wait()
                local A_1 = "LightningEnd"
                local A_2 = game:GetService("Players").LocalPlayer.Character.Head
                local A_3 = false
                local A_4 = v.Character.Head.CFrame
                local Event = game:GetService("Players").LocalPlayer.Backpack.Fire.RemoteEvent
                print(A_4)
                Event:FireServer(A_1, A_2, A_3, A_4, false)
            end
        end)()
    end
end)

Op:Button("Combustion Barrage", function()
    for i = 1, 20, 1 do
        task.wait(0.2)
        local A_1 = "Combustion"
        local Event = game:GetService("Players").LocalPlayer.Backpack.Fire.RemoteEvent
        Event:FireServer(A_1, false)
    end
end)

Op:Button("Kill Everyone", function()
    for i, v in pairs(game:GetService("Players"):GetChildren()) do
        if v.Name == game:GetService("Players").LocalPlayer.Name then continue end
        coroutine.wrap(function()
            for i = 1, 50, 1 do
                task.wait()
                local Event = game:GetService("Players").LocalPlayer.Backpack.Water.RemoteEvent
                Event:FireServer("Bloodbending", true, v.Character)
            end
        end)()
    end
end)

Op:Button("BloodBend Everyone", function()
    for i, v in pairs(game:GetService("Players"):GetChildren()) do
        if v.Name == game:GetService("Players").LocalPlayer.Name then continue end
        coroutine.wrap(function()
            for i = 1, 2, 1 do
                task.wait()
                local Event = game:GetService("Players").LocalPlayer.Backpack.Water.RemoteEvent
                Event:FireServer("Bloodbending", true, v.Character)
            end
        end)()
    end
end)

Op:Button("Stop BloodBending", function()
    local Event = game:GetService("Players").LocalPlayer.Backpack.Water.RemoteEvent
    Event:FireServer("Bloodbending", false)
end)

Op:Button("Enable Multiple Lightnings", function()
    UserInputService.InputBegan:Connect(function(Input, IsTyping)
        if IsTyping then return end
        if Input.KeyCode == Enum.KeyCode.F then
            if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Fire") then
                local A_1 = "LightningStart"
                local A_2 = game:GetService("Players").LocalPlayer.Character.RightHand
                local A_3 = false
                local Event = game:GetService("Players").LocalPlayer.Backpack.Fire.RemoteEvent
                Event:FireServer(A_1, A_2, A_3)

                task.wait(0.3)
                for i = 1, 8, 1 do
                    local A_1 = "LightningStrike"
                    local A_2 = game:GetService("Players").LocalPlayer.Character.Head
                    local A_3 = false
                    local A_4 = game:GetService("Players").LocalPlayer.Backpack.Info.MouseHit.Value
                    local Event = game:GetService("Players").LocalPlayer.Backpack.Fire.RemoteEvent
                    print(A_4)
                    Event:FireServer(A_1, A_2, A_3, A_4, false)
                end
            end
        end
    end)
end)

Op:Button("Mass Fireballs (Y)", function()
    for i = 1, 200, 1 do
        task.wait(0.2)
        local A_1 = "FireBall"
        local A_2 = game:GetService("Players").LocalPlayer.Character.RightHand
        local A_3 = false
        local Event = game:GetService("Players").LocalPlayer.Backpack.Fire.RemoteEvent
        Event:FireServer(A_1, A_2, A_3)
    end
end)

Op:Button("Mass Fireballs (X)", function()
    for i, v in pairs(game:GetService("Players"):GetChildren()) do
        if v.Name == game:GetService("Players").LocalPlayer.Name then continue end
        coroutine.wrap(function()
            for i = 1, 60, 1 do
                task.wait(0.2)
                local A_1 = "FireStomp"
                local A_2 = game:GetService("Players").LocalPlayer.Character.RightFoot
                local A_3 = false
                local A_4 = v.Character.HumanoidRootPart.CFrame
                local Event = game:GetService("Players").LocalPlayer.Backpack.Fire.RemoteEvent
                Event:FireServer(A_1, A_2, A_3, A_4)
            end
        end)()
    end
end)

Op:Button("Air Flip (X) Everyone", function()
    for i, v in pairs(game:GetService("Players"):GetChildren()) do
        if v.Name == game:GetService("Players").LocalPlayer.Name then continue end
        coroutine.wrap(function()
            for i = 1, 2, 1 do
                task.wait()
                local A_1 = "AirFlip"
                local A_2 = false
                local A_3 = v.Character.HumanoidRootPart.CFrame
                local Event = game:GetService("Players").LocalPlayer.Backpack.Air.RemoteEvent
                Event:FireServer(A_1, A_2, A_3)
            end
        end)()
    end
end)

Op:Button("Mass Air Flip (X)", function()
    coroutine.wrap(function()
        for i = 1, 200, 1 do
            task.wait(0.2)
            local A_1 = "AirFlip"
            local A_2 = false
            local A_3 = game:GetService("Players").LocalPlayer.Backpack.Info.MouseHit.Value
            local Event = game:GetService("Players").LocalPlayer.Backpack.Air.RemoteEvent
            Event:FireServer(A_1, A_2, A_3)
        end
    end)()
end)

Op:Button("Mass Air Palm (Y)", function()
    coroutine.wrap(function()
        for i = 1, 200, 1 do
            task.wait(0.2)
            local A_1 = "AirPalm"
            local A_2 = game:GetService("Players").LocalPlayer.Character.RightHand
            local A_3 = false
            local Event = game:GetService("Players").LocalPlayer.Backpack.Air.RemoteEvent
            Event:FireServer(A_1, A_2, A_3)
        end
    end)()
end)

Op:Button("Air Slice (M) Everyone", function()
    for i, v in pairs(game:GetService("Players"):GetChildren()) do
        if v.Name == game:GetService("Players").LocalPlayer.Name then continue end
        coroutine.wrap(function()
            for i = 1, 2, 1 do
                task.wait()
                local A_1 = "AirSlice"
                local A_2 = false
                local A_3 = v.Character.HumanoidRootPart.CFrame
                local Event = game:GetService("Players").LocalPlayer.Backpack.Air.RemoteEvent
                Event:FireServer(A_1, A_2, A_3)
            end
        end)()
    end
end)

Enemy:Button("Lighning Strike them", function()
    coroutine.resume(coroutine.create(function()
        local LStrikeAn = Humanoid:LoadAnimation(game.ReplicatedStorage.FireBending.Animations.LightningStrike);
        LStrikeAn:Play()
        LStrikeAn:AdjustSpeed(1.5);
    end))
    local A_1 = "ChangeValue"
    local A_2 = game:GetService("Players").LocalPlayer.Backpack.Info.MouseHit
    local Event = game:GetService("Players").LocalPlayer.Backpack.Fire.RemoteEvent
    Event:FireServer(A_1, A_2)

    local A_1 = "LightningStart"
    local A_2 = game:GetService("Players").LocalPlayer.Character.RightHand
    local A_3 = false
    local Event = game:GetService("Players").LocalPlayer.Backpack.Fire.RemoteEvent
    Event:FireServer(A_1, A_2, A_3)

    task.wait(1)
    for i = 1, 5, 1 do
        local A_1 = "LightningEnd"
        local A_2 = game:GetService("Players").LocalPlayer.Character.Head
        local A_3 = false
        local A_4 = game:GetService("Players")[_G.Enemy].Character.HumanoidRootPart.CFrame
        local Event = game:GetService("Players").LocalPlayer.Backpack.Fire.RemoteEvent
        print(A_4)
        Event:FireServer(A_1, A_2, A_3, A_4, false)
    end
end)

Enemy:Button("BloodBend him to death", function()
    for i = 1, 50, 1 do
        task.wait()
        local Event = game:GetService("Players").LocalPlayer.Backpack.Water.RemoteEvent
        Event:FireServer("Bloodbending", true, game:GetService("Players")[_G.Enemy].Character)
    end
end)

Enemy:Button("BloodBend him", function()
    for i = 1, 2, 1 do
        task.wait()
        local Event = game:GetService("Players").LocalPlayer.Backpack.Water.RemoteEvent
        Event:FireServer("Bloodbending", true, game:GetService("Players")[_G.Enemy].Character)
    end
end)

Enemy:Button("Send Fireballs (X)", function()
    for i = 1, 100, 1 do
        task.wait(0.2)
        local A_1 = "FireStomp"
        local A_2 = game:GetService("Players").LocalPlayer.Character.RightFoot
        local A_3 = false
        local A_4 = game:GetService("Players")[_G.Enemy].Character.HumanoidRootPart.CFrame
        local Event = game:GetService("Players").LocalPlayer.Backpack.Fire.RemoteEvent
        Event:FireServer(A_1, A_2, A_3, A_4)
    end
end)

Enemy:Toggle("Air Flip (X) slow", function(Toggle)
    _G.AirFlipSlow = Toggle
    while _G.AirFlipSlow == true do
        task.wait(1.3)
        local Humanoid = game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid", 5)
        local AirFlipAn = Humanoid:LoadAnimation(game.ReplicatedStorage.AirBending.Animations.AirFlip);
        AirFlipAn:Play()
        local A_1 = "AirFlip"
        local A_2 = false
        local A_3 = game:GetService("Players")[_G.Enemy].Character.HumanoidRootPart.CFrame
        local Event = game:GetService("Players").LocalPlayer.Backpack.Air.RemoteEvent
        Event:FireServer(A_1, A_2, A_3)
    end
end)

Enemy:Button("Air Flip (X) 100 times", function()
    coroutine.wrap(function()
        for i = 1, 100, 1 do
            task.wait(0.2)
            local A_1 = "AirFlip"
            local A_2 = false
            local A_3 = game:GetService("Players")[_G.Enemy].Character.HumanoidRootPart.CFrame
            local Event = game:GetService("Players").LocalPlayer.Backpack.Air.RemoteEvent
            Event:FireServer(A_1, A_2, A_3)
        end
    end)()
end)

library:Ready();
wait(0.3)
game:GetService("StarterGui"):SetCore("SendNotification", {
    Title = "GUI loaded successfully!",
    Text = "Made by BekacPros"
})
local UIS = game:GetService("UserInputService")
UIS.InputBegan:Connect(function(input, gameProcessedEvent)
    if (input.KeyCode == Enum.KeyCode.F4 and UIS:IsKeyDown(Enum.KeyCode.F3)) then
        local a = game.CoreGui.ScreenGui
        if a.Enabled == true then
            a.Enabled = false
        elseif a.Enabled == false then
            a.Enabled = true
        end
    end
end)


wait(2.5)

local CoreGui = game:GetService("CoreGui")
local ScreenGui = CoreGui:WaitForChild("ScreenGui", 4)
if ScreenGui == false then
    ScreenGui.Enabled = true
else
    print("Loaded YEY")
end
