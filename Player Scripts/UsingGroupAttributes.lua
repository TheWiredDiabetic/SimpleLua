local Players = game:GetService("Players")
local Button = script.Parent.ClickDetector -- our example C.D.

-- For this example, we'll use a 'ClickDetector' to demostrate how Whitelists work.

Button.MouseClick:Connect(function(intPlayer)
    if intPlayer:GetRankInGroup(12345678) == 255 then -- <-- this uses the :GetRankInGroup option where it can check a group if the player is a certain rank (not role)
        print("This player is high enough in the group.")
    else -- an 'else' statement is the opposite, for example; this means if our player isn't the rank '255'
        print("This player isn't high enough in the group.")
    end

    if intPlayer:GetRoleInGroup(12345678) == "Sheriff's Deputy" then -- <-- this uses the :GetRoleInGroup option, where it does the same op. as the example above, but uses a string, known as "Sherrif's Deputy" to see if the player is that role.
        print("This player is a Sheriff's Deputy.")
    else -- an else statement to run another section of code if the user isn't that role.
        print("This player hasen't reached the Deputy's role yet.")
    end

    if intPlayer:IsInGroup(12345678) then -- finally, this example is a global whitelist, that does NOT check if the user is a certain role/rank, it checks if they are in the group.
        print("This player is in the group.")
    else -- code that runs if they aren't the group.
        print("This player is NOT in the group.")
    end
end)
