-- Order sort
require("prototypes.item-group-changes")

--Stack changes
	if settings.startup["5d-change-stack"] then
		for _,item in pairs(data.raw.item) do
			item.stack_size = item.stack_size * settings.startup["5d-change-stack"].value
		end
		for _,item in pairs(data.raw.ammo) do
			item.stack_size = item.stack_size * settings.startup["5d-change-stack"].value
		end
		for _,item in pairs(data.raw["capsule"]) do
			item.stack_size = item.stack_size * settings.startup["5d-change-stack"].value
		end
		for _,item in pairs(data.raw["module"]) do
			item.stack_size = item.stack_size * settings.startup["5d-change-stack"].value
		end
	end

-- Tree changes
	if settings.startup["5d-tree"].value then
		for _,tree in pairs(data.raw["tree"]) do
		   tree.collision_box = {{-0.02, -0.02}, {0.02, 0.02}}
		end
	end

--Player changes
	--Inventory size
		if settings.startup["5d-change-inventory"] then
			data.raw["player"]["player"].inventory_size = settings.startup["5d-change-inventory"].value
		end

	--Reach distance
		if settings.startup["5d-long-reach"] then
			data.raw["player"]["player"].build_distance = settings.startup["5d-long-reach"].value
			data.raw["player"]["player"].reach_distance = settings.startup["5d-long-reach"].value
		end

	--Light
		if settings.startup["5d-light-radius"] then
			data.raw["player"]["player"].light = {{ minimum_darkness = 0.3, intensity = 0.9, size = settings.startup["5d-light-radius"].value,},}
		end

	--Health
		if settings.startup["5d-hp"] then
			data.raw["player"]["player"].health = settings.startup["5d-hp"].value
		end

	--Healing per tick
		if settings.startup["5d-healing"] then
			data.raw["player"]["player"].healing_per_tick = settings.startup["5d-healing"].value
		end

	--Mining speed
		if settings.startup["5d-mining-speed"] then
			data.raw["player"]["player"].mining_speed = settings.startup["5d-mining-speed"].value
		end

	--Crafting speed
		if settings.startup["5d-crafting-speed"] then
			for _,item in pairs(data.raw.recipe) do
				if item.energy_required == nil or item.energy_required == 0 then item.energy_required = 1 end
				item.energy_required = item.energy_required / settings.startup["5d-crafting-speed"].value
			end
		end

	--Mining range
		if settings.startup["5d-long-mine"] then
			data.raw["player"]["player"].reach_resource_distance = settings.startup["5d-long-mine"].value
		end



-- Harded game
	-- Enemies spawner health
		if settings.startup["5d-bicho-spawner-hp"] then
			for _,item in pairs(data.raw["unit-spawner"]) do
				item.max_health = item.max_health * settings.startup["5d-bicho-spawner-hp"].value
			end
		end

	-- Enemies health
		if settings.startup["5d-bicho-hp"] then
			for _,item in pairs(data.raw.unit) do
				item.max_health = item.max_health * settings.startup["5d-bicho-hp"].value
			end
		end

	-- Enemies healing per tick
		if data.raw["simple-entity"]["tunnel-entrance"] then

		else
			for _,item in pairs(data.raw.unit) do
				if item.healing_per_tick then
					  item.healing_per_tick = item.healing_per_tick * settings.startup["5d-bicho-healing"].value
				else
					item.healing_per_tick = 0.01 * settings.startup["5d-bicho-healing"].value
				end
				
			end
		end

	-- Technologies cost

	-- Recipes cost