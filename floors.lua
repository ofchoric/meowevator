local p = game:GetService("Players").LocalPlayer
local hrp = p.Character.HumanoidRootPart

local function tp(target)
    hrp.CFrame = typeof(target) == "CFrame" and target or target.CFrame
end

local function fc(pt)
    local cd = pt:FindFirstChildWhichIsA("ClickDetector", true)
    if cd then
        fireclickdetector(cd)
    end
end

local function fp(pt)
    local pp = pt:FindFirstChildWhichIsA("ProximityPrompt", true)
    if pp then
        fireproximityprompt(pp)
    end
end

local tps = {
    ["SuperDropper"] = function() return workspace.SuperDropper.Build.WinPool.CFrame end,
    ["Splitsville_Wipeout"] = function() return workspace.Splitsville_Wipeout.Checkpoints.EndCheckpoint.CFrame end,
    ["IntenseObby"] = function() return workspace.IntenseObby.ENDBLOCK.CFrame end,
    ["GumballMachine"] = function() return workspace.GumballMachine.Build.Generated.EndColumn.WinPart.CFrame end,
    ["SuspiciouslyLongRoom"] = function() return workspace.SuspiciouslyLongRoom.Checkpoints.EndCheckpoint.CFrame end,
    ["Superhighway"] = function() return workspace.Superhighway.WinPoint.CFrame end,
    ["FruityBeatBlockStudio"] = function() return workspace.FruityBeatBlockStudio.Build.Ending.WinPart.CFrame end,
    ["StanelyRoom"] = function() return workspace.StanelyRoom.Build.Generated.Ending.EndTouch.CFrame end,
    ["Jeremy"] = function() return workspace.Jeremy.Build.Button.Clicker.CFrame end,
    ["WALL_OF"] = function() return workspace.WALL_OF.Checkpoints.EndCheckpoint.CFrame end,
    ["HALL_OF"] = function() return workspace.HALL_OF.Build.YOU_WIN.CFrame end,
    ["MozelleSquidGames"] = function() return workspace.MozelleSquidGames.Needed.Winner.CFrame end,
    ["TeapotDodgeball"] = function() return workspace.TeapotDodgeball.Build.Finish.CFrame end,
    ["TeapotTraversal"] = function() return workspace.TeapotTraversal.Build.Finish.Finish.CFrame end,
    ["WhoKilledYouObby"] = function() return workspace.WhoKilledYouObby.Build.Ending.WinPart.CFrame end,
    ["THEROCK"] = function() return workspace.THEROCK.WinPart.CFrame end,
    ["FloodFillMine"] = function() return workspace.FloodFillMine.Build.Shield.Bubble.CFrame end,
    ["HotelFloor6"] = function() return workspace.HotelFloor6.Build.WinPart.CFrame end,
    ["Obby"] = function() return workspace.Obby.Build.EndPart.CFrame end,
    ["FindThePath"] = function() return workspace.FindThePath.Build.End.win_zone.CFrame end,
    ["OnTheHeights"] = function() return workspace.OnTheHeights.Waypoint.CFrame end,
    ["SuperMinesweeper"] = function() return workspace.SuperMinesweeper.Gameplay.WinZone.CFrame end,
    ["SLIDE_9999999999_FEET_DOWN_RAINBOW"] = function() return workspace.SLIDE_9999999999_FEET_DOWN_RAINBOW.Build.Target.MiddleRing.CFrame end,
    ["SnowySlope"] = function() return workspace.SnowySlope.WinPart.CFrame end,
    ["Minefield"] = function() return workspace.Minefield.Build.WinPart.CFrame + Vector3.new(0, 3, 0) end,
    ["RedBallTemple"] = function() return workspace.RedBallTemple.Build.Ram.HumanoidRootPart.CFrame + Vector3.new(0, 3, 0) end,
    ["SuperTunnel"] = function() return workspace.SuperTunnel.Build.EndArea.ClickPart.CFrame + Vector3.new(0, 3, 0) end,
    ["FourCorners"] = function() return CFrame.new(-114.776749, -79.1700134, -24.237154, -0.697163522, -2.69950684e-09, -0.71691215, 8.31479163e-10, 1, -4.57403848e-09, 0.71691215, -3.78495013e-09, -0.697163522) end,
    ["FunTimesAtSquishyFlood"] = function() return CFrame.new(-61.1797333, 49.7507744, 18.3547058, -0.866024137, -4.90689303e-08, -0.500002205, -2.41554599e-08, 1, -5.62991929e-08, 0.500002205, -3.66786743e-08, -0.866024137) end,
    ["MarkApartmentHideAndSeek"] = function() return CFrame.new(-50.3700638, 132.13002, 11.4584141, -0.898805022, -5.30669467e-11, -0.438348621, -1.30469746e-10, 1, 1.46458581e-10, 0.438348621, 1.88828939e-10, -0.898805022)
end
}

for n, cf in pairs(tps) do
    if workspace:FindFirstChild(n) then
        tp(cf())
    end
end

local tpe = {"CliffsideChaos", "Dance", "TNTRun", "AbandonedCube"}
for _, floor in ipairs(tpe) do
    if workspace:FindFirstChild(floor) then
        tp(workspace.Elevator.MetallicFloor.CFrame + Vector3.new(0, 3, 0))
    end
end

-- click
if workspace:FindFirstChild("3008_Room") then
    fc(workspace["3008_Room"].Build.Lampert)
end

if workspace:FindFirstChild("FunnyMaze") then
    for _, bive in ipairs(workspace.FunnyMaze.Build.FinalNotes:GetChildren()) do
        tp(bive.CFrame)
        fc(bive)
        task.wait(0.1)
    end
    task.wait(0.5)
    tp(workspace.Elevator.MetallicFloor.CFrame + Vector3.new(0, 3, 0))
end

if workspace:FindFirstChild("CardboardRoom") then
    for _, dobe in ipairs(workspace.CardboardRoom.Build.Doors:GetChildren()) do
        tp(dobe.CFrame)
        fc(dobe)
        task.wait(0.1)
    end
end

-- prompt
if workspace:FindFirstChild("bugbo") then
    for _, bug in ipairs(workspace.bugbo.Build.Rocks:GetChildren()) do
        tp(bug.CFrame)
        task.wait(0.20)
        fp(bug)
        task.wait(0.15)
    end
end

if workspace:FindFirstChild("PetCaptureDeluxe") then
    for _, pet in ipairs(workspace.PetCaptureDeluxe.Build.ActiveMonsters:GetChildren()) do
        tp(pet.CFrame)
        task.wait(0.20)
        fp(pet)
        task.wait(0.15)
    end
end

if workspace:FindFirstChild("Forest_TwoStudCamp") then
    local spud = workspace.Forest_TwoStudCamp.Build.Cauldron.PromptPart
    for _, gnarp in ipairs(workspace.Forest_TwoStudCamp.Build.Firewood:GetChildren()) do
        tp(gnarp.CFrame)
        fp(gnarp)
        task.wait(0.10)
    end
    task.wait(0.3)
    tp(spud.CFrame + Vector3.new(0, 3, 0))
    fp(spud)
end

-- others
if workspace:FindFirstChild("RandomMazeWindows") then
    for _, giggler in ipairs(workspace.RandomMazeWindows.Build:GetChildren()) do
        if giggler:IsA("BasePart") and giggler:FindFirstChild("TouchInterest") then
            tp(giggler.CFrame)
        end
    end
end