// paintings.js
// Painting selection recipes via shapeless crafting
//
// IMPORTANT NOTE FOR 1.21.1:
// Minecraft 1.21 changed how painting variants work. Paintings now use the
// "minecraft:entity_data" data component instead of the old EntityTag NBT.
// The exact syntax for setting painting variants in KubeJS 1.21.1 may vary.
// You may need to use:
//   Item.of('minecraft:painting').withNbt({entity_data: {variant: "minecraft:kebab"}})
// or the new component syntax:
//   Item.of('minecraft:painting', '{minecraft:entity_data:{id:"minecraft:painting",variant:"minecraft:kebab"}}')
//
// The .reuse() equivalent in KubeJS is .keepIngredient() or .damageIngredient() on the recipe.
// Since all "selector" items should be kept, we use .keepIngredient() on each recipe.
//
// If the component syntax below doesn't work directly, you may need to use
// event.custom() with raw JSON to define the exact output NBT/components.

ServerEvents.recipes(event => {

  // Helper function to reduce repetition
  // paints a painting with a specific variant using a selector item
  function paintingRecipe(id, variant, selectorItems) {
    const selectors = Array.isArray(selectorItems) ? selectorItems : [selectorItems]
    const ingredients = [...selectors, 'minecraft:painting']

    // In 1.21.1, painting variant is stored as a data component.
    // This uses the component string syntax for Item.of().
    const output = Item.of('minecraft:painting',
      `{minecraft:entity_data:{id:"minecraft:painting",variant:"${variant}"}}`
    )

    const recipe = event.shapeless(output, ingredients).id(`kubejs:${id}`)

    // Keep all selector items (equivalent to .reuse() in CraftTweaker)
    selectors.forEach(sel => recipe.keepIngredient(sel))

    return recipe
  }

  // ==================== VANILLA MINECRAFT PAINTINGS ====================

  paintingRecipe('kebab', 'minecraft:kebab', 'vintagedelight:ghost_pepper')
  paintingRecipe('aztec', 'minecraft:aztec', 'minecraft:white_dye')
  paintingRecipe('alban', 'minecraft:alban', 'minecraft:yellow_dye')
  paintingRecipe('aztec2', 'minecraft:aztec2', 'minecraft:light_gray_dye')
  paintingRecipe('bomb', 'minecraft:bomb', 'minecraft:tnt')
  paintingRecipe('plant', 'minecraft:plant', 'minecraft:fern')
  paintingRecipe('wasteland', 'minecraft:wasteland', 'minecraft:rabbit_hide')
  paintingRecipe('wanderer', 'minecraft:wanderer', 'minecraft:leather_boots')
  paintingRecipe('graham', 'minecraft:graham', 'minecraft:red_dye')
  paintingRecipe('pool', 'minecraft:pool', 'minecraft:water_bucket')
  paintingRecipe('courbet', 'minecraft:courbet', 'minecraft:stick')
  paintingRecipe('sunset', 'minecraft:sunset', 'minecraft:blue_dye')
  paintingRecipe('sea', 'minecraft:sea', 'minecraft:kelp')
  paintingRecipe('creebet', 'minecraft:creebet', 'minecraft:gunpowder')
  paintingRecipe('match', 'minecraft:match', 'minecraft:flint_and_steel')
  paintingRecipe('bust', 'minecraft:bust', 'minecraft:campfire')
  paintingRecipe('stage', 'minecraft:stage', 'minecraft:spider_eye')
  paintingRecipe('void', 'minecraft:void', 'minecraft:end_stone')
  paintingRecipe('skull_and_roses', 'minecraft:skull_and_roses', 'minecraft:bone')
  paintingRecipe('wither', 'minecraft:wither', 'minecraft:wither_skeleton_skull')
  paintingRecipe('fighters', 'minecraft:fighters', 'minecraft:white_wool')
  paintingRecipe('skeleton', 'minecraft:skeleton', 'minecraft:skeleton_skull')

  // Donkey Kong - 8 bananas + painting
  paintingRecipe('doneky_kong', 'minecraft:donkey_kong', [
    'alexsmobs:banana', 'alexsmobs:banana', 'alexsmobs:banana', 'alexsmobs:banana',
    'alexsmobs:banana', 'alexsmobs:banana', 'alexsmobs:banana', 'alexsmobs:banana'
  ])

  paintingRecipe('pointer', 'minecraft:pointer', 'create:brass_hand')
  paintingRecipe('pigscene', 'minecraft:pigscene', 'minecraft:porkchop')
  paintingRecipe('pigscene_alt', 'minecraft:pigscene', 'minecraft:cooked_porkchop')

  // Burning skull - 2 selectors
  paintingRecipe('burning_skull', 'minecraft:burning_skull', ['minecraft:skeleton_skull', 'minecraft:campfire'])
  paintingRecipe('burning_skull_alt', 'minecraft:burning_skull', ['minecraft:skeleton_skull', 'minecraft:flint_and_steel'])


  // ==================== MINECRAFT STYLE PAINTINGS MOD ====================

  paintingRecipe('pearl', 'minecraft_style_paintings:la_jovendelaperla', 'minecraft:pearlescent_froglight')
  paintingRecipe('van_goh', 'minecraft_style_paintings:van_goh', 'minecraft:gray_wool')
  paintingRecipe('black_square', 'minecraft_style_paintings:black_square', 'minecraft:black_wool')
  paintingRecipe('khalo', 'minecraft_style_paintings:frida_khalo_selfportrait', 'minecraft:yellow_wool')
  paintingRecipe('picasso', 'minecraft_style_paintings:picasso_self_portrait', 'minecraft:orange_wool')
  paintingRecipe('gioconda', 'minecraft_style_paintings:gioconda', 'minecraft:black_dye')
  paintingRecipe('lefillsdelhomme', 'minecraft_style_paintings:lefillsdelhomme', 'minecraft:apple')
  paintingRecipe('scream', 'minecraft_style_paintings:the_scream', 'minecraft:creeper_head')
  paintingRecipe('goth', 'minecraft_style_paintings:american_gothic', 'minecraft:iron_hoe')
  paintingRecipe('goth_alt', 'minecraft_style_paintings:american_gothic', 'minecraft:trident')
  paintingRecipe('sunflowers', 'minecraft_style_paintings:sunflowers', 'minecraft:sunflower')
  paintingRecipe('de_stijl', 'minecraft_style_paintings:de_stijl', 'create:crafting_blueprint')
  paintingRecipe('creation', 'minecraft_style_paintings:creatione_di_adamo', 'minecraft:brain_coral_block')
  paintingRecipe('sterrennacht', 'minecraft_style_paintings:de_sterrennacht', 'biomesoplenty:umbran_sapling')
  paintingRecipe('olas', 'minecraft_style_paintings:olas', 'minecraft:oak_boat')
  paintingRecipe('persistenciadelamemoria', 'minecraft_style_paintings:persistenciadelamemoria', 'minecraft:clock')
  paintingRecipe('broadway', 'minecraft_style_paintings:broadway_woogie_boogie', 'alexsmobs:leafcutter_ant_chamber')
  paintingRecipe('cena', 'minecraft_style_paintings:la_ultima_cena', 'minecraft:bread')
  paintingRecipe('marylins', 'minecraft_style_paintings:marylins', 'minecraft:oak_trapdoor')


  // ==================== MACAW'S PAINTINGS MOD ====================

  paintingRecipe('bonsai', 'mcwpaintings:bonsai', 'minecraft:oak_sapling')
  paintingRecipe('cliffs', 'mcwpaintings:cliffs', 'minecraft:stone')
  paintingRecipe('lights', 'mcwpaintings:lights', 'minecraft:lantern')
  paintingRecipe('lava', 'mcwpaintings:scenery_lava', 'minecraft:lava_bucket')
  paintingRecipe('lava2', 'mcwpaintings:scenery_lava2', ['minecraft:lava_bucket', 'minecraft:oak_sapling'])
  paintingRecipe('tree', 'mcwpaintings:scenery_tree', ['minecraft:oak_sapling', 'minecraft:oak_sapling'])
  paintingRecipe('tree2', 'mcwpaintings:scenery_tree2', 'minecraft:jungle_sapling')
  paintingRecipe('tree3', 'mcwpaintings:scenery_tree3', 'biomesoplenty:redwood_sapling')
  paintingRecipe('tree4', 'mcwpaintings:scenery_tree4', 'biomesoplenty:mahogany_sapling')
  // NOTE: minecraft:grass was renamed to minecraft:short_grass in 1.20.3+
  paintingRecipe('green_plant', 'mcwpaintings:green_plant', 'minecraft:short_grass')
  paintingRecipe('potted_plant', 'mcwpaintings:potted_plant', 'biomesoplenty:clover')
  paintingRecipe('cacti', 'mcwpaintings:cacti', 'minecraft:cactus')
  paintingRecipe('puffer', 'mcwpaintings:puffer_life', 'minecraft:pufferfish')
  paintingRecipe('puffer_alt', 'mcwpaintings:puffer_life', 'minecraft:pufferfish_bucket')
  paintingRecipe('macaw', 'mcwpaintings:macaw', 'minecraft:feather')
  paintingRecipe('snake_plant', 'mcwpaintings:snake_plant', 'minecraft:large_fern')
  paintingRecipe('ghost', 'mcwpaintings:ghost', 'minecraft:ghast_tear')
  paintingRecipe('badlands', 'mcwpaintings:badlands', 'minecraft:terracotta')
  paintingRecipe('fox', 'mcwpaintings:fox', 'minecraft:sweet_berries')
  paintingRecipe('bats', 'mcwpaintings:bats', ['minecraft:coal', 'minecraft:coal'])
  paintingRecipe('cacti_desert', 'mcwpaintings:cacti_desert', 'minecraft:sand')
  paintingRecipe('halloween', 'mcwpaintings:halloween_pumpkin', 'minecraft:jack_o_lantern')
  paintingRecipe('mountains', 'mcwpaintings:mountains', ['minecraft:stone', 'minecraft:stone'])
  // NOTE: Quark cherry_leaf_carpet may not exist in 1.21.1 as cherry is now vanilla
  // Adjust to minecraft:cherry_leaves or a carpet variant if needed
  paintingRecipe('sakura', 'mcwpaintings:sakura', 'quark:cherry_leaf_carpet')
  paintingRecipe('swamp', 'mcwpaintings:swamp_land', 'minecraft:mangrove_propagule')
  paintingRecipe('warped', 'mcwpaintings:warped_forest', 'minecraft:warped_fungus')
  paintingRecipe('beach', 'mcwpaintings:beach', 'biomesoplenty:palm_sapling')
  paintingRecipe('fall', 'mcwpaintings:fall', 'biomesoplenty:orange_autumn_sapling')
  paintingRecipe('igloo', 'mcwpaintings:igloo', 'minecraft:snow_block')
  paintingRecipe('lighthouse', 'mcwpaintings:lighthouse', 'minecraft:yellow_stained_glass')
  paintingRecipe('lighthouse_alt', 'mcwpaintings:lighthouse', 'minecraft:yellow_stained_glass_pane')
  paintingRecipe('island', 'mcwpaintings:island', 'minecraft:seagrass')
  paintingRecipe('skyblock', 'mcwpaintings:skyblock', 'minecraft:elytra')
  paintingRecipe('nether_portal', 'mcwpaintings:nether_portal', 'minecraft:obsidian')
  paintingRecipe('savana', 'mcwpaintings:savana', 'minecraft:acacia_sapling')
  paintingRecipe('bridge', 'mcwpaintings:bridge', 'supplementaries:rope')
  paintingRecipe('panda', 'mcwpaintings:panda', 'minecraft:bamboo')
  paintingRecipe('mcw_mountain', 'mcwpaintings:mountain', ['minecraft:stone', 'minecraft:stone', 'minecraft:stone'])
  paintingRecipe('arctic', 'mcwpaintings:arctic_sky', 'minecraft:packed_ice')
  paintingRecipe('arctic_alt', 'mcwpaintings:arctic_sky', 'minecraft:blue_ice')
  paintingRecipe('autumn', 'mcwpaintings:autumn', 'biomesoplenty:yellow_autumn_sapling')
  paintingRecipe('autumn_feel', 'mcwpaintings:autumn_feel', ['biomesoplenty:yellow_autumn_sapling', 'minecraft:pumpkin'])
  paintingRecipe('bat', 'mcwpaintings:bat', 'minecraft:coal')
  paintingRecipe('cat', 'mcwpaintings:cat', 'minecraft:music_disc_cat')
  paintingRecipe('mcw_fox', 'mcwpaintings:fox_view', 'biomesoplenty:dead_sapling')
  paintingRecipe('jack_o_lantern', 'mcwpaintings:jack_o_lantern', 'chipped:nether_jack_o_lantern')
  paintingRecipe('pumpkin', 'mcwpaintings:pumpkin', 'minecraft:pumpkin')
  paintingRecipe('raccoon', 'mcwpaintings:raccoon_view', 'alexsmobs:raccoon_tail')
  paintingRecipe('mcw_swamp', 'mcwpaintings:swamp', 'minecraft:mud')
  paintingRecipe('mcw_sunset', 'mcwpaintings:sunset_forest', 'biomesoplenty:fir_sapling')
  paintingRecipe('cherry_tree', 'mcwpaintings:cherry_tree', 'minecraft:cherry_sapling')
  paintingRecipe('glow_squid', 'mcwpaintings:glow_squid', 'minecraft:glow_ink_sac')
  paintingRecipe('wither_rose', 'mcwpaintings:wither_rose', 'minecraft:wither_rose')
  paintingRecipe('magnolia', 'mcwpaintings:magnolia', 'minecraft:lilac')
  paintingRecipe('magnolia_alt', 'mcwpaintings:magnolia', 'minecraft:peony')
  paintingRecipe('shinto', 'mcwpaintings:shinto', 'quark:paper_lantern_sakura')
  paintingRecipe('hill', 'mcwpaintings:hill', 'minecraft:grass_block')
  paintingRecipe('axolotl', 'mcwpaintings:axolotls', 'minecraft:axolotl_bucket')
  paintingRecipe('halloween_house', 'mcwpaintings:halloween_house', 'minecraft:crying_obsidian')
  paintingRecipe('halloween_house_alt', 'mcwpaintings:halloween_house', 'create_confectionery:ruby_chocolate_bricks')


  // ==================== ALEX'S MOBS PAINTINGS ====================

  paintingRecipe('dog_poker', 'alexsmobs:dog_poker', 'minecraft:lead')
  paintingRecipe('nft', 'alexsmobs:nft', 'alexsmobs:banana')
  paintingRecipe('nft_alt', 'alexsmobs:nft', 'alexsmobs:banana_peel')


  // ==================== SUPPLEMENTARIES PAINTINGS ====================

  paintingRecipe('supplementaries_bomb', 'supplementaries:bombs', 'supplementaries:bomb')
})
