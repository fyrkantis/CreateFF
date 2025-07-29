//sten creddit till DrTid igen

// henrik waz here

//färgad sand

<recipetype:create:crushing>.addRecipe("vit_sand", [<item:biomesoplenty:white_sand>], <item:minecraft:calcite>, 150 );
<recipetype:create:crushing>.addRecipe("orange_sand", [<item:biomesoplenty:orange_sand>], <item:minecraft:dripstone_block>, 150 );
<recipetype:create:crushing>.addRecipe("svart_sand", [<item:biomesoplenty:black_sand>], <item:minecraft:blackstone>, 150 );


//sandpaper
craftingTable.addShapeless("vitt_sandpaper", <item:create:sand_paper>, [<item:minecraft:paper>, <item:biomesoplenty:white_sand>]);
craftingTable.addShapeless("orange_sandpaper", <item:create:red_sand_paper>, [<item:minecraft:paper>, <item:biomesoplenty:orange_sand>]);
craftingTable.addShapeless("svart_sandpaper", <item:create:red_sand_paper>, [<item:minecraft:paper>, <item:biomesoplenty:black_sand>]);


//spooky
recipes.remove(<item:minecraft:soul_sand>); 

<recipetype:create:haunting>.addRecipe("spookysand", [<item:minecraft:soul_sand>], <item:minecraft:sand>, 200);
<recipetype:create:haunting>.addRecipe("spookysten", [<item:minecraft:netherrack>], <item:minecraft:red_sand>, 200);


//sten automation
blastFurnace.addRecipe("limesten", <item:create:limestone>,<item:minecraft:calcite>,  1.0, 30);

<recipetype:create:mixing>.addRecipe("calcite", <constant:create:heat_condition:heated>, [<item:minecraft:calcite>], [<item:minecraft:diorite>], [<fluid:minecraft:water> * 1000], 200);
<recipetype:create:compacting>.addRecipe("deepslate", <constant:create:heat_condition:none>, [<item:minecraft:cobbled_deepslate>], [<item:minecraft:flint>*3], [<fluid:minecraft:lava> * 1000], 400);

<recipetype:create:compacting>.addRecipe("tufft_tuff", <constant:create:heat_condition:superheated>, [<item:minecraft:tuff>], [<item:minecraft:dripstone_block>,<item:minecraft:iron_nugget> * 3,<item:minecraft:cobbled_deepslate>,<item:minecraft:calcite>], [<fluid:minecraft:lava> * 1000], 600);

//rose quarts
<recipetype:create:sequenced_assembly>.addRecipe(<recipetype:create:sequenced_assembly>.builder("aaaaaaaaa")
	.transitionTo(<item:biomesoplenty:rose_quartz_block>)
	.require(<item:biomesoplenty:rose_quartz_block>)
	.loops(1)
	.addOutput(<item:create:rose_quartz>, 2)
	.addOutput(<item:minecraft:redstone>, 1)
	.addOutput(<item:minecraft:air>, 1)
	.addStep<mods.createtweaker.CuttingRecipe>((rb) => rb.duration(150))
	.addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:minecraft:redstone>))
	.addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:minecraft:redstone>))
	.addStep<mods.createtweaker.FillingRecipe>((rb) => rb.require(<fluid:minecraft:water>*250))
	.addStep<mods.createtweaker.PressingRecipe>());


//cart assembly
recipes.remove(<item:create:cart_assembler>); 
craftingTable.addShaped("cart_assembly", <item:create:cart_assembler>, [
	[<item:create:andesite_alloy>, <item:create:precision_mechanism>, <item:create:andesite_alloy>], 
	[<tag:items:minecraft:logs_that_burn>, <item:minecraft:air>, <tag:items:minecraft:logs_that_burn>]]);


//netherite
recipes.remove(<item:minecraft:netherite_scrap>); 
<recipetype:create:compacting>.addRecipe("netherite_varmt", <constant:create:heat_condition:superheated>, [<item:minecraft:netherite_scrap>], [<item:minecraft:ancient_debris>], [<fluid:minecraft:lava> * 250], 200);


//POWER
recipes.remove(<item:createaddition:electric_motor>); 
<recipetype:create:mechanical_crafting>.addMirroredRecipe("motor", <item:createaddition:electric_motor>, [
	[<item:minecraft:air>, <item:minecraft:air>, <item:create:precision_mechanism>, <item:minecraft:air>, <item:minecraft:air>], 
	[<item:minecraft:air>, <item:create:iron_sheet>, <item:createaddition:copper_spool>, <item:create:iron_sheet>, <item:minecraft:air>],
	[<item:create:iron_sheet>, <item:createaddition:copper_spool>,<item:createaddition:brass_rod>, <item:createaddition:copper_spool>,  <item:create:iron_sheet>],
	[<item:minecraft:air>, <item:create:iron_sheet>, <item:createaddition:capacitor>, <item:create:iron_sheet>, <item:minecraft:air>],
	]);


recipes.remove(<item:createaddition:alternator>); 
<recipetype:create:mechanical_crafting>.addMirroredRecipe("generator", <item:createaddition:alternator>, [
	[<item:minecraft:air>, <item:minecraft:air>, <item:create:precision_mechanism>, <item:minecraft:air>, <item:minecraft:air>], 
	[<item:minecraft:air>, <item:create:brass_sheet>, <item:createaddition:copper_spool>, <item:create:brass_sheet>, <item:minecraft:air>],
	[<item:create:brass_sheet>, <item:createaddition:copper_spool>,<item:createaddition:brass_rod>, <item:createaddition:copper_spool>,  <item:create:brass_sheet>],
	[<item:minecraft:air>, <item:create:brass_sheet>, <item:createaddition:capacitor>, <item:create:brass_sheet>, <item:minecraft:air>],
	]);


recipes.remove(<item:createaddition:modular_accumulator>); 
<recipetype:create:mechanical_crafting>.addMirroredRecipe("batari", <item:createaddition:modular_accumulator>, [
	[<item:minecraft:air>, <item:createaddition:connector>, <item:minecraft:air>, <item:createaddition:connector>, <item:minecraft:air>], 
	[<item:create:brass_sheet>, <item:createaddition:capacitor>, <item:createaddition:gold_spool>, <item:createaddition:capacitor>, <item:create:brass_sheet>],
	[<item:create:brass_sheet>, <item:createaddition:capacitor>, <item:create:precision_mechanism>, <item:createaddition:capacitor>, <item:create:brass_sheet>],
	[<item:create:brass_sheet>, <item:createaddition:capacitor>, <item:createaddition:gold_spool>, <item:createaddition:capacitor>, <item:create:brass_sheet>]
	]);

// Add furnace recipe to grill coals into ash
furnace.addRecipe("grilled_coal_to_ash", <item:supplementaries:ash>, <tag:items:minecraft:coals>, 0.1, 200);

// Basically Create: Oxidized, but I don't have to handle dependencies
<recipetype:create:filling>.addRecipe("expose_copper", <item:minecraft:exposed_copper>, <item:minecraft:copper_block>, <fluid:minecraft:water> * 250);
<recipetype:create:filling>.addRecipe("expose_cut_copper", <item:minecraft:exposed_cut_copper>, <item:minecraft:cut_copper>, <fluid:minecraft:water> * 250);
<recipetype:create:filling>.addRecipe("expose_cut_copper_stairs", <item:minecraft:exposed_cut_copper_stairs>, <item:minecraft:cut_copper_stairs>, <fluid:minecraft:water> * 250);
<recipetype:create:filling>.addRecipe("expose_cut_copper_slab", <item:minecraft:exposed_cut_copper_slab>, <item:minecraft:cut_copper_slab>, <fluid:minecraft:water> * 250);
<recipetype:create:filling>.addRecipe("expose_cut_copper_vertical_slab", <item:quark:exposed_cut_copper_vertical_slab>, <item:quark:cut_copper_vertical_slab>, <fluid:minecraft:water> * 250);
<recipetype:create:filling>.addRecipe("expose_copper_shingles", <item:create:exposed_copper_shingles>, <item:create:copper_shingles>, <fluid:minecraft:water> * 250);
<recipetype:create:filling>.addRecipe("expose_copper_shingle_stairs", <item:create:exposed_copper_shingle_stairs>, <item:create:copper_shingle_stairs>, <fluid:minecraft:water> * 250);
<recipetype:create:filling>.addRecipe("expose_copper_shingle_slab", <item:create:exposed_copper_shingle_slab>, <item:create:copper_shingle_slab>, <fluid:minecraft:water> * 250);
<recipetype:create:filling>.addRecipe("expose_copper_tiles", <item:create:exposed_copper_tiles>, <item:create:copper_tiles>, <fluid:minecraft:water> * 250);
<recipetype:create:filling>.addRecipe("expose_copper_tile_stairs", <item:create:exposed_copper_tile_stairs>, <item:create:copper_tile_stairs>, <fluid:minecraft:water> * 250);
<recipetype:create:filling>.addRecipe("expose_copper_tile_slab", <item:create:exposed_copper_tile_slab>, <item:create:copper_tile_slab>, <fluid:minecraft:water> * 250);

<recipetype:create:filling>.addRecipe("weather_copper", <item:minecraft:weathered_copper>, <item:minecraft:exposed_copper>, <fluid:minecraft:water> * 250);
<recipetype:create:filling>.addRecipe("weather_cut_copper", <item:minecraft:weathered_cut_copper>, <item:minecraft:exposed_cut_copper>, <fluid:minecraft:water> * 250);
<recipetype:create:filling>.addRecipe("weather_cut_copper_stairs", <item:minecraft:weathered_cut_copper_stairs>, <item:minecraft:exposed_cut_copper_stairs>, <fluid:minecraft:water> * 250);
<recipetype:create:filling>.addRecipe("weather_cut_copper_slab", <item:minecraft:weathered_cut_copper_slab>, <item:minecraft:exposed_cut_copper_slab>, <fluid:minecraft:water> * 250);
<recipetype:create:filling>.addRecipe("weather_cut_copper_vertical_slab", <item:quark:weathered_cut_copper_vertical_slab>, <item:quark:exposed_cut_copper_vertical_slab>, <fluid:minecraft:water> * 250);
<recipetype:create:filling>.addRecipe("weather_copper_shingles", <item:create:weathered_copper_shingles>, <item:create:exposed_copper_shingles>, <fluid:minecraft:water> * 250);
<recipetype:create:filling>.addRecipe("weather_copper_shingle_stairs", <item:create:weathered_copper_shingle_stairs>, <item:create:exposed_copper_shingle_stairs>, <fluid:minecraft:water> * 250);
<recipetype:create:filling>.addRecipe("weather_copper_shingle_slab", <item:create:weathered_copper_shingle_slab>, <item:create:exposed_copper_shingle_slab>, <fluid:minecraft:water> * 250);
<recipetype:create:filling>.addRecipe("weather_copper_tiles", <item:create:weathered_copper_tiles>, <item:create:exposed_copper_tiles>, <fluid:minecraft:water> * 250);
<recipetype:create:filling>.addRecipe("weather_copper_tile_stairs", <item:create:weathered_copper_tile_stairs>, <item:create:exposed_copper_tile_stairs>, <fluid:minecraft:water> * 250);
<recipetype:create:filling>.addRecipe("weather_copper_tile_slab", <item:create:weathered_copper_tile_slab>, <item:create:exposed_copper_tile_slab>, <fluid:minecraft:water> * 250);

<recipetype:create:filling>.addRecipe("oxidize_copper", <item:minecraft:oxidized_copper>, <item:minecraft:weathered_copper>, <fluid:minecraft:water> * 250);
<recipetype:create:filling>.addRecipe("oxidize_cut_copper", <item:minecraft:oxidized_cut_copper>, <item:minecraft:weathered_cut_copper>, <fluid:minecraft:water> * 250);
<recipetype:create:filling>.addRecipe("oxidize_cut_copper_stairs", <item:minecraft:oxidized_cut_copper_stairs>, <item:minecraft:weathered_cut_copper_stairs>, <fluid:minecraft:water> * 250);
<recipetype:create:filling>.addRecipe("oxidize_cut_copper_slab", <item:minecraft:oxidized_cut_copper_slab>, <item:minecraft:weathered_cut_copper_slab>, <fluid:minecraft:water> * 250);
<recipetype:create:filling>.addRecipe("oxidize_cut_copper_vertical_slab", <item:quark:oxidized_cut_copper_vertical_slab>, <item:quark:weathered_cut_copper_vertical_slab>, <fluid:minecraft:water> * 250);
<recipetype:create:filling>.addRecipe("oxidize_copper_shingles", <item:create:oxidized_copper_shingles>, <item:create:weathered_copper_shingles>, <fluid:minecraft:water> * 250);
<recipetype:create:filling>.addRecipe("oxidize_copper_shingle_stairs", <item:create:oxidized_copper_shingle_stairs>, <item:create:weathered_copper_shingle_stairs>, <fluid:minecraft:water> * 250);
<recipetype:create:filling>.addRecipe("oxidize_copper_shingle_slab", <item:create:oxidized_copper_shingle_slab>, <item:create:weathered_copper_shingle_slab>, <fluid:minecraft:water> * 250);
<recipetype:create:filling>.addRecipe("oxidize_copper_tiles", <item:create:oxidized_copper_tiles>, <item:create:weathered_copper_tiles>, <fluid:minecraft:water> * 250);
<recipetype:create:filling>.addRecipe("oxidize_copper_tile_stairs", <item:create:oxidized_copper_tile_stairs>, <item:create:weathered_copper_tile_stairs>, <fluid:minecraft:water> * 250);
<recipetype:create:filling>.addRecipe("oxidize_copper_tile_slab", <item:create:oxidized_copper_tile_slab>, <item:create:weathered_copper_tile_slab>, <fluid:minecraft:water> * 250);