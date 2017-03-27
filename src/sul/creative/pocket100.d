/*
 * This file was automatically generated by sel-utils and
 * released under the GNU General Public License version 3.
 * 
 * License: https://github.com/sel-project/sel-utils/blob/master/LICENSE
 * Repository: https://github.com/sel-project/sel-utils
 * Generated from https://github.com/sel-project/sel-utils/blob/master/xml/creative/pocket100.xml
 */
module sul.creative.pocket100;

import std.typecons : Tuple;

alias Enchantment = Tuple!(ubyte, "id", ubyte, "level");

alias Item = Tuple!(string, "name", ushort, "id", ushort, "meta", Enchantment[], "enchantments");

enum Item[] items = [
	Item("Coal", 263, 0, new Enchantment[0]),
	Item("Charcoal", 263, 1, new Enchantment[0]),
	Item("Diamond", 264, 0, new Enchantment[0]),
	Item("Iron Ingot", 265, 0, new Enchantment[0]),
	Item("Gold Ingot", 266, 0, new Enchantment[0]),
	Item("Emerald", 388, 0, new Enchantment[0]),
	Item("Stick", 280, 0, new Enchantment[0]),
	Item("Bowl", 281, 0, new Enchantment[0]),
	Item("String", 287, 0, new Enchantment[0]),
	Item("Feather", 288, 0, new Enchantment[0]),
	Item("Flint", 318, 0, new Enchantment[0]),
	Item("Leather", 334, 0, new Enchantment[0]),
	Item("Rabbit Hide", 415, 0, new Enchantment[0]),
	Item("Clay", 337, 0, new Enchantment[0]),
	Item("Sugar", 353, 0, new Enchantment[0]),
	Item("Brick", 336, 0, new Enchantment[0]),
	Item("Nether Brick", 405, 0, new Enchantment[0]),
	Item("Nether Quartz", 406, 0, new Enchantment[0]),
	Item("Paper", 339, 0, new Enchantment[0]),
	Item("Book", 340, 0, new Enchantment[0]),
	Item("Arrow", 262, 0, new Enchantment[0]),
	Item("Bone", 352, 0, new Enchantment[0]),
	Item("Empty Map", 395, 0, new Enchantment[0]),
	Item("Sugar Canes", 338, 0, new Enchantment[0]),
	Item("Wheat", 296, 0, new Enchantment[0]),
	Item("Arrow of Night Vision", 262, 5, new Enchantment[0]),
	Item("Arrow of Night Vision", 262, 6, new Enchantment[0]),
	Item("Arrow of Invisibility", 262, 7, new Enchantment[0]),
	Item("Arrow of Invisibility", 262, 8, new Enchantment[0]),
	Item("Arrow of Leaping", 262, 9, new Enchantment[0]),
	Item("Arrow of Leaping", 262, 10, new Enchantment[0]),
	Item("Arrow of Leaping", 262, 11, new Enchantment[0]),
	Item("Arrow of Fire Resistance", 262, 12, new Enchantment[0]),
	Item("Arrow of Fire Resistance", 262, 13, new Enchantment[0]),
	Item("Arrow of Swiftness", 262, 14, new Enchantment[0]),
	Item("Arrow of Swiftness", 262, 15, new Enchantment[0]),
	Item("Arrow of Swiftness", 262, 16, new Enchantment[0]),
	Item("Arrow of Slowness", 262, 17, new Enchantment[0]),
	Item("Arrow of Slowness", 262, 18, new Enchantment[0]),
	Item("Arrow of Water Breathing", 262, 19, new Enchantment[0]),
	Item("Arrow of Water Breathing", 262, 20, new Enchantment[0]),
	Item("Arrow of Healing", 262, 21, new Enchantment[0]),
	Item("Arrow of Healing", 262, 22, new Enchantment[0]),
	Item("Arrow of Harming", 262, 23, new Enchantment[0]),
	Item("Arrow of Harming", 262, 24, new Enchantment[0]),
	Item("Arrow of Poison", 262, 25, new Enchantment[0]),
	Item("Arrow of Poison", 262, 26, new Enchantment[0]),
	Item("Arrow of Poison", 262, 27, new Enchantment[0]),
	Item("Arrow of Regeneration", 262, 28, new Enchantment[0]),
	Item("Arrow of Regeneration", 262, 29, new Enchantment[0]),
	Item("Arrow of Regeneration", 262, 30, new Enchantment[0]),
	Item("Arrow of Strength", 262, 31, new Enchantment[0]),
	Item("Arrow of Strength", 262, 32, new Enchantment[0]),
	Item("Arrow of Strength", 262, 33, new Enchantment[0]),
	Item("Arrow of Weakness", 262, 34, new Enchantment[0]),
	Item("Arrow of Weakness", 262, 35, new Enchantment[0]),
	Item("Arrow of Decay", 262, 36, new Enchantment[0]),
	Item("Seeds", 295, 0, new Enchantment[0]),
	Item("Pumpkin Seeds", 361, 0, new Enchantment[0]),
	Item("Melon Seeds", 362, 0, new Enchantment[0]),
	Item("Beetroot Seeds", 458, 0, new Enchantment[0]),
	Item("Egg", 344, 0, new Enchantment[0]),
	Item("Apple", 260, 0, new Enchantment[0]),
	Item("Golden Apple", 322, 0, new Enchantment[0]),
	Item("Golden Apple", 466, 0, new Enchantment[0]),
	Item("Raw Fish", 349, 0, new Enchantment[0]),
	Item("Raw Salmon", 460, 0, new Enchantment[0]),
	Item("Clownfish", 461, 0, new Enchantment[0]),
	Item("Pufferfish", 462, 0, new Enchantment[0]),
	Item("Cooked Fish", 350, 0, new Enchantment[0]),
	Item("Cooked Salmon", 463, 0, new Enchantment[0]),
	Item("Rotten flesh", 367, 0, new Enchantment[0]),
	Item("Mushroom Stew", 282, 0, new Enchantment[0]),
	Item("Bread", 297, 0, new Enchantment[0]),
	Item("Raw Porkchop", 319, 0, new Enchantment[0]),
	Item("Cooked Porkchop", 320, 0, new Enchantment[0]),
	Item("Raw Chicken", 365, 0, new Enchantment[0]),
	Item("Cooked Chicken", 366, 0, new Enchantment[0]),
	Item("Raw Mutton", 423, 0, new Enchantment[0]),
	Item("Cooked Mutton", 424, 0, new Enchantment[0]),
	Item("Raw Beef", 363, 0, new Enchantment[0]),
	Item("Steak", 364, 0, new Enchantment[0]),
	Item("Melon", 360, 0, new Enchantment[0]),
	Item("Carrot", 391, 0, new Enchantment[0]),
	Item("Potato", 392, 0, new Enchantment[0]),
	Item("Baked Potato", 393, 0, new Enchantment[0]),
	Item("Poisonous Potato", 394, 0, new Enchantment[0]),
	Item("Beetroot", 457, 0, new Enchantment[0]),
	Item("Cookie", 357, 0, new Enchantment[0]),
	Item("Pumpkin Pie", 400, 0, new Enchantment[0]),
	Item("Raw Rabbit", 411, 0, new Enchantment[0]),
	Item("Cooked Rabbit", 412, 0, new Enchantment[0]),
	Item("Rabbit Stew", 413, 0, new Enchantment[0]),
	Item("Chorus Fruit", 432, 0, new Enchantment[0]),
	Item("Popped Chorus Fruit", 433, 0, new Enchantment[0]),
	Item("Nether Star", 399, 0, new Enchantment[0]),
	Item("Magma Cream", 378, 0, new Enchantment[0]),
	Item("Blaze Rod", 369, 0, new Enchantment[0]),
	Item("Gold Nugget", 371, 0, new Enchantment[0]),
	Item("Golden Carrot", 396, 0, new Enchantment[0]),
	Item("Glistering Melon", 382, 0, new Enchantment[0]),
	Item("Rabbit's Foot", 414, 0, new Enchantment[0]),
	Item("Ghast Tear", 370, 0, new Enchantment[0]),
	Item("Slimeball", 341, 0, new Enchantment[0]),
	Item("Blaze Powder", 377, 0, new Enchantment[0]),
	Item("Nether Wart", 372, 0, new Enchantment[0]),
	Item("Gunpowder", 289, 0, new Enchantment[0]),
	Item("Glowstone Dust", 348, 0, new Enchantment[0]),
	Item("Spider Eye", 375, 0, new Enchantment[0]),
	Item("Fermented Spider Eye", 376, 0, new Enchantment[0]),
	Item("Dragon's breath", 437, 0, new Enchantment[0]),
	Item("Carrot on a stick", 398, 0, new Enchantment[0]),
	Item("Bottle o' Enchanting", 384, 0, new Enchantment[0]),
	Item("Shulker Shell", 445, 0, new Enchantment[0]),
	Item("Prismarine Shard", 409, 0, new Enchantment[0]),
	Item("Prismarine Crystals", 422, 0, new Enchantment[0]),
	Item("Enchanted Book", 403, 0, [Enchantment(0, 1)]),
	Item("Enchanted Book", 403, 0, [Enchantment(0, 2)]),
	Item("Enchanted Book", 403, 0, [Enchantment(0, 3)]),
	Item("Enchanted Book", 403, 0, [Enchantment(0, 4)]),
	Item("Enchanted Book", 403, 0, [Enchantment(1, 1)]),
	Item("Enchanted Book", 403, 0, [Enchantment(1, 2)]),
	Item("Enchanted Book", 403, 0, [Enchantment(1, 3)]),
	Item("Enchanted Book", 403, 0, [Enchantment(1, 4)]),
	Item("Enchanted Book", 403, 0, [Enchantment(2, 1)]),
	Item("Enchanted Book", 403, 0, [Enchantment(2, 2)]),
	Item("Enchanted Book", 403, 0, [Enchantment(2, 3)]),
	Item("Enchanted Book", 403, 0, [Enchantment(2, 4)]),
	Item("Enchanted Book", 403, 0, [Enchantment(3, 1)]),
	Item("Enchanted Book", 403, 0, [Enchantment(3, 2)]),
	Item("Enchanted Book", 403, 0, [Enchantment(3, 3)]),
	Item("Enchanted Book", 403, 0, [Enchantment(3, 4)]),
	Item("Enchanted Book", 403, 0, [Enchantment(4, 1)]),
	Item("Enchanted Book", 403, 0, [Enchantment(4, 2)]),
	Item("Enchanted Book", 403, 0, [Enchantment(4, 3)]),
	Item("Enchanted Book", 403, 0, [Enchantment(4, 4)]),
	Item("Enchanted Book", 403, 0, [Enchantment(5, 1)]),
	Item("Enchanted Book", 403, 0, [Enchantment(5, 2)]),
	Item("Enchanted Book", 403, 0, [Enchantment(5, 3)]),
	Item("Enchanted Book", 403, 0, [Enchantment(6, 1)]),
	Item("Enchanted Book", 403, 0, [Enchantment(6, 2)]),
	Item("Enchanted Book", 403, 0, [Enchantment(6, 3)]),
	Item("Enchanted Book", 403, 0, [Enchantment(7, 1)]),
	Item("Enchanted Book", 403, 0, [Enchantment(7, 2)]),
	Item("Enchanted Book", 403, 0, [Enchantment(7, 3)]),
	Item("Enchanted Book", 403, 0, [Enchantment(8, 1)]),
	Item("Enchanted Book", 403, 0, [Enchantment(9, 1)]),
	Item("Enchanted Book", 403, 0, [Enchantment(9, 2)]),
	Item("Enchanted Book", 403, 0, [Enchantment(9, 3)]),
	Item("Enchanted Book", 403, 0, [Enchantment(9, 4)]),
	Item("Enchanted Book", 403, 0, [Enchantment(9, 5)]),
	Item("Enchanted Book", 403, 0, [Enchantment(10, 1)]),
	Item("Enchanted Book", 403, 0, [Enchantment(10, 2)]),
	Item("Enchanted Book", 403, 0, [Enchantment(10, 3)]),
	Item("Enchanted Book", 403, 0, [Enchantment(10, 4)]),
	Item("Enchanted Book", 403, 0, [Enchantment(10, 5)]),
	Item("Enchanted Book", 403, 0, [Enchantment(11, 1)]),
	Item("Enchanted Book", 403, 0, [Enchantment(11, 2)]),
	Item("Enchanted Book", 403, 0, [Enchantment(11, 3)]),
	Item("Enchanted Book", 403, 0, [Enchantment(11, 4)]),
	Item("Enchanted Book", 403, 0, [Enchantment(11, 5)]),
	Item("Enchanted Book", 403, 0, [Enchantment(12, 1)]),
	Item("Enchanted Book", 403, 0, [Enchantment(12, 2)]),
	Item("Enchanted Book", 403, 0, [Enchantment(13, 1)]),
	Item("Enchanted Book", 403, 0, [Enchantment(13, 2)]),
	Item("Enchanted Book", 403, 0, [Enchantment(14, 1)]),
	Item("Enchanted Book", 403, 0, [Enchantment(14, 2)]),
	Item("Enchanted Book", 403, 0, [Enchantment(14, 3)]),
	Item("Enchanted Book", 403, 0, [Enchantment(15, 1)]),
	Item("Enchanted Book", 403, 0, [Enchantment(15, 2)]),
	Item("Enchanted Book", 403, 0, [Enchantment(15, 3)]),
	Item("Enchanted Book", 403, 0, [Enchantment(15, 4)]),
	Item("Enchanted Book", 403, 0, [Enchantment(15, 5)]),
	Item("Enchanted Book", 403, 0, [Enchantment(16, 1)]),
	Item("Enchanted Book", 403, 0, [Enchantment(17, 1)]),
	Item("Enchanted Book", 403, 0, [Enchantment(17, 2)]),
	Item("Enchanted Book", 403, 0, [Enchantment(17, 3)]),
	Item("Enchanted Book", 403, 0, [Enchantment(18, 1)]),
	Item("Enchanted Book", 403, 0, [Enchantment(18, 2)]),
	Item("Enchanted Book", 403, 0, [Enchantment(18, 3)]),
	Item("Enchanted Book", 403, 0, [Enchantment(19, 1)]),
	Item("Enchanted Book", 403, 0, [Enchantment(19, 2)]),
	Item("Enchanted Book", 403, 0, [Enchantment(19, 3)]),
	Item("Enchanted Book", 403, 0, [Enchantment(19, 4)]),
	Item("Enchanted Book", 403, 0, [Enchantment(19, 5)]),
	Item("Enchanted Book", 403, 0, [Enchantment(20, 1)]),
	Item("Enchanted Book", 403, 0, [Enchantment(20, 2)]),
	Item("Enchanted Book", 403, 0, [Enchantment(21, 1)]),
	Item("Enchanted Book", 403, 0, [Enchantment(22, 1)]),
	Item("Enchanted Book", 403, 0, [Enchantment(23, 1)]),
	Item("Enchanted Book", 403, 0, [Enchantment(23, 2)]),
	Item("Enchanted Book", 403, 0, [Enchantment(23, 3)]),
	Item("Enchanted Book", 403, 0, [Enchantment(24, 1)]),
	Item("Enchanted Book", 403, 0, [Enchantment(24, 2)]),
	Item("Enchanted Book", 403, 0, [Enchantment(24, 3)]),
	Item("Ink Sac", 351, 0, new Enchantment[0]),
	Item("Grey Dye", 351, 8, new Enchantment[0]),
	Item("Light Grey Dye", 351, 7, new Enchantment[0]),
	Item("Bone Meal", 351, 15, new Enchantment[0]),
	Item("Light Blue Dye", 351, 12, new Enchantment[0]),
	Item("Orange Dye", 351, 14, new Enchantment[0]),
	Item("Rose Red", 351, 1, new Enchantment[0]),
	Item("Lapis Lazuli", 351, 4, new Enchantment[0]),
	Item("Purple Dye", 351, 5, new Enchantment[0]),
	Item("Magenta Dye", 351, 13, new Enchantment[0]),
	Item("Pink Dye", 351, 9, new Enchantment[0]),
	Item("Cocoa Beans", 351, 3, new Enchantment[0]),
	Item("Dandelion Yellow", 351, 11, new Enchantment[0]),
	Item("Lime Dye", 351, 10, new Enchantment[0]),
	Item("Cactus Green", 351, 2, new Enchantment[0]),
	Item("Cyan Dye", 351, 6, new Enchantment[0]),
	Item("Glass Bottle", 374, 0, new Enchantment[0]),
	Item("Water Bottle", 373, 0, new Enchantment[0]),
	Item("Mundane Potion", 373, 1, new Enchantment[0]),
	Item("Mundane Potion", 373, 2, new Enchantment[0]),
	Item("Thick Potion", 373, 3, new Enchantment[0]),
	Item("Awkward Potion", 373, 4, new Enchantment[0]),
	Item("Potion of Night Vision", 373, 5, new Enchantment[0]),
	Item("Potion of Night Vision", 373, 6, new Enchantment[0]),
	Item("Potion of Invisibility", 373, 7, new Enchantment[0]),
	Item("Potion of Invisibility", 373, 8, new Enchantment[0]),
	Item("Potion of Leaping", 373, 9, new Enchantment[0]),
	Item("Potion of Leaping", 373, 10, new Enchantment[0]),
	Item("Potion of Leaping", 373, 11, new Enchantment[0]),
	Item("Potion of Fire Resistance", 373, 12, new Enchantment[0]),
	Item("Potion of Fire Resistance", 373, 13, new Enchantment[0]),
	Item("Potion of Swiftness", 373, 14, new Enchantment[0]),
	Item("Potion of Swiftness", 373, 15, new Enchantment[0]),
	Item("Potion of Swiftness", 373, 16, new Enchantment[0]),
	Item("Potion of Slowness", 373, 17, new Enchantment[0]),
	Item("Potion of Slowness", 373, 18, new Enchantment[0]),
	Item("Potion of Water Breathing", 373, 19, new Enchantment[0]),
	Item("Potion of Water Breathing", 373, 20, new Enchantment[0]),
	Item("Potion of Healing", 373, 21, new Enchantment[0]),
	Item("Potion of Healing", 373, 22, new Enchantment[0]),
	Item("Potion of Harming", 373, 23, new Enchantment[0]),
	Item("Potion of Harming", 373, 24, new Enchantment[0]),
	Item("Potion of Poison", 373, 25, new Enchantment[0]),
	Item("Potion of Poison", 373, 26, new Enchantment[0]),
	Item("Potion of Poison", 373, 27, new Enchantment[0]),
	Item("Potion of Regeneration", 373, 28, new Enchantment[0]),
	Item("Potion of Regeneration", 373, 29, new Enchantment[0]),
	Item("Potion of Regeneration", 373, 30, new Enchantment[0]),
	Item("Potion of Strength", 373, 31, new Enchantment[0]),
	Item("Potion of Strength", 373, 32, new Enchantment[0]),
	Item("Potion of Strength", 373, 33, new Enchantment[0]),
	Item("Potion of Weakness", 373, 34, new Enchantment[0]),
	Item("Potion of Weakness", 373, 35, new Enchantment[0]),
	Item("Potion of Decay", 373, 36, new Enchantment[0]),
	Item("Splash Water Bottle", 438, 0, new Enchantment[0]),
	Item("Splash Mundane Potion", 438, 1, new Enchantment[0]),
	Item("Splash Mundane Potion", 438, 2, new Enchantment[0]),
	Item("Splash Thick Potion", 438, 3, new Enchantment[0]),
	Item("Splash Awkward Potion", 438, 4, new Enchantment[0]),
	Item("Splash Potion of Night Vision", 438, 5, new Enchantment[0]),
	Item("Splash Potion of Night Vision", 438, 6, new Enchantment[0]),
	Item("Splash Potion of Invisibility", 438, 7, new Enchantment[0]),
	Item("Splash Potion of Invisibility", 438, 8, new Enchantment[0]),
	Item("Splash Potion of Leaping", 438, 9, new Enchantment[0]),
	Item("Splash Potion of Leaping", 438, 10, new Enchantment[0]),
	Item("Splash Potion of Leaping", 438, 11, new Enchantment[0]),
	Item("Splash Potion of Fire Resistance", 438, 12, new Enchantment[0]),
	Item("Splash Potion of Fire Resistance", 438, 13, new Enchantment[0]),
	Item("Splash Potion of Swiftness", 438, 14, new Enchantment[0]),
	Item("Splash Potion of Swiftness", 438, 15, new Enchantment[0]),
	Item("Splash Potion of Swiftness", 438, 16, new Enchantment[0]),
	Item("Splash Potion of Slowness", 438, 17, new Enchantment[0]),
	Item("Splash Potion of Slowness", 438, 18, new Enchantment[0]),
	Item("Splash Potion of Water Breathing", 438, 19, new Enchantment[0]),
	Item("Splash Potion of Water Breathing", 438, 20, new Enchantment[0]),
	Item("Splash Potion of Healing", 438, 21, new Enchantment[0]),
	Item("Splash Potion of Healing", 438, 22, new Enchantment[0]),
	Item("Splash Potion of Harming", 438, 23, new Enchantment[0]),
	Item("Splash Potion of Harming", 438, 24, new Enchantment[0]),
	Item("Splash Potion of Poison", 438, 25, new Enchantment[0]),
	Item("Splash Potion of Poison", 438, 26, new Enchantment[0]),
	Item("Splash Potion of Poison", 438, 27, new Enchantment[0]),
	Item("Splash Potion of Regeneration", 438, 28, new Enchantment[0]),
	Item("Splash Potion of Regeneration", 438, 29, new Enchantment[0]),
	Item("Splash Potion of Regeneration", 438, 30, new Enchantment[0]),
	Item("Splash Potion of Strength", 438, 31, new Enchantment[0]),
	Item("Splash Potion of Strength", 438, 32, new Enchantment[0]),
	Item("Splash Potion of Strength", 438, 33, new Enchantment[0]),
	Item("Splash Potion of Weakness", 438, 34, new Enchantment[0]),
	Item("Splash Potion of Weakness", 438, 35, new Enchantment[0]),
	Item("Splash Potion of Decay", 438, 36, new Enchantment[0]),
	Item("Lingering Water Bottle", 441, 0, new Enchantment[0]),
	Item("Lingering Mundane Potion", 441, 1, new Enchantment[0]),
	Item("Lingering Mundane Potion", 441, 2, new Enchantment[0]),
	Item("Lingering Thick Potion", 441, 3, new Enchantment[0]),
	Item("Lingering Awkward Potion", 441, 4, new Enchantment[0]),
	Item("Lingering Potion of Night Vision", 441, 5, new Enchantment[0]),
	Item("Lingering Potion of Night Vision", 441, 6, new Enchantment[0]),
	Item("Lingering Potion of Invisibility", 441, 7, new Enchantment[0]),
	Item("Lingering Potion of Invisibility", 441, 8, new Enchantment[0]),
	Item("Lingering Potion of Leaping", 441, 9, new Enchantment[0]),
	Item("Lingering Potion of Leaping", 441, 10, new Enchantment[0]),
	Item("Lingering Potion of Leaping", 441, 11, new Enchantment[0]),
	Item("Lingering Potion of Fire Resistance", 441, 12, new Enchantment[0]),
	Item("Lingering Potion of Fire Resistance", 441, 13, new Enchantment[0]),
	Item("Lingering Potion of Swiftness", 441, 14, new Enchantment[0]),
	Item("Lingering Potion of Swiftness", 441, 15, new Enchantment[0]),
	Item("Lingering Potion of Swiftness", 441, 16, new Enchantment[0]),
	Item("Lingering Potion of Slowness", 441, 17, new Enchantment[0]),
	Item("Lingering Potion of Slowness", 441, 18, new Enchantment[0]),
	Item("Lingering Potion of Water Breathing", 441, 19, new Enchantment[0]),
	Item("Lingering Potion of Water Breathing", 441, 20, new Enchantment[0]),
	Item("Lingering Potion of Healing", 441, 21, new Enchantment[0]),
	Item("Lingering Potion of Healing", 441, 22, new Enchantment[0]),
	Item("Lingering Potion of Harming", 441, 23, new Enchantment[0]),
	Item("Lingering Potion of Harming", 441, 24, new Enchantment[0]),
	Item("Lingering Potion of Poison", 441, 25, new Enchantment[0]),
	Item("Lingering Potion of Poison", 441, 26, new Enchantment[0]),
	Item("Lingering Potion of Poison", 441, 27, new Enchantment[0]),
	Item("Lingering Potion of Regeneration", 441, 28, new Enchantment[0]),
	Item("Lingering Potion of Regeneration", 441, 29, new Enchantment[0]),
	Item("Lingering Potion of Regeneration", 441, 30, new Enchantment[0]),
	Item("Lingering Potion of Strength", 441, 31, new Enchantment[0]),
	Item("Lingering Potion of Strength", 441, 32, new Enchantment[0]),
	Item("Lingering Potion of Strength", 441, 33, new Enchantment[0]),
	Item("Lingering Potion of Weakness", 441, 34, new Enchantment[0]),
	Item("Lingering Potion of Weakness", 441, 35, new Enchantment[0]),
	Item("Lingering Potion of Decay", 441, 36, new Enchantment[0]),
	Item("Rail", 66, 0, new Enchantment[0]),
	Item("Powered Rail", 27, 0, new Enchantment[0]),
	Item("Detector Rail", 28, 0, new Enchantment[0]),
	Item("Activator Rail", 126, 0, new Enchantment[0]),
	Item("Torch", 50, 0, new Enchantment[0]),
	Item("Bucket", 325, 0, new Enchantment[0]),
	Item("Milk", 325, 1, new Enchantment[0]),
	Item("Water Bucket", 325, 8, new Enchantment[0]),
	Item("Lava Bucket", 325, 10, new Enchantment[0]),
	Item("TNT", 46, 0, new Enchantment[0]),
	Item("Lead", 420, 0, new Enchantment[0]),
	Item("Name Tag", 421, 0, new Enchantment[0]),
	Item("Redstone", 331, 0, new Enchantment[0]),
	Item("Bow", 261, 0, new Enchantment[0]),
	Item("Fishing Rod", 346, 0, new Enchantment[0]),
	Item("Flint and Steel", 259, 0, new Enchantment[0]),
	Item("Shears", 359, 0, new Enchantment[0]),
	Item("Clock", 347, 0, new Enchantment[0]),
	Item("Compass", 345, 0, new Enchantment[0]),
	Item("Minecart", 328, 0, new Enchantment[0]),
	Item("Minecart with Chest", 342, 0, new Enchantment[0]),
	Item("Minecart with Hopper", 408, 0, new Enchantment[0]),
	Item("Minecart with TNT", 407, 0, new Enchantment[0]),
	Item("Oak Boat", 333, 0, new Enchantment[0]),
	Item("Spruce Boat", 333, 1, new Enchantment[0]),
	Item("Birch Boat", 333, 2, new Enchantment[0]),
	Item("Jungle Boat", 333, 3, new Enchantment[0]),
	Item("Acacia Boat", 333, 4, new Enchantment[0]),
	Item("Dark Oak Boat", 333, 5, new Enchantment[0]),
	Item("Saddle", 329, 0, new Enchantment[0]),
	Item("Leather Horse Armor", 416, 0, new Enchantment[0]),
	Item("Iron Horse Armor", 417, 0, new Enchantment[0]),
	Item("Gold Horse Armor", 418, 0, new Enchantment[0]),
	Item("Diamond Horse Armor", 419, 0, new Enchantment[0]),
	Item("Spawn Villager", 383, 15, new Enchantment[0]),
	Item("Spawn Chicken", 383, 10, new Enchantment[0]),
	Item("Spawn Cow", 383, 11, new Enchantment[0]),
	Item("Spawn Pig", 383, 12, new Enchantment[0]),
	Item("Spawn Sheep", 383, 13, new Enchantment[0]),
	Item("Spawn Wolf", 383, 14, new Enchantment[0]),
	Item("Spawn Polar Bear", 383, 28, new Enchantment[0]),
	Item("Spawn Ocelot", 383, 22, new Enchantment[0]),
	Item("Spawn Mooshroom", 383, 16, new Enchantment[0]),
	Item("Spawn Bat", 383, 19, new Enchantment[0]),
	Item("Spawn Rabbit", 383, 18, new Enchantment[0]),
	Item("Spawn Horse", 383, 23, new Enchantment[0]),
	Item("Spawn Donkey", 383, 24, new Enchantment[0]),
	Item("Spawn Mule", 383, 25, new Enchantment[0]),
	Item("Spawn Skeleton Horse", 383, 26, new Enchantment[0]),
	Item("Spawn Zombie Horse", 383, 27, new Enchantment[0]),
	Item("Spawn Creeper", 383, 33, new Enchantment[0]),
	Item("Spawn Enderman", 383, 38, new Enchantment[0]),
	Item("Spawn Silverfish", 383, 39, new Enchantment[0]),
	Item("Spawn Skeleton", 383, 34, new Enchantment[0]),
	Item("Spawn Wither Horse", 383, 48, new Enchantment[0]),
	Item("Spawn Stray", 383, 46, new Enchantment[0]),
	Item("Spawn Slime", 383, 37, new Enchantment[0]),
	Item("Spawn Spider", 383, 35, new Enchantment[0]),
	Item("Spawn Zombie", 383, 32, new Enchantment[0]),
	Item("Spawn Zombie Pigman", 383, 36, new Enchantment[0]),
	Item("Spawn Husk", 383, 47, new Enchantment[0]),
	Item("Spawn Squid", 383, 17, new Enchantment[0]),
	Item("Spawn Cave Spider", 383, 40, new Enchantment[0]),
	Item("Spawn Witch", 383, 45, new Enchantment[0]),
	Item("Spawn Guardian", 383, 49, new Enchantment[0]),
	Item("Spawn Elder Guardian", 383, 50, new Enchantment[0]),
	Item("Spawn Endermite", 383, 55, new Enchantment[0]),
	Item("Spawn Magma Cube", 383, 42, new Enchantment[0]),
	Item("Spawn Ghast", 383, 41, new Enchantment[0]),
	Item("Spawn Blaze", 383, 43, new Enchantment[0]),
	Item("Spawn Shulker", 383, 54, new Enchantment[0]),
	Item("Fire Charge", 385, 0, new Enchantment[0]),
	Item("Wooden Sword", 268, 0, new Enchantment[0]),
	Item("Wooden Hoe", 290, 0, new Enchantment[0]),
	Item("Wooden Shovel", 269, 0, new Enchantment[0]),
	Item("Wooden Pickaxe", 270, 0, new Enchantment[0]),
	Item("Wooden Axe", 271, 0, new Enchantment[0]),
	Item("Stone Sword", 272, 0, new Enchantment[0]),
	Item("Stone Hoe", 291, 0, new Enchantment[0]),
	Item("Stone Shovel", 273, 0, new Enchantment[0]),
	Item("Stone Pickaxe", 274, 0, new Enchantment[0]),
	Item("Stone Axe", 275, 0, new Enchantment[0]),
	Item("Iron Sword", 267, 0, new Enchantment[0]),
	Item("Iron Hoe", 292, 0, new Enchantment[0]),
	Item("Iron Shovel", 256, 0, new Enchantment[0]),
	Item("Iron Pickaxe", 257, 0, new Enchantment[0]),
	Item("Iron Axe", 258, 0, new Enchantment[0]),
	Item("Diamond Sword", 276, 0, new Enchantment[0]),
	Item("Diamond Hoe", 293, 0, new Enchantment[0]),
	Item("Diamond Shovel", 277, 0, new Enchantment[0]),
	Item("Diamond Pickaxe", 278, 0, new Enchantment[0]),
	Item("Diamond Axe", 279, 0, new Enchantment[0]),
	Item("Golden Sword", 283, 0, new Enchantment[0]),
	Item("Golden Hoe", 294, 0, new Enchantment[0]),
	Item("Golden Shovel", 284, 0, new Enchantment[0]),
	Item("Golden Pickaxe", 285, 0, new Enchantment[0]),
	Item("Golden Axe", 286, 0, new Enchantment[0]),
	Item("Leather Cap", 298, 0, new Enchantment[0]),
	Item("Leather Tunic", 299, 0, new Enchantment[0]),
	Item("Leather Pants", 300, 0, new Enchantment[0]),
	Item("Leather Boots", 301, 0, new Enchantment[0]),
	Item("Chain Helmet", 302, 0, new Enchantment[0]),
	Item("Chain Chestplate", 303, 0, new Enchantment[0]),
	Item("Chain Leggings", 304, 0, new Enchantment[0]),
	Item("Chain Boots", 305, 0, new Enchantment[0]),
	Item("Iron Helmet", 306, 0, new Enchantment[0]),
	Item("Iron Chestplate", 307, 0, new Enchantment[0]),
	Item("Iron Leggings", 308, 0, new Enchantment[0]),
	Item("Iron Boots", 309, 0, new Enchantment[0]),
	Item("Diamond Helmet", 310, 0, new Enchantment[0]),
	Item("Diamond Chestplate", 311, 0, new Enchantment[0]),
	Item("Diamond Leggings", 312, 0, new Enchantment[0]),
	Item("Diamond Boots", 313, 0, new Enchantment[0]),
	Item("Golden Helmet", 314, 0, new Enchantment[0]),
	Item("Golden Chestplate", 315, 0, new Enchantment[0]),
	Item("Golden Leggings", 316, 0, new Enchantment[0]),
	Item("Golden Boots", 317, 0, new Enchantment[0]),
	Item("Elytra Wings", 444, 0, new Enchantment[0]),
	Item("Lever", 69, 0, new Enchantment[0]),
	Item("Redstone Lamp", 123, 0, new Enchantment[0]),
	Item("Redstone Torch", 76, 0, new Enchantment[0]),
	Item("Wooden Pressure Plate", 72, 0, new Enchantment[0]),
	Item("Stone Pressure Plate", 70, 0, new Enchantment[0]),
	Item("Weighted Pressure Plate (Light)", 147, 0, new Enchantment[0]),
	Item("Weighted Pressure Plate (Heavy)", 148, 0, new Enchantment[0]),
	Item("Button", 143, 5, new Enchantment[0]),
	Item("Button", 77, 5, new Enchantment[0]),
	Item("Daylight Sensor", 151, 0, new Enchantment[0]),
	Item("Tripwire Hook", 131, 0, new Enchantment[0]),
	Item("Redstone Repeater", 356, 0, new Enchantment[0]),
	Item("Redstone Comparator", 404, 0, new Enchantment[0]),
	Item("Dispenser", 23, 3, new Enchantment[0]),
	Item("Dropper", 125, 3, new Enchantment[0]),
	Item("Piston", 33, 1, new Enchantment[0]),
	Item("Sticky Piston", 29, 1, new Enchantment[0]),
	Item("Observer", 251, 0, new Enchantment[0]),
	Item("Hopper", 410, 0, new Enchantment[0]),
	Item("Snowball", 332, 0, new Enchantment[0]),
	Item("Ender Pearl", 368, 0, new Enchantment[0]),
	Item("Eye of Ender", 381, 0, new Enchantment[0]),
	Item("Beacon", 138, 0, new Enchantment[0]),
	Item("Cobblestone Wall", 139, 0, new Enchantment[0]),
	Item("Mossy Cobblestone Wall", 139, 1, new Enchantment[0]),
	Item("Lily Pad", 111, 0, new Enchantment[0]),
	Item("Sea Lantern", 169, 0, new Enchantment[0]),
	Item("Chorus Plant", 240, 0, new Enchantment[0]),
	Item("Chorus Flower", 200, 0, new Enchantment[0]),
	Item("Block of Gold", 41, 0, new Enchantment[0]),
	Item("Block of Iron", 42, 0, new Enchantment[0]),
	Item("Block of Diamond", 57, 0, new Enchantment[0]),
	Item("Lapis Lazuli Block", 22, 0, new Enchantment[0]),
	Item("Block of Coal", 173, 0, new Enchantment[0]),
	Item("Block of Emerald", 133, 0, new Enchantment[0]),
	Item("Block of Redstone", 152, 0, new Enchantment[0]),
	Item("Top Snow", 78, 0, new Enchantment[0]),
	Item("Glass", 20, 0, new Enchantment[0]),
	Item("Glowstone", 89, 0, new Enchantment[0]),
	Item("Vines", 106, 0, new Enchantment[0]),
	Item("Ladder", 65, 0, new Enchantment[0]),
	Item("Sponge", 19, 0, new Enchantment[0]),
	Item("Wet Sponge", 19, 1, new Enchantment[0]),
	Item("Glass Pane", 102, 0, new Enchantment[0]),
	Item("Oak Door", 324, 0, new Enchantment[0]),
	Item("Spruce Door", 427, 0, new Enchantment[0]),
	Item("Birch Door", 428, 0, new Enchantment[0]),
	Item("Jungle Door", 429, 0, new Enchantment[0]),
	Item("Acacia Door", 430, 0, new Enchantment[0]),
	Item("Dark Oak Wood", 431, 0, new Enchantment[0]),
	Item("Iron Door", 330, 0, new Enchantment[0]),
	Item("Wooden Trapdoor", 96, 0, new Enchantment[0]),
	Item("Iron Trapdoor", 167, 0, new Enchantment[0]),
	Item("Oak Fence", 85, 0, new Enchantment[0]),
	Item("Spruce Fence gate", 85, 1, new Enchantment[0]),
	Item("Birch Fence", 85, 2, new Enchantment[0]),
	Item("Jungle Fence", 85, 3, new Enchantment[0]),
	Item("Acacia Fence", 85, 4, new Enchantment[0]),
	Item("Dark Oak Fence", 85, 5, new Enchantment[0]),
	Item("Nether Brick Fence", 113, 0, new Enchantment[0]),
	Item("Oak Fence Gate", 107, 0, new Enchantment[0]),
	Item("Spruce Fence Gate", 183, 0, new Enchantment[0]),
	Item("Birch Fence Gate", 184, 0, new Enchantment[0]),
	Item("Jungle Fence Gate", 185, 0, new Enchantment[0]),
	Item("Acacia Fence Gate", 187, 0, new Enchantment[0]),
	Item("Dark Oak Fence Gate", 186, 0, new Enchantment[0]),
	Item("Iron Bars", 101, 0, new Enchantment[0]),
	Item("Bed", 355, 0, new Enchantment[0]),
	Item("Bookshelf", 47, 0, new Enchantment[0]),
	Item("Sign", 323, 0, new Enchantment[0]),
	Item("Painting", 321, 0, new Enchantment[0]),
	Item("Item Frame", 389, 0, new Enchantment[0]),
	Item("Crafting Table", 58, 0, new Enchantment[0]),
	Item("Stonecutter", 245, 0, new Enchantment[0]),
	Item("Chest", 54, 0, new Enchantment[0]),
	Item("Trapped Chest", 146, 0, new Enchantment[0]),
	Item("Furnace", 61, 0, new Enchantment[0]),
	Item("Brewing Stand", 379, 0, new Enchantment[0]),
	Item("Cauldron", 380, 0, new Enchantment[0]),
	Item("Note Block", 25, 0, new Enchantment[0]),
	Item("End Rod", 208, 0, new Enchantment[0]),
	Item("End Portal", 120, 0, new Enchantment[0]),
	Item("Anvil", 145, 0, new Enchantment[0]),
	Item("Slightly Damaged Anvil", 145, 4, new Enchantment[0]),
	Item("Very Damaged Anvil", 145, 8, new Enchantment[0]),
	Item("Dandelion", 37, 0, new Enchantment[0]),
	Item("Poppy", 38, 0, new Enchantment[0]),
	Item("Blue Orchid", 38, 1, new Enchantment[0]),
	Item("Allium", 38, 2, new Enchantment[0]),
	Item("Azure Bluet", 38, 3, new Enchantment[0]),
	Item("Red Tulip", 38, 4, new Enchantment[0]),
	Item("Orange Tulip", 38, 5, new Enchantment[0]),
	Item("White Tulip", 38, 6, new Enchantment[0]),
	Item("Pink Tulip", 38, 7, new Enchantment[0]),
	Item("Oxeye Daisy", 38, 8, new Enchantment[0]),
	Item("Sunflower", 175, 0, new Enchantment[0]),
	Item("Lilac", 175, 1, new Enchantment[0]),
	Item("Double Tallgrass", 175, 2, new Enchantment[0]),
	Item("Large Fern", 175, 3, new Enchantment[0]),
	Item("Rose Bush", 175, 4, new Enchantment[0]),
	Item("Peony", 175, 5, new Enchantment[0]),
	Item("Mushroom", 39, 0, new Enchantment[0]),
	Item("Mushroom", 40, 0, new Enchantment[0]),
	Item("Mushroom", 99, 14, new Enchantment[0]),
	Item("Mushroom", 100, 14, new Enchantment[0]),
	Item("Mushroom", 99, 0, new Enchantment[0]),
	Item("Mushroom", 99, 15, new Enchantment[0]),
	Item("Cactus", 81, 0, new Enchantment[0]),
	Item("Melon", 103, 0, new Enchantment[0]),
	Item("Pumpkin", 86, 0, new Enchantment[0]),
	Item("Jack o'Lantern", 91, 0, new Enchantment[0]),
	Item("Cobweb", 30, 0, new Enchantment[0]),
	Item("Hay Bale", 170, 0, new Enchantment[0]),
	Item("Grass", 31, 1, new Enchantment[0]),
	Item("Fern", 31, 2, new Enchantment[0]),
	Item("Dead Bush", 32, 0, new Enchantment[0]),
	Item("Oak Sapling", 6, 0, new Enchantment[0]),
	Item("Spruce Sapling", 6, 1, new Enchantment[0]),
	Item("Birch Sapling", 6, 2, new Enchantment[0]),
	Item("Jungle Sapling", 6, 3, new Enchantment[0]),
	Item("Acacia Sapling", 6, 4, new Enchantment[0]),
	Item("Dark Oak Sapling", 6, 5, new Enchantment[0]),
	Item("Oak Leaves", 18, 0, new Enchantment[0]),
	Item("Spruce Leaves", 18, 1, new Enchantment[0]),
	Item("Birch Leaves", 18, 2, new Enchantment[0]),
	Item("Jungle Leaves", 18, 3, new Enchantment[0]),
	Item("Acacia Leaves", 161, 0, new Enchantment[0]),
	Item("Dark Oak Leaves", 161, 1, new Enchantment[0]),
	Item("Cake", 354, 0, new Enchantment[0]),
	Item("Skeleton Skull", 397, 0, new Enchantment[0]),
	Item("Wither Skeleton Skull", 397, 1, new Enchantment[0]),
	Item("Zombie Head", 397, 2, new Enchantment[0]),
	Item("Head", 397, 3, new Enchantment[0]),
	Item("Creeper Head", 397, 4, new Enchantment[0]),
	Item("Dragon Head", 397, 5, new Enchantment[0]),
	Item("Flower Pot", 390, 0, new Enchantment[0]),
	Item("Stone Monster Egg", 92, 0, new Enchantment[0]),
	Item("Cobblestone Monster Egg", 92, 1, new Enchantment[0]),
	Item("Stone Brick Monster Egg", 92, 2, new Enchantment[0]),
	Item("Mossy Stone Brick Monster Egg", 92, 3, new Enchantment[0]),
	Item("Cracked Stone Brick Monster Egg", 92, 4, new Enchantment[0]),
	Item("Chiseled Stone Brick Monster Egg", 92, 5, new Enchantment[0]),
	Item("Dragon Egg", 122, 0, new Enchantment[0]),
	Item("End Crystal", 71, 0, new Enchantment[0]),
	Item("Monster Spawner", 52, 0, new Enchantment[0]),
	Item("Enchantment Table", 116, 0, new Enchantment[0]),
	Item("Slime Block", 165, 0, new Enchantment[0]),
	Item("Ender Chest", 130, 0, new Enchantment[0]),
	Item("Wool", 35, 0, new Enchantment[0]),
	Item("Light Grey Wool", 35, 8, new Enchantment[0]),
	Item("Grey Wool", 35, 7, new Enchantment[0]),
	Item("Black Wool", 35, 15, new Enchantment[0]),
	Item("Brown Wool", 35, 12, new Enchantment[0]),
	Item("Red Wool", 35, 14, new Enchantment[0]),
	Item("Orange Wool", 35, 1, new Enchantment[0]),
	Item("Yellow Wool", 35, 4, new Enchantment[0]),
	Item("Lime Wool", 35, 5, new Enchantment[0]),
	Item("Green Wool", 35, 13, new Enchantment[0]),
	Item("Cyan Wool", 35, 9, new Enchantment[0]),
	Item("Light Blue Wool", 35, 3, new Enchantment[0]),
	Item("Blue Wool", 35, 11, new Enchantment[0]),
	Item("Purple Wool", 35, 10, new Enchantment[0]),
	Item("Magenta Wool", 35, 2, new Enchantment[0]),
	Item("Pink Wool", 35, 6, new Enchantment[0]),
	Item("Carpet", 171, 0, new Enchantment[0]),
	Item("Light Grey Carpet", 171, 8, new Enchantment[0]),
	Item("Grey Carpet", 171, 7, new Enchantment[0]),
	Item("Black Carpet", 171, 15, new Enchantment[0]),
	Item("Brown Carpet", 171, 12, new Enchantment[0]),
	Item("Red Carpet", 171, 14, new Enchantment[0]),
	Item("Orange Carpet", 171, 1, new Enchantment[0]),
	Item("Yellow Carpet", 171, 4, new Enchantment[0]),
	Item("Lime Carpet", 171, 5, new Enchantment[0]),
	Item("Green Carpet", 171, 13, new Enchantment[0]),
	Item("Cyan Carpet", 171, 9, new Enchantment[0]),
	Item("Light Blue Carpet", 171, 3, new Enchantment[0]),
	Item("Blue Carpet", 171, 11, new Enchantment[0]),
	Item("Purple Carpet", 171, 10, new Enchantment[0]),
	Item("Magenta Carpet", 171, 2, new Enchantment[0]),
	Item("Pink Carpet", 171, 6, new Enchantment[0]),
	Item("Cobblestone", 4, 0, new Enchantment[0]),
	Item("Stone Bricks", 98, 0, new Enchantment[0]),
	Item("Mossy Stone Bricks", 98, 1, new Enchantment[0]),
	Item("Cracked Stone Bricks", 98, 2, new Enchantment[0]),
	Item("Chiseled Stone Bricks", 98, 3, new Enchantment[0]),
	Item("Moss Stone", 48, 0, new Enchantment[0]),
	Item("Oak Wood Planks", 5, 0, new Enchantment[0]),
	Item("Spruce Wood Planks", 5, 1, new Enchantment[0]),
	Item("Birch Wood Planks", 5, 2, new Enchantment[0]),
	Item("Jungle Wood Planks", 5, 3, new Enchantment[0]),
	Item("Acacia Wood Planks", 5, 4, new Enchantment[0]),
	Item("Dark Oak Wood Planks", 5, 5, new Enchantment[0]),
	Item("Bricks", 45, 0, new Enchantment[0]),
	Item("Stone", 1, 0, new Enchantment[0]),
	Item("Granite", 1, 1, new Enchantment[0]),
	Item("Polished Granite", 1, 2, new Enchantment[0]),
	Item("Diorite", 1, 3, new Enchantment[0]),
	Item("Polished Diorite", 1, 4, new Enchantment[0]),
	Item("Andesite", 1, 5, new Enchantment[0]),
	Item("Polished Andesite", 1, 6, new Enchantment[0]),
	Item("Dirt", 3, 0, new Enchantment[0]),
	Item("Podzol", 243, 0, new Enchantment[0]),
	Item("Grass Block", 2, 0, new Enchantment[0]),
	Item("Mycelium", 110, 0, new Enchantment[0]),
	Item("Clay", 82, 0, new Enchantment[0]),
	Item("Hardened Clay", 172, 0, new Enchantment[0]),
	Item("White Stained Clay", 159, 0, new Enchantment[0]),
	Item("Orange Stained Clay", 159, 1, new Enchantment[0]),
	Item("Magenta Stained Clay", 159, 2, new Enchantment[0]),
	Item("Light Blue Stained Clay", 159, 3, new Enchantment[0]),
	Item("Yellow Stained Clay", 159, 4, new Enchantment[0]),
	Item("Lime Stained Clay", 159, 5, new Enchantment[0]),
	Item("Pink Stained Clay", 159, 6, new Enchantment[0]),
	Item("Grey Stained Clay", 159, 7, new Enchantment[0]),
	Item("Light Grey Stained Clay", 159, 8, new Enchantment[0]),
	Item("Cyan Stained Clay", 159, 9, new Enchantment[0]),
	Item("Purple Stained Clay", 159, 10, new Enchantment[0]),
	Item("Blue Stained Clay", 159, 11, new Enchantment[0]),
	Item("Brown Stained Clay", 159, 12, new Enchantment[0]),
	Item("Green Stained Clay", 159, 13, new Enchantment[0]),
	Item("Red Stained Clay", 159, 14, new Enchantment[0]),
	Item("Black Stained Clay", 159, 15, new Enchantment[0]),
	Item("Sandstone", 24, 0, new Enchantment[0]),
	Item("Chiseled Sandstone", 24, 1, new Enchantment[0]),
	Item("Smooth Sandstone", 24, 2, new Enchantment[0]),
	Item("Red Sandstone", 179, 0, new Enchantment[0]),
	Item("Chiseled Red Sandstone", 179, 1, new Enchantment[0]),
	Item("Smooth Red Sandstone", 179, 2, new Enchantment[0]),
	Item("Sand", 12, 0, new Enchantment[0]),
	Item("Red Sand", 12, 1, new Enchantment[0]),
	Item("Gravel", 13, 0, new Enchantment[0]),
	Item("Oak Wood", 17, 0, new Enchantment[0]),
	Item("Spruce Wood", 17, 1, new Enchantment[0]),
	Item("Birch Wood", 17, 2, new Enchantment[0]),
	Item("Jungle Wood", 17, 3, new Enchantment[0]),
	Item("Acacia Wood", 162, 0, new Enchantment[0]),
	Item("Dark Oak Wood", 162, 1, new Enchantment[0]),
	Item("Nether Brick", 112, 0, new Enchantment[0]),
	Item("Netherrack", 87, 0, new Enchantment[0]),
	Item("Soul Sand", 88, 0, new Enchantment[0]),
	Item("Bedrock", 7, 0, new Enchantment[0]),
	Item("Cobblestone Stairs", 67, 0, new Enchantment[0]),
	Item("Oak Wood Stairs", 53, 0, new Enchantment[0]),
	Item("Spruce Wood Stairs", 134, 0, new Enchantment[0]),
	Item("Birch Wood Stairs", 135, 0, new Enchantment[0]),
	Item("Jungle Wood Stairs", 136, 0, new Enchantment[0]),
	Item("Acacia Wood Stairs", 163, 0, new Enchantment[0]),
	Item("Dark Oak Wood Stairs", 164, 0, new Enchantment[0]),
	Item("Brick Stairs", 108, 0, new Enchantment[0]),
	Item("Sandstone Stairs", 128, 0, new Enchantment[0]),
	Item("Red Sandstone Stairs", 180, 0, new Enchantment[0]),
	Item("Stone Brick Stairs", 109, 0, new Enchantment[0]),
	Item("Nether brick Stairs", 114, 0, new Enchantment[0]),
	Item("Quartz Stairs", 156, 0, new Enchantment[0]),
	Item("Purpur Stairs", 203, 0, new Enchantment[0]),
	Item("Stone Slab", 44, 0, new Enchantment[0]),
	Item("Cobblestone Slab", 44, 3, new Enchantment[0]),
	Item("Oak Wood Slab", 158, 0, new Enchantment[0]),
	Item("Spruce Wood Slab", 158, 1, new Enchantment[0]),
	Item("Birch Wood Slab", 158, 2, new Enchantment[0]),
	Item("Jungle Wood Slab", 158, 3, new Enchantment[0]),
	Item("Acacia Wood Slab", 158, 4, new Enchantment[0]),
	Item("Dark Oak Wood Slab", 158, 5, new Enchantment[0]),
	Item("Bricks Slab", 44, 4, new Enchantment[0]),
	Item("Sandstone Slab", 44, 1, new Enchantment[0]),
	Item("Red Sandstone Slab", 182, 0, new Enchantment[0]),
	Item("Stone Bricks Slab", 44, 5, new Enchantment[0]),
	Item("Nether Brick Slab", 44, 7, new Enchantment[0]),
	Item("Quartz Slab", 44, 6, new Enchantment[0]),
	Item("Purpur Slab", 205, 0, new Enchantment[0]),
	Item("Block of Quartz", 155, 0, new Enchantment[0]),
	Item("Pillar Quartz Block", 155, 1, new Enchantment[0]),
	Item("Chiseled Quartz Block", 155, 2, new Enchantment[0]),
	Item("Prismarine", 168, 0, new Enchantment[0]),
	Item("Prismarine Bricks", 168, 1, new Enchantment[0]),
	Item("Dark Prismarine", 168, 2, new Enchantment[0]),
	Item("Purpur Block", 201, 0, new Enchantment[0]),
	Item("Purpur Pillar", 201, 2, new Enchantment[0]),
	Item("Coal Ore", 16, 0, new Enchantment[0]),
	Item("Iron Ore", 15, 0, new Enchantment[0]),
	Item("Gold Ore", 14, 0, new Enchantment[0]),
	Item("Diamond Ore", 56, 0, new Enchantment[0]),
	Item("Lapis Lazuli Ore", 21, 0, new Enchantment[0]),
	Item("Redstone Ore", 73, 0, new Enchantment[0]),
	Item("Emerald Ore", 129, 0, new Enchantment[0]),
	Item("Nether Quartz Ore", 153, 0, new Enchantment[0]),
	Item("Obsidian", 49, 0, new Enchantment[0]),
	Item("Ice", 79, 0, new Enchantment[0]),
	Item("Packed Ice", 174, 0, new Enchantment[0]),
	Item("Snow", 80, 0, new Enchantment[0]),
	Item("End Stone Brick", 206, 0, new Enchantment[0]),
	Item("End Stone", 121, 0, new Enchantment[0])
];
