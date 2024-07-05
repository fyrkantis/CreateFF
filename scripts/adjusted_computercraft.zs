import crafttweaker.api.GenericRecipesManager;

#removes recipe for pocket computers, and add a different
recipes.remove(<item:computercraft:pocket_computer_normal>);
craftingTable.addShaped("create_pocket_computer", <item:computercraft:pocket_computer_normal>, [
    [<item:create:andesite_casing>, <item:create:andesite_alloy>, <item:create:andesite_casing>], 
    [<item:create:andesite_alloy>, <item:minecraft:golden_apple>, <item:create:andesite_alloy>],
    [<item:create:andesite_casing>, <tag:items:forge:glass_panes>, <item:create:andesite_casing>]]);

#removes recipe for advanced pocket computers, and add a different
recipes.remove(<item:computercraft:pocket_computer_advanced>);
craftingTable.addShaped("create_pocket_computer_advanced", <item:computercraft:pocket_computer_advanced>, [
    [<item:create:brass_casing>, <item:create:brass_sheet>, <item:create:brass_casing>], 
    [<item:create:brass_sheet>, <item:minecraft:golden_apple>, <item:create:brass_sheet>],
    [<item:create:brass_casing>, <tag:items:forge:glass_panes>, <item:create:brass_casing>]]);

craftingTable.addShaped("upgrade_pocket_computer", <item:computercraft:pocket_computer_advanced>, [
    [<item:create:brass_sheet>, <item:create:brass_sheet>, <item:create:brass_sheet>], 
    [<item:create:brass_sheet>, <item:computercraft:pocket_computer_normal>, <item:create:brass_sheet>],
    [<item:create:brass_sheet>, <item:minecraft:air>, <item:create:brass_sheet>]]);

#removes normal recipe for computer and adds a different
recipes.remove(<item:computercraft:computer_normal>);
craftingTable.addShaped("create_computer", <item:computercraft:computer_normal>, [
    [<item:create:andesite_casing>, <item:create:andesite_alloy>, <item:create:andesite_casing>], 
    [<item:create:andesite_alloy>, <item:minecraft:redstone>, <item:create:andesite_alloy>],
    [<item:create:andesite_casing>, <tag:items:forge:glass_panes>, <item:create:andesite_casing>]]);

#removes normal recipe for advanced computer and adds 2 different
recipes.remove(<item:computercraft:computer_advanced>);
craftingTable.addShaped("create_advanced_computer", <item:computercraft:computer_advanced>, [
    [<item:create:brass_casing>, <item:create:brass_sheet>, <item:create:brass_casing>], 
    [<item:create:brass_sheet>, <item:minecraft:redstone>, <item:create:brass_sheet>],
    [<item:create:brass_casing>, <tag:items:forge:glass_panes>, <item:create:brass_casing>]]);

craftingTable.addShaped("upgrade_computer", <item:computercraft:computer_advanced>, [
    [<item:create:brass_sheet>, <item:create:brass_sheet>, <item:create:brass_sheet>], 
    [<item:create:brass_sheet>, <item:computercraft:computer_normal>, <item:create:brass_sheet>],
    [<item:create:brass_sheet>, <item:minecraft:air>, <item:create:brass_sheet>]]);

#removes normal recipe for speaker and adds a different
recipes.remove(<item:computercraft:speaker>);
craftingTable.addShaped("create_speaker", <item:computercraft:speaker>, [
    [<item:create:andesite_casing>, <item:create:andesite_alloy>, <item:create:andesite_casing>], 
    [<item:create:andesite_alloy>, <item:minecraft:note_block>, <item:create:andesite_alloy>],
    [<item:create:andesite_casing>, <item:minecraft:redstone>, <item:create:andesite_casing>]]);

#removes normal recipe for disk drives and adds a different
recipes.remove(<item:computercraft:disk_drive>);
craftingTable.addShaped("create_disk_drive", <item:computercraft:disk_drive>, [
    [<item:create:andesite_casing>, <item:create:andesite_alloy>, <item:create:andesite_casing>], 
    [<item:create:andesite_alloy>, <item:minecraft:redstone>, <item:create:andesite_alloy>],
    [<item:create:andesite_casing>, <item:minecraft:redstone>, <item:create:andesite_casing>]]);

#removes normal recipe for printers and adds a different
recipes.remove(<item:computercraft:printer>);
craftingTable.addShaped("create_printer", <item:computercraft:printer>, [
    [<item:create:andesite_casing>, <item:create:andesite_alloy>, <item:create:andesite_casing>], 
    [<item:create:andesite_alloy>, <item:minecraft:redstone>, <item:create:andesite_alloy>],
    [<item:create:andesite_casing>, <item:create:super_glue>, <item:create:andesite_casing>]]);

#removes normal recipe for monitors and adds a different
recipes.remove(<item:computercraft:monitor_normal>);
craftingTable.addShaped("create_monitor", <item:computercraft:monitor_normal>, [
    [<item:create:andesite_casing>, <item:create:andesite_alloy>, <item:create:andesite_casing>], 
    [<item:create:andesite_alloy>, <tag:items:forge:glass_panes>, <item:create:andesite_alloy>],
    [<item:create:andesite_casing>, <item:create:andesite_alloy>, <item:create:andesite_casing>]]);

#removes normal recipe for advanced monitors and adds 2 different
recipes.remove(<item:computercraft:monitor_advanced>);
craftingTable.addShaped("create_advanced_monitor", <item:computercraft:monitor_advanced>, [
    [<item:create:brass_casing>, <item:create:brass_ingot>, <item:create:brass_casing>], 
    [<item:create:brass_ingot>, <tag:items:forge:glass_panes>, <item:create:brass_ingot>],
    [<item:create:brass_casing>, <item:create:brass_ingot>, <item:create:brass_casing>]]);

craftingTable.addShaped("upgrade_monitor", <item:computercraft:monitor_advanced>, [
    [<item:create:brass_sheet>, <item:create:brass_sheet>, <item:create:brass_sheet>], 
    [<item:create:brass_sheet>, <item:computercraft:monitor_normal>, <item:create:brass_sheet>],
    [<item:create:brass_sheet>, <item:create:brass_sheet>, <item:create:brass_sheet>]]);

#removes normal recipe for wireless modems and adds a different
recipes.remove(<item:computercraft:wireless_modem_normal>);
craftingTable.addShaped("create_wireless_modem", <item:computercraft:wireless_modem_normal>, [
    [<item:create:iron_sheet>, <item:create:andesite_alloy>, <item:create:iron_sheet>], 
    [<item:create:andesite_alloy>, <item:create:redstone_link>, <item:create:andesite_alloy>],
    [<item:create:iron_sheet>, <item:create:andesite_alloy>, <item:create:iron_sheet>]]);

#removes normal recipe for wireless modems and adds 2 different
recipes.remove(<item:computercraft:wireless_modem_advanced>);
craftingTable.addShaped("create_advanced_wireless_modem", <item:computercraft:wireless_modem_advanced>, [
    [<item:create:brass_sheet>, <item:create:brass_ingot>, <item:create:brass_sheet>], 
    [<item:create:brass_ingot>, <item:create:redstone_link>, <item:create:brass_ingot>],
    [<item:create:brass_sheet>, <item:create:brass_ingot>, <item:create:brass_sheet>]]);

craftingTable.addShaped("upgrade_wireless_modem", <item:computercraft:wireless_modem_advanced>, [
    [<item:create:brass_sheet>, <item:create:brass_sheet>, <item:create:brass_sheet>], 
    [<item:create:brass_sheet>, <item:computercraft:wireless_modem_normal>, <item:create:brass_sheet>],
    [<item:create:brass_sheet>, <item:create:brass_sheet>, <item:create:brass_sheet>]]);

#removes normal recipe for modems and adds a different
recipes.remove(<item:computercraft:wired_modem>);
craftingTable.addShaped("create_modem", <item:computercraft:wired_modem>*2, [
    [<item:create:iron_sheet>, <item:create:andesite_alloy>, <item:create:iron_sheet>], 
    [<item:create:andesite_alloy>, <item:minecraft:redstone>, <item:create:andesite_alloy>],
    [<item:create:iron_sheet>, <item:create:andesite_alloy>, <item:create:iron_sheet>]]);

#removes normal recipe for cables and adds a different
recipes.remove(<item:computercraft:cable>);
craftingTable.addShaped("create_cable", <item:computercraft:cable>*8, [
    [<item:minecraft:air>, <item:create:copper_sheet>, <item:minecraft:air>], 
    [<item:create:copper_sheet>, <item:minecraft:redstone>, <item:create:copper_sheet>],
    [<item:minecraft:air>, <item:create:copper_sheet>, <item:minecraft:air>]]);

#adjusts the recipe for the advanced turtle
recipes.remove(<item:computercraft:turtle_advanced>);
craftingTable.addShaped("createadvancedturtle", <item:computercraft:turtle_advanced>, [
    [<item:create:brass_sheet>, <item:create:copper_sheet>, <item:create:brass_sheet>],
    [<item:create:copper_sheet>, <item:computercraft:computer_advanced>, <item:create:copper_sheet>],
    [<item:create:brass_sheet>, <tag:items:forge:chests>, <item:create:brass_sheet>]]);

craftingTable.addShaped("upgrade_turtle", <item:computercraft:turtle_advanced>, [
    [<item:minecraft:air>, <item:create:brass_sheet>, <item:minecraft:air>],
    [<item:minecraft:air>, <item:computercraft:turtle_normal>, <item:create:brass_sheet>],
    [<item:minecraft:air>, <item:create:brass_sheet>, <item:minecraft:air>]]);

#adjusts the recipe for the turtle
recipes.remove(<item:computercraft:turtle_normal>);
craftingTable.addShaped("createturtle", <item:computercraft:turtle_normal>, [
    [<item:create:iron_sheet>, <item:create:copper_sheet>, <item:create:iron_sheet>],
    [<item:create:copper_sheet>, <item:computercraft:computer_normal>, <item:create:copper_sheet>],
    [<item:create:iron_sheet>, <tag:items:forge:chests>, <item:create:iron_sheet>]]);