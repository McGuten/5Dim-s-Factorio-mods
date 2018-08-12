--Function
mk5_belt_horizontal =
  {
    filename = "__5dim_transport__/graphics/icon/icon_5d_tbelt_5.png",
    priority = "extra-high",
    width = 40,
    height = 40,
    frame_count = 32
  }
mk5_belt_vertical =
  {
    filename = "__5dim_transport__/graphics/icon/icon_5d_tbelt_5.png",
    priority = "extra-high",
    width = 40,
    height = 40,
    frame_count = 32,
    y = 40,
  }
mk5_belt_ending_top =
  {
    filename = "__5dim_transport__/graphics/icon/icon_5d_tbelt_5.png",
    priority = "extra-high",
    width = 40,
    height = 40,
    frame_count = 32,
    y = 80
  }
mk5_belt_ending_bottom =
  {
    filename = "__5dim_transport__/graphics/icon/icon_5d_tbelt_5.png",
    priority = "extra-high",
    width = 40,
    height = 40,
    frame_count = 32,
    y = 120
  }
mk5_belt_ending_side =
  {
    filename = "__5dim_transport__/graphics/icon/icon_5d_tbelt_5.png",
    priority = "extra-high",
    width = 40,
    height = 40,
    frame_count = 32,
    y = 160
  }
mk5_belt_starting_top =
  {
    filename = "__5dim_transport__/graphics/icon/icon_5d_tbelt_5.png",
    priority = "extra-high",
    width = 40,
    height = 40,
    frame_count = 32,
    y = 200
  }
mk5_belt_starting_bottom =
  {
    filename = "__5dim_transport__/graphics/icon/icon_5d_tbelt_5.png",
    priority = "extra-high",
    width = 40,
    height = 40,
    frame_count = 32,
    y = 240
  }
mk5_belt_starting_side =
  {
    filename = "__5dim_transport__/graphics/icon/icon_5d_tbelt_5.png",
    priority = "extra-high",
    width = 40,
    height = 40,
    frame_count = 32,
    y = 280
  }
data:extend({
-- Item
  {
    type = "item",
    name = "5d-loader-5",
    icon = "__5dim_automatization__/graphics/icon/loader-5_.png",
    flags = {"goes-to-quickbar"},
    icon_size = 32,
    subgroup = "transport-loader",
    order = "e",
    place_result = "5d-loader-5",
    stack_size = 50
  },

--Recipe
  {
    type = "recipe",
    name = "5d-loader-5",
    enabled = false,
    energy_required = 10,
    ingredients =
    {
      {"5d-mk5-transport-belt", 5},
      {"5d-loader-4", 1}
    },
    result = "5d-loader-5"
  },

--Entity
  {
    type = "loader",
    name = "5d-loader-5",
    icon = "__5dim_automatization__/graphics/icon/loader-5_.png",
    flags = {"placeable-neutral", "player-creation", "fast-replaceable-no-build-while-moving"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "5d-loader-5"},
    icon_size = 32,
    max_health = 170,
    filter_count = 5,
    corpse = "small-remnants",
    resistances =
    {
      {
        type = "fire",
        percent = 60
      }
    },
    collision_box = {{-0.4, -0.9}, {0.4, 0.9}},
    selection_box = {{-0.5, -1}, {0.5, 1}},
    animation_speed_coefficient = 32,
    belt_horizontal = mk5_belt_horizontal,
    belt_vertical = mk5_belt_vertical,
    ending_top = mk5_belt_ending_top,
    ending_bottom = mk5_belt_ending_bottom,
    ending_side = mk5_belt_ending_side,
    starting_top = mk5_belt_starting_top,
    starting_bottom = mk5_belt_starting_bottom,
    starting_side = mk5_belt_starting_side,
    fast_replaceable_group = "loader",
    speed = 0.15,
    structure =
    {
      direction_in =
      {
        sheet =
        {
          filename = "__5dim_automatization__/graphics/icon/loader-5.png",
          priority = "extra-high",
          width = 128,
          height = 128
        }
      },
      direction_out =
      {
        sheet =
        {
          filename = "__5dim_automatization__/graphics/icon/loader-5.png",
          priority = "extra-high",
          width = 128,
          height = 128,
          y = 128
        }
      }
    },
    ending_patch = ending_patch_prototype
  },
})