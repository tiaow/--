

local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/tiaow/gb/refs/heads/main/%E5%BD%A9%E8%89%B2UI.lua"))()
local window = library:new("TW脚本")
local creds = window:Tab("信息",'106133116600295')
    
    local bin = creds:section("作者信息",true)


        bin:Label("作者:条纹大地")


        bin:Slider("步行速度", "WalkSpeed", game.Players.LocalPlayer.Character.Humanoid.WalkSpeed, 16, 1000, false, function(Speed)
  
    end)       


        bin:Textbox("快速跑步（死后重置）建议用2", "tpwalking", "输入", function(king)

    end)


        bin:Toggle("移除UI辉光", "", false, function(state)
            if state then
                game:GetService("CoreGui")["frosty is cute"].Main.DropShadowHolder.Visible = false
            else
                game:GetService("CoreGui")["frosty is cute"].Main.DropShadowHolder.Visible = true
            end
    end)


        bin:Toggle("彩虹UI", "", false, function(state)
            if state then
                game:GetService("CoreGui")["frosty is cute"].Main.Style = "DropShadow"
            else
                game:GetService("CoreGui")["frosty is cute"].Main.Style = "Custom"
            end
    end)

    
        bin:Button("摧毁GUI",function()
                game:GetService("CoreGui")["frosty is cute"]:Destroy()
    end)


        bin:Dropdown("选择方向", 'DirectionDropdown', directionDropdown, function(v)

    end)