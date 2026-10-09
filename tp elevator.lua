local hrp = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
    local function InLobby()
	local dist = (hrp.Position - workspace.Elevator.MetallicFloor.Position).Magnitude
	return dist > 40
end
        
if InLobby() then
     game:GetService("ReplicatedStorage").RE.PutInElevator:FireServer()
 else
    hrp.CFrame = workspace.Elevator.MetallicFloor.CFrame + Vector3.new(0, 3, 0)
end    