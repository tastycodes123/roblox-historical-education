--[[
    ROBLOX HISTORICAL EDUCATION PROJECT
    Script: SceneSetup.lua
    Agent: 3 (Lua Scripter)
    Version: 1.0
    Last Updated: 2025-11-18
    Status: Draft
    
    Description:
    Auto-assembly master script that builds entire world from config
    
    Usage:
    Run SceneSetup.Setup() to build world
    Run SceneSetup.Reset() to rebuild
--]]

local ReplicatedStorage = game:GetService("ReplicatedStorage")
local SceneSetup = {}

function SceneSetup.Setup()
    print("🏗️ Building Ancient Egypt scenario...")
    
    local Config = require(ReplicatedStorage.Configs.ScenarioConfig)
    
    -- Load buildings
    for _, district in ipairs(Config.WorldLayout.districts) do
        SceneSetup.LoadDistrict(district)
    end
    
    -- Spawn NPCs
    for _, npc in ipairs(Config.NPCs) do
        SceneSetup.SpawnNPC(npc)
    end
    
    -- Setup systems
    SceneSetup.InitializeKnowledgeTree()
    SceneSetup.InitializeArtifacts()
    SceneSetup.InitializeMissions()
    
    print("✅ Scene setup complete!")
end

function SceneSetup.LoadDistrict(districtData)
    -- Load all buildings in district
    for _, building in ipairs(districtData.buildings) do
        local assetModel = ReplicatedStorage.Assets:FindFirstChild(building.assetId)
        if assetModel then
            local clone = assetModel:Clone()
            clone.Position = building.position
            clone.Rotation = building.rotation
            clone.Parent = workspace
        else
            warn("❌ Asset not found:", building.assetId)
        end
    end
end

function SceneSetup.Reset()
    workspace:ClearAllChildren()
    SceneSetup.Setup()
end

return SceneSetup
