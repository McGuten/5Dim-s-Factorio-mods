data:extend({
-- Item
{
  type = "item",
  name = "5d-chemical-plant-2",
  icon = "__5dim_automatization__/graphics/icon/chemical-plant_2_.png",
  flags = {"goes-to-quickbar"},
  icon_size = 32,
  subgroup = "liquid-plant",
  order = "b",
  place_result = "5d-chemical-plant-2",
  stack_size = 10
},

--Recipe
{
  type = "recipe",
  name = "5d-chemical-plant-2",
  energy_required = 8,
  enabled = false,
  ingredients =
  {
    {"chemical-plant", 1},
    {"pipe", 10},
    {"steel-plate", 5},
    {"iron-plate", 15},
  },
  result= "5d-chemical-plant-2"
},

--Entity
{
  type = "assembling-machine",
  name = "5d-chemical-plant-2",
  icon = "__5dim_automatization__/graphics/icon/chemical-plant_2_.png",
  flags = {"placeable-neutral","placeable-player", "player-creation"},
  minable = {hardness = 0.2, mining_time = 0.5, result = "5d-chemical-plant-2"},
  icon_size = 32,
  max_health = 300,
  corpse = "big-remnants",
  dying_explosion = "medium-explosion",
  collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
  selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
  fast_replaceable_group = "chemical-plant",
  module_specification =
  {
    module_slots = 3
  },
  allowed_effects = {"consumption", "speed", "productivity", "pollution"},

  animation = make_4way_animation_from_spritesheet({ layers =
    {
      {
        filename = "__base__/graphics/entity/chemical-plant/chemical-plant.png",
        width = 122,
        height = 134,
        frame_count = 1,
        shift = util.by_pixel(-5, -4.5),
        hr_version = {
          filename = "__base__/graphics/entity/chemical-plant/hr-chemical-plant.png",
          width = 244,
          height = 268,
          frame_count = 1,
          shift = util.by_pixel(-5, -4.5),
          scale = 0.5
        }
      },
      {
        filename = "__base__/graphics/entity/chemical-plant/chemical-plant-shadow.png",
        width = 175,
        height = 110,
        frame_count = 1,
        shift = util.by_pixel(31.5, 11),
        draw_as_shadow = true,
        hr_version = {
          filename = "__base__/graphics/entity/chemical-plant/hr-chemical-plant-shadow.png",
          width = 350,
          height = 219,
          frame_count = 1,
          shift = util.by_pixel(31.5, 10.75),
          draw_as_shadow = true,
          scale = 0.5
        }
      },
    }}),
  working_visualisations =
  {
    {
      north_position = util.by_pixel(30, -24),
      west_position = util.by_pixel(1, -49.5),
      south_position = util.by_pixel(-30, -48),
      east_position = util.by_pixel(-11, -1),
      apply_recipe_tint = "primary",
      animation =
      {
        filename = "__base__/graphics/entity/chemical-plant/boiling-green-patch.png",
        frame_count = 32,
        width = 15,
        height = 10,
        animation_speed = 0.5,
        hr_version = {
          filename = "__base__/graphics/entity/chemical-plant/hr-boiling-green-patch.png",
          frame_count = 32,
          width = 30,
          height = 20,
          animation_speed = 0.5,
          scale = 0.5
        }
      }
    },

    {
      north_position = util.by_pixel(30, -24),
      west_position = util.by_pixel(1, -49.5),
      south_position = util.by_pixel(-30, -48),
      east_position = util.by_pixel(-11, -1),
      apply_recipe_tint = "secondary",
      animation =
      {
        filename = "__base__/graphics/entity/chemical-plant/boiling-green-patch-mask.png",
        frame_count = 32,
        width = 15,
        height = 10,
        animation_speed = 0.5,
        hr_version = {
          filename = "__base__/graphics/entity/chemical-plant/hr-boiling-green-patch-mask.png",
          frame_count = 32,
          width = 30,
          height = 20,
          animation_speed = 0.5,
          scale = 0.5
        }
      }
    },


    {
      apply_recipe_tint = "tertiary",
      north_position = {0, 0},
      west_position = {0, 0},
      south_position = {0, 0},
      east_position = {0, 0},
      north_animation =
      {
        filename = "__base__/graphics/entity/chemical-plant/boiling-window-green-patch.png",
        frame_count = 1,
        width = 87,
        height = 60,
        shift = util.by_pixel(0, -5),
        hr_version = {
          filename = "__base__/graphics/entity/chemical-plant/hr-boiling-window-green-patch.png",
          x = 0,
          frame_count = 1,
          width = 174,
          height = 119,
          shift = util.by_pixel(0, -5.25),
          scale = 0.5
        }
      },
      east_animation =
      {
        filename = "__base__/graphics/entity/chemical-plant/boiling-window-green-patch.png",
        x = 87,
        frame_count = 1,
        width = 87,
        height = 60,
        shift = util.by_pixel(0, -5),
        hr_version = {
          filename = "__base__/graphics/entity/chemical-plant/hr-boiling-window-green-patch.png",
          x = 174,
          frame_count = 1,
          width = 174,
          height = 119,
          shift = util.by_pixel(0, -5.25),
          scale = 0.5
        }
      },
      south_animation =
      {
        filename = "__base__/graphics/entity/chemical-plant/boiling-window-green-patch.png",
        x = 174,
        frame_count = 1,
        width = 87,
        height = 60,
        shift = util.by_pixel(0, -5),
        hr_version = {
          filename = "__base__/graphics/entity/chemical-plant/hr-boiling-window-green-patch.png",
          x = 348,
          frame_count = 1,
          width = 174,
          height = 119,
          shift = util.by_pixel(0, -5.25),
          scale = 0.5
        }
      }
    }
  },
  vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
  working_sound =
  {
    sound =
    {
      {
        filename = "__base__/sound/chemical-plant.ogg",
        volume = 0.8
      }
    },
    idle_sound = { filename = "__base__/sound/idle1.ogg", volume = 0.6 },
    apparent_volume = 1.5,
  },
  crafting_speed = 2.5,
  energy_source =
  {
    type = "electric",
    usage_priority = "secondary-input",
    emissions = 0.03 / 3.5
  },
  energy_usage = "210kW",
  ingredient_count = 4,
  crafting_categories = {"chemistry"},
  fluid_boxes =
  {
    {
      production_type = "input",
      pipe_covers = pipecoverspictures(),
      base_area = 10,
      base_level = -1,
      pipe_connections = {{ type="input", position = {-1, -2} }}
    },
    {
      production_type = "input",
      pipe_covers = pipecoverspictures(),
      base_area = 10,
      base_level = -1,
      pipe_connections = {{ type="input", position = {1, -2} }}
    },
    {
      production_type = "output",
      pipe_covers = pipecoverspictures(),
      base_level = 1,
      pipe_connections = {{ position = {-1, 2} }}
    },
    {
      production_type = "output",
      pipe_covers = pipecoverspictures(),
      base_level = 1,
      pipe_connections = {{ position = {1, 2} }}
    }
  }
},
})
