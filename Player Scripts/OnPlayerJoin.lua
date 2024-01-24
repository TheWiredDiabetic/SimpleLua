local Players = game:GetService("Players") -- Gets the Player Service from Roblox.

Players.PlayerAdded:Connect(function(Player) -- This is the event that detects when the player joins the game, using function(Player) defines the Player so you can use it for other tasks in your script.
    print("Hello, " .. Player .. "!")
end)
