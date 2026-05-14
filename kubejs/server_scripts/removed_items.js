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
  event.remove({ output: 'storagedrawers:controller_io' })

  // ========== Create: Steam 'n' Rails / Create SA ==========
  event.remove({ output: 'create_sa:flamethrower' })
  event.remove({ output: 'create_sa:brass_drill_head' })
  event.remove({ output: 'create_sa:portable_drill' })
  event.remove({ output: 'create_sa:grapplin_whisk' })
  event.remove({ output: 'create_sa:fan_component' })
  // All jetpacks (except copper)
  event.remove({ output: 'create_sa:andesite_jetpack_chestplate' })
  event.remove({ output: 'create_sa:brass_jetpack_chestplate' })
  event.remove({ output: 'create_sa:netherite_jetpack_chestplate' })

  // ========== Bad recipe shame corner! ==========
  event.remove({ id: 'farmersdelight:cutting/gravel' }) // Unlimited flint exploit

  // ========== Redundant lever recipe (Terralith adds lever recipes) ==========
  event.remove({ id: 'minecraft:lever' })
})
