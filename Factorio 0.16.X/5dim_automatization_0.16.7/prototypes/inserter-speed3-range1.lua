data:extend({
-- Item
  {
    type = "item",
    name = "5d-inserter-speed3-range1",
    icon = "__5dim_automatization__/graphics/icon/icon_5d_inserter_3c31f.png",
    flags = {"goes-to-quickbar"},
    icon_size = 32,
    subgroup = "inserters-speed3",
    order = "a",
    place_result = "5d-inserter-speed3-range1",
    stack_size = 50
  },

--Recipe
  {
    type = "recipe",
    name = "5d-inserter-speed3-range1",
    enabled ="false",
    ingredients =
    {
      {"electronic-circuit", 5},
      {"fast-inserter", 1}
    },
    result = "5d-inserter-speed3-range1"
  },

--Entity
   {
    type = "inserter",
    name = "5d-inserter-speed3-range1",
    icon = "__5dim_automatization__/graphics/icon/icon_5d_inserter_3c31f.png",
    flags = {"placeable-neutral", "placeable-player", "player-creation"},
    icon_size = 32,
    rotation_speed = 0.070,
    extension_speed = 0.035,
    pickup_position = {0, -1},
    insert_position = {0, 1.2},
    hand_size = 1.5,
    minable =
    {
      hardness = 0.2,
      mining_time = 0.5,
      result = "5d-inserter-speed3-range1"
    },
    max_health = 40,
    corpse = "small-remnants",
    resistances =
    {
      {
        type = "fire",
        percent = 90
      }
    },
    collision_box = {{-0.15, -0.15}, {0.15, 0.15}},
    selection_box = {{-0.4, -0.35}, {0.4, 0.45}},
    energy_per_movement = 5000,
    energy_per_rotation = 5000,
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      drain = "0.4kW"
    },
    extension_speed = 0.07,
    fast_replaceable_group = "inserter",
    working_sound =
    {
      match_progress_to_activity = true,
      sound =
      {
        {
          filename = "__base__/sound/inserter-fast-1.ogg",
          volume = 0.75
        },
        {
          filename = "__base__/sound/inserter-fast-2.ogg",
          volume = 0.75
        },
        {
          filename = "__base__/sound/inserter-fast-3.ogg",
          volume = 0.75
        },
        {
          filename = "__base__/sound/inserter-fast-4.ogg",
          volume = 0.75
        },
        {
          filename = "__base__/sound/inserter-fast-5.ogg",
          volume = 0.75
        }
      }
    },
    hand_base_picture =
    {
      filename = "__base__/graphics/entity/inserter/inserter-hand-base.png",
      priority = "extra-high",
      width = 8,
      height = 33
    },
    hand_closed_picture =
    {
      filename = "__5dim_automatization__/graphics/icon/hand_closed_far.png",
      priority = "extra-high",
      width = 18,
      height = 41
    },
    hand_open_picture =
    {
      filename = "__5dim_automatization__/graphics/icon/hand_open_far.png",
      priority = "extra-high",
      width = 18,
      height = 41
    },
    hand_base_shadow =
    {
      filename = "__base__/graphics/entity/burner-inserter/burner-inserter-hand-base-shadow.png",
      priority = "extra-high",
      width = 8,
      height = 34
    },
    hand_closed_shadow =
    {
      filename = "__base__/graphics/entity/burner-inserter/burner-inserter-hand-closed-shadow.png",
      priority = "extra-high",
      width = 18,
      height = 41
    },
    hand_open_shadow =
    {
      filename = "__base__/graphics/entity/burner-inserter/burner-inserter-hand-open-shadow.png",
      priority = "extra-high",
      width = 18,
      height = 41
    },
    platform_picture =
    {
      sheet =
      {
        filename = "__5dim_automatization__/graphics/icon/5d_platform.png",
        priority = "extra-high",
        width = 46,
        height = 46,
      }
    },
    circuit_wire_connection_points = circuit_connector_definitions["inserter"].points,
    circuit_connector_sprites = circuit_connector_definitions["inserter"].sprites,
    circuit_wire_max_distance = inserter_circuit_wire_max_distance,
    default_stack_control_input_signal = inserter_default_stack_control_input_signal,
  },
})