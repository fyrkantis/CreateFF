// adjusted_windows.js
// Replace Macaw's Windows louvered shutter recipes with vertical slab column recipes
// NOTE: Quark vertical slabs may have different item IDs in 1.21.1 - adjust as needed

ServerEvents.recipes(event => {
  const woodTypes = [
    'oak',
    'spruce',
    'birch',
    'jungle',
    'acacia',
    'dark_oak',
    'mangrove',
    'cherry',
    'crimson',
    'warped'
  ]

  woodTypes.forEach(woodType => {
    // Remove old recipes
    event.remove({ output: `mcwwindows:${woodType}_louvered_shutter` })

    // Add new vertical slab column recipes
    event.shaped(`3x mcwwindows:${woodType}_louvered_shutter`, [
      'V',
      'V',
      'V'
    ], {
      V: `quark:${woodType}_vertical_slab`
    }).id(`kubejs:${woodType}_louvered_shutter`)
  })
})
