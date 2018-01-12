data:extend({
--Item
{
	type = "item",
	name = "5d-water-pumpjack",
	icon = "__5dim_mining__/graphics/icon/pumpjack_.png",
	icon_size = 32,
	flags = {"goes-to-quickbar"},
	subgroup = "liquid-water",
	order = "a",
	place_result = "5d-water-pumpjack",
	stack_size = 20
},
--Recipes
{
	type = "recipe",
	name = "5d-water-pumpjack",
	enabled = false,
	energy_required = 20,
	ingredients =
	{
		{"steel-plate", 10},
		{"iron-gear-wheel", 5},
		{"electronic-circuit", 5},
		{"pipe", 2},
	},
	result = "5d-water-pumpjack"
},
{
	type = "recipe",
	name = "5d-water-pumpjack-water",
	enabled = true,
	hidden = true,
	energy_required = 0.1, 
	category = "water",
	ingredients = {},
	results=
	{
		{type="fluid", name="water", amount=100},
	},
},
--Entity
{
	type = "assembling-machine",
	name = "5d-water-pumpjack",
	icon = "__5dim_mining__/graphics/icon/pumpjack_.png",
	icon_size = 32,
	flags = {"placeable-neutral", "placeable-player", "player-creation"},
	minable = {hardness = 0.2, mining_time = 0.5, result = "5d-water-pumpjack"},
	max_health = 250,
	corpse = "big-remnants",
	dying_explosion = "medium-explosion",
	resistances =
	{
		{
			type = "fire",
			percent = 70
		}
	},
	fluid_boxes =
	{
		{
			production_type = "output",
			pipe_picture = assembler2pipepictures(),
			pipe_covers = pipecoverspictures(),
			base_area = 10,
			base_level = 1,
			pipe_connections = {{ type="output", position = {0, 2} }}
		},
		off_when_no_fluid_recipe = true
	},
	collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
	selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
	base_picture =
	{
		sheet =
		{
			filename = "__base__/graphics/entity/pumpjack/pumpjack-base.png",
			priority = "extra-high",
			width = 114,
			height = 113,
			shift = {0.1875, -0.03125}
		}
	},
	animation =
	{
		filename = "__5dim_mining__/graphics/icon/pumpjack-animation.png",
		priority = "high",
		width = 116,
		height = 110,
		frame_count = 40,
		line_length = 10,
		shift = {0.125, -0.71875},
		animation_speed = 0.5
	},
	open_sound = { filename = "__base__/sound/machine-open.ogg", volume = 0.85 },
	close_sound = { filename = "__base__/sound/machine-close.ogg", volume = 0.75 },
	vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
	working_sound =
	{
		sound = { filename = "__base__/sound/pumpjack.ogg" },
		apparent_volume = 1.5,
	},
	crafting_categories = {"water"},
	crafting_speed = 1.0,
	energy_source =
	{
		type = "electric",
		usage_priority = "secondary-input",
		emissions = 0.1 ,
	},
	energy_usage = "150kW",
	ingredient_count = 1,
	module_specification =
	{
		module_slots = 4
	},
	fixed_recipe = "5d-water-pumpjack-water",
	allowed_effects = {"consumption", "speed", "productivity", "pollution"},
},
})

