// pot_everything.js
// DrTid moment - big feast recipes via Create mixing/compacting

ServerEvents.recipes(event => {

  // ========== Roast Chicken Block ==========
  event.remove({ output: 'farmersdelight:roast_chicken_block', type: 'minecraft:crafting_shaped' })
  event.remove({ output: 'farmersdelight:roast_chicken_block', type: 'minecraft:crafting_shapeless' })
  event.recipes.create.mixing('farmersdelight:roast_chicken_block', [
    'minecraft:chicken',
    '5x farmersdelight:red_mushroom_colony',
    '3x corn_delight:tortilla_chip',
    '5x someassemblyrequired:chopped_carrot',
    '2x minecraft:baked_potato',
    'farmersdelight:onion',
    Fluid.of('createaddition:seed_oil', 250)
  ]).heated()
    .id('kubejs:chicenblock')

  // ========== Honey Glazed Ham Block ==========
  event.remove({ output: 'farmersdelight:honey_glazed_ham_block', type: 'minecraft:crafting_shaped' })
  event.remove({ output: 'farmersdelight:honey_glazed_ham_block', type: 'minecraft:crafting_shapeless' })
  event.recipes.create.compacting('farmersdelight:honey_glazed_ham_block', [
    '4x minecraft:sweet_berries',
    '3x farmersdelight:smoked_ham',
    '3x farmersdelight:cooked_rice',
    '3x farmersdelight:brown_mushroom_colony',
    'farmersdelight:red_mushroom_colony',
    Fluid.of('create:honey', 1000),
    Fluid.of('createaddition:seed_oil', 250)
  ]).heated()
    .id('kubejs:mmmmmmhonungham')

  // ========== Shepherd's Pie Block ==========
  event.remove({ output: 'farmersdelight:shepherds_pie_block', type: 'minecraft:crafting_shaped' })
  event.remove({ output: 'farmersdelight:shepherds_pie_block', type: 'minecraft:crafting_shapeless' })
  event.recipes.create.mixing('farmersdelight:shepherds_pie_block', [
    'farmersdelight:mutton_wrap',
    '2x create:wheat_flour',
    'farmersdelight:tomato_sauce',
    '4x minecraft:baked_potato',
    '3x farmersdelight:onion',
    '7x farmersdelight:cooked_mutton_chops',
    Fluid.of('minecraft:milk', 1000)
  ]).heated()
    .id('kubejs:dumpaj')

  // ========== Nether Salad ==========
  event.remove({ output: 'farmersdelight:nether_salad', type: 'minecraft:crafting_shaped' })
  event.remove({ output: 'farmersdelight:nether_salad', type: 'minecraft:crafting_shapeless' })
  event.recipes.create.mixing('farmersdelight:nether_salad', [
    'minecraft:bowl',
    'mynethersdelight:warped_fungus_colony',
    'mynethersdelight:crimson_fungus_colony',
    'alexsmobs:lava_bottle'
  ]).heated()
    .id('kubejs:mmmnethersallad')
})