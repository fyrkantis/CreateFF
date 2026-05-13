// adjusted_food.js
// Gjort av DrTid gib credit
// NOTE: forge: tags changed to c: for NeoForge 1.21.1
// NOTE: Compostable values must be set via ItemEvents or a startup script in newer KubeJS

ServerEvents.recipes(event => {

  // ========== Easter egg credit recipe ==========
  // NOTE: NBT/component handling has changed in 1.21. custom_name is now a data component.
  // This recipe may need adjustment depending on how your pack handles custom-named items.
  // Skipping the bedrock credit recipe as it relied on CraftTweaker NBT syntax.

  // ========== Salt conversion ==========
  event.shapeless('unusual_delight:salt', ['vintagedelight:salt_dust'])
    .id('kubejs:salt1')
  event.shapeless('vintagedelight:salt_dust', ['unusual_delight:salt'])
    .id('kubejs:salt2')

  // ========== Ruby Chocolate (Create Mixing) ==========
  event.remove({ id: 'create_confectionery:ruby_chocolate_recipe' })
  event.recipes.create.mixing(
    [Fluid.of('create_confectionery:ruby_chocolate', 250)],
    ['minecraft:sugar', 'minecraft:cocoa_beans', Fluid.of('create_central_kitchen:dragon_breath', 250), Fluid.of('minecraft:milk', 250)]
  ).heated()
    .id('kubejs:ruby_chocolate')

  // ========== Dough compatibility ==========
  // Remove create dough, use farmers delight dough instead
  event.remove({ output: 'create:dough' })
  event.remove({ output: 'farmersdelight:wheat_dough' })

  event.shapeless('minecraft:slime_ball', ['minecraft:lime_dye', 'farmersdelight:wheat_dough'])
    .id('kubejs:slime_lime')
  event.shapeless('farmersdelight:wheat_dough', ['create:wheat_flour', 'minecraft:water_bucket'])
    .id('kubejs:dough_shapeless')

  event.recipes.create.mixing('farmersdelight:wheat_dough', ['create:wheat_flour', Fluid.of('minecraft:water', 1000)])
    .id('kubejs:dough_mixung')

  event.recipes.create.splashing('farmersdelight:wheat_dough', 'create:wheat_flour')
    .id('kubejs:vetefint')

  // ========== Knife tags ==========
  // Tag modifications are handled in a separate tags event below

  // ========== Sandwich bread tag ==========
  // Tag modifications are handled in a separate tags event below

  // ========== Pasta ==========
  event.remove({ output: 'farmersdelight:raw_pasta' })
  event.remove({ type: 'farmersdelight:cutting', output: 'farmersdelight:raw_pasta' })
  event.remove({ type: 'farmersdelight:cooking', output: 'farmersdelight:raw_pasta' })
  event.remove({ type: 'farmersdelight:cooking', output: 'farmersdelight:wheat_dough' })

  event.recipes.create.cutting('farmersdelight:raw_pasta', 'farmersdelight:wheat_dough')
    .id('kubejs:pasta_sag')
  event.recipes.create.mixing('4x farmersdelight:raw_pasta', ['2x minecraft:wheat', 'minecraft:egg'])
    .id('kubejs:pasta_mix')

  // ========== Hot Cocoa ==========
  event.remove({ type: 'farmersdelight:cooking', output: 'farmersdelight:hot_cocoa' })
  event.recipes.create.filling('farmersdelight:hot_cocoa', ['minecraft:glass_bottle', Fluid.of('create:chocolate', 250)])
    .id('kubejs:choco')

  // ========== Cookie ==========
  event.remove({ output: 'minecraft:cookie' })
  event.shapeless('minecraft:cookie', ['minecraft:wheat', 'minecraft:cocoa_beans', 'minecraft:wheat'])
    .id('kubejs:shapeless_coocie')

  // ========== Sweet Berry Cheesecake (Create Mixing) ==========
  event.recipes.create.mixing('farmersdelight:sweet_berry_cheesecake',
    ['4x minecraft:sweet_berries', 'farmersdelight:pie_crust', Fluid.of('minecraft:milk', 500)]
  ).id('kubejs:mmmpaj2')

  // ========== Pancake (Create Compacting) ==========
  event.remove({ output: 'supplementaries:pancake' })
  event.recipes.create.compacting('8x supplementaries:pancake',
    ['minecraft:egg', 'minecraft:sugar', Fluid.of('minecraft:milk', 250)]
  ).heated()
    .id('kubejs:pankaka')

  // ========== Fix onion duplication ==========
  event.remove({ output: 'some_assembly_required:sliced_onion' })
  event.recipes.farmersdelight.cutting(
    'farmersdelight:onion',
    '#c:tools/knife',
    ['2x some_assembly_required:sliced_onion']
  ).id('kubejs:sliced_onion')

  // ========== Taco recipe adjustment ==========
  event.remove({ output: 'corn_delight:taco' })
  event.shapeless('corn_delight:taco', [
    'corn_delight:tortilla',
    '#c:crops/onion',
    'farmersdelight:tomato',
    '#c:salad_ingredients',
    '#c:foods/cooked_beef'
  ]).id('kubejs:taco')
})

// ========== Tag modifications ==========
ServerEvents.tags('item', event => {
  // Knife tags - add neptunium fillet knife to relevant knife/tool tags
  event.add('farmersdelight:tools/knives', 'aquaculture:neptunium_fillet_knife')
  event.add('c:tools/knife', 'aquaculture:neptunium_fillet_knife')
  event.add('farmersdelight:straw_harvesters', 'aquaculture:neptunium_fillet_knife')
  event.add('c:tools', 'aquaculture:neptunium_fillet_knife')

  // Add fillet knife tag contents to farmersdelight knife tag
  // NOTE: The forge:fillet_knife tag may not exist in 1.21.1 - adjust as needed
  // event.add('farmersdelight:tools/knives', '#c:fillet_knife')

  // Sandwich bread tag
  event.add('some_assembly_required:sandwich_bread', 'minecraft:bread')
})
