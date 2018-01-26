data:extend({
  {
    type = "technology",
    name = "solar-energy-2",
    icon = "__base__/graphics/technology/solar-energy.png",
    icon_size = 128, 
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "5d-solar-panel-2"
      }
    },
    prerequisites = {"solar-energy"},
    unit =
    {
      count = 100,
      ingredients =
      {
        {"science-pack-1", 2},
        {"science-pack-2", 2}
      },
      time = 40
    },
    order = "a-h-c",
  },
  {
    type = "technology",
    name = "solar-energy-3",
    icon = "__base__/graphics/technology/solar-energy.png",
    icon_size = 128, 
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "5d-solar-panel-3"
      }
    },
    prerequisites = {"solar-energy-2"},
    unit =
    {
      count = 150,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1}
      },
      time = 40
    },
    order = "a-h-c",
  },
  {
    type = "technology",
    name = "electric-energy-accumulators-2",
    icon = "__base__/graphics/technology/electric-energy-acumulators.png",
    icon_size = 128, 
    localised_name = {"technology-name.electric-energy-accumulators-2"},
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "5d-basic-accumulator-2"
      }
    },
    prerequisites = {"electric-energy-accumulators-1"},
    unit =
    {
      count = 100,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1}
      },
      time = 30
    },
    order = "c-e-a",
  },
  {
    type = "technology",
    name = "electric-energy-accumulators-3",
    icon = "__base__/graphics/technology/electric-energy-acumulators.png",
    icon_size = 128, 
    localised_name = {"technology-name.electric-energy-accumulators-3"},
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "5d-basic-accumulator-3"
      }
    },
    prerequisites = {"electric-energy-accumulators-2"},
    unit =
    {
      count = 150,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1}
      },
      time = 30
    },
    order = "c-e-a",
  },
  {
    type = "technology",
    name = "engine-2",
    icon = "__5dim_energy__/graphics/icon/steamengine.png",
	icon_size = 128,
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "5d-steam-engine-2"
      }
    },
    prerequisites = {"logistics-2"},
    unit =
    {
      count = 100,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1}
      },
      time = 30
    },
    order = "c-e-a",
  },
  {
    type = "technology",
    name = "engine-3",
    icon = "__5dim_energy__/graphics/icon/steamengine.png",
	icon_size = 128,
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "5d-steam-engine-3"
      }
    },
    prerequisites = {"engine-2"},
    unit =
    {
      count = 100,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1}
      },
      time = 30
    },
    order = "c-e-a",
  },
  {
    type = "technology",
    name = "electric-energy-distribution-3",
    icon = "__base__/graphics/technology/electric-energy-distribution.png",
    icon_size = 128, 
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "5d-electric-pole-4"
      },
      {
        type = "unlock-recipe",
        recipe = "5d-electric-pole-5"
      }
    },
    prerequisites = {"electric-energy-distribution-2"},
    unit =
    {
      count = 200,
      ingredients =
      {
        {"science-pack-1", 2},
        {"science-pack-2", 2},
        {"science-pack-3", 1},
        {"production-science-pack", 1},
      },
      time = 60
    },
    order = "c-e-c",
  },
  {
    type = "technology",
    name = "electric-energy-distribution-4",
    icon = "__base__/graphics/technology/electric-energy-distribution.png",
    icon_size = 128, 
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "5d-electric-pole-6"
      },
    },
    prerequisites = {"electric-energy-distribution-3"},
    unit =
    {
      count = 200,
      ingredients =
      {
        {"science-pack-1", 2},
        {"science-pack-2", 2},
        {"science-pack-3", 1},
        {"production-science-pack", 1},
        {"high-tech-science-pack", 1}
      },
      time = 60
    },
    order = "c-e-c",
  },
  {
    type = "technology",
    name = "optics-2",
    icon = "__base__/graphics/technology/optics.png",
    icon_size = 128, 
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "5d-lamp"
      }
    },
    prerequisites = {"optics"},
    unit =
    {
      count = 50,
      ingredients = {{"science-pack-1", 1}},
      time = 15
    },
    order = "a-h-a",
  },
  {
    type = "technology",
    name = "offshore-pump-tech",
    icon = "__5dim_energy__/graphics/icon/pump.png",
	icon_size = 128,
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "5d-offshore-pump"
      }
    },
    prerequisites = {"logistics-2"},
    unit =
    {
      count = 100,
      ingredients = 
	  {
		{"science-pack-1", 1},
		{"science-pack-2", 1},
	  },
      time = 15
    },
    order = "a-h-a",
  },
  {
    type = "technology",
    name = "offshore-pump-tech-2",
    icon = "__5dim_energy__/graphics/icon/pump.png",
	icon_size = 128,
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "5d-offshore-pump-2"
      }
    },
    prerequisites = {"offshore-pump-tech", "logistics-3"},
    unit =
    {
      count = 100,
      ingredients = 
	  {
		{"science-pack-1", 1},
		{"science-pack-2", 1},
		{"science-pack-3", 1},
	  },
      time = 15
    },
    order = "a-h-a",
  },
  {
    type = "technology",
    name = "small-pump-tech",
    icon = "__5dim_energy__/graphics/icon/pump2.png",
	icon_size = 128,
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "5d-small-pump"
      }
    },
    prerequisites = {"logistics-2"},
    unit =
    {
      count = 100,
      ingredients = 
	  {
		{"science-pack-1", 1},
		{"science-pack-2", 1},
	  },
      time = 15
    },
    order = "a-h-a",
  },
  {
    type = "technology",
    name = "small-pump-tech-2",
    icon = "__5dim_energy__/graphics/icon/pump2.png",
	icon_size = 128,
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "5d-small-pump-2"
      }
    },
    prerequisites = {"small-pump-tech", "logistics-3"},
    unit =
    {
      count = 100,
      ingredients = 
	  {
		{"science-pack-1", 1},
		{"science-pack-2", 1},
		{"science-pack-3", 1},
	  },
      time = 15
    },
    order = "a-h-a",
  },
  {
    type = "technology",
    name = "boiler-tech",
    icon = "__5dim_energy__/graphics/icon/boiler.png",
	icon_size = 128,
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "5d-boiler"
      }
    },
    prerequisites = {"logistics-2"},
    unit =
    {
      count = 100,
      ingredients = 
	  {
		{"science-pack-1", 1},
		{"science-pack-2", 1},
	  },
      time = 15
    },
    order = "a-h-a",
  },
  {
    type = "technology",
    name = "boiler-tech-2",
    icon = "__5dim_energy__/graphics/icon/boiler.png",
	icon_size = 128,
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "5d-boiler-2"
      }
    },
    prerequisites = {"boiler-tech", "logistics-3"},
    unit =
    {
      count = 100,
      ingredients = 
	  {
		{"science-pack-1", 1},
		{"science-pack-2", 1},
		{"science-pack-3", 1},
	  },
      time = 15
    },
    order = "a-h-a",
  },
})