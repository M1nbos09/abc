--Window:Minimize()

local redzlib = loadstring(game:HttpGet("https://raw.githubusercontent.com/m1M-Plqer819/synx/main/rzsul/modified.lua"))()

local Window = redzlib:MakeWindow({
  Title = "mbm hub trial release",
  SubTitle = "Stay tuned for updates and announcements in my Discord server",
  SaveFolder = "MBM_HUB.lua"
})

local Tab = {
  info = Window:MakeTab({"Info", ""}),
  main = Window:MakeTab({"main", ""}),
  sub = Window:MakeTab({"Sub", ""}),
  fruit = Window:MakeTab({"Fruit", ""}),
  raid = Window:MakeTab({"Raid", ""}),
  event = Window:MakeTab({"sea event", ""}),
  teleport = Window:MakeTab({"Teleport", ""}),
  player = Window:MakeTab({"Player", ""}),
  race = Window:MakeTab({"Race", ""}),
  shop = Window:MakeTab({"Shop", ""}),
  setup = Window:MakeTab({"Setting", ""}),
  misc = Window:MakeTab({"Misc", ""})
}

posX = 15
posY = 25
posZ = 15
--[[
Button:Callback(Toggle1.Visible)
Button:Callback(Toggle2.Visible)
]]
local id = game.PlaceId
if id == 2753915549 then First_Sea = true; elseif id == 4442272183 then Second_Sea = true; elseif id == 7449423635 then Third_Sea = true; else game.Players.LocalPlayer:Kick("Check script here : https://discord.gg/kuXFw2HkdN") end;

function AntiBan()
  for i,v in pairs(game:GetService("Players").LocalPlayer.Character:GetDescendants()) do
      if v:IsA("LocalScript") then
          if v.Name == "General" or v.Name == "Shiftlock"  or v.Name == "FallDamage" or v.Name == "4444" or v.Name == "CamBob" or v.Name == "JumpCD" or v.Name == "Looking" or v.Name == "Run" then
              v:Destroy()
          end
      end
   end
   for i,v in pairs(game:GetService("Players").LocalPlayer.PlayerScripts:GetDescendants()) do
      if v:IsA("LocalScript") then
          if v.Name == "RobloxMotor6DBugFix" or v.Name == "Clans"  or v.Name == "Codes" or v.Name == "CustomForceField" or v.Name == "MenuBloodSp"  or v.Name == "PlayerList" then
              v:Destroy()
          end
      end
   end
  end
  AntiBan()
  spawn(function()
      while wait() do
      for i,v in pairs(game.Players:GetPlayers()) do
          if v.Name == "red_game43" or v.Name == "rip_indra" or v.Name == "Axiore" or v.Name == "Polkster" or v.Name == "wenlocktoad" or v.Name == "Daigrock" or v.Name == "toilamvidamme" or v.Name == "oofficialnoobie" or v.Name == "Uzoth" or v.Name == "Azarth" or v.Name == "arlthmetic" or v.Name == "Death_King" or v.Name == "Lunoven" or v.Name == "TheGreateAced" or v.Name == "rip_fud" or v.Name == "drip_mama" or v.Name == "layandikit12" or v.Name == "Hingoi" then
              loadstring(game:HttpGet("https://raw.githubusercontent.com/m1M-Plqer819/hop/main/server/every"))()
              end
          end
      end
  end)

-- toggle ui
Window:AddToggleUIButton()
-- end

--
Window:SelectTab(Tab.info)
--

--check world
First_Sea = false
Second_Sea = false
Third_Sea = false
local placeId = game.PlaceId
if placeId == 2753915549 then
First_Sea = true
elseif placeId == 4442272183 then
Second_Sea = true
elseif placeId == 7449423635 then
Third_Sea = true
end
--end

-- Mbm Hub R - []
loadstring(game:HttpGet("https://raw.githubusercontent.com/heatdeck123/firarst/main/anti-cheat.lua"))()
loadstring(game:HttpGet("https://raw.githubusercontent.com/heatdeck123/firarst/main/anti-hack.lua"))()
loadstring(game:HttpGet("https://raw.githubusercontent.com/heatdeck123/firarst/main/anti-exploit.lua"))()
-- Mbm Hub C - []

-- lct
local ab = Tab.info:Addprofile({
  Desc = "status : soon"
})

Tab.info:AddDiscordInvite({
  Name = "MBM Hub | Community",
  Logo = "",
  Invite = "https://dsc.gg/m1m"
})

    local chg = Tab.main:AddDropdown({
      Name = "select attack delay",
      Description = "Recommended ",
      Options = {"0.1", "0.01", "0.025","0","0.15","0.2","0.25","0.015"},
      Default = "0.1",
      Callback = function(Value)
        _G.atkDelay = Value
      end
    })

    _G.Fast_Delay = tonumber(_G.atkDelay)

    local ch = Tab.main:AddDropdown({
      Name = "select weapon",
      Description = "Recommended Melee",
      Options = {"Sword", "Melee", "Fruit"},
      Default = "Melee",
      Callback = function(Value)
        Weapon = Value
      end
    })

    local Toggle1 = Tab.main:AddToggle({
      Name = "Level Farm",
      Description = "",
      Default = false
    })

    local Toggle2 = Tab.main:AddToggle({
      Name = "Bone Farm",
      Description = "",
      Default = false
    })

    local Toggle3 = Tab.main:AddToggle({
      Name = "Katakuri Farm",
      Description = "",
      Default = false
    })

    local Toggle4 = Tab.main:AddToggle({
      Name = "auto click",
      Description = "",
      Default = false
    })

    local Toggle5 = Tab.main:AddToggle({
      Name = "auto spawn katakuri",
      Description = "",
      Default = false
    })

    Tab.main:AddDropdown({
      Name = "select stats",
      Description = "Recommended Melee",
      Options = {"Gun","Defense","Sword", "Melee", "Fruit"},
      Default = {"Melee","Defense"},
      Multi = true,
      Callback = function(Value)
        pts = Value
      end
    })
    local modef = Tab.main:AddToggle({
      Name = "accept quest",
      Description = "bone farm & katakuri farm",
      Default = false
    })
    modef:Callback(function(Value)
      _G.ACQ = Value
    end)

    Tab.main:AddTextBox({
      Name = "Point",
      Description = "",
      Default = "1",
      Callback = function(Value)
        pt = Value
      end
    })

    Tab.info:AddButton({"boost fps", function()
      Window:Dialog({
        Title = "Are you sure?",
        Text = "",
        Options = {
          {"Confirm", function()
            redzlib:BoostFPS()
          end},
          {"Cancel", function()
          end}
        }
      })
    end})

    local hide = Tab.main:AddToggle({
      Name = "Hide Island",
      Description = "",
      Default = false
    })
    local hideo = false
hide:Callback(function(Value)
  _G.Hideis = Value
  pcall(function()
    if _G.Hideis then
        hideo = true
        hideis(hideo)
    else 
        hideo = false
        hideis(hideo)
    end
end)
end)
local fatu = Tab.main:AddToggle({
  Name = "fast attack",
  Description = "",
  Default = true
})
fatu:Callback(function(Value)
  _G.FastAttack = Value
end)
   local hhh = Tab.main:AddToggle({
      Name = "stats",
      Description = "",
      Default = false
    })
hhh:Callback(function(Value)
  _G.Stats = Value
end)
spawn(function()
    while wait() do
        if _G.Stats then
            local tp = tonumber(pt)
            local ly = tableToString(pts)
            if contains(ly, "Melee") then
                local args = {
                    [1] = "AddPoint",
                    [2] = "Melee",
                    [3] = tp
                }
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
            end
            if contains(ly, "Gun") then
                local args = {
                    [1] = "AddPoint",
                    [2] = "Gun",
                    [3] = tp
                }
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
            end
            if contains(ly, "Sword") then
                local args = {
                    [1] = "AddPoint",
                    [2] = "Sword",
                    [3] = tp
                }
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
            end
            if contains(ly, "Defense") then
                local args = {
                    [1] = "AddPoint",
                    [2] = "Defense",
                    [3] = tp
                }
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
            end
            if contains(ly, "Fruit") then
                local args = {
                    [1] = "AddPoint",
                    [2] = "Demon Fruit",
                    [3] = tp
                }
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
            end
        end
    end
  end)
local adsafds = Tab.main:AddToggle({
  Name = "Safe Farm",
  Description = "",
  Default = true
})
adsafds:Callback(function(Value)
  savefeererer = Value
end)

  game:GetService("Players").LocalPlayer.Idled:connect(function()
    game:GetService("VirtualUser"):Button2Down(Vector2.new(0,0),game.WorkSpace.CurrentCamera.CFrame)
    wait(1)
    game:GetService("VirtualUser"):Button2Up(Vector2.new(0,0),game.WorkSpace.CurrentCamera.CFrame)
end)

    Toggle1:Callback(function(Value)
      _G.AutoLevel = Value
    end)
    Toggle2:Callback(function(Value)
      _G.AutoBone = Value
    end)    
    Toggle3:Callback(function(Value)
      _G.CakePrince = Value
    end)   

    Toggle4:Callback(function(Value)
      _G.ATC = Value
    end) 
    spawn(function()
        while wait() do
            if _G.ATC then
                Click()
            end
        end
    end)   
    Toggle5:Callback(function(Value)
      _G.autospawn = Value
      if _G.autospawn then
        while wait() do
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner")
      end end
    end)    

local Tog = Tab.main:AddToggle({
  Name = "near mob farm",
  Description = "",
  Default = false
})

Tog:Callback(function(Value)
  _G.AutoNear = Value
end)

              local Togs = Tab.main:AddToggle({
                Name = "castle raid + indra farm",
                Description = "",
                Default = false
              })
              
              Togs:Callback(function(Value)
                _G.CastleRaid = Value
              end)
            local YYa = Tab.main:AddToggle({
                Name = "auto turn on v4",
                Description = "",
                Default = false
              })
              YYa:Callback(function(Value)
                _G.AutoY = Value
              end)
          spawn(function()
            while wait() do
                pcall(function()
                    if _G.AutoY then
                        game:GetService("VirtualInputManager"):SendKeyEvent(true,"Y",false,game)
                wait(0.1)
                        game:GetService("VirtualInputManager"):SendKeyEvent(false,"Y",false,game)
                    end
                end)
            end
            end)
            local tta = Tab.main:AddToggle({
                Name = "auto turn on v3",
                Description = "",
                Default = false
              })
              tta:Callback(function(Value)
                _G.AutoT = Value
              end)
            spawn(function()
              while wait() do
                  pcall(function()
                      if _G.AutoT then
                          game:GetService("ReplicatedStorage").Remotes.CommE:FireServer("ActivateAbility")
                      end
                  end)
              end
              end)

              local wlk = Tab.main:AddToggle({
                Name = "water walker",
                Description = "",
                Default = false
              })
              wlk:Callback(function(Value)
                _G.WalkWater = Value
              end)

spawn(function()
  while task.wait() do
      pcall(function()
          if _G.WalkWater then
              game:GetService("Workspace").Map["WaterBase-Plane"].Size = Vector3.new(1000,112,1000)
          else
              game:GetService("Workspace").Map["WaterBase-Plane"].Size = Vector3.new(1000,80,1000)
          end
      end)
  end
end)



local atksss = Tab.main:AddToggle({
  Name = "auto use ken haki",
  Description = "",
  Default = false
})
atksss:Callback(function(Value)
  _G.AUTOKen = Value
end)
spawn(function()
  while wait() do
      pcall(function()
          if _G.AUTOKen then
              repeat task.wait()
                  if not game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") then
                      game:GetService('VirtualUser'):CaptureController()
                      game:GetService('VirtualUser'):SetKeyDown('0x65')
                      wait(2)
                      game:GetService('VirtualUser'):SetKeyUp('0x65')
                  end
              until game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") or not _G.AUTOKen
          end
      end)
  end
end)  

local kps = Tab.main:AddToggle({
  Name = "kill player with quest",
  Description = "",
  Default = false
})
kps:Callback(function(Value)
  _G.AutoPlayerHunter = Value
  _G.EnabledPvP = Value
end)
spawn(function()
  game:GetService("RunService").Heartbeat:connect(function()
      pcall(function()
          if _G.AutoPlayerHunter then
              if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Humanoid") then
                  game:GetService("Players").LocalPlayer.Character.Humanoid:ChangeState(11)
              end
          end
      end)
  end)
end)

 spawn(function()
  pcall(function()
      while wait(.1) do
          if _G.AutoPlayerHunter then
              if game:GetService("Players").LocalPlayer.PlayerGui.Main.PvpDisabled.Visible == true then
                  game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EnablePvp")
              end
          end
      end
  end)
end)

spawn(function()
  while wait() do
      if _G.AutoPlayerHunter then
          if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
              wait(.5)
              game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("PlayerHunter")
          else
              for i,v in pairs(game:GetService("Workspace").Characters:GetChildren()) do
                  if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text,v.Name) then
                      repeat wait(_G.Fast_Delay)
                          Click()
                    AutoHaki()
                    EquipTool(SelectWeapon)
                          toTarget(v.HumanoidRootPart.CFrame * CFrame.new(1,7,3))								
                          v.HumanoidRootPart.Size = Vector3.new(60,60,60)
                          game:GetService'VirtualUser':CaptureController()
                          game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                      until _G.AutoPlayerHunter == false or v.Humanoid.Health <= 0
                      game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
                  end
              end
          end
      end
  end
end)


spawn(function()
  pcall(function()
      while wait() do
          if _G.EnabledPvP then
              if game:GetService("Players").LocalPlayer.PlayerGui.Main.PvpDisabled.Visible == true then
                  game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EnablePvp")
              end
          end
      end
  end)
end)


local rjs = Tab.main:AddButton({
  Name = "rejoin server",
  Description = ""
})
rjs:Callback(function()
  game:GetService("TeleportService"):Teleport(game.PlaceId, game:GetService("Players").LocalPlayer)
end)

function Hop()
  fask = task
  local PlaceID = game.PlaceId
              local AllIDs = {}
              local foundAnything = ""
              local actualHour = os.date("!*t").hour
              local Deleted = false
              local File =
                  pcall(
                      function()
                          AllIDs = game:GetService("HttpService"):JSONDecode(readfile("NotSameServers.json"))
                      end
                  )
              if not File then
                  table.insert(AllIDs, actualHour)
                  writefile("NotSameServers.json", game:GetService("HttpService"):JSONEncode(AllIDs))
              end
              function TPReturner()
                  local Site
                  if foundAnything == "" then
                      Site =
                          game.HttpService:JSONDecode(
                              game:HttpGet(
                                  "https://games.roblox.com/v1/games/" .. PlaceID .. "/servers/Public?sortOrder=Asc&limit=100"
                              )
                          )
                  else
                      Site =
                          game.HttpService:JSONDecode(
                              game:HttpGet(
                                  "https://games.roblox.com/v1/games/" ..
                                  PlaceID .. "/servers/Public?sortOrder=Asc&limit=100&cursor=" .. foundAnything
                              )
                          )
                  end
                  local ID = ""
                  if Site.nextPageCursor and Site.nextPageCursor ~= "null" and Site.nextPageCursor ~= nil then
                      foundAnything = Site.nextPageCursor
                  end
                  local num = 0
                  for i, v in pairs(Site.data) do
                      local Possible = true
                      ID = tostring(v.id)
                      if tonumber(v.maxPlayers) > tonumber(v.playing) then
                          for _, Existing in pairs(AllIDs) do
                              if num ~= 0 then
                                  if ID == tostring(Existing) then
                                      Possible = false
                                  end
                              else
                                  if tonumber(actualHour) ~= tonumber(Existing) then
                                      local delFile =
                                          pcall(
                                              function()
                                                  delfile("NotSameServers.json")
                                                  AllIDs = {}
                                                  table.insert(AllIDs, actualHour)
                                              end
                                          )
                                  end
                              end
                              num = num + 1
                          end
                          if Possible == true then
                              table.insert(AllIDs, ID)
                              fask.wait()
                              pcall(
                                  function()
                                      writefile("NotSameServers.json", game:GetService("HttpService"):JSONEncode(AllIDs))
                                      fask.wait()
                                      local args = {
                                          [1] = "teleport",
                                          [2] = ID
                                      }
  
                                      game:GetService("ReplicatedStorage").__ServerBrowser:InvokeServer(unpack(args))
                                  end
                              )
                              fask.wait(0.5)
                          end
                      end
                  end
              end
  
              function Teleport()
                  while fask.wait() do
                      pcall(
                          function()
                              TPReturner()
                              if foundAnything ~= "" then
                                  TPReturner()
                              end
                          end
                      )
                  end
              end
              Teleport()
end      

local hop = Tab.main:AddButton({
    Name = "hop server",
    Description = ""
  })
hop:Callback(function()
Hop()
end)
local zou = Tab.main:AddButton({
    Name = "sea 3",
    Description = ""
  })
zou:Callback(function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelZou")
end)

local dessrosa = Tab.main:AddButton({
    Name = "sea 2",
    Description = ""
  })
  dessrosa:Callback(function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelDressrosa")
end)

local tvm = Tab.main:AddButton({
    Name = "sea 1",
    Description = ""
  })
tvm:Callback(function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelMain")
end)
local ttp = Tab.main:AddToggle({
  Name = "collect fruit tp",
  Description = "",
  Default = false
})
ttp:Callback(function(Value)
  _G.CollectFruitTP = Value
end)
spawn(function()
  while wait(.1) do
    if _G.CollectFruitTP then
        for i,v in pairs(game.Workspace:GetChildren()) do
          if string.find(v.Name, "Fruit") then
          game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Handle.CFrame
          end
        end
      end
          end
     end)

     local ttpi = Tab.main:AddToggle({
      Name = "teleport island",
      Description = "",
      Default = false
    })
    ttpi:Callback(function(Value)
      _G.TeleportIsland = Value
      repeat wait()
        if _G.SelectIsland == "WindMill" then
            toTarget(CFrame.new(979.79895019531, 16.516613006592, 1429.0466308594))
        elseif _G.SelectIsland == "Marine" then
            toTarget(CFrame.new(-2566.4296875, 6.8556680679321, 2045.2561035156))
        elseif _G.SelectIsland == "Middle Town" then
            toTarget(CFrame.new(-690.33081054688, 15.09425163269, 1582.2380371094))
        elseif _G.SelectIsland == "Jungle" then
            toTarget(CFrame.new(-1612.7957763672, 36.852081298828, 149.12843322754))
        elseif _G.SelectIsland == "Pirate Village" then
            toTarget(CFrame.new(-1181.3093261719, 4.7514905929565, 3803.5456542969))
        elseif _G.SelectIsland == "Desert" then
            toTarget(CFrame.new(944.15789794922, 20.919729232788, 4373.3002929688))
        elseif _G.SelectIsland == "Snow Island" then
            toTarget(CFrame.new(1347.8067626953, 104.66806030273, -1319.7370605469))
        elseif _G.SelectIsland == "MarineFord" then
            toTarget(CFrame.new(-4914.8212890625, 50.963626861572, 4281.0278320313))
        elseif _G.SelectIsland == "Colosseum" then
            toTarget( CFrame.new(-1427.6203613281, 7.2881078720093, -2792.7722167969))
        elseif _G.SelectIsland == "Sky Island 1" then
            toTarget(CFrame.new(-4869.1025390625, 733.46051025391, -2667.0180664063))
        elseif _G.SelectIsland == "Sky Island 2" then  
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-4607.82275, 872.54248, -1667.55688))
        elseif _G.SelectIsland == "Sky Island 3" then
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-7894.6176757813, 5547.1416015625, -380.29119873047))
        elseif _G.SelectIsland == "Prison" then
            toTarget( CFrame.new(4875.330078125, 5.6519818305969, 734.85021972656))
        elseif _G.SelectIsland == "Magma Village" then
            toTarget(CFrame.new(-5247.7163085938, 12.883934020996, 8504.96875))
        elseif _G.SelectIsland == "Under Water Island" then
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
        elseif _G.SelectIsland == "Fountain City" then
            toTarget(CFrame.new(5127.1284179688, 59.501365661621, 4105.4458007813))
        elseif _G.SelectIsland == "Shank Room" then
            toTarget(CFrame.new(-1442.16553, 29.8788261, -28.3547478))
        elseif _G.SelectIsland == "Mob Island" then
            toTarget(CFrame.new(-2850.20068, 7.39224768, 5354.99268))
        elseif _G.SelectIsland == "The Cafe" then
            toTarget(CFrame.new(-380.47927856445, 77.220390319824, 255.82550048828))
        elseif _G.SelectIsland == "Frist Spot" then
            toTarget(CFrame.new(-11.311455726624, 29.276733398438, 2771.5224609375))
        elseif _G.SelectIsland == "Dark Area" then
            toTarget(CFrame.new(3780.0302734375, 22.652164459229, -3498.5859375))
        elseif _G.SelectIsland == "Flamingo Mansion" then
            BTPZ(CFrame.new(-483.73370361328, 332.0383605957, 595.32708740234))
        elseif _G.SelectIsland == "Flamingo Room" then
            toTarget(CFrame.new(2284.4140625, 15.152037620544, 875.72534179688))
        elseif _G.SelectIsland == "Green Zone" then
            toTarget( CFrame.new(-2448.5300292969, 73.016105651855, -3210.6306152344))
        elseif _G.SelectIsland == "Factory" then
            toTarget(CFrame.new(424.12698364258, 211.16171264648, -427.54049682617))
        elseif _G.SelectIsland == "Colossuim" then
            toTarget( CFrame.new(-1503.6224365234, 219.7956237793, 1369.3101806641))
        elseif _G.SelectIsland == "Zombie Island" then
            toTarget(CFrame.new(-5622.033203125, 492.19604492188, -781.78552246094))
        elseif _G.SelectIsland == "Two Snow Mountain" then
            toTarget(CFrame.new(753.14288330078, 408.23559570313, -5274.6147460938))
        elseif _G.SelectIsland == "Punk Hazard" then
            toTarget(CFrame.new(-6127.654296875, 15.951762199402, -5040.2861328125))
        elseif _G.SelectIsland == "Cursed Ship" then
            toTarget(CFrame.new(923.40197753906, 125.05712890625, 32885.875))
        elseif _G.SelectIsland == "Ice Castle" then
            toTarget(CFrame.new(6148.4116210938, 294.38687133789, -6741.1166992188))
        elseif _G.SelectIsland == "Forgotten Island" then
            toTarget(CFrame.new(-3032.7641601563, 317.89672851563, -10075.373046875))
        elseif _G.SelectIsland == "Ussop Island" then
            toTarget(CFrame.new(4816.8618164063, 8.4599885940552, 2863.8195800781))
        elseif _G.SelectIsland == "Mini Sky Island" then
            toTarget(CFrame.new(-288.74060058594, 49326.31640625, -35248.59375))
        elseif _G.SelectIsland == "Great Tree" then
            toTarget(CFrame.new(2681.2736816406, 1682.8092041016, -7190.9853515625))
        elseif _G.SelectIsland == "Castle On The Sea" then
            BTPZ(CFrame.new(-5075.50927734375, 314.5155029296875, -3150.0224609375))
        elseif _G.SelectIsland == "MiniSky" then
            toTarget(CFrame.new(-260.65557861328, 49325.8046875, -35253.5703125))
        elseif _G.SelectIsland == "Port Town" then
            toTarget(CFrame.new(-290.7376708984375, 6.729952812194824, 5343.5537109375))
        elseif _G.SelectIsland == "Hydra Island" then
            BTPZ(CFrame.new(5753.5478515625, 610.7880859375, -282.33172607421875))
        elseif _G.SelectIsland == "Floating Turtle" then
            toTarget(CFrame.new(-13274.528320313, 531.82073974609, -7579.22265625))
        elseif _G.SelectIsland == "Mansion" then
            BTPZ(CFrame.new(-12468.5380859375, 375.0094299316406, -7554.62548828125))
        elseif _G.SelectIsland == "Haunted Castle" then
            toTarget(CFrame.new(-9515.3720703125, 164.00624084473, 5786.0610351562))
        elseif _G.SelectIsland == "Ice Cream Island" then
            toTarget(CFrame.new(-902.56817626953, 79.93204498291, -10988.84765625))
        elseif _G.SelectIsland == "Peanut Island" then
            toTarget(CFrame.new(-2062.7475585938, 50.473892211914, -10232.568359375))
        elseif _G.SelectIsland == "Cake Island" then
            toTarget(CFrame.new(-1884.7747802734375, 19.327526092529297, -11666.8974609375))
        elseif _G.SelectIsland == "Cocoa Island" then
            toTarget(CFrame.new(87.94276428222656, 73.55451202392578, -12319.46484375))
        elseif _G.SelectIsland == "Candy Island" then
            toTarget(CFrame.new(-1014.4241943359375, 149.11068725585938, -14555.962890625))
        elseif _G.SelectIsland == "Tiki Outpost" then
            toTarget(CFrame.new(-16542.447265625, 55.68632888793945, 1044.41650390625))
        end
    until not _G.TeleportIsland
    end)

  spawn(function()
    while task.wait() do
        if _G.AutoStoreFruit then
            pcall(function()
                if _G.AutoStoreFruit then
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Bomb Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Bomb Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Bomb-Bomb",game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Bomb Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Spike Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Spike Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Spike-Spike",game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Spike Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Chop Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Chop Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Chop-Chop",game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Chop Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Spring Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Spring Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Spring-Spring",game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Spring Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Rocket Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Rocket Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Rocket-Rocket",game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Rocket Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Smoke Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Smoke Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Smoke-Smoke",game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Smoke Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Spin Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Spin Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Spin-Spin",game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Spin Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Flame Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Flame Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Flame-Flame",game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Flame Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Falcon Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Falcon Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Bird-Bird: Falcon",game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Bird-Bird: Falcon"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Ice Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Ice Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Ice-Ice",game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Ice Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Sand Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Sand Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Sand-Sand",game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Sand Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dark Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dark Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Dark-Dark",game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dark Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Ghost Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Ghost Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Ghost-Ghost",game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Ghost Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Diamond Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Diamond Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Diamond-Diamond",game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Diamond Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Light Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Light Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Light-Light",game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Light Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Love Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Love Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Love-Love",game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Love Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Rubber Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Rubber Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Rubber-Rubber",game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Rubber Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Barrier Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Barrier Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Barrier-Barrier",game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Barrier Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Magma Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Magma Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Magma-Magma",game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Magma Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Portal Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Portal Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Portal-Portal",game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Portal Fruit"))
                    end

                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Quake Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Quake Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Quake-Quake",game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Quake Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Buddha Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Buddha Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Human-Human: Buddha",game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Human-Human: Buddha"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Spider Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Spider Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Spider-Spider",game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Spider Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Bird: Phoenix Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Bird: Phoenix Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Bird-Bird: Phoenix",game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Bird-Bird: Phoenix"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Rumble Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Rumble Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Rumble-Rumble",game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Rumble Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Pain Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Pain Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Pain-Pain",game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Pain Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Gravity Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Gravity Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Gravity-Gravity",game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Gravity Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dough Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dough Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Dough-Dough",game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dough Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Shadow Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Shadow Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Shadow-Shadow",game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Shadow Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Venom Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Venom Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Venom-Venom",game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Venom Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Control Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Control Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Control-Control",game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Control Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Spirit Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Spirit Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Spirit-Spirit",game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Spirit Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dragon Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dragon Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Dragon-Dragon",game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dragon Fruit"))
                    end                        if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Leopard Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Leopard Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Leopard-Leopard",game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Leopard Fruit"))
                    end                        if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Kitsune Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Kitsune Fruit") then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Kitsune-Kitsune",game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Kitsune Fruit"))
                    end                            if game:GetService("Players").LocalPlayer.Character:FindFirstChild("T-Rex Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("T-Rex Fruit") then
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","T-Rex-T-Rex",game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("T-Rex Fruit"))
                    end                                if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Mammoth Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Mammoth Fruit") then
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Mammoth-Mammoth",game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Mammoth Fruit"))
                                end                                if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Sound Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Sound Fruit") then
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Sound-Sound",game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Sound Fruit"))
                    end
                end
            end)
        end
        wait(0.3)
    end
    end)



    local rdr = Tab.main:AddToggle({
      Name = "auto random fruit",
      Description = "",
      Default = false
    })
    rdr:Callback(function(Value)
      _G.atrd = Value
      while _G.atrd do
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Cousin","Buy")
      end
    end)
    

    local tttw = Tab.main:AddToggle({
      Name = "tween to fruit",
      Description = "",
      Default = false
    })
    tttw:Callback(function(Value)
      _G.Tweenfruit = Value
    end)
    spawn(function()
      while wait(.1) do
          if _G.Tweenfruit then
              for i,v in pairs(game.Workspace:GetChildren()) do
                  if string.find(v.Name, "Fruit") then
                      Tween(v.Handle.CFrame)
                  end
              end
          end
  end
  end)
  function isnil(thing)
    return (thing == nil)
    end
    local function round(n)
    return math.floor(tonumber(n) + 0.5)
    end
    Number = math.random(1, 1000000)
    function UpdatePlayerChams()
    for i,v in pairs(game:GetService'Players':GetChildren()) do
        pcall(function()
            if not isnil(v.Character) then
                if ESPPlayer then
                    if not isnil(v.Character.Head) and not v.Character.Head:FindFirstChild('NameEsp'..Number) then
                        local bill = Instance.new('BillboardGui',v.Character.Head)
                        bill.Name = 'NameEsp'..Number
                        bill.ExtentsOffset = Vector3.new(0, 1, 0)
                        bill.Size = UDim2.new(1,200,1,30)
                        bill.Adornee = v.Character.Head
                        bill.AlwaysOnTop = true
                        local name = Instance.new('TextLabel',bill)
                        name.Font = Enum.Font.GothamSemibold
                        name.FontSize = "Size10"
                        name.TextWrapped = true
                        name.Text = (v.Name ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Character.Head.Position).Magnitude/3) ..' Distance')
                        name.Size = UDim2.new(1,0,1,0)
                        name.TextYAlignment = 'Top'
                        name.BackgroundTransparency = 1
                        name.TextStrokeTransparency = 0.5
                        if v.Team == game.Players.LocalPlayer.Team then
                            name.TextColor3 = Color3.new(0,0,254)
                        else
                            name.TextColor3 = Color3.new(255,0,0)
                        end
                    else
                        v.Character.Head['NameEsp'..Number].TextLabel.Text = (v.Name ..' | '.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Character.Head.Position).Magnitude/3) ..' Distance\nHealth : ' .. round(v.Character.Humanoid.Health*100/v.Character.Humanoid.MaxHealth) .. '%')
                    end
                else
                    if v.Character.Head:FindFirstChild('NameEsp'..Number) then
                        v.Character.Head:FindFirstChild('NameEsp'..Number):Destroy()
                    end
                end
            end
        end)
    end
    end
  local esf = Tab.main:AddToggle({
    Name = "esp flower",
    Description = "",
    Default = false
  })
  esf:Callback(function(Value)
    FlowerESP  = Value
  end)

  local esff = Tab.main:AddToggle({
    Name = "esp player",
    Description = "",
    Default = false
  })
  esff:Callback(function(Value)
    ESPPlayer  = Value
  end)

local tta = Tab.main:AddToggle({
  Name = "auto buy chip",
  Description = "",
  Default = false
})
tta:Callback(function(Value)
  _G.Auto_Buy_Chips_Dungeon = Value
end)

spawn(function()
  while wait() do
  if _G.Auto_Buy_Chips_Dungeon then
    pcall(function()
      local args = {
        [1] = "RaidsNpc",
        [2] = "Select",
        [3] = SelectChip
      }
      game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
    end)
      end
  end
end)
local tta = Tab.main:AddToggle({
  Name = "auto start dungeon",
  Description = "",
  Default = false
})
tta:Callback(function(Value)
  _G.Auto_StartRaid = Value
end)
spawn(function()
  while wait(.1) do
      pcall(function()
          if _G.Auto_StartRaid then
              if game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Timer.Visible == false then
                  if not game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1") and game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Special Microchip") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Special Microchip") then
                      if Second_Sea then
                          fireclickdetector(game:GetService("Workspace").Map.CircleIsland.RaidSummon2.Button.Main.ClickDetector)
                      elseif Third_Sea then
                          fireclickdetector(game:GetService("Workspace").Map["Boat Castle"].RaidSummon2.Button.Main.ClickDetector)
                      end
                  end
              end
          end
      end)
  end
end)

local tta = Tab.main:AddToggle({
  Name = "kill aura",
  Description = "",
  Default = false
})
tta:Callback(function(Value)
  KillAura = Value
end)
spawn(function()
  while wait() do
      if KillAura then
          pcall(function()
              for i,v in pairs(game.Workspace.Enemies:GetDescendants()) do
                  if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                      repeat task.wait()
                          sethiddenproperty(game:GetService('Players').LocalPlayer,"SimulationRadius",math.huge)
                          v.Humanoid.Health = 0
                          v.HumanoidRootPart.CanCollide = false
                      until not KillAura or not v.Parent or v.Humanoid.Health <= 0
                  end
              end
          end)
      end
  end
end)

local tta = Tab.main:AddToggle({
  Name = "auto next island",
  Description = "",
  Default = false
})
tta:Callback(function(Value)
  AutoNextIsland = Value
end)
spawn(function()
  while task.wait() do
      if AutoNextIsland then
          pcall(function()
              if game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Timer.Visible == true then
                  if game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 5") then
                      Tween(game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 5").CFrame * CFrame.new(0,70,100))
                  elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 4") then
                      Tween(game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 4").CFrame * CFrame.new(0,70,100))
                  elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 3") then
                      Tween(game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 3").CFrame * CFrame.new(0,70,100))
                  elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 2") then
                      Tween(game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 2").CFrame * CFrame.new(0,70,100))
                  elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1") then
                      Tween(game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1").CFrame * CFrame.new(0,70,100))
                  end
              end
          end)
      end
  end
end)

local tta = Tab.main:AddToggle({
  Name = "auto get fruit low money",
  Description = "",
  Default = false
})
tta:Callback(function(Value)
  _G.Autofruit = Value
end)
spawn(function()
  while wait(.1) do
      pcall(function()
   if _G.Autofruit then
       
local args = {
  [1] = "LoadFruit",
  [2] = "Rocket-Rocket"
}

game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))


local args = {
  [1] = "LoadFruit",
  [2] = "Spin-Spin"
}

game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))


local args = {
  [1] = "LoadFruit",
  [2] = "Chop-Chop"
}

game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))





local args = {
  [1] = "LoadFruit",
  [2] = "Spring-Spring"
}

game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))


local args = {
  [1] = "LoadFruit",
  [2] = "Bomb-Bomb"
}

game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))


local args = {
  [1] = "LoadFruit",
  [2] = "Smoke-Smoke"
}

game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))


local args = {
  [1] = "LoadFruit",
  [2] = "Spike-Spike"
}

game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))


local args = {
  [1] = "LoadFruit",
  [2] = "Flame-Flame"
}

game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))


local args = {
  [1] = "LoadFruit",
  [2] = "Falcon-Falcon"
}

game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))


local args = {
  [1] = "LoadFruit",
  [2] = "Ice-Ice"
}

game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))


local args = {
  [1] = "LoadFruit",
  [2] = "Sand-Sand"
}

game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))


local args = {
  [1] = "LoadFruit",
  [2] = "Dark-Dark"
}

game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))


local args = {
  [1] = "LoadFruit",
  [2] = "Ghost-Ghost"
}

game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))


local args = {
  [1] = "LoadFruit",
  [2] = "Diamond-Diamond"
}

game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))


local args = {
  [1] = "LoadFruit",
  [2] = "Light-Light"
}

game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))


local args = {
  [1] = "LoadFruit",
  [2] = "Rubber-Rubber"
}

game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))


local args = {
  [1] = "LoadFruit",
  [2] = "Barrier-Barrier"
}

game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
end
end)
end
end)

local tapgs = Tab.main:AddButton({
  Name = "tp to raid lab",
  Description = ""
})
tapgs:Callback(function()
if Second_Sea then
  Tween2(CFrame.new(-6438.73535, 250.645355, -4501.50684))
elseif Third_Sea then
   Tween2(CFrame.new(-5017.40869, 314.844055, -2823.0127, -0.925743818, 4.48217499e-08, -0.378151238, 4.55503146e-09, 1, 1.07377559e-07, 0.378151238, 9.7681621e-08, -0.925743818))
end
  end)

  local tta = Tab.main:AddToggle({
    Name = "auto awk fruit",
    Description = "",
    Default = false
  })
  tta:Callback(function(Value)
    AutoAwakenAbilities = Value
  end)
spawn(function()
  while task.wait() do
      if AutoAwakenAbilities then
          pcall(function()
              game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Awakener","Awaken")
          end)
      end
  end
end)

local tta = Tab.main:AddToggle({
  Name = "auto law",
  Description = "",
  Default = false
})
tta:Callback(function(Value)
  Auto_Law = Value
end)
spawn(function()
  pcall(function()
      while wait() do
          if Auto_Law then
              if not game:GetService("Players").LocalPlayer.Character:FindFirstChild("Microchip") and not game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Microchip") and not game:GetService("Workspace").Enemies:FindFirstChild("Order") and not game:GetService("ReplicatedStorage"):FindFirstChild("Order") then
                  wait(0.3)
                  game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","Microchip","1")
                  game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","Microchip","2")
              end
          end
      end
  end)
end)

if First_Sea then
    tableBoss = {"The Gorilla King","Bobby","Yeti","Mob Leader","Vice Admiral","Warden","Chief Warden","Swan","Magma Admiral","Fishman Lord","Wysper","Thunder God","Cyborg","Saber Expert"}
elseif Second_Sea then
    tableBoss = {"Diamond","Jeremy","Fajita","Don Swan","Smoke Admiral","Cursed Captain","Darkbeard","Order","Awakened Ice Admiral","Tide Keeper"}
elseif Third_Sea then
    tableBoss = {"Stone","Island Empress","Kilo Admiral","Captain Elephant","Beautiful Pirate","rip_indra True Form","Longma","Soul Reaper","Cake Queen"}
end

spawn(function()
  pcall(function()
      while wait(0.4) do
          if Auto_Law then
              if not game:GetService("Workspace").Enemies:FindFirstChild("Order") and not game:GetService("ReplicatedStorage"):FindFirstChild("Order") then
                  if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Microchip") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Microchip") then
                      fireclickdetector(game:GetService("Workspace").Map.CircleIsland.RaidSummon.Button..ClickDetector)
                  end
              end
              if game:GetService("ReplicatedStorage"):FindFirstChild("Order") or game:GetService("Workspace").Enemies:FindFirstChild("Order") then
                  if game:GetService("Workspace").Enemies:FindFirstChild("Order") then
                      for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                          if v.Name == "Order" then
                              repeat wait(_G.Fast_Delay)
                                Click()
                                  AutoHaki()
                                  EquipTool(SelectWeapon)
                                  Tween(v.HumanoidRootPart.CFrame * CFrame.new(15,25,-15))
                                  v.HumanoidRootPart.CanCollide = false
                                  v.HumanoidRootPart.Size = Vector3.new(120, 120, 120)
                              until not v.Parent or v.Humanoid.Health <= 0 or Auto_Law == false
                          end
                      end
                  elseif game:GetService("ReplicatedStorage"):FindFirstChild("Order") then
                      Tween(CFrame.new(-6217.2021484375, 28.047645568848, -5053.1357421875))
                  end
              end
          end
      end
  end)
end)

local BoneCFrame = CFrame.new(-9515.75, 174.8521728515625, 6079.40625)
local BoneCFrame2 = CFrame.new(-9359.453125, 141.32679748535156, 5446.81982421875)

spawn(function()
    while wait() do
        if _G.AutoBone and not _G.ACQ then
            pcall(function()
                local player = game:GetService("Players").LocalPlayer
                local humanoidRootPart = player.Character and player.Character:FindFirstChild("HumanoidRootPart")

                if humanoidRootPart then
                    if BypassTP then
                        local distanceToBone2 = (humanoidRootPart.Position - BoneCFrame2.Position).Magnitude
                        local distanceToBone = (humanoidRootPart.Position - BoneCFrame.Position).Magnitude

                        if distanceToBone2 > 2500 then
                            BTP(BoneCFrame2)
                        elseif distanceToBone < 2500 then
                            Tween(BoneCFrame)
                        else
                            Tween(BoneCFrame)
                        end
                    else Tween(BoneCFrame)
                    end

                    local enemies = game:GetService("Workspace").Enemies
                    if enemies:FindFirstChild("Reborn Skeleton") or enemies:FindFirstChild("Living Zombie") or 
                        enemies:FindFirstChild("Demonic Soul") or enemies:FindFirstChild("Posessed Mummy") then
                        
                        for _, v in pairs(enemies:GetChildren()) do
                            if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
                                if v.Name == "Reborn Skeleton" or v.Name == "Living Zombie" or v.Name == "Demonic Soul" or v.Name == "Posessed Mummy" then
                                repeat
                                        wait(_G.Fast_Delay)
                                        Click()
                                        AutoHaki()
                                        bringmob = true
                                        EquipTool(SelectWeapon)
                                        Tween(v.HumanoidRootPart.CFrame * CFrame.new(15,25,-15))
                                        v.HumanoidRootPart.Size = Vector3.new(1, 1, 1)
                                        v.HumanoidRootPart.Transparency = 1
                                        v.Humanoid.JumpPower = 0
                                        v.Humanoid.WalkSpeed = 0
                                        v.HumanoidRootPart.CanCollide = false
                                        FarmPos = v.HumanoidRootPart.CFrame
                                        MonFarm = v.Name
                                until not _G.AutoBone or v.Humanoid.Health <= 0
                            else Tween(BoneCFrame2)
                                end
                            end
                         end
                    end
                end
            end)
          elseif _G.AutoBone and _G.ACQ then
            pcall(function()
              local QuestTitle = game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text
              if not string.find(QuestTitle, "Demonic Soul") then
                  game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
              end
              if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
                  if BypassTP then
                     if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - BoneCFrame2.Position).Magnitude > 2500 then
                     BTP(BoneCFrame2)
                     elseif (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - BoneCFrame.Position).Magnitude < 2500 then
                     Tween(BoneCFrame)
                     end
                           else
                       Tween(BoneCFrame)
                       end
              if (BoneCFrame.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3 then    
                  game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest","HauntedQuest2",1)
                  end
              elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
                  if game:GetService("Workspace").Enemies:FindFirstChild("Reborn Skeleton") or game:GetService("Workspace").Enemies:FindFirstChild("Living Zombie") or game:GetService("Workspace").Enemies:FindFirstChild("Demonic Soul") or game:GetService("Workspace").Enemies:FindFirstChild("Posessed Mummy") then
                      for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                          if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
                              if v.Name == "Reborn Skeleton" or v.Name == "Living Zombie" or v.Name == "Demonic Soul" or v.Name == "Posessed Mummy" then
                                  if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Demonic Soul") then
                                      repeat wait(_G.Fast_Delay)
                                        Click()
                                          AutoHaki()
                                          bringmob = true
                                          EquipTool(SelectWeapon)
                                          Tween(v.HumanoidRootPart.CFrame * CFrame.new(15,25,-15))
                                          v.HumanoidRootPart.Size = Vector3.new(1, 1, 1)
                                          v.HumanoidRootPart.Transparency = 1
                                          v.Humanoid.JumpPower = 0
                                          v.Humanoid.WalkSpeed = 0
                                          v.HumanoidRootPart.CanCollide = false
                                          FarmPos = v.HumanoidRootPart.CFrame
                                          MonFarm = v.Name
                                      until not _G.AutoBone or v.Humanoid.Health <= 0 or not v.Parent or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false
                                  else
                                      game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
                                      bringmob = false
                                  end
                              end
                          end
                      end
                  else
                  end
              end
          end)
          end
    end
end)


local drc = Tab.main:AddButton({
    Name = "tp to race door",
    Description = ""
  })
drc:Callback(function()
Game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(28286.35546875, 14895.3017578125, 102.62469482421875) 
wait(0.1)
   Game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(28286.35546875, 14895.3017578125, 102.62469482421875) 
   wait(0.1)
      Game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(28286.35546875, 14895.3017578125, 102.62469482421875) 
      wait(0.1)
         Game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(28286.35546875, 14895.3017578125, 102.62469482421875) 
    wait(0.5)
            if game:GetService("Players").LocalPlayer.Data.Race.Value == "Human" then
            Tween2(CFrame.new(29221.822265625, 14890.9755859375, -205.99114990234375))
            elseif game:GetService("Players").LocalPlayer.Data.Race.Value == "Skypiea" then
            Tween2(CFrame.new(28960.158203125, 14919.6240234375, 235.03948974609375))
            elseif game:GetService("Players").LocalPlayer.Data.Race.Value == "Fishman" then
            Tween2(CFrame.new(28231.17578125, 14890.9755859375, -211.64173889160156))
            elseif game:GetService("Players").LocalPlayer.Data.Race.Value == "Cyborg" then
            Tween2(CFrame.new(28502.681640625, 14895.9755859375, -423.7279357910156))
            elseif game:GetService("Players").LocalPlayer.Data.Race.Value == "Ghoul" then
            Tween2(CFrame.new(28674.244140625, 14890.6767578125, 445.4310607910156))
            elseif game:GetService("Players").LocalPlayer.Data.Race.Value == "Mink" then
            Tween2(CFrame.new(29012.341796875, 14890.9755859375, -380.1492614746094))
            end
        end)


local rdb = Tab.main:AddToggle({
  Name = "random bone",
  Default = false
})  
   rdb:Callback(function(Value)
   _G.randombone = Value
  end)             
                spawn(function()
                  while wait(0.1) do
                  if _G.randombone then
                  local args = {
                   [1] = "Bones",
                   [2] = "Buy",
                   [3] = 1,
                   [4] = 1
                  }
                  game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                  end
                  end
                  end)

                  local rfs = Tab.main:AddButton({
                    Name = "Refund stats",
                    Description = ""
                  })
rfs:Callback(function()
  game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","Refund","1")
  game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","Refund","2")
end)

local rrs = Tab.main:AddButton({
  Name = "reroll race",
  Description = ""
})
rrs:Callback(function()
                  game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","Reroll","1")
                  game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","Reroll","2")
end)
local ctp = Tab.main:AddButton({
  Name = "pirates team",
  Description = ""
})
ctp:Callback(function()
                  game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetTeam","Pirates") 
end)
local ctm = Tab.main:AddButton({
  Name = "marines team",
  Description = ""
})
ctm:Callback(function()
                  game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetTeam","Marines") 
end)
local chc = Tab.main:AddButton({
  Name = "change haki color",
  Description = ""
})
chc:Callback(function()
                  game.Players.localPlayer.PlayerGui.Main.Colors.Visible = true
end)
                  local bugra = Tab.main:AddButton({
                    Name = "buy upgrade race trial",
                    Description = ""
                  })
bugra:Callback(function()
                  game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer('UpgradeRace','Buy')
end)
local bruh = Tab.main:AddButton({
  Name = "refresh player",
  Description = ""
})

local slply = Tab.main:AddDropdown({
  Name = "Players List",
  Description = "",
  Options = {"", "", ""},
  Default = "",
  Callback = function(Value)
    _G.Plysl = Value
  end
})
slply:Set(game.Players:GetPlayers())
slply:Remove(game.Players.LocalPlayer.Name)

bruh:Callback(function()
  slply:Set(game.Players:GetPlayers())
  slply:Remove(game.Players.LocalPlayer.Name)
end)

local spec = Tab.main:AddToggle({
    Name = "Spectate player",
    Default = false
  })  

spec:Callback(function(Value)
    SpectatePlys = Value
    if SpectatePlys then
        repeat wait(.1)
            game:GetService("Workspace").Camera.CameraSubject = game:GetService("Players"):FindFirstChild(_G.Plysl).Character.Humanoid
        until SpectatePlys == false 
        game:GetService("Workspace").Camera.CameraSubject = game:GetService("Players").LocalPlayer.Character.Humanoid
    end
end)

local lvp = Tab.main:AddButton({
  Name = "lever pull",
  Description = ""
})

lvp:Callback(function()
  Game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(28286.35546875, 14895.3017578125, 102.62469482421875) 
wait(0.1)
   Game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(28286.35546875, 14895.3017578125, 102.62469482421875) 
   wait(0.1)
      Game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(28286.35546875, 14895.3017578125, 102.62469482421875) 
      wait(0.1)
         Game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(28286.35546875, 14895.3017578125, 102.62469482421875) 
    wait(0.5)
    Tween2(CFrame.new(28575.181640625, 14936.6279296875, 72.31636810302734))
end)
local aco = Tab.main:AddButton({
  Name = "ancient one",
  Description = ""
})

aco:Callback(function()
  Game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(28286.35546875, 14895.3017578125, 102.62469482421875) 
  wait(0.1)
     Game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(28286.35546875, 14895.3017578125, 102.62469482421875) 
     wait(0.1)
        Game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(28286.35546875, 14895.3017578125, 102.62469482421875) 
        wait(0.1)
           Game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(28286.35546875, 14895.3017578125, 102.62469482421875) 
      wait(0.5)
      Tween2(CFrame.new(28981.552734375, 14888.4267578125, -120.245849609375))
end)


local tpo = Tab.main:AddButton({
  Name = "temple of time",
  Description = ""
})

tpo:Callback(function()
  game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(28286.35546875, 14895.3017578125, 102.62469482421875)
end)

if First_Sea then
  MaterialList = {
    "Scrap Metal","Leather","Angel Wings","Magma Ore","Fish Tail"
  } elseif Second_Sea then
  MaterialList = {
    "Scrap Metal","Leather","Radioactive Material","Mystic Droplet","Magma Ore","Vampire Fang"
  } elseif Third_Sea then
  MaterialList = {
    "Scrap Metal","Leather","Demonic Wisp","Conjured Cocoa","Dragon Scale","Gunpowder","Fish Tail","Mini Tusk"
  }
  end

  local fmr = Tab.main:AddDropdown({
    Name = "material list",
    Description = "",
    Options = MaterialList,
    Default = "",
    Callback = function(Value)
      SelectMaterial = Value
    end
  })

  local eooi = Tab.main:AddToggle({
    Name = "auto material",
    Description = "",
    Default = false
  })
  eooi:Callback(function(Value)
    _G.AutoMaterial = Value
  end)


spawn(function()
  while task.wait() do
  if _G.AutoMaterial then
  pcall(function()
    MaterialMon(SelectMaterial)
 
    if BypassTP then
      if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - MPos.Position).Magnitude > 3500 then
      BTP(MPos)
      elseif (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - MPos.Position).Magnitude < 3500 then
      Tween(MPos)
      end
      else
        Tween(MPos)
      end
    if game:GetService("Workspace").Enemies:FindFirstChild(MMon) then
    for i,v in pairs (game.Workspace.Enemies:GetChildren()) do
    if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
    if v.Name == MMon then
      repeat wait(_G.Fast_Delay)
          Click()
    AutoHaki()
    bringmob = true
    EquipTool(SelectWeapon)
    Tween(v.HumanoidRootPart.CFrame * CFrame.new(15,25,-15))
    v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
    v.HumanoidRootPart.Transparency = 1
    v.Humanoid.JumpPower = 0
    v.Humanoid.WalkSpeed = 0
    v.HumanoidRootPart.CanCollide = false
    FarmPos = v.HumanoidRootPart.CFrame
    MonFarm = v.Name
    --Click
    until not _G.AutoMaterial or not v.Parent or v.Humanoid.Health <= 0
    bringmob = false
  end
    end
    end
    else
      for i,v in pairs(game:GetService("Workspace")["_WorldOrigin"].EnemySpawns:GetChildren()) do
    if string.find(v.Name, Mon) then
    if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v.Position).Magnitude >= 10 then
    Tween(v.CFrame * CFrame.new(posX,posY,posZ))

    end
    end
    end
    end
    end)
  end
  end
end)

local ela = Tab.main:AddToggle({
  Name = "auto elite",
  Description = "",
  Default = false
})
ela:Callback(function(Value)
  _G.AutoElite = Value
end)

spawn(function()
  while task.wait() do
      if _G.AutoElite then
          pcall(function()
              if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
                  if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text,"Diablo") or string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text,"Deandre") or string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text,"Urban") then
                      if game:GetService("Workspace").Enemies:FindFirstChild("Diablo") or game:GetService("Workspace").Enemies:FindFirstChild("Deandre") or game:GetService("Workspace").Enemies:FindFirstChild("Urban") then
                          for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                              if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                  if v.Name == "Diablo" or v.Name == "Deandre" or v.Name == "Urban" then
                                   repeat wait(_G.Fast_Delay)
                                       Click()
                                          EquipTool(SelectWeapon)
                                          AutoHaki()
                                          Tween(v.HumanoidRootPart.CFrame * CFrame.new(15,25,-15))
                                          MonsterPosition = v.HumanoidRootPart.CFrame
                                          v.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame
                                          v.Humanoid.JumpPower = 0
                                          v.Humanoid.WalkSpeed = 0
                                          v.HumanoidRootPart.CanCollide = false
                                          v.HumanoidRootPart.Size = Vector3.new(1, 1, 1)
                                      until _G.AutoElite == false or v.Humanoid.Health <= 0 or not v.Parent
                                  end
                              end
                          end
                      else
                        
                          if game:GetService("ReplicatedStorage"):FindFirstChild("Diablo") then
                           toTarget(game:GetService("ReplicatedStorage"):FindFirstChild("Diablo").HumanoidRootPart.CFrame * CFrame.new(15,25,15))
                          elseif game:GetService("ReplicatedStorage"):FindFirstChild("Deandre") then
                           toTarget(game:GetService("ReplicatedStorage"):FindFirstChild("Deandre").HumanoidRootPart.CFrame * CFrame.new(posX,posY,posZ))
                          elseif game:GetService("ReplicatedStorage"):FindFirstChild("Urban") then
                           toTarget(game:GetService("ReplicatedStorage"):FindFirstChild("Urban").HumanoidRootPart.CFrame * CFrame.new(posX,posY,posZ))
                          end

                      end
                
                  end
              else
                  game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EliteHunter")
              end
          end)
      end
  end
end)

local ias = Tab.main:AddToggle({
  Name = "infinite ken range",
  Description = "",
  Default = false
})
ias:Callback(function(Value)
  getgenv().InfiniteObRange = value
end)
spawn(function()
local VS = game:GetService("Players").LocalPlayer.VisionRadius.Value
while getgenv().InfiniteObRange do
    wait()
    local player = game:GetService("Players").LocalPlayer
    local char = player.Character
    local VisionRadius = player.VisionRadius
    if player then
        if char.Humanoid.Health <= 0 then 
            wait(5) 
        end
        VisionRadius.Value = math.huge
    elseif getgenv().InfiniteObRange == false and player then
        VisionRadius.Value = VS
    end
end
end)

local hlc = Tab.main:AddToggle({
  Name = "auto hallow scythe",
  Description = "",
  Default = false
})
hlc:Callback(function(Value)
  AutoHallowSycthe = Value
end)
spawn(function()
  while wait() do
      if AutoHallowSycthe then
          pcall(function()
              if game:GetService("Workspace").Enemies:FindFirstChild("Soul Reaper") then
                  for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                      if string.find(v.Name , "Soul Reaper") then
                          repeat wait(_G.Fast_Delay)
                              Click()
                              AutoHaki()
                              EquipTool(SelectWeapon)
                              Tween(v.HumanoidRootPart.CFrame * CFrame.new(15,25,-15))
                              v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                              v.HumanoidRootPart.Transparency = 1
                              sethiddenproperty(game.Players.LocalPlayer,"SimulationRadius",math.huge)
                              --Click
                          until v.Humanoid.Health <= 0 or AutoHallowSycthe == false
                      end
                  end
              elseif game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Hallow Essence") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Hallow Essence") then
                  repeat Tween(CFrame.new(-8932.322265625, 146.83154296875, 6062.55078125)) wait() until (CFrame.new(-8932.322265625, 146.83154296875, 6062.55078125).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 8                        
                  EquipTool("Hallow Essence")
              else
                  if game:GetService("ReplicatedStorage"):FindFirstChild("Soul Reaper") then
                      Tween(game:GetService("ReplicatedStorage"):FindFirstChild("Soul Reaper").HumanoidRootPart.CFrame * CFrame.new(2,20,2))
                  else
                  end
              end
          end)

      end
  end
end)


spawn(function()
  while wait(0.1) do
  if AutoHallowSycthe then
  local args = {
   [1] = "Bones",
   [2] = "Buy",
   [3] = 1,
   [4] = 1
  }
 
  game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
  end
  end
  end)


local Dbll = Tab.main:AddDropdown({
    Name = "Boss List",
    Description = "",
    Options = tableBoss,
    Default = "",
    Callback = function(Value)
        _G.SelectBoss = Value
    end
  })

  local Tobby = Tab.main:AddToggle({
    Name = "auto kill boss",
    Default = false
  })
Tobby:Callback(function()
    _G.AutoBoss = Value
end)

  spawn(function()
    while wait() do
        if _G.AutoBoss and BypassTP then
            pcall(function()
                if game:GetService("Workspace").Enemies:FindFirstChild(_G.SelectBoss) then
                    for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                        if v.Name == _G.SelectBoss then
                            if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                repeat wait(_G.Fast_Delay)
                                    Click()
                                    AutoHaki()
                                    bringmob = true
                                    EquipTool(SelectWeapon)
                                    Tween(v.HumanoidRootPart.CFrame * CFrame.new(15,25,-15))
                                    v.HumanoidRootPart.CanCollide = false
                                    v.Humanoid.JumpPower = 0
                                    v.Humanoid.WalkSpeed = 0
                                    v.HumanoidRootPart.Size = Vector3.new(1, 1, 1)                             
                                    sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
                                until not _G.AutoBoss or not v.Parent or v.Humanoid.Health <= 0
                                bringmob = false
                            end
                        end
                    end
                elseif game.ReplicatedStorage:FindFirstChild(_G.SelectBoss) then
                    if ((game.ReplicatedStorage:FindFirstChild(_G.SelectBoss).HumanoidRootPart.CFrame).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 1500 then
                        Tween(game.ReplicatedStorage:FindFirstChild(_G.SelectBoss).HumanoidRootPart.CFrame)
                    else
                        BTP(game.ReplicatedStorage:FindFirstChild(_G.SelectBoss).HumanoidRootPart.CFrame)
                    end
                end
            end)
        end
    end
end)

spawn(function()
    while wait() do
        if _G.AutoBoss and not BypassTP then
            pcall(function()
                if game:GetService("Workspace").Enemies:FindFirstChild(_G.SelectBoss) then
                    for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                        if v.Name == _G.SelectBoss then
                            if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                repeat wait(_G.Fast_Delay)
                                    Click()
                                    AutoHaki()
                                    bringmob = true
                                    EquipTool(SelectWeapon)
                                    Tween(v.HumanoidRootPart.CFrame * CFrame.new(15,25,-15))
                                    v.HumanoidRootPart.CanCollide = false
                                    v.Humanoid.WalkSpeed = 0
                                    v.HumanoidRootPart.Size = Vector3.new(80,80,80)                             
                                    Tween(v.HumanoidRootPart.CFrame * Pos)
                                    sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
                                until not _G.AutoBoss or not v.Parent or v.Humanoid.Health <= 0
                                bringmob = false
                            end
                        end
                    end
                else
                    if game:GetService("ReplicatedStorage"):FindFirstChild(_G.SelectBoss) then
                        Tween(game:GetService("ReplicatedStorage"):FindFirstChild(_G.SelectBoss).HumanoidRootPart.CFrame * CFrame.new(5,10,7))
                    end
                end
            end)
        end
    end
end)


  local atju = Tab.main:AddToggle({
    Name = "auto yama",
    Description = "",
    Default = false
  })
  atju:Callback(function(Value)
    _G.AutoYama = Value
  end)
  spawn(function()
    while wait() do
        if _G.AutoYama then
            if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EliteHunter","Progress") >= 30 then
                repeat wait(.1)
                    fireclickdetector(game:GetService("Workspace").Map.Waterfall.SealedKatana.Handle.ClickDetector)
                until game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Yama") or not _G.AutoYama
            end
        end
    end
end)

local atsh = Tab.main:AddToggle({
  Name = "auto tushita",
  Description = "",
  Default = false
})
atsh:Callback(function(Value)
  AutoTushita = Value
end)
spawn(function()
  while wait() do
              if AutoTushita then
                  if game:GetService("Workspace").Enemies:FindFirstChild("Longma") then
                      for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                          if v.Name == ("Longma" or v.Name == "Longma") and v.Humanoid.Health > 0 and v:IsA("Model") and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") then
                           repeat wait(_G.Fast_Delay)
                               Click()
                                  AutoHaki()
                                  if not game.Players.LocalPlayer.Character:FindFirstChild(SelectWeapon) then
                                      wait()
                                      EquipTool(SelectWeapon)
                                  end
                                  FarmPos = v.HumanoidRootPart.CFrame
                                    --Click
                                  v.HumanoidRootPart.Size = Vector3.new(60,60,60)
                                  v.Humanoid.JumpPower = 0
                                  v.Humanoid.WalkSpeed = 0
                                  v.HumanoidRootPart.CanCollide = false
                                  v.Humanoid:ChangeState(11)
                                  Tween(v.HumanoidRootPart.CFrame * Pos)
                              until not AutoTushita or not v.Parent or v.Humanoid.Health <= 0
                          end
                      end
                  else
                      Tween(CFrame.new(-10238.875976563, 389.7912902832, -9549.7939453125))
                  end
              end
          end
  end)

  local tta = Tab.main:AddToggle({
    Name = "auto holy torch",
    Description = "",
    Default = false
  })
  tta:Callback(function(Value)
    _G.Auto_Holy_Torch = Value
  end)

  spawn(function()
    while wait() do
        if _G.Auto_Holy_Torch then
            pcall(function()
                wait(1)
                repeat Tween(CFrame.new(-10752, 417, -9366)) wait() until not _G.Auto_Holy_Torch or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-10752, 417, -9366)).Magnitude <= 10
                wait(2)
                repeat Tween(CFrame.new(-11672, 334, -9474)) wait() until not _G.Auto_Holy_Torch or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-11672, 334, -9474)).Magnitude <= 10
                wait(2)
                repeat Tween(CFrame.new(-12132, 521, -10655)) wait() until not _G.Auto_Holy_Torch or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-12132, 521, -10655)).Magnitude <= 10
                wait(2)
                repeat Tween(CFrame.new(-13336, 486, -6985)) wait() until not _G.Auto_Holy_Torch or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-13336, 486, -6985)).Magnitude <= 10
                wait(2)
                repeat Tween(CFrame.new(-13489, 332, -7925)) wait() until not _G.Auto_Holy_Torch or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-13489, 332, -7925)).Magnitude <= 10
            end)
        end
    end
end)
local clsa = Tab.main:AddToggle({
  Name = "auto buy color haki",
  Description = "",
  Default = false
})
clsa:Callback(function(Value)
  _G.Auto_Buy_Enchancement = Value
end)

spawn(function()
  while wait() do
      if _G.Auto_Buy_Enchancement then
          local args = {
              [1] = "ColorsDealer",
              [2] = "2"
          }
          game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
      end 
  end
end)


local ttass = Tab.main:AddToggle({
  Name = "Tween to mirage island",
  Description = "",
  Default = false
})
ttass:Callback(function(Value)
  _G.AutoMysticIsland = Value
end)

spawn(function()
  pcall(function()
      while wait() do
          if _G.AutoMysticIsland then
              if game:GetService("Workspace").Map:FindFirstChild("MysticIsland") then
                  Tween(CFrame.new(game:GetService("Workspace").Map.MysticIsland.Center.Position.X,500,game:GetService("Workspace").Map.MysticIsland.Center.Position.Z))
              end
          end
      end
  end)
end)

local ttasssss = Tab.main:AddToggle({
  Name = "Tween to kitsune island",
  Description = "",
  Default = false
})
ttasssss:Callback(function(Value)
  _G.TweenToKitsune = Value
end)
spawn(function()
  local kitsuneIsland
  while not kitsuneIsland do
      kitsuneIsland = game:GetService("Workspace").Map:FindFirstChild("KitsuneIsland")
      wait(1)
  end
  while wait() do
      if _G.TweenToKitsune then
          local shrineActive = kitsuneIsland:FindFirstChild("ShrineActive")
          if shrineActive then
              for _, v in pairs(shrineActive:GetDescendants()) do
                  if v:IsA("BasePart") and v.Name:find("NeonShrinePart") then
                      Tween(v.CFrame)
                  end
              end
          end
      end
  end
end)

local ttasas = Tab.main:AddToggle({
  Name = "auto collect azure ember",
  Description = "",
  Default = false
})
ttasas:Callback(function(Value)
  _G.CollectAzure = Value
end)

spawn(function()
  while wait() do
      if _G.CollectAzure then
          pcall(function()
              if game:GetService("Workspace"):FindFirstChild("AttachedAzureEmber") then
                  Tween(game:GetService("Workspace"):WaitForChild("EmberTemplate"):FindFirstChild("Part").CFrame)
                  print("Azure")
              end
          end)
      end
  end
end)


local tpt = Tab.main:AddToggle({
  Name = "teleport to player",
  Default = false
})


tpt:Callback(function()
  _G.TeleportPly = Value
  pcall(function()
      if _G.TeleportPly then
          repeat toTarget(game:GetService("Players")[_G.SelectPly].Character.HumanoidRootPart.CFrame) wait() until _G.TeleportPly == false
      end
  end)
end)

local stpt = Tab.main:AddButton({
  Name = "stop tween",
  Description = ""
})
stpt:Callback(function()
toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
Tween(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
end)
if First_Sea then
  IslandList = {
                 "WindMill",
                 "Marine",
                 "Middle Town",
                 "Jungle",
                 "Pirate Village",
                 "Desert",
                 "Snow Island",
                 "MarineFord",
                 "Colosseum",
                 "Sky Island 1",
                 "Sky Island 2",
                 "Sky Island 3",
                 "Prison",
                 "Magma Village",
                 "Under Water Island",
                 "Fountain City",
                 "Shank Room",
                 "Mob Island",
 }
 
 elseif Second_Sea then
        IslandList = {
         "The Cafe",
         "Frist Spot",
         "Dark Area",
         "Flamingo Mansion",
         "Flamingo Room",
         "Green Zone",
         "Factory",
         "Colossuim",
         "Zombie Island",
         "Two Snow Mountain",
         "Punk Hazard",
         "Cursed Ship",
         "Ice Castle",
         "Forgotten Island",
         "Ussop Island",
         "Mini Sky Island",
        }
 
 elseif Third_Sea then
     IslandList = {
         "Mansion",
         "Port Town",
         "Great Tree",
         "Castle On The Sea",
         "MiniSky", 
         "Hydra Island",
         "Floating Turtle",
         "Haunted Castle",
         "Ice Cream Island",
         "Peanut Island",
         "Cake Island",
         "Cocoa Island",
         "Candy Island",
         "Tiki Outpost",
        }
     end
local slil = Tab.main:AddDropdown({
  Name = "select island",
  Description = "",
  Options = IslandList,
  Default = "",
  Callback = function(Value)
    _G.SelectIsland = Value
  end
})


local Remote_GetFruits = game.ReplicatedStorage:FindFirstChild("Remotes").CommF_:InvokeServer("GetFruits");
Table_DevilFruitSniper = {}
ShopDevilSell = {}
for i,v in next,Remote_GetFruits do
    table.insert(Table_DevilFruitSniper,v.Name)
    if v.OnSale then 
        table.insert(ShopDevilSell,v.Name)
    end
end

local slf = Tab.main:AddDropdown({
  Name = "select fruit",
  Description = "",
  Options = Table_DevilFruitSniper,
  Default = "",
  Callback = function(Value)
    _G.SelectFruit = Value
  end
})
local bfr = Tab.main:AddToggle({
  Name = "auto buy fruit snipe",
  Description = "",
  Default = false
})
bfr:Callback(function(Value)
  _G.AutoBuyFruitSniper = Value
end)
spawn(function()
  pcall(function()
      while wait(.1) do
          if _G.AutoBuyFruitSniper then
              game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("GetFruits")
              game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("PurchaseRawFruit",_G.SelectFruit,false)
          end 
      end
  end)
end)

local shoppinglistswor = {'Pole v2','Soul Cane','Bisento','Dual-Headed Blade','dual katana','pipe','cutlass','Bizarre Rifle','kabucha','cannon','refined flintlock','slingshot','triple katana','Black Cape','Swordsman Hat','Tomoe Ring','flintlock','musket','katana'}
local shoppinglist = {'geppo','buso','soru','ken','black leg','electro','fishman karate','dragon claw','superhuman','deathstep','dragontalon','sharkman karate','electric claw','godhuman','sanguine art'}

local bsl = Tab.main:AddDropdown({
  Name = "buy items",
  Description = "",
  Options = shoppinglistswor,
  Default = "",
  Callback = function(Value)
    _G.shopping = Value
if _G.shopping == "Pole v2" then
    wait(0.5)
    game.ReplicatedStorage.Remotes.CommF_:InvokeServer("ThunderGodTalk")
elseif _G.shopping == "Soul Cane" then
    wait(0.5)
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Soul Cane")
elseif _G.shopping == "Bisento" then
    wait(0.5)
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Bisento")
elseif _G.shopping == "Dual-Headed Blade" then
    wait(0.5)
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Dual-Headed Blade")
elseif _G.shopping == "pipe" then
    wait(0.5)
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Pipe")
elseif _G.shopping == "triple katana" then
    wait(0.5)
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Triple Katana")
elseif _G.shopping == "dual katana" then
    wait(0.5)
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Duel Katana")
elseif _G.shopping == "katana" then
    wait(0.5)
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Katana")
elseif _G.shopping == "cutlass" then
    wait(0.5)
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Cutlass")
elseif _G.shopping == "Bizarre Rifle" then
    wait(0.5)
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Ectoplasm", "Ectoplasm", "1")
elseif _G.shopping == "kabucha" then
    wait(0.5)
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","Slingshot","1")
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","Slingshot","2")
elseif _G.shopping == "cannon" then
    wait(0.5)
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Cannon")
elseif _G.shopping == "refined flintlock" then
    wait(0.5)
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Refined Flintlock")
elseif _G.shopping == "flintlock" then
    wait(0.5)
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Flintlock")
elseif _G.shopping == "musket" then
    wait(0.5)
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Musket")
elseif _G.shopping == "slingshot" then
    wait(0.5)
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Slingshot")
elseif _G.shopping == "Tomoe Ring" then
    wait(0.5)
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Tomoe Ring")
elseif _G.shopping == "Swordsman Hat" then
    wait(0.5)
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Swordsman Hat")
elseif _G.shopping == "Black Cape" then
    wait(0.5)
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Black Cape")
end
  end
})


local bml = Tab.main:AddDropdown({
  Name = "buy melee",
  Description = "",
  Options = shoppinglist,
  Default = "",
  Callback = function(Value)
    _G.shopping = Value
    if _G.shopping == "geppo" then
          wait(0.5)
          game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyHaki","Geppo")
      elseif _G.shopping == "buso" then
          wait(0.5)
      game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyHaki","Buso")
    elseif _G.shopping == "soru" then
          wait(0.5)
      game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyHaki","Soru")
      elseif _G.shopping == "ken" then
          wait(0.5)
          game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("KenTalk","Buy")
      elseif _G.shopping == "black leg" then
          wait(0.5)
      game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyBlackLeg")
      elseif _G.shopping == "electro" then
          wait(0.5)
      game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectro")
      elseif _G.shopping == "fishman karate" then
          wait(0.5)
          game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyFishmanKarate")
      elseif _G.shopping == "dragon claw" then
          wait(0.5)
      game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","DragonClaw","1")
          game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","DragonClaw","2")
    elseif _G.shopping == "superhuman" then
          wait(0.5)
      game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySuperhuman")
      elseif _G.shopping == "deathstep" then
          wait(0.5)
      game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDeathStep")
      elseif _G.shopping == "dragontalon" then
          wait(0.5)
      game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDragonTalon")
      elseif _G.shopping == "sharkman karate" then
          wait(0.5)
          game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate",true)
          game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate")
    elseif _G.shopping == "electric claw" then
          wait(0.5)
      game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw")
      elseif _G.shopping == "godhuman" then
          wait(0.5)
      game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyGodhuman")
      elseif _G.shopping == "sanguine art" then
          wait(0.5)
          game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySanguineArt", true)
          game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySanguineArt")
    end
  end
})

local rjsaa = Tab.main:AddToggle({
  Name = "auto rejoin",
  Description = "",
  Default = true
})
rjsaa:Callback(function(Value)
  _G.AutoRejoin = Value
end)

spawn(function()
	while wait() do
		if _G.AutoRejoin then
				getgenv().rejoin = game:GetService("CoreGui").RobloxPromptGui.promptOverlay.ChildAdded:Connect(function(child)
					if child.Name == 'ErrorPrompt' and child:FindFirstChild('MessageArea') and child.MessageArea:FindFirstChild("ErrorFrame") then
						game:GetService("TeleportService"):Teleport(game.PlaceId)
					end
				 end)
			end
		end
	end)



  local sit = Tab.main:AddButton({
    Name = "show items",
    Description = ""
  })

sit:Callback(function()
  loadstring(game:HttpGet("https://raw.githubusercontent.com/palacetamon098/fakelvl/main/showitems.lua"))()
end)


            --[[local atdbr = Tab.main:AddToggle({
              Name = "Fully Mirage island",
              Description = "buy a boat and wait for mirage",
              Default = false
            })
            local xrag = {-42334,-52508.1 ,-58007.1,-56479.3,-56928.5,-57291}
            local yrag = 11
            local zrag = {4130.5,4395,7383,9115.2,5879.6,4502.5}
            local randomxr = math.random(1, #xrag)
            local randomzr = math.random(1, #zrag)
local function randomsrae()
        local xyzD = xrag[randomxr]
        local xyzG = zrag[randomzr]
    return CFrame.new(xrag, 11, zrag)
end

            atdbr:Callback(function(Value)
            _G.flcc = Value
            if _G.flcc then
                _G.fullymirage = true
                wait(10)
                AutoW = true
                wait(3)
                _G.AutoMysticIsland = true
                _G.AppleAutoDriveBoat = true
            end
            end)

            function two(gotoCFrame) --- Tween
                pcall(function()
                    game.Players.LocalPlayer.Character.Humanoid.Sit = false
                    game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false
                end)
                if (game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart.Position - gotoCFrame.Position).Magnitude <= 200 then
                    pcall(function() 
                        tweenz:Cancel()
                    end)
                    game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart.CFrame = gotoCFrame
                else
                    local tween_s = game:service"TweenService"
                    local info = TweenInfo.new((game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart.Position - gotoCFrame.Position).Magnitude/325, Enum.EasingStyle.Linear)
                     tween, err = pcall(function()
                        tweenz = tween_s:Create(game.Players.LocalPlayer.Character["HumanoidRootPart"], info, {CFrame = gotoCFrame})
                        tweenz:Play()
                    end)
                    if not tween then return err end
                end
                function _TweenCanCle()
                    tweenz:Cancel()
                end
            
          end

spawn(function()
  if  _G.fullymirage then
    buyb = Tween(CFrame.new(-16927.451171875, 9.0863618850708, 433.8642883300781))
    if (CFrame.new(-16927.451171875, 9.0863618850708, 433.8642883300781).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 10 then
wait(1)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-5411.22021, 778.609863, -2682.27759, 0.927179396, 0, 0.374617696, 0, 1, 0, -0.374617696, 0, 0.927179396)
wait(0)

local args = {
    [1] = "BuyBoat",
    [2] = "PirateBrigade"
}

game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))

two(CFrame.new(-42334, 11 , 4395))

wait(13)
for _,v in next, workspace.Boats.PirateBrigade:GetDescendants() do
    if v.Name:find("VehicleSeat") then
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.CFrame
     if game:GetService("Workspace").Map:FindFirstChild("MysticIsland") then
                           Tween(game:GetService("Workspace").Map:FindFirstChild("MysticIsland").HumanoidRootPart.CFrame * CFrame.new(0,500,-100))
   
    end
    end
end
end
end
 end)

 spawn(function()
    while wait() do
		pcall(function()
			if AutoW then
				game:service('VirtualInputManager'):SendKeyEvent(true, "W", false, game)
				wait(0.35)
				game:service('VirtualInputManager'):SendKeyEvent(false, "W", false, game)
				wait(1.5)
				game:service('VirtualInputManager'):SendKeyEvent(true, "S", false, game)
				wait(0.35)
				game:service('VirtualInputManager'):SendKeyEvent(false, "S", false, game)
				wait(1.5)
			end
		end)
    end
    end)
    spawn(function()
        pcall(function()
            while wait() do
                if _G.AutoMysticIsland then
                    if game:GetService("Workspace").Map:FindFirstChild("MysticIsland") then
                        Tween(CFrame.new(game:GetService("Workspace").Map.MysticIsland.Center.Position.X,500,game:GetService("Workspace").Map.MysticIsland.Center.Position.Z))
                    end
                end
            end
        end)
    end)

  spawn(function()
    pcall(function()
        while wait() do
            if _G.AppleAutoDriveBoat then
                if game:GetService("Workspace").Enemies:FindFirstChild("Shark") or game:GetService("Workspace").Enemies:FindFirstChild("Terrorshark") or game:GetService("Workspace").Enemies:FindFirstChild("Piranha") or game:GetService("Workspace").Enemies:FindFirstChild("Fish Crew Member") then
                    two(randomsrae())
                end
            end
        end
    end)
end)
--]]
Tab.main:AddSlider({
    Name = "speed boat",
    Min = 100,
    Max = 1000,
    Increase = 10,
    Default = 300,
    Callback = function(Value)
        SetSpeedBoat = Value
    end
  })

  local sssar = Tab.main:AddToggle({
    Name = "change speed boat",
    Description = "",
    Default = false
  })
  sssar:Callback(function(Value)
    _G.SpeedBoat = Value
  end)

  game:GetService("RunService").RenderStepped:Connect(function()
    if _G.SpeedBoat then
        for i, v in pairs(game:GetService("Workspace").Boats:GetChildren()) do
            if game:GetService("Players").LocalPlayer.Character.Humanoid.Sit then
                v:FindFirstChild("VehicleSeat").MaxSpeed = SetSpeedBoat
            end
        end
    end
end)
  function hideis(bool)
    if bool then
        for _,i in pairs(workspace:GetDescendants()) do
            if i:IsA("BasePart") and not i.Parent:FindFirstChild("Humanoid") and not i.Parent.Parent:FindFirstChild("Humanoid") then
                i.LocalTransparencyModifier = 1
            end
        end
    else
        for _,i in pairs(workspace:GetDescendants()) do
            if i:IsA("BasePart") and not i.Parent:FindFirstChild("Humanoid") and not i.Parent.Parent:FindFirstChild("Humanoid") then
                i.LocalTransparencyModifier = 0
            end
        end
    end
end
local BoneCFrame = CFrame.new(-9515.75, 174.8521728515625, 6079.40625)
local BoneCFrame2 = CFrame.new(-9359.453125, 141.32679748535156, 5446.81982421875)
local CFFR = CFrame.new(-2020, 38, -12025)
function contains(str, val)
    return string.find(str, val) ~= nil
end

     function tableToString(tbl)
      local result = {}
      for _, v in ipairs(tbl) do
          table.insert(result, '"' .. v .. '"')
      end
      return table.concat(result, ",")
  end
  function EquipTool(ToolSe)
    if game.Players.LocalPlayer.Backpack:FindFirstChild(ToolSe) then
      local tool = game.Players.LocalPlayer.Backpack:FindFirstChild(ToolSe)
      wait(0.5)
      game.Players.LocalPlayer.Character.Humanoid:EquipTool(tool)
    end
  end

  task.spawn(function()
    while wait() do
        pcall(function()
            if Weapon == "Melee" then
                for i ,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                    if v.ToolTip == "Melee" then
                        if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v.Name)) then
                            SelectWeapon = v.Name
                        end
                    end
                end
            elseif Weapon == "Sword" then
                for i ,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                    if v.ToolTip == "Sword" then
                        if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v.Name)) then
                            SelectWeapon = v.Name
                        end
                    end
                end
            elseif Weapon == "Blox Fruit" then
                for i ,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                    if v.ToolTip == "Blox Fruit" then
                        if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v.Name)) then
                            SelectWeapon = v.Name
                        end
                    end
                end
            else
                for i ,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                    if v.ToolTip == "Melee" then
                        if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v.Name)) then
                            SelectWeapon = v.Name
                        end
                    end
                end
            end
        end)
    end
end)


spawn(function()
    while savefeererer do task.wait()
        if game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid") then
            local HealthPercent = game.Players.LocalPlayer.Character.Humanoid.Health / game.Players.LocalPlayer.Character.Humanoid.MaxHealth * 100
            if HealthPercent < 50 then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0, 100, 0)
            end
        end
        task.wait()
    end
  end)


  function Click()
    game:GetService'VirtualUser':CaptureController()
    game:GetService'VirtualUser':Button1Down(Vector2.new(132.85714721679688, -19.428571701049805))
end

spawn(function()
    while wait() do
        if _G.CakePrince and not _G.ACQ then
            pcall(function()
                local CakeCFrame = CFrame.new(-2142.66821,71.2588654,-12327.4619,0.996939838,-4.33107843e-08,0.078172572,4.20252917e-08,1,1.80894251e-08,-0.078172572,-1.47488439e-08, 0.996939838)
                if BypassTP then
                    if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CakeCFrame.Position).Magnitude > 2000 then
                    BTP(CakeCFrame)
                    wait(3)
                    elseif (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CakeCFrame.Position).Magnitude < 2000 then
                    Tween(CakeCFrame)
                    end
                end
                if game.ReplicatedStorage:FindFirstChild("Cake Prince") or game:GetService("Workspace").Enemies:FindFirstChild("Cake Prince") or game:GetService("Workspace").Enemies:FindFirstChild("Dough King") or game:GetService("ReplicatedStorage"):FindFirstChild("Dough King") then   
                    if game:GetService("Workspace").Enemies:FindFirstChild("Cake Prince") or game:GetService("Workspace").Enemies:FindFirstChild("Dough King") then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do 
                            if v.Name == "Cake Prince" or v.Name == "Dough King" then
                                for i,v in pairs (game.Workspace.Enemies:GetChildren()) do
                                    if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                    if v.Name then
                                    if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v:FindFirstChild("HumanoidRootPart").Position).Magnitude <= 5000 then
                                      repeat wait(_G.Fast_Delay)
                                        Click()
                                    AutoHaki()
                                    EquipTool(SelectWeapon)
                                    Tween(v.HumanoidRootPart.CFrame * CFrame.new(15,25,-15))
                                    v.HumanoidRootPart.Size = Vector3.new(1, 1, 1)
                                    v.HumanoidRootPart.Transparency = 1
                                    v.Humanoid.JumpPower = 0
                                    v.Humanoid.WalkSpeed = 0
                                    v.HumanoidRootPart.CanCollide = false
                                    FarmPos = v.HumanoidRootPart.CFrame
                                    MonFarm = v.Name
                                    until not _G.CakePrince or not v.Parent or v.Humanoid.Health <= 0 or not game.Workspace.Enemies:FindFirstChild(v.Name)
                                  end
                                    end
                                    end
                                    end
                                end
                            end
                    else -- -2009.2802734375, 4532.97216796875, -14937.3076171875
                        Tween(CFrame.new(-2151.049072265625, 158.0960235595703, -12404.349609375)) 
                    end
              end
            end)
        elseif _G.CakePrince and _G.ACQ then
            if (CFFR.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3 then    
              game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest","CakeQuest1",1)
            else Tween(CFrame.new(-2020, 38, -12025))
              end
          if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
              if game.Workspace.Enemies:FindFirstChild("Baking Staff") or game.Workspace.Enemies:FindFirstChild("Head Baker") or game.Workspace.Enemies:FindFirstChild("Cake Guard") or game.Workspace.Enemies:FindFirstChild("Cookie Crafter")  then
                  for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do  
                      if (v.Name == "Baking Staff" or v.Name == "Head Baker" or v.Name == "Cake Guard" or v.Name == "Cookie Crafter") and v.Humanoid.Health > 0 then
                          repeat wait(_G.Fast_Delay)
                            Click()
                              AutoHaki()
                              bringmob = true
                              EquipTool(SelectWeapon)
                              Tween(v.HumanoidRootPart.CFrame * CFrame.new(15,25,-15))
                              v.HumanoidRootPart.Size = Vector3.new(1, 1, 1)  
                              FarmPos = v.HumanoidRootPart.CFrame
                              MonFarm = v.Name
                          until _G.CakePrince == false or game:GetService("ReplicatedStorage"):FindFirstChild("Cake Prince") or not v.Parent or v.Humanoid.Health <= 0
                          bringmob = false
                      end
                  end
              else
                  Tween(CakeCFrame)
              end
          end
        end
    end
end)


function Tween2(P1)
    local Distance = (P1.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
    if Distance >= 1 then
    Speed = 300
    end
    game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart,TweenInfo.new(Distance/Speed, Enum.EasingStyle.Linear), {
      CFrame = P1
    }):Play()
    if _G.CancelTween2 then
    game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart,TweenInfo.new(Distance/Speed, Enum.EasingStyle.Linear), {
      CFrame = P1
    }):Cancel()
    end
    _G.Clip2 = true
    wait(Distance/Speed)
    _G.Clip2 = false
    end
--BTP
function BTP(Position)
  game.Players.LocalPlayer.Character.Head:Destroy()
  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Position
  wait(0.5)
  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Position
  game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
end
--BTPZ
function BTPZ(Point)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Point
    task.wait()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Point
        end
------Bypass TP 2
 function GetIsLand(...)
  local RealtargetPos = {...}
  local targetPos = RealtargetPos[1]
  local RealTarget
  if type(targetPos) == "vector" then
    RealTarget = targetPos
  elseif type(targetPos) == "userdata" then
    RealTarget = targetPos.Position
  elseif type(targetPos) == "number" then
    RealTarget = CFrame.new(unpack(RealtargetPos))
    RealTarget = RealTarget.p
  end
  local ReturnValue
  local CheckInOut = math.huge;
  if game.Players.LocalPlayer.Team then
    for i,v in pairs(game.Workspace._WorldOrigin.PlayerSpawns:FindFirstChild(tostring(game.Players.LocalPlayer.Team)):GetChildren()) do 
      local ReMagnitude = (RealTarget - v:GetModelCFrame().p).Magnitude;
      if ReMagnitude < CheckInOut then
        CheckInOut = ReMagnitude;
        ReturnValue = v.Name
      end
    end
    if ReturnValue then
      return ReturnValue
    end 
    end
end
     function toTarget(...)
    local RealtargetPos = { ... }
    local targetPos = RealtargetPos[1]
    local RealTarget
    if type(targetPos) == "vector" then
        RealTarget = CFrame.new(targetPos)
    elseif type(targetPos) == "userdata" then
        RealTarget = targetPos
    elseif type(targetPos) == "number" then
        RealTarget = CFrame.new(unpack(RealtargetPos))
    end
    if game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Health == 0 then
        if tween then tween:Cancel() end
        repeat wait() until game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Health > 0; wait(0.2)
    end
    local tweenfunc = {}
    local Distance = (RealTarget.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position)
        .Magnitude
    if Distance < 1000 then
        Speed = 315
    elseif Distance >= 1000 then
        Speed = 300
    end
    if BypassTP then
        if Distance > 3000 and not AutoNextIsland and not (game.Players.LocalPlayer.Backpack:FindFirstChild("Special Microchip") or game.Players.LocalPlayer.Character:FindFirstChild("Special Microchip") or game.Players.LocalPlayer.Backpack:FindFirstChild("God's Chalice") or game.Players.LocalPlayer.Character:FindFirstChild("God's Chalice") or game.Players.LocalPlayer.Backpack:FindFirstChild("Hallow Essence") or game.Players.LocalPlayer.Character:FindFirstChild("Hallow Essence") or game.Players.LocalPlayer.Character:FindFirstChild("Sweet Chalice") or game.Players.LocalPlayer.Backpack:FindFirstChild("Sweet Chalice")) and not (Name == "Fishman Commando" or Name == "Fishman Warrior") then
            pcall(function()
                tween:Cancel()
                fkwarp = false
                if game:GetService("Players")["LocalPlayer"].Data:FindFirstChild("SpawnPoint").Value == tostring(GetIsLand(RealTarget)) then
                    wait(.1)
                    Com("F_", "TeleportToSpawn")
                elseif game:GetService("Players")["LocalPlayer"].Data:FindFirstChild("LastSpawnPoint").Value == tostring(GetIsLand(RealTarget)) then
                    game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid"):ChangeState(15)
                    wait(0.1)
                    repeat wait() until game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid").Health > 0
                else
                    if game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid").Health > 0 then
                        if fkwarp == false then
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = RealTarget
                        end
                        fkwarp = true
                    end
                    wait(.08)
                    game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid"):ChangeState(15)
                    repeat wait() until game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid").Health > 0
                    wait(.1)
                    Com("F_", "SetSpawnPoint")
                end
                wait(0.2)

                return
            end)
        end
    end
    local tween_s = game:service "TweenService"
    local info = TweenInfo.new(
        (RealTarget.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position)
        .Magnitude / Speed, Enum.EasingStyle.Linear)
    local tweenw, err = pcall(function()
        tween = tween_s:Create(game.Players.LocalPlayer.Character["HumanoidRootPart"], info, { CFrame = RealTarget })
        tween:Play()
    end)

    function tweenfunc:Stop()
        tween:Cancel()
    end

    function tweenfunc:Wait()
        tween.Completed:Wait()
    end

    return tweenfunc
end
------
function Tween(Pos)
    Distance = (Pos.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
    if game.Players.LocalPlayer.Character.Humanoid.Sit == true then game.Players.LocalPlayer.Character.Humanoid.Sit = false end
    pcall(function() tween = game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart,TweenInfo.new(Distance/300, Enum.EasingStyle.Linear),{CFrame = Pos}) end)
    tween:Play()
    if Distance <= 300 then
        tween:Cancel()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Pos
    end
    if _G.StopTween == true then
        tween:Cancel()
        _G.Clip = false
    end
end
---------
function toTargetP(CFgo)
  if game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Health <= 0 or not game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid") then tween:Cancel() repeat wait() until game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid") and game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid").Health > 0 wait(7) return end
  if (game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart.Position - CFgo.Position).Magnitude <= 150 then
    pcall(function()
      tween:Cancel()

      game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart.CFrame = CFgo

      return
    end)
  end
  local tween_s = game:service"TweenService"
  local info = TweenInfo.new((game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart.Position - CFgo.Position).Magnitude/325, Enum.EasingStyle.Linear)
  tween = tween_s:Create(game.Players.LocalPlayer.Character["HumanoidRootPart"], info, {CFrame = CFgo})
  tween:Play()

  local tweenfunc = {}

  function tweenfunc:Stop()
    tween:Cancel()
  end

  return tweenfunc
end
    --function TP to Boat/Ship
    function TweenShip(CFgo)
        local tween_s = game:service"TweenService"
        local info = TweenInfo.new((game:GetService("Workspace").Boats.MarineBrigade.VehicleSeat.CFrame.Position - CFgo.Position).Magnitude/300, Enum.EasingStyle.Linear)
        tween = tween_s:Create(game:GetService("Workspace").Boats.MarineBrigade.VehicleSeat, info, {CFrame = CFgo})
        tween:Play()
    
        local tweenfunc = {}
    
        function tweenfunc:Stop()
            tween:Cancel()
        end
    
        return tweenfunc
    end
    function TweenBoat(CFgo)
        if game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Health <= 0 or not game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid") then tween:Cancel() repeat wait() until game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid") and game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid").Health > 0 wait(7) return end
        local tween_s = game:service"TweenService"
        local info = TweenInfo.new((game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart.Position - CFgo.Position).Magnitude/325, Enum.EasingStyle.Linear)
        tween = tween_s:Create(game.Players.LocalPlayer.Character["HumanoidRootPart"], info, {CFrame = CFgo})
        tween:Play()
    
        local tweenfunc = {}
    
        function tweenfunc:Stop()
            tween:Cancel()
        end
    
        return tweenfunc
    end
--select weapon
function EquipTool(ToolSe)
    local player = game.Players.LocalPlayer
    local backpack = player.Backpack

    local tool = backpack:FindFirstChild(ToolSe)

    if tool then
        wait(0.5)
        player.Character.Humanoid:EquipTool(tool)
    else

        local tools = {"Light-Light","Ice-Ice","Leopard-Leopard","Kitsune-Kitsune","T-Rex-T-Rex","Rubber-Rubber","Mammoth-Mammoth","Dough-Dough","Spirit-Spirit"}
        
        for _, toolName in ipairs(tools) do
            tool = backpack:FindFirstChild(toolName)
            if tool then
                wait(0.5)
                player.Character.Humanoid:EquipTool(tool)
                break
            end
        end
    end
end
    --aimbot mastery
  spawn(function()
    local gg = getrawmetatable(game)
    local old = gg.__namecall
    setreadonly(gg,false)
    gg.__namecall = newcclosure(function(...)
      local method = getnamecallmethod()
      local args = {
      ...  
      }
      if tostring(method) == "FireServer" then
      if tostring(args[1]) == "RemoteEvent" then
      if tostring(args[2]) ~= "true" and tostring(args[2]) ~= "false" then
      if _G.UseSkill then
      if type(args[2]) == "vector" then
      args[2] = PositionSkillMasteryDevilFruit
      else
      args[2] = CFrame.new(PositionSkillMasteryDevilFruit)
      end
      return old(unpack(args))
      end
      end
      end
      end
      return old(...)
      end)
        end)
--Equip Gun
spawn(function()
  pcall(function()
    while task.wait() do
    for i,v in pairs(game:GetService("Players").LocalPlayer.Backpack:GetChildren()) do
    if v:IsA("Tool") then
    if v:FindFirstChild("RemoteFunctionShoot") then
    CurrentEquipGun = v.Name
    end
    end
    end
    end
    end)
  end)
-- [Body Gyro]
   spawn(function()
      while task.wait() do
        pcall(function()
          if _G.TeleportIsland or AutoFarmChest or _G.chestsea2 or _G.chestsea3 or _G.CastleRaid or _G.CollectAzure or _G.TweenToKitsune or _G.AutoCandy or _G.GhostShip or _G.SailBoat or _G.Auto_Holy_Torch or _G.FindMirageIsland or _G.TeleportPly or _G.Tweenfruit or _G.AutoFishCrew or _G.AutoShark or _G.AutoCakeV2 or _G.AutoMysticIsland or _G.AutoQuestRace or _G.AutoBuyBoat or _G.dao or _G.AutoMirage or AutoFarmAcient or _G.AutoQuestRace or Auto_Law or _G.AutoAllBoss or AutoTushita or _G.AutoHolyTorch or _G.AutoTerrorshark or _G.farmpiranya or _G.DriveMytic or _G.AutoCakeV2V2 or PirateShip or _G.AutoSeaBeast or _G.AutoNear or _G.BossRaid or _G.GrabChest or AutoCitizen or _G.Ectoplasm or AutoEvoRace or AutoBartilo or AutoFactory or BringChestz or BringFruitz or _G.AutoLevel or _G.Clip2 or AutoFarmNoQuest or _G.AutoBone or AutoFarmSelectMonsterQuest or AutoFarmSelectMonsterNoQuest or _G.AutoBoss or AutoFarmBossQuest or AutoFarmMasGun or AutoFarmMasDevilFruit or AutoFarmSelectArea or AutoSecondSea or AutoThirdSea or AutoDeathStep or AutoSuperhuman or AutoSharkman or AutoElectricClaw or AutoDragonTalon or AutoGodhuman or AutoRengoku or AutoBuddySword or AutoPole or AutoHallowSycthe or AutoCavander or AutoTushita or AutoDarkDagger or _G.CakePrince or _G.AutoElite or AutoRainbowHaki or AutoSaber or AutoFarmKen or AutoKenHop or AutoKenV2 or _G.AutoKillPlayerMelee or _G.AutoKillPlayerGun or _G.AutoKillPlayerFruit or AutoDungeon or AutoNextIsland or AutoAdvanceDungeon or Musketeer or RipIndra or Auto_Serpent_Bow or AutoTorch or AutoSoulGuitar or Auto_Cursed_Dual_Katana or _G.AutoMaterial or Auto_Quest_Yama_1 or Auto_Quest_Yama_2 or Auto_Quest_Yama_3 or Auto_Quest_Tushita_1 or Auto_Quest_Tushita_2 or Auto_Quest_Tushita_3 or _G.Factory or _G.SwanGlasses or AutoBartilo or AutoEvoRace or _G.Ectoplasm then
            if not game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip") then
              local Noclip = Instance.new("BodyVelocity")
              Noclip.Name = "BodyClip"
              Noclip.Parent = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
              Noclip.MaxForce = Vector3.new(100000,100000,100000)
              Noclip.Velocity = Vector3.new(0,0,0)
            end
          else
            game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip"):Destroy()
          end
        end)
      end
    end)
--No CLip Auto Farm
spawn(function()
  pcall(function()
    game:GetService("RunService").Stepped:Connect(function()
      if _G.TeleportIsland or _G.CastleRaid or AutoFarmChest or _G.CollectAzure or _G.TweenToKitsune or _G.AutoCandy or _G.GhostShip or _G.SailBoat or _G.Auto_Holy_Torch or _G.Tweenfruit or _G.FindMirageIsland or _G.TeleportPly or _G.AutoFishCrew or _G.AutoShark or _G.AutoMysticIsland or _G.AutoCakeV2 or _G.AutoQuestRace or _G.AutoBuyBoat or _G.dao or AutoFarmAcient or _G.AutoMirage or Auto_Law or _G.AutoQuestRace or _G.AutoAllBoss or _G.AutoHolyTorch or AutoTushita or _G.farmpiranya or _G.AutoTerrorshark or _G.AutoNear or _G.AutoCakeV2V2 or PirateShip or _G.AutoSeaBeast or _G.DriveMytic or _G.BossRaid or _G.GrabChest or AutoCitizen or _G.Ectoplasm or AutoEvoRace or AutoBartilo or AutoFactory or BringChestz or BringFruitz or _G.AutoLevel or _G.Clip2 or AutoFarmNoQuest or _G.AutoBone or AutoFarmSelectMonsterQuest or AutoFarmSelectMonsterNoQuest or _G.AutoBoss or AutoFarmBossQuest or AutoFarmMasGun or AutoFarmMasDevilFruit or AutoFarmSelectArea or AutoSecondSea or AutoThirdSea or AutoDeathStep or AutoSuperhuman or AutoSharkman or AutoElectricClaw or AutoDragonTalon or AutoGodhuman or AutoRengoku or AutoBuddySword or AutoPole or AutoHallowSycthe or AutoCavander or AutoTushita or AutoDarkDagger or _G.CakePrince or _G.AutoElite or AutoRainbowHaki or AutoSaber or AutoFarmKen or AutoKenHop or AutoKenV2 or _G.AutoKillPlayerMelee or _G.AutoKillPlayerGun or _G.AutoKillPlayerFruit or AutoDungeon or AutoNextIsland or AutoAdvanceDungeon or Musketeer or RipIndra or Auto_Serpent_Bow or AutoTorch or AutoSoulGuitar or Auto_Cursed_Dual_Katana or _G.AutoMaterial or Auto_Quest_Yama_1 or Auto_Quest_Yama_2 or Auto_Quest_Yama_3 or Auto_Quest_Tushita_1 or Auto_Quest_Tushita_2 or Auto_Quest_Tushita_3 or _G.Factory or _G.SwanGlasses or AutoBartilo or AutoEvoRace or _G.Ectoplasm then
      for i,v in pairs(game:GetService("Players").LocalPlayer.Character:GetDescendants()) do
      if v:IsA("BasePart") then
      v.CanCollide = false
      end
      end
      end
      end)
    end)
  end)
--Check Material
function CheckMaterial(matname)
for i,v in pairs(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getInventory")) do
if type(v) == "table" then
if v.Type == "Material" then
if v.Name == matname then
return v.Count
end
end
end
end
return 0
end
-----------------------------------------------------------------------------------------------------------------------------------------------

local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local CameraShakerModule = ReplicatedStorage:WaitForChild("Util"):WaitForChild("CameraShaker")
local CombatFrameworkModule = LocalPlayer:WaitForChild("PlayerScripts"):WaitForChild("CombatFramework")

local CameraShaker = require(CameraShakerModule)
local CombatFrameworkR = require(CombatFrameworkModule)
y = debug.getupvalues(CombatFrameworkR)[2]
spawn(function()
    game:GetService("RunService").RenderStepped:Connect(function()
        if _G.FastAttack then
            if typeof(y) == "table" then
                pcall(function()
                    CameraShaker:Stop()
                    y.activeController.timeToNextAttack = 0
                    y.activeController.hitboxMagnitude = 60
                    y.activeController.active = false
                    y.activeController.timeToNextBlock = 0
                    y.activeController.focusStart = 1655503339.0980349
                    y.activeController.increment = 1
                    y.activeController.blocking = false
                    y.activeController.attacking = false
                    y.activeController.humanoid.AutoRotate = true
                end)
            end
        end
    end)
end)
spawn(function()
    game:GetService("RunService").RenderStepped:Connect(function()
        if _G.FastAttack or _G.FastAttackCambodiakak == true then
            game.Players.LocalPlayer.Character.Stun.Value = 0
            game.Players.LocalPlayer.Character.Busy.Value = false        
        end
    end)
end)

local Util = ReplicatedStorage:WaitForChild("Util")
local CameraShakerModule = Util:WaitForChild("CameraShaker")
local PlayerScripts = LocalPlayer:WaitForChild("PlayerScripts")
local CombatFramework = PlayerScripts:WaitForChild("CombatFramework")
local ParticleModule = CombatFramework:WaitForChild("Particle")
local CamShake = require(CameraShakerModule)
local STOP = require(ParticleModule)  
CamShake:Stop()
local CombatFrameworkRigLibModule = ReplicatedStorage:WaitForChild("CombatFramework"):WaitForChild("RigLib")
local STOPRL = require(CombatFrameworkRigLibModule)
    spawn(function()
        while task.wait() do
            pcall(function()
                if not shared.orl then shared.orl = STOPRL.wrapAttackAnimationAsync end
                if not shared.cpc then shared.cpc = STOP.play end
                    STOPRL.wrapAttackAnimationAsync = function(a,b,c,d,func)
                    local Hits = STOPRL.getBladeHits(b,c,d)
                    if Hits then
                        if _G.FastAttack then
                            STOP.play = function() end
                            a:Play(0.01,0.01,0.01)
                            func(Hits)
                            STOP.play = shared.cpc
                            wait(a.length * 0.5)
                            a:Stop()
                        else
                            a:Play()
                        end
                    end
                end
            end)
        end
    end)







  --Attack Mastery
  function NormalAttack()
    if not _G.NormalAttack then
      pcall(function()
        local Module = require(game.Players.LocalPlayer.PlayerScripts.CombatFramework)
        local CombatFramework = debug.getupvalues(Module)[2]
        local CamShake = require(game.ReplicatedStorage.Util.CameraShaker)
        CamShake:Stop()
        CombatFramework.activeController.attacking = false
        CombatFramework.activeController.timeToNextAttack = 0
        CombatFramework.activeController.hitboxMagnitude = 180
        game:GetService'VirtualUser':CaptureController()
        game:GetService'VirtualUser':Button1Down(Vector2.new(132.85714721679688, -19.428571701049805))
    end) end
end
--------------------------------------------------------------------------------------------------------------------------------------------

--Sword Weapon
function GetWeaponInventory(Weaponname)
for i,v in pairs(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getInventory")) do
if type(v) == "table" then
if v.Type == "Sword" then
if v.Name == Weaponname then
return true
end
end
end
end
return false
end

--auto turn haki
  function AutoHaki()
    if not game:GetService("Players").LocalPlayer.Character:FindFirstChild("HasBuso") then
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
    end
end
---Bypass Teleport
function BTP(P)
  repeat wait(0.5)
    game.Players.LocalPlayer.Character.Humanoid:ChangeState(15)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = P
    task.wait()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = P
  until (P.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 2000
end

function BTP(p)
    pcall(function()
      if (p.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude >= 2000 and not Auto_Raid and game.Players.LocalPlayer.Character.Humanoid.Health > 0 then
        if NameMon == "FishmanQuest" then
          Tween(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
          wait()
          game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
        elseif Mon == "God's Guard"  then
          Tween(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
          wait()
          game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-4607.82275, 872.54248, -1667.55688))
        elseif NameMon == "SkyExp1Quest" then
          Tween(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
          wait()
          game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-7894.6176757813, 5547.1416015625, -380.29119873047))
        elseif NameMon == "ShipQuest1" then
          Tween(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
          wait()
          game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
        elseif NameMon == "ShipQuest2" then
          Tween(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
          wait()
          game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
        elseif NameMon == "FrostQuest" then
          Tween(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
          wait()
          game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-6508.5581054688, 89.034996032715, -132.83953857422))
        else
            repeat wait(0.5)
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = p
            wait(.05)
            game.Players.LocalPlayer.Character.Head:Destroy()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = p
          until (p.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 2500 and game.Players.LocalPlayer.Character.Humanoid.Health > 0
          wait()
        end
      end
    end)
  end
  

  spawn(function()
    while task.wait() do
    if _G.AutoLevel then
    pcall(function()
      CheckLevel()
      if not string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameMon) or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
      game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
      if BypassTP then
        if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CFrameQ.Position).Magnitude > 2500 then
        BTP(CFrameQ)
        elseif (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CFrameQ.Position).Magnitude < 2500 then
        Tween(CFrameQ)
        end
            else
          Tween(CFrameQ)
          end
      if (CFrameQ.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 5 then
      game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest",NameQuest,QuestLv)
      end
      elseif string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameMon) or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
      for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
      if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
      if v.Name == Ms then
      repeat wait(_G.Fast_Delay)
        Click()
      bringmob = true
      AutoHaki()
      EquipTool(SelectWeapon)
      Tween(v.HumanoidRootPart.CFrame * CFrame.new(15,25,-15))
      v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
      v.HumanoidRootPart.Transparency = 1
      v.Humanoid.JumpPower = 0
      v.Humanoid.WalkSpeed = 0
      v.HumanoidRootPart.CanCollide = false
      FarmPos = v.HumanoidRootPart.CFrame
      MonFarm = v.Name
      until not _G.AutoLevel or not v.Parent or v.Humanoid.Health <= 0 or not game:GetService("Workspace").Enemies:FindFirstChild(v.Name) or game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == false
      bringmob = false
    bringmob = false
     else Tween(CFrameQ)
    end   
      end
      end
      for i,v in pairs(game:GetService("Workspace")["_WorldOrigin"].EnemySpawns:GetChildren()) do
      if string.find(v.Name,NameMon) then
      if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v.Position).Magnitude >= 10 then
        Tween(v.CFrame * CFrame.new(posX,posY,posZ))
      end
      end
      end
      end
      end)
    end
    end
    end)

    spawn(function()
      while wait() do
          pcall(function()
              for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                  if _G.BringMob or bringmob then
                      if v.Name == MonFarm and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
                          if v.Name == "Factory Staff" then
                              if (v.HumanoidRootPart.Position - FarmPos.Position).Magnitude <= 500 then
                                  v.Head.CanCollide = false
                                  v.HumanoidRootPart.CanCollide = false
                                  v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                  v.HumanoidRootPart.CFrame = FarmPos
                                  if v.Humanoid:FindFirstChild("Animator") then
                                      v.Humanoid.Animator:Destroy()
                                  end
                                  sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
                              end
                          elseif v.Name == MonFarm then
                              if (v.HumanoidRootPart.Position - FarmPos.Position).Magnitude <= 337.5 then
                                  v.HumanoidRootPart.CFrame = FarmPos
                                  v.HumanoidRootPart.Size = Vector3.new(60,60,60)
                                  v.HumanoidRootPart.Transparency = 1
                                  v.Humanoid.JumpPower = 0
                                  v.Humanoid.WalkSpeed = 0
                                  if v.Humanoid:FindFirstChild("Animator") then
                                      v.Humanoid.Animator:Destroy()
                                  end
                                  v.HumanoidRootPart.CanCollide = false
                                  v.Head.CanCollide = false
                                  v.Humanoid:ChangeState(11)
                                  v.Humanoid:ChangeState(14)
                                  sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
                              end
                          end
                      end
                              end
                          end
                      end)
              end
          end)





          spawn(function()
            while wait(.1) do
            if _G.AutoNear then
            pcall(function()
              for i,v in pairs (game.Workspace.Enemies:GetChildren()) do
              if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
              if v.Name then
              if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v:FindFirstChild("HumanoidRootPart").Position).Magnitude <= 5000 then
                repeat wait(_G.Fast_Delay)
                    Click()
                    bringmob = true
              AutoHaki()
              EquipTool(SelectWeapon)
              Tween(v.HumanoidRootPart.CFrame * CFrame.new(15,25,-15))
              v.HumanoidRootPart.Size = Vector3.new(1, 1, 1)
              v.HumanoidRootPart.Transparency = 1
              v.Humanoid.JumpPower = 0
              v.Humanoid.WalkSpeed = 0
              v.HumanoidRootPart.CanCollide = false
              FarmPos = v.HumanoidRootPart.CFrame
              MonFarm = v.Name
              until not _G.AutoNear or not v.Parent or v.Humanoid.Health <= 0 or not game.Workspace.Enemies:FindFirstChild(v.Name)
              bringmob = false
            end
              end
              end
              end
              end)
            end
            end
          end)

          spawn(function()
            while wait() do
                if _G.CastleRaid then
                    pcall(function()
                        if (CFrame.new(-5539.3115234375, 313.800537109375, -2972.372314453125).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 500 then
                            for i,v in pairs (game.Workspace.Enemies:GetChildren()) do
                                if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                if v.Name then
                                if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v:FindFirstChild("HumanoidRootPart").Position).Magnitude <= 5000 then
                                  repeat wait(_G.Fast_Delay)
                                Click()
                                AutoHaki()
                                EquipTool(SelectWeapon)
                                Tween(v.HumanoidRootPart.CFrame * CFrame.new(15,25,-15))
                                v.HumanoidRootPart.Size = Vector3.new(1, 1, 1)
                                v.HumanoidRootPart.Transparency = 1
                                v.Humanoid.JumpPower = 0
                                v.Humanoid.WalkSpeed = 0
                                v.HumanoidRootPart.CanCollide = false
                                FarmPos = v.HumanoidRootPart.CFrame
                                MonFarm = v.Name
                                until not _G.CastleRaid or not v.Parent or v.Humanoid.Health <= 0 or not game.Workspace.Enemies:FindFirstChild(v.Name)
                            end
                            end
                        end
                    end
                        else
                            BTPZ(CFrame.new(-5084.353515625, 314.550537109375, -3133.190673828125))
                        end
                    end)
                end
            end
            end)

            spawn(function()
                pcall(function()
                    while wait() do
                        if _G.AutoQuestRace then
                            if game:GetService("Players").LocalPlayer.Data.Race.Value == "Human" or "Ghoul" then
                                for i,v in pairs(game.Workspace.Enemies:GetDescendants()) do
                                    if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                        pcall(function()
                                            repeat wait(.1)
                                                v.Humanoid.Health = 0
                                                v.HumanoidRootPart.CanCollide = false
                                                sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
                                            until not _G.AutoQuestRace or not v.Parent or v.Humanoid.Health <= 0
                                        end)
                                    end
                                end
                            elseif game:GetService("Players").LocalPlayer.Data.Race.Value == "Skypiea" then
                                for i,v in pairs(game:GetService("Workspace").Map.SkyTrial.Model:GetDescendants()) do
                                    if v.Name ==  "snowisland_Cylinder.081" then
                                        Tween(v.CFrame* CFrame.new(0,0,0))
                                    end
                                end
                            elseif game:GetService("Players").LocalPlayer.Data.Race.Value == "Fishman" then
                                for i,v in pairs(game:GetService("Workspace").SeaBeasts.SeaBeast1:GetDescendants()) do
                                    if v.Name ==  "HumanoidRootPart" then
                                        Tween(v.CFrame * CFrame.new(0,30,0))
                                        for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                                            if v:IsA("Tool") then
                                                if v.ToolTip == "Melee" then -- "Blox Fruit" , "Sword" , "Wear" , "Agility"
                                                    game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)
                                                end
                                            end
                                        end
                                        game:GetService("VirtualInputManager"):SendKeyEvent(true,122,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
                                        game:GetService("VirtualInputManager"):SendKeyEvent(false,122,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
                                        wait(.2)
                                        game:GetService("VirtualInputManager"):SendKeyEvent(true,120,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
                                        game:GetService("VirtualInputManager"):SendKeyEvent(false,120,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
                                        wait(.2)
                                        game:GetService("VirtualInputManager"):SendKeyEvent(true,99,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
                                        game:GetService("VirtualInputManager"):SendKeyEvent(false,99,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
                                        for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                                            if v:IsA("Tool") then
                                                if v.ToolTip == "Blox Fruit" then -- "Blox Fruit" , "Sword" , "Wear" , "Agility"
                                                    game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)
                                                end
                                            end
                                        end
                                        game:GetService("VirtualInputManager"):SendKeyEvent(true,122,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
                                        game:GetService("VirtualInputManager"):SendKeyEvent(false,122,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
                                        wait(.2)
                                        game:GetService("VirtualInputManager"):SendKeyEvent(true,120,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
                                        game:GetService("VirtualInputManager"):SendKeyEvent(false,120,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
                                        wait(.2)
                                        game:GetService("VirtualInputManager"):SendKeyEvent(true,99,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
                                        game:GetService("VirtualInputManager"):SendKeyEvent(false,99,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
                                
                                        wait(0.5)
                                        for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                                            if v:IsA("Tool") then
                                                if v.ToolTip == "Sword" then -- "Blox Fruit" , "Sword" , "Wear" , "Agility"
                                                    game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)
                                                end
                                            end
                                        end
                                        game:GetService("VirtualInputManager"):SendKeyEvent(true,122,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
                                        game:GetService("VirtualInputManager"):SendKeyEvent(false,122,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
                                        wait(.2)
                                        game:GetService("VirtualInputManager"):SendKeyEvent(true,120,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
                                        game:GetService("VirtualInputManager"):SendKeyEvent(false,120,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
                                        wait(.2)
                                        game:GetService("VirtualInputManager"):SendKeyEvent(true,99,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
                                        game:GetService("VirtualInputManager"):SendKeyEvent(false,99,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
                                        wait(0.5)
                                        for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                                            if v:IsA("Tool") then
                                                if v.ToolTip == "Gun" then -- "Blox Fruit" , "Sword" , "Wear" , "Agility"
                                                    game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)
                                                end
                                            end
                                        end
                                        game:GetService("VirtualInputManager"):SendKeyEvent(true,122,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
                                        game:GetService("VirtualInputManager"):SendKeyEvent(false,122,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
                                        wait(.2)
                                        game:GetService("VirtualInputManager"):SendKeyEvent(true,120,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
                                        game:GetService("VirtualInputManager"):SendKeyEvent(false,120,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
                                        wait(.2)
                                        game:GetService("VirtualInputManager"):SendKeyEvent(true,99,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
                                        game:GetService("VirtualInputManager"):SendKeyEvent(false,99,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
                                    end
                                end
                            elseif game:GetService("Players").LocalPlayer.Data.Race.Value == "Cyborg" then
                                Tween(CFrame.new(28654, 14898.7832, -30, 1, 0, 0, 0, 1, 0, 0, 0, 1))
                            elseif game:GetService("Players").LocalPlayer.Data.Race.Value == "Mink" then
                                for i,v in pairs(game:GetService("Workspace"):GetDescendants()) do
                                    if v.Name == "StartPoint" then
                                        Tween(v.CFrame* CFrame.new(0,10,0))
                                      end
                                   end
                            end
                        end
                    end
                end)
                end)

                spawn(function()
                    while wait() do 
                        pcall(function()
                            if _G.KillAfterTrials then
                                for i,v in pairs(game:GetService("Workspace").Characters:GetChildren()) do
                                    if v.Name ~= game.Players.LocalPlayer.Name and (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 100 then
                                        if v.Humanoid.Health > 0 then
                                            repeat wait(_G.Fast_Delay)
                                                AutoHaki()
                                                EquipTool(SelectWeapon)
                                                NameTarget = v.Name
                                                Tween(v.HumanoidRootPart.CFrame * CFrame.new(0,5.75,-3))
                                                v.HumanoidRootPart.CanCollide = false
                                                v.Head.CanCollide = false
                                                v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                                Click()
                                            until not _G.KillAfterTrials or not v.Parent or v.Humanoid.Health <= 0 
                                        end
                                    end
                                end
                            end
                        end)
                    end
                    end)
--[[ 
low : -22273.6, 11 , 1363.9
medium : -26900, 11 , 2137.3
high : -3018.6, 11 , 2444.1
extreme : -33601.5 , 11 , 3046.5
crazy : -38150.5 , 11 , 3771
??? : -42334, 11 , 4395
--]]
