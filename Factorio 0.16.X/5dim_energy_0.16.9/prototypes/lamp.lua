data:extend({
-- Item
  {
    type = "item",
    name = "5d-lamp",
    icon = "__5dim_energy__/graphics/icon/icon_5d_small-lamp_2_.png",
    flags = {"goes-to-quickbar"},
    icon_size = 32,
    subgroup = "energy-lamp",
    order = "b",
    place_result = "5d-lamp",
    stack_size = 50
  },

--Recipe
  {
    type = "recipe",
    name = "5d-lamp",
    enabled = "false",
    ingredients =
    {
      {"electronic-circuit", 5},
      {"small-lamp", 1},
      {"iron-plate", 5},
      {"steel-plate", 2},
    },
    result = "5d-lamp"
  },

--Entity
  {
    type = "lamp",
    name = "5d-lamp",
    icon = "__5dim_energy__/graphics/icon/icon_5d_small-lamp_2_.png",
    flags = {"placeable-neutral", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "5d-lamp"},
    icon_size = 32,
    max_health = 55,
    corpse = "small-remnants",
    collision_box = {{-0.15, -0.15}, {0.15, 0.15}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input"
    },
    energy_usage_per_tick = "5KW",
    light = {intensity = 0.9, size = 200, color = {r=1.0, g=1.0, b=1.0}},
    light_when_colored = {intensity = 0.9, size = 200, color = {r=1.0, g=1.0, b=1.0}},
    glow_size = 200,
    glow_color_intensity = 0.135,
    picture_off =
    {
      filename = "__5dim_energy__/graphics/icon/icon_5d_small-lamp_2.png",
      priority = "high",
      width = 83,
      height = 75,
      shift = {0, -0.1}
    },
    picture_on =
    {
      filename = "__5dim_energy__/graphics/icon/icon_5d_small-lamp_2.png",
      priority = "high",
      width = 83,
      height = 75,
      x = 83,
      shift = {0, -0.1}
    },
    signal_to_color_mapping =
    {
      {type="virtual", name="signal-red", color={r=1,g=0,b=0}},
      {type="virtual", name="signal-green", color={r=0,g=1,b=0}},
      {type="virtual", name="signal-blue", color={r=0,g=0,b=1}},
      {type="virtual", name="signal-yellow", color={r=1,g=1,b=0}},
      {type="virtual", name="signal-pink", color={r=1,g=0,b=1}},
      {type="virtual", name="signal-cyan", color={r=0,g=1,b=1}},
    },

    circuit_wire_connection_point = circuit_connector_definitions["lamp"].points,
    circuit_connector_sprites = circuit_connector_definitions["lamp"].sprites,
    circuit_wire_max_distance = default_circuit_wire_max_distance
  },
})