--[[
    SCENE CONFIGURATION
    Scenario: Ancient Egypt - Pyramid Construction
    Version: 1.0
    Last Updated: 2025-11-18
    
    This is the SINGLE SOURCE OF TRUTH for world building
--]]

local Config = {}

Config.Info = {
    name = "Ancient Egypt - Pyramid Construction",
    period = "Old Kingdom, 4th Dynasty",
    location = "Giza Plateau",
    year = 2560,
    targetAge = "10-14"
}

Config.WorldLayout = {
    districts = {
        {
            name = "Worker Village",
            buildings = {
                {assetId = "BLD_001", position = Vector3.new(0, 0, 0), rotation = Vector3.new(0, 0, 0)},
                {assetId = "BLD_002", position = Vector3.new(30, 0, 0), rotation = Vector3.new(0, 0, 0)}
            }
        },
        {
            name = "Construction Site",
            buildings = {
                {assetId = "PYR_001", position = Vector3.new(200, 0, 200), rotation = Vector3.new(0, 45, 0)},
                {assetId = "PYR_002", position = Vector3.new(200, 15, 200), rotation = Vector3.new(0, 45, 0)}
            }
        }
    }
}

Config.NPCs = {
    {
        id = "npc_overseer_01",
        characterAssetId = "CHAR_002",
        name = "Overseer Khenti",
        spawnPoint = Vector3.new(100, 0, 100),
        behavior = {type = "stationary"},
        dialogue = {greetings = {"Ready to work?", "The pyramid needs you."}}
    }
}

Config.Missions = {
    {
        id = "mission_01",
        title = "Water Carrier's Trial",
        startTrigger = {type = "location", position = Vector3.new(10, 0, 10), radius = 5},
        steps = {{id = "step_01", type = "goto", target = {type = "location", position = Vector3.new(100, 0, 100)}}}
    }
}

Config.EngagementSystems = {
    knowledgeTree = {
        enabled = true,
        tiers = {
            {id = "water_carrier", requiredKnowledge = 0},
            {id = "tool_assistant", requiredKnowledge = 100}
        }
    },
    artifacts = {enabled = true, total = 50}
}

return Config
