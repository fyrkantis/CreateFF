import crafttweaker.api.GenericRecipesManager;
import crafttweaker.api.recipe.replacement.Replacer;
import crafttweaker.api.ingredient.IIngredient;

//jidosc moment

recipes.remove(<item:storagedrawers:obsidian_storage_upgrade>);
recipes.remove(<item:storagedrawers:iron_storage_upgrade>);
recipes.remove(<item:storagedrawers:gold_storage_upgrade>);
recipes.remove(<item:storagedrawers:diamond_storage_upgrade>);
recipes.remove(<item:storagedrawers:emerald_storage_upgrade>);
recipes.remove(<item:storagedrawers:one_stack_upgrade>);
recipes.remove(<item:storagedrawers:void_upgrade>);
recipes.remove(<item:storagedrawers:controller>);
recipes.remove(<item:storagedrawers:controller_slave>);

recipes.remove(<item:littlelogistics:chest_car>);
recipes.remove(<item:littlelogistics:switch_rail>);
recipes.remove(<item:littlelogistics:fluid_car>);
recipes.remove(<item:littlelogistics:seater_car>);
recipes.remove(<item:littlelogistics:steam_locomotive>);
recipes.remove(<item:littlelogistics:energy_locomotive>);
recipes.remove(<item:littlelogistics:locomotive_route>);
recipes.remove(<item:littlelogistics:creative_capacitor>);
recipes.remove(<item:littlelogistics:automatic_switch_rail>);
recipes.remove(<item:littlelogistics:tee_junction_rail>);
recipes.remove(<item:littlelogistics:automatic_tee_junction_rail>);
recipes.remove(<item:littlelogistics:junction_rail>);
recipes.remove(<item:littlelogistics:car_dock_rail>);
recipes.remove(<item:littlelogistics:locomotive_dock_rail>);

recipes.remove(<item:create_sa:flamethrower>);
recipes.remove(<item:create_sa:brass_drill_head>);
recipes.remove(<item:create_sa:portable_drill>);
recipes.remove(<item:create_sa:grapplin_whisk>);
recipes.remove(<item:create_sa:fan_component>);

recipes.remove(<item:alexsmobs:animal_dictionary>);

recipes.remove(<item:useless_sword:copper_sword>);
recipes.remove(<item:useless_sword:charged_copper_sword>);

// Bad recipe shame corner!
recipes.removeByName("farmersdelight:cutting/gravel"); // Ewwww, wtf? Unlimited flint???
//<recipetype:create_central_kitchen:cutting_board_deploying>.removeAll();

//Replacer.create().replace<IIngredient>(<recipecomponent:crafttweaker:input/ingredients>, <tag:items:minecraft:planks>, <tag:items:minecraft:doors>).execute();

// This recipe is redundant, since Terralith added lever recipes.
recipes.removeByName("minecraft:lever");