data:extend({
-- Item
  {
    type = "item",
    name = "5d-offshore-pump-2",
    icon = "__5dim_energy__/graphics/icon/icon_5d_offshore-pump_3_.png",
    flags = {"goes-to-quickbar"},
    icon_size = 32,
    subgroup = "energy-offshore-pump",
    order = "c",
    place_result = "5d-offshore-pump-2",
    stack_size = 20
  },

--Recipe
  {
    type = "recipe",
    name = "5d-offshore-pump-2",
    enabled = "false",
    ingredients =
    {
      {"iron-plate", 20},
      {"copper-plate", 20},
      {"steel-plate", 20},
      {"electronic-circuit", 5},
      {"pipe", 10},
      {"5d-offshore-pump", 1},
      {"iron-gear-wheel", 5}
    },
    result = "5d-offshore-pump-2"
  },

--Entity
  {
    type = "offshore-pump",
    name = "5d-offshore-pump-2",
    icon = "__5dim_energy__/graphics/icon/icon_5d_offshore-pump_3_.png",
    icon_size = 32,
    flags = {"placeable-neutral", "player-creation", "filter-directions"},
    collision_mask = { "ground-tile", "object-layer" },
    fluid_box_tile_collision_test = { "ground-tile" },
    adjacent_tile_collision_test = { "water-tile" },
    minable = {mining_time = 1, result = "5d-offshore-pump-2"},
    --default offshore pump max_health is 150 now, it was set @ 80.
    max_health = 150,
    corpse = "small-remnants",
    fluid = "water",
    --default offshore pump has 30 impact resistance too.
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
    fast_replaceable_group = "offshore-pump",
    collision_box = {{-0.6, -1.05}, {0.6, 0.3}},
    selection_box = {{-1, -1.49}, {1, 0.49}},
    fluid_box =
    {
      base_area = 1,
      base_level = 1,
      pipe_covers = pipecoverspictures(),
	  production_type = "output",
      pipe_connections =
      {
        {
          position = {0, 1},
          type = "output"
        },
      },
    },
    --pumping speed change vanila pump is 20, this one is 100
    pumping_speed = 100,
    tile_width = 1,
    tile_height = 1,	
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    picture =
    {
      north =
      {
        filename = "__5dim_energy__/graphics/icon/icon_5d_offshore-pump_3.png",
        priority = "high",
        shift = {0.90625, 0.0625},
        width = 160,
        height = 102
      },
      east =
      {
        filename = "__5dim_energy__/graphics/icon/icon_5d_offshore-pump_3.png",
        priority = "high",
        shift = {0.90625, 0.0625},
        x = 160,
        width = 160,
        height = 102
      },
      south =
      {
        filename = "__5dim_energy__/graphics/icon/icon_5d_offshore-pump_3.png",
        priority = "high",
	---adjusted to fix detail spill from west image
        shift = {0.75, 0.65625},
        x = 320,
        width = 150,
        height = 102
      },
      west =
      {
        filename = "__5dim_energy__/graphics/icon/icon_5d_offshore-pump_3.png",
        priority = "high",
	---adjusted to fix detail clipping
        shift = {0.78125, 0.0625},
        x = 470,
        width = 170,
        height = 102
      }
    },
    circuit_wire_connection_points = circuit_connector_definitions["offshore-pump"].points,
    circuit_connector_sprites = circuit_connector_definitions["offshore-pump"].sprites,
    circuit_wire_max_distance = default_circuit_wire_max_distance
}
})
