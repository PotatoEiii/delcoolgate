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
                                name.Font = "SourceSansBold"
                                name.FontSize = "Size14"
                                name.TextWrapped = true
                                name.Text = (v.Name ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Character.Head.Position).Magnitude/3) ..' M')
                                name.Size = UDim2.new(1,0,1,0)
                                name.TextYAlignment = 'Top'
                                name.BackgroundTransparency = 1
                                name.TextStrokeTransparency = 0.5
                                if v.Team == game.Players.LocalPlayer.Team then
                                    name.TextColor3 = Color3.new(0, 254, 252)
                                else
                                    name.TextColor3 = Color3.new(0, 254, 252)
                                end
                            else
                                v.Character.Head['NameEsp'..Number].TextLabel.Text = (v.Name ..'   \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Character.Head.Position).Magnitude/3) ..' M')
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
ESPPlayer = true
UpdatePlayerChams()
