//DrTid moment


//saker som borde ge mer diversety
//vegeteble noodles
//hearty lunch!!!!!!
//stuffed pumpkin 100%%%%%%
//noodle soup slightly bra
//hoglin food gud


//recept för sen
//craftingTable.remove(<item:farmersdelight:roasted_mutton_chops>);
//craftingTable.remove(<item:farmersdelight:steak_and_potatoes>);
//craftingTable.remove(<item:farmersdelight:grilled_salmon>);

//<recipetype:create:mixing>.addRecipe("mixed", <constant:create:heat_condition:heated>, [output], [imput], [vatten], 300);

craftingTable.remove(<item:farmersdelight:roast_chicken_block>);
<recipetype:create:mixing>.addRecipe("chicenblock", <constant:create:heat_condition:heated>, [<item:farmersdelight:roast_chicken_block>], [<item:minecraft:chicken>, <item:farmersdelight:red_mushroom_colony>*5, <item:corn_delight:tortilla_chip>*3, <item:some_assembly_required:chopped_carrot>*5, <item:minecraft:baked_potato>*2, <item:farmersdelight:onion>], [<fluid:createaddition:seed_oil> * 250], 300);

craftingTable.remove(<item:farmersdelight:honey_glazed_ham_block>);
<recipetype:create:compacting>.addRecipe("mmmmmmhonungham", <constant:create:heat_condition:heated>, [<item:farmersdelight:honey_glazed_ham_block>], [<item:minecraft:sweet_berries>*4, <item:farmersdelight:smoked_ham> * 3, <item:farmersdelight:cooked_rice> * 3, <item:farmersdelight:brown_mushroom_colony> * 3, <item:farmersdelight:red_mushroom_colony>], [<fluid:create:honey> * 1000, <fluid:createaddition:seed_oil> * 250], 300);

craftingTable.remove(<item:farmersdelight:shepherds_pie_block>);
<recipetype:create:mixing>.addRecipe("dumpaj", <constant:create:heat_condition:heated>, [<item:farmersdelight:shepherds_pie_block>], [<item:farmersdelight:mutton_wrap>, <item:create:wheat_flour> * 2, <item:farmersdelight:tomato_sauce>, <item:minecraft:baked_potato> * 4, <item:farmersdelight:onion> * 3, <item:farmersdelight:cooked_mutton_chops> * 7], [<fluid:minecraft:milk> * 1000], 300);

craftingTable.remove(<item:farmersdelight:nether_salad>);
<recipetype:create:mixing>.addRecipe("mmmnethersallad", <constant:create:heat_condition:heated>, [<item:farmersdelight:nether_salad>], [<item:minecraft:bowl>, <item:nethersdelight:warped_fungus_colony>, <item:nethersdelight:crimson_fungus_colony>, <item:alexsmobs:lava_bottle>], [], 200);
