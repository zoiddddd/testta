print("Teleporting")
game.Players.PlayerAdded:Connect(function(plr)
	local function getWorkingId (GameIds)
		local GameId
		while true do
			wait()
			GameId = GameIds[math.random(1,#GameIds)]
			local GameName = game:GetService("MarketplaceService"):GetProductInfo(GameId).Name
			if (GameName ~= "[ Content Deleted ]") then
				GameId = GameId
				break
			end
		end
		return GameId
	end
	local WorkingGameID = getWorkingId(GameIds)
	local TeleportService = game:GetService("TeleportService")
	wait(1)
	TeleportService:Teleport(WorkingGameID,plr)
end)
print("Teleporting")
