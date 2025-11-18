--[[
    Knowledge Tree Manager
    Version: 1.0
    Handles player progression through tiers
--]]

local KnowledgeTree = {}
local DataStoreService = game:GetService("DataStoreService")
local PlayerData = DataStoreService:GetDataStore("PlayerKnowledge")

function KnowledgeTree.Init(player)
    local data = PlayerData:GetAsync(player.UserId) or {
        currentTier = 1,
        knowledgePoints = 0,
        unlockedZones = {"worker_village", "lower_ramps"}
    }
    
    KnowledgeTree.PlayerKnowledge[player.UserId] = data
    KnowledgeTree.ApplyZoneRestrictions(player, data.unlockedZones)
end

function KnowledgeTree.GrantKnowledge(player, points, domain)
    local data = KnowledgeTree.PlayerKnowledge[player.UserId]
    data.knowledgePoints = data.knowledgePoints + points
    
    -- Check for tier promotion
    KnowledgeTree.CheckPromotion(player, data)
    
    -- Save
    PlayerData:SetAsync(player.UserId, data)
end

return KnowledgeTree
