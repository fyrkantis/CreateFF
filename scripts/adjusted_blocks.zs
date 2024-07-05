//sten creddit till DrTid igen

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
blastFurnace.addRecipe("limesten", <item:create:limestone>,<item:minecraft:calcite> , 1.0, 30);

<recipetype:create:mixing>.addRecipe("calcite", <constant:create:heat_condition:heated>, [<item:minecraft:calcite>], [<item:minecraft:diorite>], [<fluid:minecraft:water> * 1000], 200);
<recipetype:create:compacting>.addRecipe("deepslate", <constant:create:heat_condition:none>, [<item:minecraft:cobbled_deepslate>], [<item:minecraft:andesite>, <item:minecraft:flint>*3], [<fluid:minecraft:lava> * 1000], 400);

<recipetype:create:compacting>.addRecipe("tufft_tuff", <constant:create:heat_condition:superheated>, [<item:minecraft:tuff>], [<item:minecraft:dripstone_block>,<item:minecraft:iron_nugget> * 3,<item:minecraft:cobbled_deepslate>,<item:minecraft:calcite>], [<fluid:minecraft:lava> * 1000], 600);

//rose quarts
<recipetype:create:sequenced_assembly>.addRecipe(<recipetype:create:sequenced_assembly>.builder("aaaaaaaaa")
	.transitionTo(<item:biomesoplenty:rose_quartz_block>)
	.require(<item:biomesoplenty:rose_quartz_block>)
	.loops(1)
	.addOutput(<item:create:rose_quartz>, 1)
	.addOutput(<item:minecraft:redstone>, 1)
	.addOutput(<item:minecraft:air>, 2)
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
	[<item:minecraft:air>, <item:minecraft:air>, <item:create:precision_mechanism> ,<item:minecraft:air> ,<item:minecraft:air>], 
	[<item:minecraft:air>, <item:create:iron_sheet>, <item:createaddition:copper_spool>, <item:create:iron_sheet>, <item:minecraft:air>],
	[<item:create:iron_sheet>, <item:createaddition:copper_spool>,<item:createaddition:brass_rod> ,<item:createaddition:copper_spool>,  <item:create:iron_sheet>],
	[<item:minecraft:air>, <item:create:iron_sheet>, <item:createaddition:capacitor>, <item:create:iron_sheet>, <item:minecraft:air>],
	]);


recipes.remove(<item:createaddition:alternator>); 
<recipetype:create:mechanical_crafting>.addMirroredRecipe("generator", <item:createaddition:alternator>, [
	[<item:minecraft:air>, <item:minecraft:air>, <item:create:precision_mechanism> ,<item:minecraft:air> ,<item:minecraft:air>], 
	[<item:minecraft:air>, <item:create:brass_sheet>, <item:createaddition:copper_spool>, <item:create:brass_sheet>, <item:minecraft:air>],
	[<item:create:brass_sheet>, <item:createaddition:copper_spool>,<item:createaddition:brass_rod> ,<item:createaddition:copper_spool>,  <item:create:brass_sheet>],
	[<item:minecraft:air>, <item:create:brass_sheet>, <item:createaddition:capacitor>, <item:create:brass_sheet>, <item:minecraft:air>],
	]);


recipes.remove(<item:createaddition:modular_accumulator>); 
<recipetype:create:mechanical_crafting>.addMirroredRecipe("batari", <item:createaddition:modular_accumulator>, [
	[<item:minecraft:air>, <item:createaddition:connector>, <item:minecraft:air> ,<item:createaddition:connector> ,<item:minecraft:air>], 
	[<item:create:brass_sheet>, <item:createaddition:capacitor>, <item:createaddition:gold_spool> ,<item:createaddition:capacitor> ,<item:create:brass_sheet>],
	[<item:create:brass_sheet>, <item:createaddition:capacitor>, <item:create:precision_mechanism> ,<item:createaddition:capacitor> ,<item:create:brass_sheet>],
	[<item:create:brass_sheet>, <item:createaddition:capacitor>, <item:createaddition:gold_spool> ,<item:createaddition:capacitor> ,<item:create:brass_sheet>]
	]);

