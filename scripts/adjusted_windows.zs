// Remove old conflicting recipes for Macaw's Windows louvered shutters
var woodTypes = [
    "oak",
    "spruce",
    "birch",
    "jungle",
    "acacia",
    "dark_oak",
    "mangrove",
    "cherry",
    "crimson",
    "warped"
] as string[];

// Remove old recipes
for woodType in woodTypes {
    recipes.remove(<item:mcwwindows:${woodType}_louvered_shutter>);
}

// Add new vertical slab column recipes
for woodType in woodTypes {
    var recipeName = woodType + "_louvered_shutter";
    craftingTable.addShaped(recipeName, <item:mcwwindows:${woodType}_louvered_shutter> * 3, [
        [<item:minecraft:air>, <item:quark:${woodType}_vertical_slab>, <item:minecraft:air>],
        [<item:minecraft:air>, <item:quark:${woodType}_vertical_slab>, <item:minecraft:air>],
        [<item:minecraft:air>, <item:quark:${woodType}_vertical_slab>, <item:minecraft:air>]
    ]);
} 