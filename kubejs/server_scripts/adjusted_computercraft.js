// adjusted_computercraft.js
// ComputerCraft recipe adjustments using Create components
// NOTE: forge: tags have been changed to c: for NeoForge 1.21.1

ServerEvents.recipes(event => {

  // ========== Pocket Computers ==========
  event.remove({ id: 'computercraft:pocket_computer_normal' })
  event.shaped('computercraft:pocket_computer_normal', [
    'ACA',
    'CgC',
    'AGC'
  ], {
    A: 'create:andesite_casing',
    C: 'create:andesite_alloy',
    g: 'minecraft:golden_apple',
    G: '#c:glass_panes'
  }).id('kubejs:create_pocket_computer')

  event.remove({ id: 'computercraft:pocket_computer_advanced' })
  event.shaped('computercraft:pocket_computer_advanced', [
    'BCB',
    'CgC',
    'BGC'
  ], {
    B: 'create:brass_casing',
    C: 'create:brass_sheet',
    g: 'minecraft:golden_apple',
    G: '#c:glass_panes'
  }).id('kubejs:create_pocket_computer_advanced')

  event.remove({ id: 'computercraft:pocket_computer_advanced_upgrade' })
  event.shaped('computercraft:pocket_computer_advanced', [
    'BBB',
    'BPB',
    'B B'
  ], {
    B: 'create:brass_sheet',
    P: 'computercraft:pocket_computer_normal'
  }).id('kubejs:upgrade_pocket_computer')

  // ========== Computers ==========
  event.remove({ output: 'computercraft:computer_normal' })
  event.shaped('computercraft:computer_normal', [
    'ACA',
    'CRC',
    'AGA'
  ], {
    A: 'create:andesite_casing',
    C: 'create:andesite_alloy',
    R: 'minecraft:redstone',
    G: '#c:glass_panes'
  }).id('kubejs:create_computer')

  event.remove({ output: 'computercraft:computer_advanced' })
  event.shaped('computercraft:computer_advanced', [
    'BCB',
    'CRC',
    'BGB'
  ], {
    B: 'create:brass_casing',
    C: 'create:brass_sheet',
    R: 'minecraft:redstone',
    G: '#c:glass_panes'
  }).id('kubejs:create_advanced_computer')

  event.shaped('computercraft:computer_advanced', [
    'BBB',
    'BNB',
    'B B'
  ], {
    B: 'create:brass_sheet',
    N: 'computercraft:computer_normal'
  }).id('kubejs:upgrade_computer')

  // ========== Speaker ==========
  event.remove({ output: 'computercraft:speaker' })
  event.shaped('computercraft:speaker', [
    'ACA',
    'CNC',
    'ARA'
  ], {
    A: 'create:andesite_casing',
    C: 'create:andesite_alloy',
    N: 'minecraft:note_block',
    R: 'minecraft:redstone'
  }).id('kubejs:create_speaker')

  // ========== Disk Drive ==========
  event.remove({ output: 'computercraft:disk_drive' })
  event.shaped('computercraft:disk_drive', [
    'ACA',
    'CRC',
    'ARA'
  ], {
    A: 'create:andesite_casing',
    C: 'create:andesite_alloy',
    R: 'minecraft:redstone'
  }).id('kubejs:create_disk_drive')

  // ========== Printer ==========
  event.remove({ output: 'computercraft:printer' })
  event.shaped('computercraft:printer', [
    'ACA',
    'CRC',
    'AGA'
  ], {
    A: 'create:andesite_casing',
    C: 'create:andesite_alloy',
    R: 'minecraft:redstone',
    G: 'create:super_glue'
  }).id('kubejs:create_printer')

  // ========== Monitors ==========
  event.remove({ output: 'computercraft:monitor_normal' })
  event.shaped('computercraft:monitor_normal', [
    'ACA',
    'CGA',
    'ACA'
  ], {
    A: 'create:andesite_casing',
    C: 'create:andesite_alloy',
    G: '#c:glass_panes'
  }).id('kubejs:create_monitor')

  event.remove({ output: 'computercraft:monitor_advanced' })
  event.shaped('computercraft:monitor_advanced', [
    'BCB',
    'CGB',
    'BCB'
  ], {
    B: 'create:brass_casing',
    C: 'create:brass_ingot',
    G: '#c:glass_panes'
  }).id('kubejs:create_advanced_monitor')

  event.shaped('computercraft:monitor_advanced', [
    'BBB',
    'BMB',
    'BBB'
  ], {
    B: 'create:brass_sheet',
    M: 'computercraft:monitor_normal'
  }).id('kubejs:upgrade_monitor')

  // ========== Wireless Modems ==========
  event.remove({ output: 'computercraft:wireless_modem_normal' })
  event.shaped('computercraft:wireless_modem_normal', [
    'ICI',
    'CLC',
    'ICI'
  ], {
    I: 'create:iron_sheet',
    C: 'create:andesite_alloy',
    L: 'create:redstone_link'
  }).id('kubejs:create_wireless_modem')

  event.remove({ output: 'computercraft:wireless_modem_advanced' })
  event.shaped('computercraft:wireless_modem_advanced', [
    'BCB',
    'CLB',
    'BCB'
  ], {
    B: 'create:brass_sheet',
    C: 'create:brass_ingot',
    L: 'create:redstone_link'
  }).id('kubejs:create_advanced_wireless_modem')

  event.shaped('computercraft:wireless_modem_advanced', [
    'BBB',
    'BWB',
    'BBB'
  ], {
    B: 'create:brass_sheet',
    W: 'computercraft:wireless_modem_normal'
  }).id('kubejs:upgrade_wireless_modem')

  // ========== Wired Modem ==========
  event.remove({ output: 'computercraft:wired_modem' })
  event.shaped('2x computercraft:wired_modem', [
    'ICI',
    'CRC',
    'ICI'
  ], {
    I: 'create:iron_sheet',
    C: 'create:andesite_alloy',
    R: 'minecraft:redstone'
  }).id('kubejs:create_modem')

  // ========== Cable ==========
  event.remove({ output: 'computercraft:cable' })
  event.shaped('8x computercraft:cable', [
    ' C ',
    'CRC',
    ' C '
  ], {
    C: 'create:copper_sheet',
    R: 'minecraft:redstone'
  }).id('kubejs:create_cable')

  // ========== Turtles ==========
  event.remove({ id: 'computercraft:turtle_advanced' })
  event.remove({ id: 'computercraft:turtle_advanced_upgrade' })
  event.shaped('computercraft:turtle_advanced', [
    'BCB',
    'CAC',
    'BHB'
  ], {
    B: 'create:brass_sheet',
    C: 'create:copper_sheet',
    A: 'computercraft:computer_advanced',
    H: '#c:chests'
  }).id('kubejs:createadvancedturtle')

  event.shaped('computercraft:turtle_advanced', [
    ' B ',
    ' TB',
    ' B '
  ], {
    B: 'create:brass_sheet',
    T: 'computercraft:turtle_normal'
  }).id('kubejs:upgrade_turtle')

  event.remove({ id: 'computercraft:turtle_normal' })
  event.shaped('computercraft:turtle_normal', [
    'ICI',
    'CNI',
    'IHI'
  ], {
    I: 'create:iron_sheet',
    C: 'create:copper_sheet',
    N: 'computercraft:computer_normal',
    H: '#c:chests'
  }).id('kubejs:createturtle')
})
