recipes.remove(<item:simple_coins:dollarbill>);
<recipetype:create:sequenced_assembly>.addRecipe(<recipetype:create:sequenced_assembly>.builder("money_printing")
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