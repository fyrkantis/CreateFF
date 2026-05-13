// adjusted_blocks.js
// Sten creddit till DrTid igen
// henrik waz here

ServerEvents.recipes(event => {

  // ========== Färgad sand (Create Crushing) ==========
  event.recipes.create.crushing('biomesoplenty:white_sand', 'minecraft:calcite').processingTime(150)
    .id('kubejs:vit_sand')
  event.recipes.create.crushing('biomesoplenty:orange_sand', 'minecraft:dripstone_block').processingTime(150)
    .id('kubejs:orange_sand')
  event.recipes.create.crushing('biomesoplenty:black_sand', 'minecraft:blackstone').processingTime(150)
    .id('kubejs:svart_sand')

  // ========== Sandpaper ==========
  event.shapeless('create:sand_paper', ['minecraft:paper', 'biomesoplenty:white_sand'])
    .id('kubejs:vitt_sandpaper')
  event.shapeless('create:red_sand_paper', ['minecraft:paper', 'biomesoplenty:orange_sand'])
    .id('kubejs:orange_sandpaper')
  event.shapeless('create:red_sand_paper', ['minecraft:paper', 'biomesoplenty:black_sand'])
    .id('kubejs:svart_sandpaper')

  // ========== Spooky ==========
  event.remove({ output: 'minecraft:soul_sand' })

  event.recipes.create.haunting('minecraft:soul_sand', 'minecraft:sand')
    .id('kubejs:spookysand')
  event.recipes.create.haunting('minecraft:netherrack', 'minecraft:red_sand')
    .id('kubejs:spookysten')

  // ========== Sten automation ==========
  event.blasting('create:limestone', 'minecraft:calcite').xp(1.0)
    .id('kubejs:limesten')

  event.recipes.create.mixing('minecraft:calcite', ['minecraft:diorite', Fluid.of('minecraft:water', 1000)]).heated()
    .id('kubejs:calcite')
  event.recipes.create.compacting('minecraft:cobbled_deepslate', ['3x minecraft:flint', Fluid.of('minecraft:lava', 1000)])
    .id('kubejs:deepslate')
  event.recipes.create.compacting('minecraft:tuff', ['minecraft:dripstone_block', '3x minecraft:iron_nugget', 'minecraft:cobbled_deepslate', 'minecraft:calcite', Fluid.of('minecraft:lava', 1000)]).superheated()
    .id('kubejs:tufft_tuff')

  // ========== Rose Quartz (Sequenced Assembly) ==========
  event.recipes.create.sequenced_assembly(
    [
      CreateItem.of('create:rose_quartz', 0.5),
      CreateItem.of('minecraft:redstone', 0.25),
      CreateItem.of('minecraft:air', 0.25)
    ],
    'biomesoplenty:rose_quartz_block',
    [
      event.recipes.create.cutting('biomesoplenty:rose_quartz_block', 'biomesoplenty:rose_quartz_block').processingTime(150),
      event.recipes.create.deploying('biomesoplenty:rose_quartz_block', ['biomesoplenty:rose_quartz_block', 'minecraft:redstone']),
      event.recipes.create.deploying('biomesoplenty:rose_quartz_block', ['biomesoplenty:rose_quartz_block', 'minecraft:redstone']),
      event.recipes.create.filling('biomesoplenty:rose_quartz_block', ['biomesoplenty:rose_quartz_block', Fluid.of('minecraft:water', 250)]),
      event.recipes.create.pressing('biomesoplenty:rose_quartz_block', 'biomesoplenty:rose_quartz_block')
    ]
  )
    .transitionalItem('biomesoplenty:rose_quartz_block')
    .loops(1)
    .id('kubejs:aaaaaaaaa')

  // ========== Cart Assembly ==========
  event.remove({ output: 'create:cart_assembler' })
  event.shaped('create:cart_assembler', [
    'APA',
    'L L'
  ], {
    A: 'create:andesite_alloy',
    P: 'create:precision_mechanism',
    L: '#minecraft:logs_that_burn'
  }).id('kubejs:cart_assembly')

  // ========== Netherite ==========
  event.remove({ output: 'minecraft:netherite_scrap' })
  event.recipes.create.compacting('minecraft:netherite_scrap', ['minecraft:ancient_debris', Fluid.of('minecraft:lava', 250)]).superheated()
    .id('kubejs:netherite_varmt')

  // ========== POWER (Create Addition) ==========
  event.remove({ output: 'createaddition:electric_motor' })
  event.recipes.create.mechanical_crafting('createaddition:electric_motor', [
    '  P  ',
    ' ISI ',
    'ISRSI',
    ' ICI '
  ], {
    P: 'create:precision_mechanism',
    I: 'create:iron_sheet',
    S: 'createaddition:copper_spool',
    R: 'createaddition:brass_rod',
    C: 'createaddition:capacitor'
  }).id('kubejs:motor')

  event.remove({ output: 'createaddition:alternator' })
  event.recipes.create.mechanical_crafting('createaddition:alternator', [
    '  P  ',
    ' BSB ',
    'BSRSB',
    ' BCB '
  ], {
    P: 'create:precision_mechanism',
    B: 'create:brass_sheet',
    S: 'createaddition:copper_spool',
    R: 'createaddition:brass_rod',
    C: 'createaddition:capacitor'
  }).id('kubejs:generator')

  event.remove({ output: 'createaddition:modular_accumulator' })
  event.recipes.create.mechanical_crafting('createaddition:modular_accumulator', [
    ' C C ',
    'BCGCB',
    'BCPCB',
    'BCGCB'
  ], {
    C: 'createaddition:capacitor',
    B: 'create:brass_sheet',
    G: 'createaddition:gold_spool',
    P: 'create:precision_mechanism'
  }).id('kubejs:batari')

  // ========== Furnace: coal to ash ==========
  event.smelting('supplementaries:ash', '#minecraft:coals').xp(0.1)
    .id('kubejs:grilled_coal_to_ash')

  // ========== Create: Oxidized copper variants (filling with water) ==========
  // NOTE: Quark vertical slabs may not exist in 1.21.1 - adjust mod IDs as needed

  // -- Expose --
  event.recipes.create.filling('minecraft:exposed_copper', ['minecraft:copper_block', Fluid.of('minecraft:water', 250)]).id('kubejs:expose_copper')
  event.recipes.create.filling('minecraft:exposed_cut_copper', ['minecraft:cut_copper', Fluid.of('minecraft:water', 250)]).id('kubejs:expose_cut_copper')
  event.recipes.create.filling('minecraft:exposed_cut_copper_stairs', ['minecraft:cut_copper_stairs', Fluid.of('minecraft:water', 250)]).id('kubejs:expose_cut_copper_stairs')
  event.recipes.create.filling('minecraft:exposed_cut_copper_slab', ['minecraft:cut_copper_slab', Fluid.of('minecraft:water', 250)]).id('kubejs:expose_cut_copper_slab')
  event.recipes.create.filling('quark:exposed_cut_copper_vertical_slab', ['quark:cut_copper_vertical_slab', Fluid.of('minecraft:water', 250)]).id('kubejs:expose_cut_copper_vertical_slab')
  event.recipes.create.filling('create:exposed_copper_shingles', ['create:copper_shingles', Fluid.of('minecraft:water', 250)]).id('kubejs:expose_copper_shingles')
  event.recipes.create.filling('create:exposed_copper_shingle_stairs', ['create:copper_shingle_stairs', Fluid.of('minecraft:water', 250)]).id('kubejs:expose_copper_shingle_stairs')
  event.recipes.create.filling('create:exposed_copper_shingle_slab', ['create:copper_shingle_slab', Fluid.of('minecraft:water', 250)]).id('kubejs:expose_copper_shingle_slab')
  event.recipes.create.filling('create:exposed_copper_tiles', ['create:copper_tiles', Fluid.of('minecraft:water', 250)]).id('kubejs:expose_copper_tiles')
  event.recipes.create.filling('create:exposed_copper_tile_stairs', ['create:copper_tile_stairs', Fluid.of('minecraft:water', 250)]).id('kubejs:expose_copper_tile_stairs')
  event.recipes.create.filling('create:exposed_copper_tile_slab', ['create:copper_tile_slab', Fluid.of('minecraft:water', 250)]).id('kubejs:expose_copper_tile_slab')

  // -- Weather --
  event.recipes.create.filling('minecraft:weathered_copper', ['minecraft:exposed_copper', Fluid.of('minecraft:water', 250)]).id('kubejs:weather_copper')
  event.recipes.create.filling('minecraft:weathered_cut_copper', ['minecraft:exposed_cut_copper', Fluid.of('minecraft:water', 250)]).id('kubejs:weather_cut_copper')
  event.recipes.create.filling('minecraft:weathered_cut_copper_stairs', ['minecraft:exposed_cut_copper_stairs', Fluid.of('minecraft:water', 250)]).id('kubejs:weather_cut_copper_stairs')
  event.recipes.create.filling('minecraft:weathered_cut_copper_slab', ['minecraft:exposed_cut_copper_slab', Fluid.of('minecraft:water', 250)]).id('kubejs:weather_cut_copper_slab')
  event.recipes.create.filling('quark:weathered_cut_copper_vertical_slab', ['quark:exposed_cut_copper_vertical_slab', Fluid.of('minecraft:water', 250)]).id('kubejs:weather_cut_copper_vertical_slab')
  event.recipes.create.filling('create:weathered_copper_shingles', ['create:exposed_copper_shingles', Fluid.of('minecraft:water', 250)]).id('kubejs:weather_copper_shingles')
  event.recipes.create.filling('create:weathered_copper_shingle_stairs', ['create:exposed_copper_shingle_stairs', Fluid.of('minecraft:water', 250)]).id('kubejs:weather_copper_shingle_stairs')
  event.recipes.create.filling('create:weathered_copper_shingle_slab', ['create:exposed_copper_shingle_slab', Fluid.of('minecraft:water', 250)]).id('kubejs:weather_copper_shingle_slab')
  event.recipes.create.filling('create:weathered_copper_tiles', ['create:exposed_copper_tiles', Fluid.of('minecraft:water', 250)]).id('kubejs:weather_copper_tiles')
  event.recipes.create.filling('create:weathered_copper_tile_stairs', ['create:exposed_copper_tile_stairs', Fluid.of('minecraft:water', 250)]).id('kubejs:weather_copper_tile_stairs')
  event.recipes.create.filling('create:weathered_copper_tile_slab', ['create:exposed_copper_tile_slab', Fluid.of('minecraft:water', 250)]).id('kubejs:weather_copper_tile_slab')

  // -- Oxidize --
  event.recipes.create.filling('minecraft:oxidized_copper', ['minecraft:weathered_copper', Fluid.of('minecraft:water', 250)]).id('kubejs:oxidize_copper')
  event.recipes.create.filling('minecraft:oxidized_cut_copper', ['minecraft:weathered_cut_copper', Fluid.of('minecraft:water', 250)]).id('kubejs:oxidize_cut_copper')
  event.recipes.create.filling('minecraft:oxidized_cut_copper_stairs', ['minecraft:weathered_cut_copper_stairs', Fluid.of('minecraft:water', 250)]).id('kubejs:oxidize_cut_copper_stairs')
  event.recipes.create.filling('minecraft:oxidized_cut_copper_slab', ['minecraft:weathered_cut_copper_slab', Fluid.of('minecraft:water', 250)]).id('kubejs:oxidize_cut_copper_slab')
  event.recipes.create.filling('quark:oxidized_cut_copper_vertical_slab', ['quark:weathered_cut_copper_vertical_slab', Fluid.of('minecraft:water', 250)]).id('kubejs:oxidize_cut_copper_vertical_slab')
  event.recipes.create.filling('create:oxidized_copper_shingles', ['create:weathered_copper_shingles', Fluid.of('minecraft:water', 250)]).id('kubejs:oxidize_copper_shingles')
  event.recipes.create.filling('create:oxidized_copper_shingle_stairs', ['create:weathered_copper_shingle_stairs', Fluid.of('minecraft:water', 250)]).id('kubejs:oxidize_copper_shingle_stairs')
  event.recipes.create.filling('create:oxidized_copper_shingle_slab', ['create:weathered_copper_shingle_slab', Fluid.of('minecraft:water', 250)]).id('kubejs:oxidize_copper_shingle_slab')
  event.recipes.create.filling('create:oxidized_copper_tiles', ['create:weathered_copper_tiles', Fluid.of('minecraft:water', 250)]).id('kubejs:oxidize_copper_tiles')
  event.recipes.create.filling('create:oxidized_copper_tile_stairs', ['create:weathered_copper_tile_stairs', Fluid.of('minecraft:water', 250)]).id('kubejs:oxidize_copper_tile_stairs')
  event.recipes.create.filling('create:oxidized_copper_tile_slab', ['create:weathered_copper_tile_slab', Fluid.of('minecraft:water', 250)]).id('kubejs:oxidize_copper_tile_slab')
})
