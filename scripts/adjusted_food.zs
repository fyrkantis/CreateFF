//gjort av DrTid gib credit
craftingTable.addShapeless("credit", <item:minecraft:bedrock>.withTag({RepairCost: 0 as int, display: {Name: "{\"text\":\"Recept dåligt ändrade av DrTid\"}" as string}}), [<item:minecraft:barrier>.withTag({RepairCost: 0 as int, display: {Name: "{\"text\":\"hemlig creddit ja\"}" as string}})]);
//simpla andringar

// Conversion between different types of salt
craftingTable.addShapeless("salt1", <item:unusual_delight:salt>, [<item:vintagedelight:salt_dust>]);
craftingTable.addShapeless("salt2", <item:vintagedelight:salt_dust>, [<item:unusual_delight:salt>]);

// Changed ruby chocolate recipe that uses liquid dragon breath instead of bottles.
recipes.removeByName("create_confectionery:ruby_chocolate_recipe");
<recipetype:create:mixing>.addRecipe("ruby_chocolate", <constant:create:heat_condition:heated>, [<fluid:create_confectionery:ruby_chocolate> * 250], [<item:minecraft:sugar>, <item:minecraft:cocoa_beans>], [<fluid:create_central_kitchen:dragon_breath> * 250, <fluid:minecraft:milk> * 250], 200);

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

//recipes.remove(<tag:items:forge:fillet_knife>); // Don't know what this is supposed to do but I removed it. /David

<tag:items:forge:fillet_knife>.add(<tag:items:farmersdelight:tools/knives>);

<tag:items:farmersdelight:tools/knives>.add(<item:aquaculture:neptunium_fillet_knife>);
<tag:items:forge:tools/knives>.add(<item:aquaculture:neptunium_fillet_knife>);
<tag:items:farmersdelight:straw_harvesters>.add(<item:aquaculture:neptunium_fillet_knife>);
<tag:items:forge:tools>.add(<item:aquaculture:neptunium_fillet_knife>);

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


// mmmmpaj1 blev mördad för den var i fel mod
<recipetype:create:mixing>.addRecipe("mmmpaj2", <constant:create:heat_condition:none>, [<item:farmersdelight:sweet_berry_cheesecake>], [<item:minecraft:sweet_berries> * 4, <item:farmersdelight:pie_crust>], [<fluid:minecraft:milk> * 500], 200);

//pankaka
recipes.remove(<item:supplementaries:pancake>); 
<recipetype:create:compacting>.addRecipe("pankaka", <constant:create:heat_condition:heated>, [<item:supplementaries:pancake>*8], [<item:minecraft:egg>,<item:minecraft:sugar>], [<fluid:minecraft:milk>*250], 300);

// fix onion duplication
recipes.remove(<item:some_assembly_required:sliced_onion>);
<recipetype:farmersdelight:cutting>.addRecipe("sliced_onion", 
    <item:farmersdelight:onion>, 
    [<item:some_assembly_required:sliced_onion> * 2], 
    <tag:items:farmersdelight:tools/knives>
);

// adjust taco recipe (add tomato) so it doesn't collide with mutton wrap
recipes.remove(<item:corn_delight:taco>);
craftingTable.addShapeless("taco", <item:corn_delight:taco>, [<item:corn_delight:tortilla>, <tag:items:forge:crops/onion>, <item:farmersdelight:tomato>, <tag:items:forge:salad_ingredients>, <tag:items:forge:cooked_beef>]);


