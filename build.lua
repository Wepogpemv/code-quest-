local TweenService = game:GetService("TweenService")
local plr = game.Players.LocalPlayer.Character.HumanoidRootPart   
    
    local function create(name, pos, size, tra, mat, col, can, bre, rot, cast, id, tel, sound, volume, distance, loop, dmg, img, cd, key, mname, lig, flip, boost, time)
        local class
        if name == "Part" then
            class = "Part"
        elseif name == "SpawnLocation" then
            class = "Spawn"
        elseif name == "Truss" then
            class = "Truss"
        elseif name == "Sound" then
            class = "Sound"
        elseif name == "Touch" then
            class = "Touch"
        elseif name == "Teleport" then
            class = "Teleport"
        elseif name == "Damage" then
            class = "Damage"
        elseif name == "Image" then
            class = "Image"
        elseif name == "MovesetClear" then
            class = "MovesetClear"
        elseif name == "Moveset" then
            class = "Moveset"
        elseif name == "Light" then
            class = "Light"
        elseif name == "Boost" then
            class = "Boost"
        elseif name == "And" then
            class = "And"
        elseif name == "Not" then
            class = "Not"
        elseif name == "Timer" then
            class = "Timer"
        else
            return
        end
        local args = {
            [1] = "Create",
            [2] = class, 
            [3] = Vector3.new(pos.x, pos.y, pos.z)
        }

        game:GetService("ReplicatedStorage").Remotes.BuildEvent:FireServer(unpack(args))
        wait(0.5)
        
        local d = Vector3.new(pos.x, pos.y, pos.z)
        local ada = Vector3.new(size.x, size.y, size.z)
        local tela = tel and Vector3.new(tel.x, tel.y + 10, tel.z) or false
        local moveName = name .. "_" .. math.random(100, 1000000)
        if class == "Touch" then
            wait(1)
            game.workspace.Logic[name].Name = moveName
            local args = {
                [1] = "Move",
                [2] = {
                    [1] = {
                        [1] = game.workspace.Logic[moveName] or game.workspace.Logic[name],
                        [2] = CFrame.new(d) * CFrame.Angles(math.rad(rot.x), math.rad(rot.y), math.rad(rot.z)),
                        [3] = Vector3.new(size.x, size.y, size.z)
                    }
                }
            
            }
            game:GetService("ReplicatedStorage").Remotes.BuildEvent:FireServer(unpack(args))
            local args = {
                [1] = "Inputs",
                [2] = game.workspace.Logic[moveName] or game.workspace.Logic[name],
                [3] = "",
                [4] = lig
            }
                
            game:GetService("ReplicatedStorage").Remotes.BuildEvent:FireServer(unpack(args))
        elseif class == "Sound" then
            wait(1)
            game.workspace.Logic[class].Name = moveName
            local args = {
                [1] = "Move",
                [2] = {
                    [1] = {
                        [1] = game.workspace.Logic[moveName] or game.workspace.Logic[name],
                        [2] = CFrame.new(d) * CFrame.Angles(math.rad(rot.x), math.rad(rot.y), math.rad(rot.z)),
                        [3] = Vector3.new(size.x, size.y, size.z)
                    }
                }
            }
            game:GetService("ReplicatedStorage").Remotes.BuildEvent:FireServer(unpack(args))
            local args = {
                [1] = "Inputs",
                [2] = game.workspace.Logic[moveName] or game.workspace.Logic[name],
                [3] = id,
                [4] = ""
            }

            game:GetService("ReplicatedStorage").Remotes.BuildEvent:FireServer(unpack(args))
            local args = {
                [1] = "LogicProp",
                [2] = game.workspace.Logic[moveName] or game.workspace.Logic[name],
                [3] = "SoundId",
                [4] = sound
            }
            
            game:GetService("ReplicatedStorage").Remotes.BuildEvent:FireServer(unpack(args))
            local args = {
                [1] = "LogicProp",
                [2] = game.workspace.Logic[moveName] or game.workspace.Logic[name],
                [3] = "SoundVol",
                [4] = volume
            }
            
            game:GetService("ReplicatedStorage").Remotes.BuildEvent:FireServer(unpack(args))
            local args = {
                [1] = "LogicProp",
                [2] = game.workspace.Logic[moveName] or game.workspace.Logic[name],
                [3] = "SoundRange",
                [4] = distance
            }
            
            game:GetService("ReplicatedStorage").Remotes.BuildEvent:FireServer(unpack(args))
            local args = {
                [1] = "LogicProp",
                [2] = game.workspace.Logic[moveName] or game.workspace.Logic[name],
                [3] = "SoundLoop",
                [4] = loop
            }
            
            game:GetService("ReplicatedStorage").Remotes.BuildEvent:FireServer(unpack(args))
            
        elseif class == "Teleport" then
            wait(1)
            game.workspace.Logic[name].Name = moveName
            local args = {
                [1] = "Move",
                [2] = {
                    [1] = {
                        [1] = game.workspace.Logic[moveName] or game.workspace.Logic[name],
                        [2] = CFrame.new(d) * CFrame.Angles(math.rad(rot.x), math.rad(rot.y), math.rad(rot.z)),
                        [3] = Vector3.new(size.x, size.y, size.z)
                    }
                }
            }
            
            game:GetService("ReplicatedStorage").Remotes.BuildEvent:FireServer(unpack(args))
            local args = {
                [1] = "Inputs",
                [2] = game.workspace.Logic[moveName] or game.workspace.Logic[name],
                [3] = id,
                [4] = ""
            }
            
            game:GetService("ReplicatedStorage").Remotes.BuildEvent:FireServer(unpack(args))
            local targetPosition = CFrame.new(tela)

            local tweenInfo = TweenInfo.new(
                5, 
                Enum.EasingStyle.Linear, 
                Enum.EasingDirection.InOut, 
                0, 
                false, 
                0 
            )

            local tween = TweenService:Create(plr, tweenInfo, {CFrame = targetPosition})

            tween:Play()

            tween.Completed:Wait()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(targetPosition)
            wait(10)
            local args = {
                [1] = "LogicProp",
                [2] = game.workspace.Logic[moveName] or game.workspace.Logic[name],
                [3] = "Destination"
            }
            
            game:GetService("ReplicatedStorage").Remotes.BuildEvent:FireServer(unpack(args))   
            
        elseif class == "Damage" then
            wait(1)
            game.workspace.Logic[name].Name = moveName
            local args = {
                [1] = "Move",
                [2] = {
                    [1] = {
                        [1] = game.workspace.Logic[moveName] or game.workspace.Logic[name],
                        [2] = CFrame.new(d) * CFrame.Angles(math.rad(rot.x), math.rad(rot.y), math.rad(rot.z)),
                        [3] = Vector3.new(size.x, size.y, size.z)
                    }
                }
            }
            
            game:GetService("ReplicatedStorage").Remotes.BuildEvent:FireServer(unpack(args))
            local args = {
                [1] = "Inputs",
                [2] = game.workspace.Logic[moveName] or game.workspace.Logic[name],
                [3] = id,
                [4] = ""
            }
            
            game:GetService("ReplicatedStorage").Remotes.BuildEvent:FireServer(unpack(args)) 
            local args = {
                [1] = "LogicProp",
                [2] = game.workspace.Logic[moveName] or game.workspace.Logic[name],
                [3] = "Damage",
                [4] = dmg
            }
            
            game:GetService("ReplicatedStorage").Remotes.BuildEvent:FireServer(unpack(args))
        elseif class == "Image" then
            wait(1)
            game.workspace.Logic[name].Name = moveName
            local args = {
                [1] = "Move",
                [2] = {
                    [1] = {
                        [1] = game.workspace.Logic[moveName] or game.workspace.Logic[name],
                        [2] = CFrame.new(d) * CFrame.Angles(math.rad(rot.x), math.rad(rot.y), math.rad(rot.z)),
                        [3] = Vector3.new(size.x, size.y, size.z)
                    }
                }
            }
            
            game:GetService("ReplicatedStorage").Remotes.BuildEvent:FireServer(unpack(args))

            local args = {
                [1] = "LogicProp",
                [2] = game.workspace.Logic[moveName] or game.workspace.Logic[name],
                [3] = "Image",
                [4] = img
            }
            
            game:GetService("ReplicatedStorage").Remotes.BuildEvent:FireServer(unpack(args))
        elseif class == "MovesetClear" then
            wait(1)
            game.workspace.Logic[name].Name = moveName
            local args = {
                [1] = "Move",
                [2] = {
                    [1] = {
                        [1] = game.workspace.Logic[moveName] or game.workspace.Logic[name],
                        [2] = CFrame.new(d) * CFrame.Angles(math.rad(rot.x), math.rad(rot.y), math.rad(rot.z)),
                        [3] = Vector3.new(size.x, size.y, size.z)
                    }
                }
            }
            game:GetService("ReplicatedStorage").Remotes.BuildEvent:FireServer(unpack(args))
            local args = {
                [1] = "Inputs",
                [2] = game.workspace.Logic[moveName] or game.workspace.Logic[name],
                [3] = id,
                [4] = ""
            }
            
            game:GetService("ReplicatedStorage").Remotes.BuildEvent:FireServer(unpack(args))
        elseif class == "Moveset" then
            wait(1)
            game.workspace.Logic[name].Name = moveName
            local args = {
                [1] = "Move",
                [2] = {
                    [1] = {
                        [1] = game.workspace.Logic[moveName] or game.workspace.Logic[name],
                        [2] = CFrame.new(d) * CFrame.Angles(math.rad(rot.x), math.rad(rot.y), math.rad(rot.z)),
                        [3] = Vector3.new(size.x, size.y, size.z)
                    }
                }
            }
            game:GetService("ReplicatedStorage").Remotes.BuildEvent:FireServer(unpack(args))
            local args = {
                [1] = "Inputs",
                [2] = game.workspace.Logic[moveName] or game.workspace.Logic[name],
                [3] = id,
                [4] = ""
            }
            
            game:GetService("ReplicatedStorage").Remotes.BuildEvent:FireServer(unpack(args))
            local args = {
                [1] = "LogicProp",
                [2] = game.workspace.Logic[moveName] or game.workspace.Logic[name],
                [3] = "MoveName",
                [4] = mname
            }
            
            game:GetService("ReplicatedStorage").Remotes.BuildEvent:FireServer(unpack(args))
            local args = {
                [1] = "LogicProp",
                [2] = game.workspace.Logic[moveName] or game.workspace.Logic[name],
                [3] = "Cooldown",
                [4] = cd
            }
            
            game:GetService("ReplicatedStorage").Remotes.BuildEvent:FireServer(unpack(args))
            local args = {
                [1] = "LogicProp",
                [2] = game.workspace.Logic[moveName] or game.workspace.Logic[name],
                [3] = "Key",
                [4] = key
            }
            
            game:GetService("ReplicatedStorage").Remotes.BuildEvent:FireServer(unpack(args))
            
        elseif class == "Light" then
            wait(1)
            game.workspace.Logic[name].Name = moveName
            local args = {
                [1] = "Move",
                [2] = {
                    [1] = {
                        [1] = game.workspace.Logic[moveName] or game.workspace.Logic[name],
                        [2] = CFrame.new(d) * CFrame.Angles(math.rad(rot.x), math.rad(rot.y), math.rad(rot.z)),
                        [3] = Vector3.new(size.x, size.y, size.z)
                    }
                }
            }
            game:GetService("ReplicatedStorage").Remotes.BuildEvent:FireServer(unpack(args))
            local args = {
                [1] = "Inputs",
                [2] = game.workspace.Logic[moveName] or game.workspace.Logic[name],
                [3] = lig,
                [4] = id
            }
            
            game:GetService("ReplicatedStorage").Remotes.BuildEvent:FireServer(unpack(args))    
            local args = {
                [1] = "LogicProp",
                [2] = game.workspace.Logic[moveName] or game.workspace.Logic[name],
                [3] = "Flip",
                [4] = flip
            }
            
            game:GetService("ReplicatedStorage").Remotes.BuildEvent:FireServer(unpack(args))
        elseif class == "Boost" then
            wait(1)
            game.workspace.Logic[name].Name = moveName
            local args = {
                [1] = "Move",
                [2] = {
                    [1] = {
                        [1] = game.workspace.Logic[moveName] or game.workspace.Logic[name],
                        [2] = CFrame.new(d) * CFrame.Angles(math.rad(rot.x), math.rad(rot.y), math.rad(rot.z)),
                        [3] = Vector3.new(size.x, size.y, size.z)
                    }
                }
            }
            game:GetService("ReplicatedStorage").Remotes.BuildEvent:FireServer(unpack(args))
            local args = {
                [1] = "Inputs",
                [2] = game.workspace.Logic[moveName] or game.workspace.Logic[name],
                [3] = id,
                [4] = ""
            }            
            game:GetService("ReplicatedStorage").Remotes.BuildEvent:FireServer(unpack(args))
            wait(1)
            local args = {
                [1] = "LogicProp",
                [2] = game.workspace.Logic[moveName] or game.workspace.Logic[name],
                [3] = "Boost",
                [4] = Vector3.new(boost.x, boost.y, boost.z)
            }
            
            game:GetService("ReplicatedStorage").Remotes.BuildEvent:FireServer(unpack(args))
                elseif class == "Boost" then
            wait(1)
            game.workspace.Logic[name].Name = moveName
            local args = {
                [1] = "Move",
                [2] = {
                    [1] = {
                        [1] = game.workspace.Logic[moveName] or game.workspace.Logic[name],
                        [2] = CFrame.new(d) * CFrame.Angles(math.rad(rot.x), math.rad(rot.y), math.rad(rot.z)),
                        [3] = Vector3.new(size.x, size.y, size.z)
                    }
                }
            }
            game:GetService("ReplicatedStorage").Remotes.BuildEvent:FireServer(unpack(args))
            local args = {
                [1] = "Inputs",
                [2] = game.workspace.Logic[moveName] or game.workspace.Logic[name],
                [3] = id,
                [4] = ""
            }            
            game:GetService("ReplicatedStorage").Remotes.BuildEvent:FireServer(unpack(args))
            wait(1)
            local args = {
                [1] = "LogicProp",
                [2] = game.workspace.Logic[moveName] or game.workspace.Logic[name],
                [3] = "Boost",
                [4] = Vector3.new(boost.x, boost.y, boost.z)
            }
            
            game:GetService("ReplicatedStorage").Remotes.BuildEvent:FireServer(unpack(args))

        elseif class == "And" or class == "Not" then
            wait(1)
            game.workspace.Logic[name].Name = moveName
            local args = {
                [1] = "Move",
                [2] = {
                    [1] = {
                        [1] = game.workspace.Logic[moveName] or game.workspace.Logic[name],
                        [2] = CFrame.new(d) * CFrame.Angles(math.rad(rot.x), math.rad(rot.y), math.rad(rot.z)),
                        [3] = Vector3.new(size.x, size.y, size.z)
                    }
                }
            }
            game:GetService("ReplicatedStorage").Remotes.BuildEvent:FireServer(unpack(args))
            local args = {
                [1] = "Inputs",
                [2] = game.workspace.Logic[moveName] or game.workspace.Logic[name],
                [3] = id,
                [4] = lig
            }            
            game:GetService("ReplicatedStorage").Remotes.BuildEvent:FireServer(unpack(args))
        elseif class == "Timer" then
            wait(1)
            game.workspace.Logic[name].Name = moveName
            local args = {
                [1] = "Move",
                [2] = {
                    [1] = {
                        [1] = game.workspace.Logic[moveName] or game.workspace.Logic[name],
                        [2] = CFrame.new(d) * CFrame.Angles(math.rad(rot.x), math.rad(rot.y), math.rad(rot.z)),
                        [3] = Vector3.new(size.x, size.y, size.z)
                    }
                }
            }
            game:GetService("ReplicatedStorage").Remotes.BuildEvent:FireServer(unpack(args))
            local args = {
                [1] = "Inputs",
                [2] = game.workspace.Logic[moveName] or game.workspace.Logic[name],
                [3] = id,
                [4] = lig
            }            
            game:GetService("ReplicatedStorage").Remotes.BuildEvent:FireServer(unpack(args))
            local args = {
                [1] = "LogicProp",
                [2] = game.workspace.Logic[moveName] or game.workspace.Logic[name],
                [3] = "Delay",
                [4] = time
            }
            
            game:GetService("ReplicatedStorage").Remotes.BuildEvent:FireServer(unpack(args))
            
        else
            game.workspace.Map.Destructible.Buildable[name].Name = moveName
            local args = {
                [1] = "Move",
                [2] = {
                    [1] = {
                        [1] = game.workspace.Map.Destructible.Buildable[moveName] or game.workspace.Map.Destructible.Buildable[name],
                        [2] = CFrame.new(d) * CFrame.Angles(math.rad(rot.x), math.rad(rot.y), math.rad(rot.z)),
                        [3] = Vector3.new(size.x, size.y, size.z)
                    }
                }
            }

            game:GetService("ReplicatedStorage").Remotes.BuildEvent:FireServer(unpack(args))
            local args = {
                [1] = "Transparency",
                [2] = {
                    [1] = game.workspace.Map.Destructible.Buildable[moveName] or game.workspace.Map.Destructible.Buildable[name]
                },
                [3] = tra
            }
            
            game:GetService("ReplicatedStorage").Remotes.BuildEvent:FireServer(unpack(args))
            local args = {
                [1] = "Color",
                [2] = {
                    [1] = game.workspace.Map.Destructible.Buildable[moveName] or game.workspace.Map.Destructible.Buildable[name]
                },
                [3] = Color3.fromRGB(col.r * 255, col.g * 255, col.b * 255)
            }
            
            game:GetService("ReplicatedStorage").Remotes.BuildEvent:FireServer(unpack(args))
            local args = {
                [1] = "Material",
                [2] = {
                    [1] = game.workspace.Map.Destructible.Buildable[moveName] or game.workspace.Map.Destructible.Buildable[name]
                },
                [3] = Enum.Material[mat]
            }
            
            game:GetService("ReplicatedStorage").Remotes.BuildEvent:FireServer(unpack(args))
            
            local args = {
                [1] = "Collide",
                [2] = {
                    [1] = game.workspace.Map.Destructible.Buildable[moveName] or game.workspace.Map.Destructible.Buildable[name]
                },
                [3] = can,
                [4] = cast
            }
            game:GetService("ReplicatedStorage").Remotes.BuildEvent:FireServer(unpack(args))
            local args = {
                [1] = "Collide",
                [2] = {
                    [1] = game.workspace.Map.Destructible.Buildable[moveName] or game.workspace.Map.Destructible.Buildable[name]
                },
                [4] = can
            }
            
            
            
            game:GetService("ReplicatedStorage").Remotes.BuildEvent:FireServer(unpack(args))
            
            
            local args = {
                [1] = "Breakable",
                [2] = {
                    [1] = game.workspace.Map.Destructible.Buildable[moveName] or game.workspace.Map.Destructible.Buildable[name]
                },
                [3] = bre
            }
            
            game:GetService("ReplicatedStorage").Remotes.BuildEvent:FireServer(unpack(args))
        end
    end

    local HttpService = game:GetService("HttpService")
    local jsonData = readfile("build.json")
    local data = HttpService:JSONDecode(jsonData)

    for _, item in ipairs(data) do
        coroutine.wrap(function()
            create(item.Name, item.Position, item.Size, item.Transparency, item.Material, item.Color, item.CanCollide, item.Break, item.Rotation, item.cast, item.I, item.telep, item.sound, item.volume, item.distance, item.loop, item.dmg, item.img, item.cd, item.key, item.mname, item.O, item.flip, item.boost, item.time)
        end)()
        task.wait()
    end

    print("done")
