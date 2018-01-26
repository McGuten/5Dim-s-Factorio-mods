data:extend({
-- Item
  {
    type = "item",
    name = "5d-electric-pole-4",
    icon = "__5dim_energy__/graphics/icon/icon_5d_big-electric-pole_4_.png",
    flags = {"goes-to-quickbar"},
    icon_size = 32,
    subgroup = "energy-pole",
    order = "c",
    place_result = "5d-electric-pole-4",
    stack_size = 50
  },

--Recipe
  {
    type = "recipe",
    name = "5d-electric-pole-4",
    enabled = "false",
    ingredients =
    {
      {"steel-plate", 4},
      {"iron-plate", 4},
      {"copper-plate", 4}
    },
    result = "5d-electric-pole-4"
  },

--Entity
  {
    type = "electric-pole",
    name = "5d-electric-pole-4",
    icon = "__5dim_energy__/graphics/icon/icon_5d_big-electric-pole_4_.png",
    flags = {"placeable-neutral", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "5d-electric-pole-4"},
    icon_size = 32,
    max_health = 150,
    corpse = "medium-remnants",
    track_coverage_during_build_by_moving = true,
    resistances = 
    {
      {
        type = "fire",
        percent = 100
      }
    },
    collision_box = {{-0.15, -0.15}, {0.15, 0.15}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    drawing_box = {{-0.5, -2.8}, {0.5, 0.5}},
    maximum_wire_distance = 20,
    supply_area_distance = 7.5,
    pictures =
    {
      filename = "__5dim_energy__/graphics/icon/icon_5d_big-electric-pole_4.png",
      priority = "high",
      width = 136,
      height = 122,
      axially_symmetrical = false,
      direction_count = 4,
      shift = {1.4, -1.0}
    },
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    connection_points =
    {
      {
        shadow =
        {
          copper = {2.55, 0.4},
          green = {2.0, 0.4},
          red = {3.05, 0.4}
        },
        wire =
        {
          copper = {-0.03, -2.5},
          green = {-0.35,-2.5},
          red = {0.25,-2.5}
        }
      },
      {
        shadow =
        {
          copper = {2.9, 0.1},
          green = {2.6, -0.15},
          red = {3.25, 0.35}
        },
        wire =
        {
          copper = {0.05, -2.75},
          green = {-0.15, -2.9},
          red = {0.25, -2.55}
        }
      },
      {
        shadow =
        {
          copper = {1.5, -0.2},
          green = {1.5, -0.55},
          red = {1.5, 0.1}
        },
        wire =
        {
          copper = {-0.43, -2.4},
          green = {-0.43, -2.63},
          red = {-0.43, -2.2}
        }
      },
      {
        shadow =
        {
          copper = {2.88, 0.2},
          green = {3.2, -0.1},
          red = {2.45, 0.4}
        },
        wire =
        {
          copper = {0, -2.7},
          green = {0.22, -2.85},
          red = {-0.24, -2.55}
        }
      }
    },
    radius_visualisation_picture =
    {
      filename = "__base__/graphics/entity/small-electric-pole/electric-pole-radius-visualization.png",
      width = 12,
      height = 12
    },
  },
})