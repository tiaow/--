local library = loadstring(game:HttpGet("https://github.com/tiaow/gb/blob/main/%E5%BD%A9%E8%89%B2ui"))()
local window = library:new("冰工厂2")
local Xing = window:Tab("信息",'')
local Player = window:Tab("玩家",'')
local Main = window:Tab("主要",'')
local Cheng = window:Tab("成就",'')

local Xing = creds:section("作者信息",true)
Xing:Lable

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