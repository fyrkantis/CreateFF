
// Airship
recipes.remove(<item:immersive_aircraft:airship>);
<recipetype:create:mechanical_crafting>.addMirroredRecipe("airship", <item:immersive_aircraft:airship>, [
    [<item:immersive_aircraft:sail>, <item:immersive_aircraft:sail>, <item:immersive_aircraft:sail>, <item:immersive_aircraft:sail>, <item:immersive_aircraft:sail>],
    [<item:minecraft:string>, <item:minecraft:air>, <item:minecraft:string>, <item:minecraft:air>, <item:minecraft:string>],
    [<item:immersive_aircraft:hull>, <item:immersive_aircraft:hull>, <item:immersive_aircraft:engine>, <item:immersive_aircraft:hull>, <item:create:propeller>],
    [<item:immersive_aircraft:hull>, <item:immersive_aircraft:hull>, <tag:items:create:seats>, <item:immersive_aircraft:hull>, <item:immersive_aircraft:hull>]
]);

// Biplane
recipes.remove(<item:immersive_aircraft:biplane>);
<recipetype:create:mechanical_crafting>.addMirroredRecipe("biplane", <item:immersive_aircraft:biplane>, [
    [<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>, <item:immersive_aircraft:sail>, <item:minecraft:air>],
    [<item:immersive_aircraft:sail>, <item:minecraft:air>, <item:minecraft:air>, <item:immersive_aircraft:sail>, <item:minecraft:air>],
    [<item:immersive_aircraft:hull>, <item:immersive_aircraft:hull>, <tag:items:create:seats>, <item:immersive_aircraft:engine>, <item:immersive_aircraft:propeller>],
    [<item:immersive_aircraft:sail>, <item:minecraft:air>, <item:minecraft:air>, <item:immersive_aircraft:sail>, <item:minecraft:air>],
    [<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>, <item:immersive_aircraft:sail>, <item:minecraft:air>]
]);

// Boiler
recipes.remove(<item:immersive_aircraft:boiler>);
craftingTable.addShaped("boiler", <item:immersive_aircraft:boiler>, [
    [<item:create:steam_engine>],
    [<item:create:fluid_tank>],
    [<item:create:blaze_burner>]
]);

// Eco engine
recipes.remove(<item:immersive_aircraft:eco_engine>);
craftingTable.addShaped("eco_engine", <item:immersive_aircraft:eco_engine>, [
    [<item:create:iron_sheet>, <item:minecraft:water_bucket>, <item:create:iron_sheet>],
    [<item:create:copper_sheet>, <item:immersive_aircraft:boiler>, <item:create:copper_sheet>]
]);

// Engine
recipes.remove(<item:immersive_aircraft:engine>);
craftingTable.addShaped("engine", <item:immersive_aircraft:engine>, [
    [<item:create:brass_sheet>, <item:create:precision_mechanism>, <item:create:brass_sheet>],
    [<item:create:sturdy_sheet>, <item:immersive_aircraft:boiler>, <item:create:sturdy_sheet>]
]);

// Enhanced Propeller
recipes.remove(<item:immersive_aircraft:enhanced_propeller>);
craftingTable.addShaped("enhanced_propeller", <item:immersive_aircraft:enhanced_propeller>, [
    [<item:minecraft:air>, <item:create:brass_sheet>, <item:minecraft:air>],
    [<item:create:brass_sheet>, <item:create:propeller>, <item:create:brass_sheet>],
    [<item:minecraft:air>, <item:create:brass_sheet>, <item:minecraft:air>]
]);

// Gyrodyne
recipes.remove(<item:immersive_aircraft:gyrodyne>);
craftingTable.addShaped("gyrodyne", <item:immersive_aircraft:gyrodyne>, [
    [<item:minecraft:air>, <item:immersive_aircraft:propeller>, <item:minecraft:air>],
    [<item:immersive_aircraft:sail>, <item:create:precision_mechanism>, <item:immersive_aircraft:sail>],
    [<item:immersive_aircraft:hull>, <tag:items:create:seats>, <item:immersive_aircraft:hull>]
]);

// Gyroscope
recipes.remove(<item:immersive_aircraft:gyroscope>);
craftingTable.addShaped("gyroscope", <item:immersive_aircraft:gyroscope>, [
    [<item:create:electron_tube>],
    [<item:minecraft:compass>]
]);

// Hull Reinforcement
recipes.remove(<item:immersive_aircraft:hull_reinforcement>);
craftingTable.addShaped("hull_reinforcement", <item:immersive_aircraft:hull_reinforcement>, [
    [<item:create:iron_sheet>, <item:immersive_aircraft:hull>, <item:create:iron_sheet>]
]);

// Hull
recipes.remove(<item:immersive_aircraft:hull>);
craftingTable.addShaped("hull", <item:immersive_aircraft:hull>, [
    [<item:create:andesite_casing>, <item:minecraft:iron_ingot>, <item:create:andesite_casing>],
    [<item:create:andesite_casing>, <item:minecraft:iron_ingot>, <item:create:andesite_casing>]
]);

// Improved Landing Gear
recipes.remove(<item:immersive_aircraft:improved_landing_gear>);
craftingTable.addShaped("improved_landing_gear", <item:immersive_aircraft:improved_landing_gear>, [
    [<item:create:iron_sheet>, <item:minecraft:iron_ingot>],
    [<item:create:belt_connector>, <item:minecraft:air>]
]);

// Industrial Gears
recipes.remove(<item:immersive_aircraft:industrial_gears>);
craftingTable.addShaped("industrial_gears", <item:immersive_aircraft:industrial_gears>, [
    [<item:create:iron_sheet>, <item:create:cogwheel>, <item:create:iron_sheet>]
]);

// Nether Engine
recipes.remove(<item:immersive_aircraft:nether_engine>);
craftingTable.addShaped("nether_engine", <item:immersive_aircraft:nether_engine>, [
    [<item:create:iron_sheet>, <item:minecraft:lava_bucket>, <item:create:iron_sheet>],
    [<item:create:sturdy_sheet>, <item:immersive_aircraft:boiler>, <item:create:sturdy_sheet>]
]);

// Propeller
recipes.remove(<item:immersive_aircraft:propeller>);
craftingTable.addShaped("propeller", <item:immersive_aircraft:propeller>, [
    [<item:minecraft:air>, <item:create:iron_sheet>, <item:minecraft:air>],
    [<item:create:iron_sheet>, <item:create:propeller>, <item:create:iron_sheet>],
    [<item:minecraft:air>, <item:create:iron_sheet>, <item:minecraft:air>]
]);

// Quadrocopter
recipes.remove(<item:immersive_aircraft:quadrocopter>);
craftingTable.addShaped("quadrocopter", <item:immersive_aircraft:quadrocopter>, [
    [<item:create:propeller>, <item:create:andesite_casing>, <item:create:propeller>],
    [<item:minecraft:air>, <item:minecraft:string>, <item:minecraft:air>],
    [<item:create:propeller>, <item:immersive_aircraft:boiler>, <item:create:propeller>]
]);

// Sail
recipes.remove(<item:immersive_aircraft:sail>);
craftingTable.addShaped("sail", <item:immersive_aircraft:sail>, [
    [<item:create:white_sail>, <item:create:white_sail>, <item:create:white_sail>],
    [<item:create:white_sail>, <item:create:white_sail>, <item:create:white_sail>]
]);

// Steel Boiler
recipes.remove(<item:immersive_aircraft:steel_boiler>);
craftingTable.addShaped("steel_boiler", <item:immersive_aircraft:steel_boiler>, [
    [<item:create:iron_sheet>, <item:create:fluid_tank>, <item:create:iron_sheet>]
]);

// Sturdy Pipes
recipes.remove(<item:immersive_aircraft:sturdy_pipes>);
craftingTable.addShaped("sturdy_pipes", <item:immersive_aircraft:sturdy_pipes>, [
    [<item:create:iron_sheet>, <item:create:fluid_pipe>, <item:create:iron_sheet>]
]);
