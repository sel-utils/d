/*
 * This file was automatically generated by sel-utils and
 * released under the GNU General Public License version 3.
 * 
 * License: https://github.com/sel-project/sel-utils/blob/master/LICENSE
 * Repository: https://github.com/sel-project/sel-utils
 * Generated from https://github.com/sel-project/sel-utils/blob/master/xml/entities.xml
 */
module sul.entities;

import std.typecons;

public alias Entity = Tuple!(string, "name", bool, "object", ubyte, "minecraft", ubyte, "pocket", double, "width", double, "height");

public enum Entities : Entity {

	BOAT = Entity("boat", true, 1, 90, 1.5, 0.6),
	DROPPED_ITEM = Entity("dropped item", true, 2, 64, 0.25, 0.25),
	AREA_EFFECT_CLOUD = Entity("area effect cloud", true, 3, 95, 2, 0.5),
	MINECART = Entity("minecart", true, 10, 84, 0.98, 0.7),
	MINECART_WITH_HOPPER = Entity("minecart with hopper", true, 0, 96, 0.98, 0.7),
	MINECART_WITH_TNT = Entity("minecart with tnt", true, 0, 97, 0.98, 0.7),
	MINECART_WITH_CHEST = Entity("minecart with chest", true, 0, 98, 0.98, 0.7),
	MINECART_WITH_COMMAND_BLOCK = Entity("minecart with command block", true, 0, 100, 0.98, 0.7),
	ACTIVATED_TNT = Entity("activated tnt", true, 50, 65, 0.98, 0.98),
	ENDER_CRYSTAL = Entity("ender crystal", true, 51, 71, 2, 2),
	ARROW = Entity("arrow", true, 60, 80, 0.5, 0.5),
	SNOWBALL = Entity("snowball", true, 61, 81, 0.25, 0.25),
	EGG = Entity("egg", true, 62, 82, 0.25, 0.25),
	GHAST_FIREBALL = Entity("ghast fireball", true, 63, 85, 1, 1),
	BLAZE_FIREBALL = Entity("blaze fireball", true, 64, 94, 0.3125, 0.3125),
	ENDERPEARL = Entity("enderpearl", true, 65, 87, 0.25, 0.25),
	WITHER_SKULL = Entity("wither skull", true, 66, 89, 0.3125, 0.3125),
	SHULKER_BULLET = Entity("shulker bullet", true, 67, 76, 0.3125, 0.3125),
	LLAMA_SPIT = Entity("llama spit", true, 68, 0, 0.25, 0.25),
	FALLING_BLOCK = Entity("falling block", true, 70, 66, 0.98, 0.98),
	ITEM_FRAME = Entity("item frame", true, 71, 0, double.nan, double.nan),
	EYE_OF_ENDER = Entity("eye of ender", true, 72, 70, 0.25, 0.25),
	SPLASH_POTION = Entity("splash potion", true, 73, 86, 0.25, 0.25),
	EXP_BOTTLE = Entity("exp bottle", true, 75, 68, 0.25, 0.25),
	FIREWORK_ROCKET = Entity("firework rocket", true, 76, 0, 0.25, 0.25),
	LEASH_KNOT = Entity("leash knot", true, 77, 88, 0.375, 0.25),
	ARMOR_STAND = Entity("armor stand", true, 78, 0, 0.5, 1.975),
	EVOCATION_FANGS = Entity("evocation fangs", true, 79, 0, 0.5, 0.8),
	FISHING_HOOK = Entity("fishing hook", true, 0, 77, 0.25, 0.25),
	SPECTRAL_ARROW = Entity("spectral arrow", true, 91, 0, 0.5, 0.5),
	DRAGON_FIREBALL = Entity("dragon fireball", true, 93, 79, 1, 1),
	CAMERA = Entity("camera", true, 0, 62, double.nan, double.nan),
	ELDER_GUARDIAN = Entity("elder guardian", false, 4, 50, 1.9975, 1.9975),
	WITHER_SKELETON = Entity("wither skeleton", false, 5, 48, 0.7, 2.4),
	STRAY = Entity("stray", false, 6, 46, 0.6, 1.99),
	HUSK = Entity("husk", false, 23, 47, 0.6, 1.99),
	ZOMBIE_VILLAGER = Entity("zombie villager", false, 27, 44, 0.6, 1.95),
	SKELETON_HORSE = Entity("skeleton horse", false, 28, 26, 1.39648, 1.6),
	ZOMBIE_HORSE = Entity("zombie horse", false, 29, 27, 1.39648, 1.6),
	DONKEY = Entity("donkey", false, 31, 24, 1.39648, 1.6),
	MULE = Entity("mule", false, 32, 25, 1.39648, 1.6),
	EVOCATION_ILLAGER = Entity("evocation illager", false, 34, 0, 0.6, 1.95),
	VEX = Entity("vex", false, 35, 0, 0.4, 0.8),
	VINDICATION_ILLAGER = Entity("vindication illager", false, 36, 0, 0.6, 1.95),
	CREEPER = Entity("creeper", false, 50, 33, 0.6, 1.7),
	SKELETON = Entity("skeleton", false, 0, 34, 0.6, 1.99),
	SPIDER = Entity("spider", false, 52, 35, 1.4, 0.9),
	GIANT = Entity("giant", false, 53, 0, 3.6, 10.8),
	ZOMBIE = Entity("zombie", false, 54, 32, 0.6, 1.95),
	SLIME = Entity("slime", false, 55, 37, 0.51, 0.51),
	GHAST = Entity("ghast", false, 56, 41, 4, 4),
	ENDERMAN = Entity("enderman", false, 58, 38, 0.6, 2.9),
	CAVE_SPIDER = Entity("cave spider", false, 59, 40, 0.7, 0.5),
	SILVERFISH = Entity("silverfish", false, 60, 39, 0.4, 0.3),
	BLAZE = Entity("blaze", false, 61, 43, 0.6, 1.8),
	MAGMA_CUBE = Entity("magma cube", false, 62, 42, 0.51, 0.51),
	ENDER_DRAGON = Entity("ender dragon", false, 63, 53, 16, 8),
	WITHER_BOSS = Entity("wither boss", false, 64, 52, 0.9, 3.5),
	BAT = Entity("bat", false, 65, 19, 0.5, 0.9),
	WITCH = Entity("witch", false, 66, 45, 0.6, 1.95),
	ENDERMITE = Entity("endermite", false, 67, 55, 0.4, 0.3),
	GUARDIAN = Entity("guardian", false, 68, 49, 0.85, 0.85),
	SHULKER = Entity("shulker", false, 69, 54, 1, 1),
	PIG = Entity("pig", false, 90, 12, 0.9, 0.9),
	SHEEP = Entity("sheep", false, 91, 13, 0.9, 1.3),
	COW = Entity("cow", false, 92, 11, 0.9, 1.4),
	CHICKEN = Entity("chicken", false, 93, 10, 0.4, 0.7),
	SQUID = Entity("squid", false, 94, 17, 0.8, 0.8),
	WOLF = Entity("wolf", false, 95, 14, 0.6, 0.85),
	MOOSHROOM = Entity("mooshroom", false, 96, 16, 0.9, 1.4),
	SNOW_GOLEM = Entity("snow golem", false, 97, 21, 0.7, 1.9),
	OCELOT = Entity("ocelot", false, 98, 22, 0.6, 0.7),
	IRON_GOLEM = Entity("iron golem", false, 99, 20, 1.4, 2.7),
	HORSE = Entity("horse", false, 100, 23, 1.39648, 1.6),
	RABBIT = Entity("rabbit", false, 101, 18, 0.4, 0.5),
	POLAR_BEAR = Entity("polar bear", false, 102, 28, 1.3, 1.4),
	LLAMA = Entity("llama", false, 103, 0, 0.9, 1.87),
	VILLAGER = Entity("villager", false, 120, 15, 0.6, 1.95),
	NPC = Entity("npc", false, 0, 51, 0.6, 1.95),

}
