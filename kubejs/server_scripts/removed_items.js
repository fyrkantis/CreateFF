// removed_items.js
// Item/recipe removals

ServerEvents.recipes(event => {

  // ========== Storage Drawers ==========
  event.remove({ output: 'storagedrawers:obsidian_storage_upgrade' })
  event.remove({ output: 'storagedrawers:iron_storage_upgrade' })
  event.remove({ output: 'storagedrawers:gold_storage_upgrade' })
  event.remove({ output: 'storagedrawers:diamond_storage_upgrade' })
  event.remove({ output: 'storagedrawers:emerald_storage_upgrade' })
  event.remove({ output: 'storagedrawers:one_stack_upgrade' })
  event.remove({ output: 'storagedrawers:void_upgrade' })
  event.remove({ output: 'storagedrawers:controller' })
  event.remove({ output: 'storagedrawers:controller_slave' })

  // ========== Little Logistics ==========
  event.remove({ output: 'littlelogistics:chest_car' })
  event.remove({ output: 'littlelogistics:switch_rail' })
  event.remove({ output: 'littlelogistics:fluid_car' })
  event.remove({ output: 'littlelogistics:seater_car' })
  event.remove({ output: 'littlelogistics:steam_locomotive' })
  event.remove({ output: 'littlelogistics:energy_locomotive' })
  event.remove({ output: 'littlelogistics:locomotive_route' })
  event.remove({ output: 'littlelogistics:creative_capacitor' })
  event.remove({ output: 'littlelogistics:automatic_switch_rail' })
  event.remove({ output: 'littlelogistics:tee_junction_rail' })
  event.remove({ output: 'littlelogistics:automatic_tee_junction_rail' })
  event.remove({ output: 'littlelogistics:junction_rail' })
  event.remove({ output: 'littlelogistics:car_dock_rail' })
  event.remove({ output: 'littlelogistics:locomotive_dock_rail' })

  // ========== Create: Steam 'n' Rails / Create SA ==========
  event.remove({ output: 'create_sa:flamethrower' })
  event.remove({ output: 'create_sa:brass_drill_head' })
  event.remove({ output: 'create_sa:portable_drill' })
  event.remove({ output: 'create_sa:grapplin_whisk' })
  event.remove({ output: 'create_sa:fan_component' })

  // ========== Alex's Mobs ==========
  event.remove({ output: 'alexsmobs:animal_dictionary' })

  // ========== Useless Sword ==========
  event.remove({ output: 'useless_sword:copper_sword' })
  event.remove({ output: 'useless_sword:charged_copper_sword' })

  // ========== Bad recipe shame corner! ==========
  event.remove({ id: 'farmersdelight:cutting/gravel' }) // Unlimited flint exploit

  // ========== Redundant lever recipe (Terralith adds lever recipes) ==========
  event.remove({ id: 'minecraft:lever' })
})
