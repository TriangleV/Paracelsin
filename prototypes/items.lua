local sounds = require("__base__.prototypes.entity.sounds")
local space_age_sounds = require("__space-age__.prototypes.entity.sounds")
local item_sounds = require("__base__.prototypes.item_sounds")
local space_age_item_sounds = require("__space-age__.prototypes.item_sounds")
local item_tints = require("__base__.prototypes.item-tints")
local item_effects = require("__space-age__.prototypes.item-effects")
local meld = require("meld")
local simulations = require("__space-age__.prototypes.factoriopedia-simulations")

data:extend{
      {
    type = "item-subgroup",
    name = "paracelsin-processes",
    group = "intermediate-products",
    order = "p-a"
  },
  {
    type = "item-subgroup",
    name = "nitric-acid-and-nitrogen",
    group = "intermediate-products",
    order = "p-b"
  },
    {
    type = "item-subgroup",
    name = "galvanization",
    group = "intermediate-products",
    order = "p-c"
  },
      {
    type = "item-subgroup",
    name = "zinc-fluids",
    group = "intermediate-products",
    order = "p-d"
  },
  {
    type = "fluid",
    name = "dirty-zinc-solution",
    subgroup = "zinc-fluids",
    default_temperature = 200,
    max_temperature = 300,
    base_color = {0.8, 0.89, 0.84},
    flow_color = {0.8, 0.89, 0.84},
    icon = "__Paracelsin-Graphics__/graphics/icons/dirty-zinc-solution.png",
    auto_barrel = false
  },
    {
    type = "fluid",
    name = "zinc-solution",
    subgroup = "zinc-fluids",
    default_temperature = 100,
    max_temperature = 200,
    base_color = {0.64, 0.67, 0.56},
    flow_color = {0.64, 0.67, 0.56},
    icon = "__Paracelsin-Graphics__/graphics/icons/zinc-solution.png",
    auto_barrel = false
  },
    {
    type = "fluid",
    name = "zinc-concentrate",
    subgroup = "zinc-fluids",
    default_temperature = 300,
    max_temperature = 400,
    base_color = {0.69, 0.65, 0.49},
    flow_color = {0.69, 0.65, 0.49},
    icon = "__Paracelsin-Graphics__/graphics/icons/zinc-concentrate.png",
    auto_barrel = false
  },
      {
    type = "fluid",
    name = "nitrogen",
    order = "a",
    subgroup = "nitric-acid-and-nitrogen",
    default_temperature = -200,
    max_temperature = -195,
    base_color = {0.40, 0.55, 0.71},
    flow_color = {0.40, 0.55, 0.71},
    icon = "__Paracelsin-Graphics__/graphics/icons/nitrogen.png",
    auto_barrel = true
  },
  {
    type = "fluid",
    name = "nitric-acid",
    order = "b",
    subgroup = "nitric-acid-and-nitrogen",
    default_temperature = 0,
    max_temperature = 83,
    base_color = {0.14, 0.07, 0.09},
    flow_color = {0.14, 0.07, 0.09},
    icon = "__Paracelsin-Graphics__/graphics/icons/nitric-acid.png",
    auto_barrel = true
  },
{
    type = "item",
    name = "sphalerite",
    subgroup = "paracelsin-processes",
    order = "a",
    icon = "__Paracelsin-Graphics__/graphics/icons/sphalerite-1.png",
    inventory_move_sound = item_sounds.resource_inventory_move,
    pick_sound = item_sounds.resource_inventory_pickup,
    drop_sound = item_sounds.resource_inventory_move,
    pictures =
        {
          { size = 64, filename = "__Paracelsin-Graphics__/graphics/icons/sphalerite-1.png",   scale = 0.5},
          { size = 64, filename = "__Paracelsin-Graphics__/graphics/icons/sphalerite-2.png", scale = 0.5},
          { size = 64, filename = "__Paracelsin-Graphics__/graphics/icons/sphalerite-3.png", scale = 0.5},
        },
    icon_size = 64,
    stack_size = 50,
    default_import_location = "paracelsin",
    weight = 10000,
},
{
    type = "item",
    name = "tetrahedrite",
    subgroup = "paracelsin-processes",
    order = "b",
    icon = "__Paracelsin-Graphics__/graphics/icons/tetrahedrite-1.png",
    inventory_move_sound = item_sounds.resource_inventory_move,
    pick_sound = item_sounds.resource_inventory_pickup,
    drop_sound = item_sounds.resource_inventory_move,
    pictures =
        {
          { size = 64, filename = "__Paracelsin-Graphics__/graphics/icons/tetrahedrite-1.png",   scale = 0.5},
          { size = 64, filename = "__Paracelsin-Graphics__/graphics/icons/tetrahedrite-2.png", scale = 0.5},
          { size = 64, filename = "__Paracelsin-Graphics__/graphics/icons/tetrahedrite-3.png", scale = 0.5},
        },
    icon_size = 64,
    stack_size = 50,
    default_import_location = "paracelsin",
    weight = 10000,
},
{
    type = "item",
    name = "vaterite",
    subgroup = "paracelsin-processes",
    order = "c",
    icon = "__Paracelsin-Graphics__/graphics/icons/vaterite-1.png",
    inventory_move_sound = item_sounds.resource_inventory_move,
    pick_sound = item_sounds.resource_inventory_pickup,
    drop_sound = item_sounds.resource_inventory_move,
    pictures =
        {
          { size = 64, filename = "__Paracelsin-Graphics__/graphics/icons/vaterite-1.png",   scale = 0.5},
          { size = 64, filename = "__Paracelsin-Graphics__/graphics/icons/vaterite-2.png", scale = 0.5},
          { size = 64, filename = "__Paracelsin-Graphics__/graphics/icons/vaterite-3.png", scale = 0.5},
        },
    icon_size = 64,
    stack_size = 50,
    default_import_location = "paracelsin",
    weight = 10000,
},
{
    type = "item",
    name = "zinc",
    subgroup = "paracelsin-processes",
    inventory_move_sound = item_sounds.resource_inventory_move,
    pick_sound = item_sounds.resource_inventory_pickup,
    drop_sound = item_sounds.resource_inventory_move,
    order = "d",
    icon = "__Paracelsin-Graphics__/graphics/icons/zinc-ore.png",
    icon_size = 64,
    stack_size = 50,
    default_import_location = "paracelsin",
    weight = 10000,
},
{
    type = "item",
    name = "zinc-plate",
    subgroup = "paracelsin-processes",
    order = "e",
    icon = "__Paracelsin-Graphics__/graphics/icons/zinc-plate.png",
    inventory_move_sound = item_sounds.metal_small_inventory_move,
    pick_sound = item_sounds.metal_small_inventory_pickup,
    drop_sound = item_sounds.metal_small_inventory_move,
    icon_size = 64,
    stack_size = 50,
    default_import_location = "paracelsin",
    weight = 4000,
},
{
    type = "item",
    name = "zinc-rivets",
    subgroup = "paracelsin-processes",
    order = "f",
    icon = "__Paracelsin-Graphics__/graphics/icons/zinc-rivets-1.png",
    inventory_move_sound = item_sounds.metal_small_inventory_move,
    pick_sound = item_sounds.metal_small_inventory_pickup,
    drop_sound = item_sounds.metal_small_inventory_move,
    pictures =
        {
          { size = 64, filename = "__Paracelsin-Graphics__/graphics/icons/zinc-rivets-1.png",   scale = 0.5},
          { size = 64, filename = "__Paracelsin-Graphics__/graphics/icons/zinc-rivets-2.png", scale = 0.5},
          { size = 64, filename = "__Paracelsin-Graphics__/graphics/icons/zinc-rivets-3.png", scale = 0.5},
        },
    icon_size = 64,
    stack_size = 200,
    default_import_location = "paracelsin",
    weight = 10000,
},
{
    type = "item",
    name = "zinc-solder",
    subgroup = "paracelsin-processes",
    order = "g",
    icon = "__Paracelsin-Graphics__/graphics/icons/zinc-solder.png",
    inventory_move_sound = item_sounds.metal_small_inventory_move,
    pick_sound = item_sounds.metal_small_inventory_pickup,
    drop_sound = item_sounds.metal_small_inventory_move,
    icon_size = 64,
    stack_size = 200,
    default_import_location = "paracelsin",
    weight = 10000,
},
  {
    type = "item",
    name = "electric-coil",
    subgroup = "paracelsin-processes",
    order = "h",
    inventory_move_sound = space_age_item_sounds.rocket_inventory_move,
    pick_sound = space_age_item_sounds.rocket_inventory_pickup,
    drop_sound = space_age_item_sounds.rocket_inventory_move,
    icon = "__Paracelsin-Graphics__/graphics/icons/electric-coil.png",
    icon_size = 64,
    stack_size = 100,
    default_import_location = "paracelsin",
    weight = 20000,
},
{type = "tool",
    name = "galvanization-science-pack",
    localised_description = {"item-description.science-pack"},
    icon = "__Paracelsin-Graphics__/graphics/icons/galvanization-science-pack.png",
    subgroup = "science-pack",
    color_hint = { text = "M" },
    order = "l",
    inventory_move_sound = item_sounds.science_inventory_move,
    pick_sound = item_sounds.science_inventory_pickup,
    drop_sound = item_sounds.science_inventory_move,
    stack_size = 200,
    default_import_location = "paracelsin",
    weight = 1*kg,
    durability = 1,
    durability_description_key = "description.science-pack-remaining-amount-key",
    factoriopedia_durability_description_key = "description.factoriopedia-science-pack-remaining-amount-key",
    durability_description_value = "description.science-pack-remaining-amount-value",
    random_tint_color = item_tints.bluish_science
},
{
    type = "repair-tool",
    name = "advanced-repair-device",
    icon = "__Paracelsin-Graphics__/graphics/icons/advanced-repair-device.png",
    subgroup = "tool",
    order = "b[repair]-b[repair-pack]",
    inventory_move_sound = item_sounds.repair_pack_inventory_move,
    pick_sound = item_sounds.repair_pack_inventory_pickup,
    drop_sound = item_sounds.repair_pack_inventory_move,
    speed = 5,
    durability = 1000,
    stack_size = 50,
    weight = 20000,
    random_tint_color = item_tints.iron_rust
  },
}

data.raw.item["sulfur"].fuel_value = "1MJ"
data.raw.item["sulfur"].fuel_category = "chemical"