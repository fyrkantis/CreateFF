// money_printing.js
// Dollar printing via Create sequenced assembly and compacting/mixing

ServerEvents.recipes(event => {

  // ========== Dollar Bill (Sequenced Assembly) ==========
  event.remove({ output: 'city_modernities:dollarbill' })

  event.recipes.create.sequenced_assembly(
    // Output (single item, guaranteed)
    '4x city_modernities:dollarbill',
    // Input
    'minecraft:paper',
    // Sequence
    [
      event.recipes.create.deploying('minecraft:paper', ['minecraft:paper', 'minecraft:lime_dye']),
      event.recipes.create.pressing('minecraft:paper', 'minecraft:paper'),
      event.recipes.create.cutting('minecraft:paper', 'minecraft:paper').processingTime(50),
      // NOTE: The netherite hoe with Silk Touch + .anyDamage().toolNotConsumed() is complex.
      // In KubeJS Create for 1.21.1, deploying with NBT/enchanted items may require
      // Item.of() with component data. Adjust the enchantment format for 1.21 data components.
      event.recipes.create.deploying('minecraft:paper', ['minecraft:paper',
        Item.of('minecraft:netherite_hoe').enchant('minecraft:silk_touch', 1)
      ]).keepHeldItem(),
      event.recipes.create.filling('minecraft:paper', ['minecraft:paper', Fluid.of('create_dragons_plus:black_dye', 250)]),
      event.recipes.create.pressing('minecraft:paper', 'minecraft:paper')
    ]
  )
    .transitionalItem('minecraft:paper')
    .loops(1)
    .id('kubejs:dollar_printing')

  // ========== Dollar denominations ==========
  event.remove({ output: 'city_modernities:dollarsstack' })
  event.remove({ output: 'city_modernities:dollarsbag' })
  event.remove({ output: 'city_modernities:dollarblock' })

  // Stack: 10 bills -> 1 stack
  event.recipes.create.compacting('city_modernities:dollarsstack', ['10x city_modernities:dollarbill'])
    .id('kubejs:dollar_stacking')
  event.recipes.create.mixing('10x city_modernities:dollarbill', ['city_modernities:dollarsstack'])
    .id('kubejs:dollar_destacking')

  // Bag: 10 stacks -> 1 bag
  event.recipes.create.compacting('city_modernities:dollarsbag', ['10x city_modernities:dollarsstack'])
    .id('kubejs:dollar_bagging')
  event.recipes.create.mixing('10x city_modernities:dollarsstack', ['city_modernities:dollarsbag'])
    .id('kubejs:dollar_debagging')

  // Block: 10 bags -> 1 block
  event.recipes.create.compacting('city_modernities:dollarblock', ['10x city_modernities:dollarsbag'])
    .id('kubejs:dollar_blocking')
  event.recipes.create.mixing('10x city_modernities:dollarsbag', ['city_modernities:dollarblock'])
    .id('kubejs:dollar_deblocking')
})