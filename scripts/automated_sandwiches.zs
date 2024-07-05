//DrTid moment




// Bacon sandwich
recipes.remove(<item:farmersdelight:bacon_sandwich>); 
<recipetype:minecraft:mat_rolling>.remove(<item:farmersdelight:bacon_sandwich>);

<recipetype:create:pressing>.addRecipe("bacon_sandwitch_bra", [<item:farmersdelight:bacon_sandwich> ], <item:some_assembly_required:sandwich>.withTag({BlockEntityTag: {Sandwich: [{id: "some_assembly_required:bread_slice" as string, Count: 1 as byte}, {id: "farmersdelight:cooked_bacon" as string, Count: 1 as byte}, {id: "farmersdelight:cabbage" as string, Count: 1 as byte}, {id: "some_assembly_required:tomato_slices" as string, Count: 1 as byte}, {id: "some_assembly_required:bread_slice" as string, Count: 1 as byte}]}}), 200);

// Egg sandwich

recipes.remove(<item:farmersdelight:egg_sandwich>); 
<recipetype:minecraft:mat_rolling>.remove(<item:farmersdelight:egg_sandwich>);

<recipetype:create:sequenced_assembly>.registerRecipe("egg_macka", (rb) => {
 rb.require(<item:minecraft:bread>);
 rb.loops(1);
 rb.addOutput(<item:farmersdelight:egg_sandwich>, 1);
 rb.addStep<mods.createtweaker.DeployerApplicationRecipe>((rb1) => rb1.require(<tag:items:forge:tools/knives>));
 rb.addStep<mods.createtweaker.DeployerApplicationRecipe>((rb1) => rb1.require(<item:farmersdelight:cooked_egg>));
 rb.addStep<mods.createtweaker.DeployerApplicationRecipe>((rb1) => rb1.require(<item:farmersdelight:cooked_egg>));
 });

// Chicken sandwich

recipes.remove(<item:farmersdelight:chicken_sandwich>); 
<recipetype:minecraft:mat_rolling>.remove(<item:farmersdelight:chicken_sandwich>);

    <recipetype:create:sequenced_assembly>.registerRecipe("macka", (rb) => {
 rb.require(<item:minecraft:bread>);
 rb.loops(1);
 rb.addOutput(<item:farmersdelight:chicken_sandwich>, 1);
 rb.addStep<mods.createtweaker.DeployerApplicationRecipe>((rb1) => rb1.require(<tag:items:forge:tools/knives>));
 rb.addStep<mods.createtweaker.DeployerApplicationRecipe>((rb1) => rb1.require(<item:some_assembly_required:chopped_carrot>));
 rb.addStep<mods.createtweaker.DeployerApplicationRecipe>((rb1) => rb1.require(<tag:items:forge:cooked_chicken>));
 rb.addStep<mods.createtweaker.DeployerApplicationRecipe>((rb1) => rb1.require(<tag:items:forge:crops/cabbage>));
 rb.addStep<mods.createtweaker.DeployerApplicationRecipe>((rb1) => rb1.require(<item:some_assembly_required:chopped_carrot>));

 });








