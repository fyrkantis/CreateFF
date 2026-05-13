// aircraft.js
// Immersive Aircraft recipe adjustments using Create components

ServerEvents.recipes(event => {

  // ========== Airship (Mechanical Crafting) ==========
  event.remove({ output: 'immersive_aircraft:airship' })
  event.recipes.create.mechanical_crafting('immersive_aircraft:airship', [
    'SSSSS',
    'T T T',
    'HHEhp',
    'HHsHH'
  ], {
    S: 'immersive_aircraft:sail',
    T: 'minecraft:string',
    H: 'immersive_aircraft:hull',
    e: 'immersive_aircraft:engine',
    p: 'create:propeller',
    s: '#create:seats'
  }).id('kubejs:airship')

  // ========== Biplane (Mechanical Crafting) ==========
  event.remove({ output: 'immersive_aircraft:biplane' })
  event.recipes.create.mechanical_crafting('immersive_aircraft:biplane', [
    '   S ',
    'S  S ',
    'HHsEP',
    'S  S ',
    '   S '
  ], {
    S: 'immersive_aircraft:sail',
    H: 'immersive_aircraft:hull',
    s: '#create:seats',
    E: 'immersive_aircraft:engine',
    P: 'immersive_aircraft:propeller'
  }).id('kubejs:biplane')

  // ========== Boiler ==========
  event.remove({ output: 'immersive_aircraft:boiler' })
  event.shaped('immersive_aircraft:boiler', [
    'S',
    'T',
    'B'
  ], {
    S: 'create:steam_engine',
    T: 'create:fluid_tank',
    B: 'create:blaze_burner'
  }).id('kubejs:boiler')

  // ========== Eco Engine ==========
  event.remove({ output: 'immersive_aircraft:eco_engine' })
  event.shaped('immersive_aircraft:eco_engine', [
    'IWI',
    'CBC'
  ], {
    I: 'create:iron_sheet',
    W: 'minecraft:water_bucket',
    C: 'create:copper_sheet',
    B: 'immersive_aircraft:boiler'
  }).id('kubejs:eco_engine')

  // ========== Engine ==========
  event.remove({ output: 'immersive_aircraft:engine' })
  event.shaped('immersive_aircraft:engine', [
    'BPB',
    'SOS'
  ], {
    B: 'create:brass_sheet',
    P: 'create:precision_mechanism',
    S: 'create:sturdy_sheet',
    O: 'immersive_aircraft:boiler'
  }).id('kubejs:engine')

  // ========== Enhanced Propeller ==========
  event.remove({ output: 'immersive_aircraft:enhanced_propeller' })
  event.shaped('immersive_aircraft:enhanced_propeller', [
    ' B ',
    'BPB',
    ' B '
  ], {
    B: 'create:brass_sheet',
    P: 'create:propeller'
  }).id('kubejs:enhanced_propeller')

  // ========== Gyrodyne ==========
  event.remove({ output: 'immersive_aircraft:gyrodyne' })
  event.shaped('immersive_aircraft:gyrodyne', [
    ' P ',
    'SMs',
    'HCH'
  ], {
    P: 'immersive_aircraft:propeller',
    S: 'immersive_aircraft:sail',
    s: 'immersive_aircraft:sail',
    M: 'create:precision_mechanism',
    H: 'immersive_aircraft:hull',
    C: '#create:seats'
  }).id('kubejs:gyrodyne')

  // ========== Gyroscope ==========
  event.remove({ output: 'immersive_aircraft:gyroscope' })
  event.shaped('immersive_aircraft:gyroscope', [
    'E',
    'C'
  ], {
    E: 'create:electron_tube',
    C: 'minecraft:compass'
  }).id('kubejs:gyroscope')

  // ========== Hull Reinforcement ==========
  event.remove({ output: 'immersive_aircraft:hull_reinforcement' })
  event.shaped('immersive_aircraft:hull_reinforcement', [
    'IHI'
  ], {
    I: 'create:iron_sheet',
    H: 'immersive_aircraft:hull'
  }).id('kubejs:hull_reinforcement')

  // ========== Hull ==========
  event.remove({ output: 'immersive_aircraft:hull' })
  event.shaped('immersive_aircraft:hull', [
    'AIA',
    'AIA'
  ], {
    A: 'create:andesite_casing',
    I: 'minecraft:iron_ingot'
  }).id('kubejs:hull')

  // ========== Improved Landing Gear ==========
  event.remove({ output: 'immersive_aircraft:improved_landing_gear' })
  event.shaped('immersive_aircraft:improved_landing_gear', [
    'II',
    'B '
  ], {
    I: 'create:iron_sheet',
    B: 'create:belt_connector'
  }).id('kubejs:improved_landing_gear')

  // ========== Industrial Gears ==========
  event.remove({ output: 'immersive_aircraft:industrial_gears' })
  event.shaped('immersive_aircraft:industrial_gears', [
    'ICI'
  ], {
    I: 'create:iron_sheet',
    C: 'create:cogwheel'
  }).id('kubejs:industrial_gears')

  // ========== Nether Engine ==========
  event.remove({ output: 'immersive_aircraft:nether_engine' })
  event.shaped('immersive_aircraft:nether_engine', [
    'ILI',
    'SBS'
  ], {
    I: 'create:iron_sheet',
    L: 'minecraft:lava_bucket',
    S: 'create:sturdy_sheet',
    B: 'immersive_aircraft:boiler'
  }).id('kubejs:nether_engine')

  // ========== Propeller ==========
  event.remove({ output: 'immersive_aircraft:propeller' })
  event.shaped('immersive_aircraft:propeller', [
    ' I ',
    'IPI',
    ' I '
  ], {
    I: 'create:iron_sheet',
    P: 'create:propeller'
  }).id('kubejs:propeller')

  // ========== Quadrocopter ==========
  event.remove({ output: 'immersive_aircraft:quadrocopter' })
  event.shaped('immersive_aircraft:quadrocopter', [
    'PAP',
    ' S ',
    'PBP'
  ], {
    P: 'create:propeller',
    A: 'create:andesite_casing',
    S: 'minecraft:string',
    B: 'immersive_aircraft:boiler'
  }).id('kubejs:quadrocopter')

  // ========== Sail ==========
  event.remove({ output: 'immersive_aircraft:sail' })
  event.shaped('immersive_aircraft:sail', [
    'SSS',
    'SSS'
  ], {
    S: 'create:white_sail'
  }).id('kubejs:sail')

  // ========== Steel Boiler ==========
  event.remove({ output: 'immersive_aircraft:steel_boiler' })
  event.shaped('immersive_aircraft:steel_boiler', [
    'ITI'
  ], {
    I: 'create:iron_sheet',
    T: 'create:fluid_tank'
  }).id('kubejs:steel_boiler')

  // ========== Sturdy Pipes ==========
  event.remove({ output: 'immersive_aircraft:sturdy_pipes' })
  event.shaped('immersive_aircraft:sturdy_pipes', [
    'IPI'
  ], {
    I: 'create:iron_sheet',
    P: 'create:fluid_pipe'
  }).id('kubejs:sturdy_pipes')
})
