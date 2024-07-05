//DrTid moment


//saker som borde ge mer diversety
//vegeteble noodles
//hearty lunch!!!!!!
//stuffed pumpkin 100%%%%%%
//noodle soup slightly bra
//hoglin food gud


//recept för sen
craftingTable.remove(<item:farmersdelight:roasted_mutton_chops>);
craftingTable.remove(<item:farmersdelight:steak_and_potatoes>);
craftingTable.remove(<item:farmersdelight:grilled_salmon>);
craftingTable.remove(<item:farmersrespite:black_cod>);
<recipetype:farmersdelight:cooking>.remove(<item:farmersdelight:apple_cider>);


//<recipetype:create:mixing>.addRecipe("mixed", <constant:create:heat_condition:heated>, [output], [imput], [vatten], 300);


<recipetype:farmersdelight:cooking>.remove(<item:farmersdelight:vegetable_noodles>);
<recipetype:create:mixing>.addRecipe("vegan_nudlar", <constant:create:heat_condition:superheated>, [<item:farmersdelight:vegetable_noodles>], [<item:some_assembly_required:chopped_carrot>*3,<item:minecraft:brown_mushroom>,<item:farmersdelight:raw_pasta>*2,<tag:items:forge:salad_ingredients/cabbage>*2,<tag:items:forge:vegetables>,<item:minecraft:bowl> ], [], 300);

<recipetype:farmersdelight:cooking>.remove(<item:farmersdelight:beef_stew>);
<recipetype:create:mixing>.addRecipe("beefstew", <constant:create:heat_condition:heated>, [<item:farmersdelight:beef_stew>], [<tag:items:forge:raw_beef>, <item:minecraft:carrot>, <item:minecraft:potato>,<item:minecraft:bowl>], [], 300);

<recipetype:farmersdelight:cooking>.remove(<item:farmersdelight:baked_cod_stew>);
<recipetype:create:mixing>.addRecipe("fiskigsoppacod", <constant:create:heat_condition:heated>, [<item:farmersdelight:baked_cod_stew>], [<tag:items:forge:raw_fishes/cod>*2, <item:minecraft:potato>,<item:minecraft:egg>,<item:farmersdelight:tomato>*2,<item:minecraft:bowl>], [], 300);

<recipetype:farmersdelight:cooking>.remove(<item:farmersdelight:pumpkin_soup>);
<recipetype:create:mixing>.addRecipe("pumpkinsop", <constant:create:heat_condition:heated>, [<item:farmersdelight:pumpkin_soup>], [<item:farmersdelight:pumpkin_slice>*2,<tag:items:forge:salad_ingredients/cabbage>, <tag:items:forge:raw_pork>,<item:minecraft:bowl>], [<fluid:minecraft:milk>*250], 300);

<recipetype:farmersdelight:cooking>.remove(<item:farmersdelight:noodle_soup>);
<recipetype:create:mixing>.addRecipe("noodle_soup", <constant:create:heat_condition:heated>, [<item:farmersdelight:noodle_soup>], [<item:farmersdelight:raw_pasta>*2, <item:farmersdelight:fried_egg>, <item:minecraft:dried_kelp>*5, <tag:items:forge:raw_pork>, <item:minecraft:bowl>], [<fluid:minecraft:water>*250], 300);

<recipetype:farmersdelight:cooking>.remove(<item:farmersdelight:squid_ink_pasta>);
<recipetype:create:mixing>.addRecipe("svartpasta", <constant:create:heat_condition:superheated>, [<item:farmersdelight:squid_ink_pasta>], [<tag:items:forge:raw_fishes>*3, <item:farmersdelight:raw_pasta>*2, <item:farmersdelight:tomato>, <item:minecraft:ink_sac>*4, <item:minecraft:bowl>], [], 300);

<recipetype:farmersdelight:cooking>.remove(<item:farmersdelight:fried_rice>);
<recipetype:create:mixing>.addRecipe("mmmm_ris", <constant:create:heat_condition:heated>, [<item:farmersdelight:fried_rice>], [<item:farmersdelight:rice>*2, <tag:items:forge:eggs>*2, <item:some_assembly_required:chopped_carrot>*3, <item:farmersdelight:onion>, <item:corn_delight:corn>, <item:minecraft:bowl>], [], 300);

<recipetype:farmersdelight:cooking>.remove(<item:farmersdelight:chicken_soup>);
<recipetype:create:mixing>.addRecipe("chickensop", <constant:create:heat_condition:heated>, [<item:farmersdelight:chicken_soup>], [<tag:items:forge:raw_chicken>*2, <item:some_assembly_required:chopped_carrot>*4, <tag:items:forge:crops/cabbage>, <tag:items:forge:vegetables>*2, <item:minecraft:bowl>], [], 300);

craftingTable.remove(<item:farmersdelight:roast_chicken_block>);
<recipetype:create:mixing>.addRecipe("chicenblock", <constant:create:heat_condition:superheated>, [<item:farmersdelight:roast_chicken_block>], [<item:minecraft:chicken>, <item:farmersdelight:red_mushroom_colony>*5, <item:corn_delight:tortilla_chip>*3, <item:some_assembly_required:chopped_carrot>*5, <item:minecraft:baked_potato>*2, <item:farmersdelight:onion>], [<fluid:createaddition:seed_oil> * 250], 300);

<recipetype:farmersdelight:cooking>.remove(<item:farmersdelight:stuffed_pumpkin_block>);
<recipetype:create:compacting>.addRecipe("mmmmmmmpumpatallrik", <constant:create:heat_condition:superheated>, [<item:farmersdelight:stuffed_pumpkin_block>], [<item:farmersdelight:brown_mushroom_colony>*5, <item:farmersdelight:cooked_rice>*2, <tag:items:forge:vegetables>*2, <item:farmersdelight:tomato_sauce>*3, <item:minecraft:baked_potato>*3, <item:minecraft:sweet_berries>*2, <item:minecraft:carved_pumpkin>], [<fluid:createaddition:seed_oil> * 250], 300);

craftingTable.remove(<item:farmersdelight:honey_glazed_ham_block>);
<recipetype:create:compacting>.addRecipe("mmmmmmhonungham", <constant:create:heat_condition:superheated>, [<item:farmersdelight:honey_glazed_ham_block>], [<item:honeyexpansion:honey_berries>*4, <item:farmersdelight:smoked_ham> * 3, <item:farmersdelight:cooked_rice> * 3, <item:farmersdelight:brown_mushroom_colony> * 3, <item:farmersdelight:red_mushroom_colony>], [<fluid:create:honey> * 1000, <fluid:createaddition:seed_oil> * 250], 300);

craftingTable.remove(<item:farmersdelight:shepherds_pie_block>);
<recipetype:create:mixing>.addRecipe("dumpaj", <constant:create:heat_condition:superheated>, [<item:farmersdelight:shepherds_pie_block>], [<item:farmersdelight:mutton_wrap>, <item:create:wheat_flour> * 2, <item:farmersdelight:tomato_sauce>, <item:minecraft:baked_potato> * 4, <item:farmersdelight:onion> * 3, <item:farmersdelight:cooked_mutton_chops> * 7], [<fluid:minecraft:milk> * 1000], 300);

craftingTable.remove(<item:farmersdelight:nether_salad>);
<recipetype:create:mixing>.addRecipe("mmmnethersallad", <constant:create:heat_condition:heated>, [<item:farmersdelight:nether_salad>], [<item:minecraft:bowl>, <item:nethersdelight:warped_fungus_colony>, <item:nethersdelight:crimson_fungus_colony>, <item:alexsmobs:lava_bottle>*2], [], 200);



