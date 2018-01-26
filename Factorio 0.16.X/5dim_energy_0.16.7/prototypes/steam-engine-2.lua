data:extend({
-- Item
  {
    type = "item",
    name = "5d-steam-engine-2",
    icon = "__5dim_energy__/graphics/icon/icon_5d_steam-engine_2_.png",
    flags = {"goes-to-quickbar"},
    icon_size = 32,
    subgroup = "energy-engine-1",
    order = "b[steam-power]-b[steam-engine]",
    place_result = "5d-steam-engine-2",
    stack_size = 50
  },

--Recipe
  {
    type = "recipe",
    name = "5d-steam-engine-2",
    enabled = "false",
    ingredients =
    {
      {"electronic-circuit", 8},
      {"iron-gear-wheel", 8},
      {"pipe", 8},
      {"steel-plate", 8},
      {"steam-engine", 1},
    },
    result = "5d-steam-engine-2"
  },

--Entity
  {
    type = "generator",
    name = "5d-steam-engine-2",
    icon = "__5dim_energy__/graphics/icon/icon_5d_steam-engine_2_.png",
    flags = {"placeable-neutral","player-creation"},
    minable = {mining_time = 1, result = "5d-steam-engine-2"},
    icon_size = 32,
    max_health = 400,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    effectivity = 2,
    fluid_usage_per_tick = 0.5,
    maximum_temperature = 165,
    resistances =
    {
      {
        type = "fire",
        percent = 70
      },
      {
        type = "impact",
        percent = 30
      }
    },
    collision_box = {{-1.35, -2.35}, {1.35, 2.35}},
    selection_box = {{-1.5, -2.5}, {1.5, 2.5}},
	  fast_replaceable_group = "steam-engine",
    fluid_box =
    {
      base_area = 1.2,
      height = 2,
      base_level = -1,
      pipe_covers = pipecoverspictures(),
      pipe_connections =
      {
        { type = "input-output", position = {0, 3} },
        { type = "input-output", position = {0, -3} },
      },
      production_type = "input-output",
      filter = "steam",
      minimum_temperature = 100.0
    },
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-output"
    },
    horizontal_animation =
    {
      filename = "__5dim_energy__/graphics/icon/icon_5d_steam-engine-horizontal_2.png",
      width = 246,
      height = 137,
      frame_count = 32,
      line_length = 8,
      shift = {1.34, -0.06}
    },
    vertical_animation =
    {
      filename = "__5dim_energy__/graphics/icon/icon_5d_steam-engine-vertical_2.png",
      width = 155,
      height = 186,
      frame_count = 32,
      line_length = 8,
      shift = {0.812, 0.031}
    },
    smoke =
    {
      {
        name = "smoke",
        north_position = {0, -2.2},
        east_position = {-1.9, -1.6},
        deviation = {0.2, 0.2},
        frequency = 2 / 31,
        starting_vertical_speed = 0.05
      }
    },
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    working_sound =
    {
      sound =
      {
        filename = "__base__/sound/steam-engine-90bpm.ogg",
        volume = 0.6
      },
      match_speed_to_activity = true,
    },
    min_perceived_performance = 0.25,
    performance_to_sound_speedup = 0.5
  },
})