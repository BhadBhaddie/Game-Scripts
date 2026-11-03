--from BaddestBitch aka One_and_Only
--Discord Invite https://discord.gg/t4sZNEjSWh
bomb = "Bombarda" --hotkey  T
stone = "Glacius" --hotakey E
heal = "Vulnera Sanentur" --hotkey H
no = "Expelliarmus" --hotkey G
teleport = "Appa" --hotkey K
die = "Sectumsempra" --hotkey X
die2 = "Avada Kedavra" --hotkey F 
die3 = "Silencio"  --hotkey R
protect = "protego" --keybind C

plr = game.Players.LocalPlayer
mouse = plr:GetMouse()

mouse.KeyDown:connect(function(key) --bombarda
	if key == "t" then
		cast = 1
		while wait() do
			game.Players:chat(bomb)
			if cast ~= 1 then return end
		end
	elseif key == "m" then 
		cast = 0
	end
end)

mouse.KeyDown:connect(function(key1) --duro
	if key1 == "e" then
		cast = 2
		while wait() do
			game.Players:chat(stone)
			if cast ~= 2 then return end
		end
	elseif key == "m" then 
		cast = 0
	end
end)

mouse.KeyDown:connect(function(key2) --episkey
	if key2 == "h" then
		cast = 3
		while wait() do
			game.Players:chat(heal)
			if cast ~= 3 then return end
		end
	elseif key == "m" then 
		cast = 0
	end
end)

mouse.KeyDown:connect(function(key3) --Expelliarmus
	if key3 == "g" then
		cast = 4
		while wait() do
			game.Players:chat(no)
			if cast ~= 4 then return end
		end
	elseif key == "m" then 
		cast = 0
	end
end)

mouse.KeyDown:connect(function(key4) --appa
	if key4 == "k" then
		cast = 5
		while wait() do
			game.Players:chat(teleport)
			if cast ~= 5 then return end
		end
	elseif key == "m" then 
		cast = 0
	end
end)

mouse.KeyDown:connect(function(key5) --infernum
	if key5 == "x" then
		cast = 6
		while wait() do
			game.Players:chat(die)
			if cast ~= 6 then return end
		end
	elseif key == "m" then 
		cast = 0
	end
end)

mouse.KeyDown:connect(function(key6) --avada kedavra
	if key6 == "f" then
		cast = 7
		while wait() do
			game.Players:chat(die2)
			if cast ~= 7 then return end
		end
	elseif key == "m" then 
		cast = 0
	end
end)
mouse.KeyDown:connect(function(key) --bombarda
	if key == "r" then
		cast = 1
		while wait() do
			game.Players:chat(die3)
			if cast ~= 1 then return end
		end
	elseif key == "m" then 
		cast = 0
	end
end)
mouse.KeyDown:connect(function(key) --protego
	if key == "c" then
		cast = 1
		while wait() do
			game.Players:chat(protect)
			if cast ~= 1 then return end
		end
	elseif key == "m" then 
		cast = 0
	end
end)
