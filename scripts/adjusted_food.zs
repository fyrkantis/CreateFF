//gjort av DrTid gib credit
craftingTable.addShapeless("credit", <item:minecraft:bedrock>.withTag({RepairCost: 0 as int, display: {Name: "{\"text\":\"Recept dåligt ändrade av DrTid\"}" as string}}), [<item:minecraft:barrier>.withTag({RepairCost: 0 as int, display: {Name: "{\"text\":\"hemlig creddit ja\"}" as string}})]);
//simpla andringar


//dough compatibility
//tar bort create dough och använder istället farmers delight dough 
//använder inte create dough för att cooking pot verkar inte fungera med craft tweeker

recipes.remove(<item:create:dough>); 

recipes.remove(<item:farmersdelight:wheat_dough>); 

craftingTable.addShapeless("slime_lime", <item:minecraft:slime_ball>, [<item:minecraft:lime_dye>, <item:farmersdelight:wheat_dough>]);
craftingTable.addShapeless("dough_shapeless", <item:farmersdelight:wheat_dough>, [<item:create:wheat_flour>, <item:minecraft:water_bucket>]);

<recipetype:create:mixing>.addRecipe("dough_mixung", <constant:create:heat_condition:none>, [<item:farmersdelight:wheat_dough>], [<item:create:wheat_flour>], [<fluid:minecraft:water> * 1000], 200);

<recipetype:create:splashing>.addRecipe("vetefint", [<item:farmersdelight:wheat_dough>], <item:create:wheat_flour>, 200);

//knivar exesterar

recipes.remove(<tag:items:forge:fillet_knife>); 

<tag:items:forge:fillet_knife>.add(<tag:items:farmersdelight:tools/knives>);

<tag:items:farmersdelight:tools/knives>.add(<item:aquaculture:neptunium_fillet_knife>);
<tag:items:forge:tools/knives>.add(<item:aquaculture:neptunium_fillet_knife>);
<tag:items:farmersdelight:straw_harvesters>.add(<item:aquaculture:neptunium_fillet_knife>);
<tag:items:forge:tools>.add(<item:aquaculture:neptunium_fillet_knife>);

craftingTable.addShaped("dirt_bucket_to_diamond", <item:aquaculture:neptunium_fillet_knife>, [
    [<item:minecraft:air>, <item:aquaculture:neptunium_ingot> ], 
    [<item:minecraft:stick>, <item:minecraft:air> ]]);




//DrTid moment





//tags för sandwitch
<tag:items:some_assembly_required:sandwich_bread>.add(<item:minecraft:bread>);

//pasta
recipes.remove(<item:farmersdelight:raw_pasta>); 
<recipetype:farmersdelight:cutting>.remove(<item:farmersdelight:raw_pasta>);
<recipetype:farmersdelight:cooking>.remove(<item:farmersdelight:raw_pasta>);
<recipetype:farmersdelight:cooking>.remove(<item:farmersdelight:wheat_dough>);

<recipetype:create:cutting>.addRecipe("pasta_sag", <item:farmersdelight:raw_pasta>, <item:farmersdelight:wheat_dough>, 200);
<recipetype:create:mixing>.addRecipe("pasta_mix", <constant:create:heat_condition:none>, [<item:farmersdelight:raw_pasta>* 4], [<item:minecraft:wheat> * 2, <item:minecraft:egg>], [], 200);

//hot choco
<recipetype:farmersdelight:cooking>.remove(<item:farmersdelight:hot_cocoa>);
<recipetype:create:filling>.addRecipe("choco", <item:farmersdelight:hot_cocoa>, <item:minecraft:glass_bottle>, <fluid:create:chocolate> * 250, 200);

//alternativa recept
recipes.remove(<item:minecraft:cookie>); 
craftingTable.addShapeless("shapeless_coocie", <item:minecraft:cookie>, [<item:minecraft:wheat>, <item:minecraft:cocoa_beans>, <item:minecraft:wheat> ]);

//m,mmmmmmmmpaj


<recipetype:create:mixing>.addRecipe("mmmmpaj1", <constant:create:heat_condition:none>, [<item:farmersrespite:rose_hip_pie>], [<item:farmersrespite:rose_hips> * 2, <item:minecraft:sugar> * 2,<item:farmersdelight:pie_crust> ], [<fluid:minecraft:milk> * 500, <fluid:create:honey> * 250], 200);
<recipetype:create:mixing>.addRecipe("mmmpaj2", <constant:create:heat_condition:none>, [<item:farmersdelight:sweet_berry_cheesecake>], [<item:minecraft:sweet_berries> * 4, <item:farmersdelight:pie_crust>], [<fluid:minecraft:milk> * 500], 200);

//pankaka
recipes.remove(<item:honeyexpansion:pancake>); 
recipes.remove(<item:supplementaries:pancake>); 
recipes.remove(<item:honeyexpansion:honey_pancake>); 
<recipetype:create:compacting>.addRecipe("pankaka", <constant:create:heat_condition:heated>, [<item:supplementaries:pancake>*8], [<item:minecraft:egg>,<item:minecraft:sugar>], [<fluid:minecraft:milk>*250], 300);

recipes.remove(<item:honeyexpansion:honey_pancake>); 
<recipetype:create:filling>.addRecipe("honung_pankaka", <item:honeyexpansion:honey_pancake>, <item:supplementaries:pancake>, <fluid:create:honey> * 50);


