recipes.remove(<item:simple_coins:dollarbill>);
<recipetype:create:sequenced_assembly>.addRecipe(<recipetype:create:sequenced_assembly>.builder("dollar_printing")
	.transitionTo(<item:minecraft:paper>)
	.require(<item:minecraft:paper>)
	.loops(1)
	.addOutput(<item:simple_coins:dollarbill> * 4, 1)
	.addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:minecraft:lime_dye>))
	.addStep<mods.createtweaker.PressingRecipe>()
	.addStep<mods.createtweaker.CuttingRecipe>((rb) => rb.duration(50))
	.addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:minecraft:netherite_hoe>.withTag({"Enchantments": [{"id": "minecraft:silk_touch", "lvl": 1 as byte}]}).anyDamage()).toolNotConsumed())
	.addStep<mods.createtweaker.FillingRecipe>((rb) => rb.require(<fluid:create_enchantment_industry:ink>*250))
	.addStep<mods.createtweaker.PressingRecipe>()
);

recipes.remove(<item:simple_coins:dollarstack>);
recipes.remove(<item:simple_coins:dollarbag>);
recipes.remove(<item:simple_coins:dollarblock>);

<recipetype:create:compacting>.addRecipe("dollar_stacking", <constant:create:heat_condition:none>, [<item:simple_coins:dollarstack>], [<item:simple_coins:dollarbill> * 10], [], 100);
<recipetype:create:mixing>.addRecipe("dollar_destacking", <constant:create:heat_condition:none>, [<item:simple_coins:dollarbill> * 10], [<item:simple_coins:dollarstack>], [], 100);

<recipetype:create:compacting>.addRecipe("dollar_bagging", <constant:create:heat_condition:none>, [<item:simple_coins:dollarbag>], [<item:simple_coins:dollarstack> * 10], [], 100);
<recipetype:create:mixing>.addRecipe("dollar_debagging", <constant:create:heat_condition:none>, [<item:simple_coins:dollarstack> * 10], [<item:simple_coins:dollarbag>], [], 100);

<recipetype:create:compacting>.addRecipe("dollar_blocking", <constant:create:heat_condition:none>, [<item:simple_coins:dollarblock>], [<item:simple_coins:dollarbag> * 10], [], 100);
<recipetype:create:mixing>.addRecipe("dollar_deblocking", <constant:create:heat_condition:none>, [<item:simple_coins:dollarbag> * 10], [<item:simple_coins:dollarblock>], [], 100);