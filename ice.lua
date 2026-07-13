local library = loadstring(game:HttpGet("https://github.com/tiaow/gb/blob/0fdfacbd511b7b5c38c830401f76664d3f8bfb7d/%E5%BD%A9%E8%89%B2ui"))()
local window = library:new("冰工厂2")

local Xing = window:Tab("信息",'')
local Player.m = window:Tab("玩家",'')
local Main = window:Tab("主要",'')
local Cheng = window:Tab("成就",'')


local Xing1 = Xing:section("信息",true)
    Xing1:Label("作者:idk")
    Xing1:Label("应该不会ban（maybe）")

local Xing2 = Xing:section("设置",true)
        Xing2:Toggle("移除UI辉光", "", false, function(state)
            if state then
                game:GetService("CoreGui")["frosty is cute"].Main.DropShadowHolder.Visible = false
            else
                game:GetService("CoreGui")["frosty is cute"].Main.DropShadowHolder.Visible = true
            end
    end)


        Xing2:Toggle("彩虹UI", "", false, function(state)
            if state then
                game:GetService("CoreGui")["frosty is cute"].Main.Style = "DropShadow"
            else
                game:GetService("CoreGui")["frosty is cute"].Main.Style = "Custom"
            end
    end)

    
        Xing2:Button("摧毁GUI",function()
                game:GetService("CoreGui")["frosty is cute"]:Destroy()
    end)


local TrueOrFalse = nil
local Player.Speed.V = game.Players.LocalPlayer.Character.Humanoid.WalkSpeed
local Player.Jump.V = game.Players.LocalPlayer.Character.Humanoid.JumpPower
local TheGameWorkspaceGravity.V = game.Workspace.Gravity
local Player.CameraMaxZoomDistance.V = game:GetService("Players").LocalPlayer.CameraMaxZoomDistance
local GameWorkspaceCurrentCameraFieldOfView.V = game.Workspace.CurrentCamera.FieldOfView
local PL = Player.m:section("基础",true)
    PL:Slider("步行速度", "", game.Players.LocalPlayer.Character.Humanoid.WalkSpeed, 0, 9999999, false, function(v)
     Player.Speed.V = v
    end)       

    PL:Slider("跳跃高度", "JumpPower", game.Players.LocalPlayer.Character.Humanoid.JumpPower, 50, 100000000, false, function(v)
    Player.Jump.V = v
    end)

    PL:Slider('设置重力（正常196.2）', 'Sliderflag', 196.2, 0.1, 1000,false, function(v)
    TheGameWorkspaceGravity.V = v
    end)

    PL:Slider('缩放距离', 'ZOOOOOM OUT!',  128, 128, 100000,false, function(v)
    Player.CameraMaxZoomDistance.V = v
    end)

    PL:Slider('视界（正常70）', 'Sliderflag', 70, 0.1, 120, false, function(v)
    GameWorkspaceCurrentCameraFieldOfView.V = v
    end)
PL:Toggle("启用以上功能", "",false,function(v)
TrueOrFalse = v
end)

game:GetService("RunService").Heartbeat:Connect(function()
if TrueOrFalse then
game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Player.Speed.V

end)



:Toggle("自动互动", "Auto Interact", false, function(state)
        if state then
            autoInteract = true
            while autoInteract do
                for _, descendant in pairs(workspace:GetDescendants()) do
                    if descendant:IsA("ProximityPrompt") then
                        fireproximityprompt(descendant)
                    end
                end
                task.wait(0.25) 
            end
        else
            autoInteract = false
        end
    end)