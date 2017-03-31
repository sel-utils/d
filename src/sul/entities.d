/*
 * This file was automatically generated by sel-utils and
 * released under the GNU General Public License version 3.
 * 
 * License: https://github.com/sel-project/sel-utils/blob/master/LICENSE
 * Repository: https://github.com/sel-project/sel-utils
 * Generated from https://github.com/sel-project/sel-utils/blob/master/xml/entities.xml
 */
module sul.entities;

public struct EntityData
{

    bool exists;
    ubyte id;

}

public struct Entity
{

    string name;
    EntityData minecraft, pocket;
    bool object;
    double width, height;

}

public enum Entities : Entity
{

    BOAT = Entity("boat", EntityData(true, 1), EntityData(true, 90), true, 1.5, 0.6),
    DROPPED_ITEM = Entity("dropped item", EntityData(true, 2), EntityData(true, 64), true, 0.25, 0.25),
    AREA_EFFECT_CLOUD = Entity("area effect cloud", EntityData(true, 3), EntityData(true, 95), true, 2, 0.5),
    MINECART = Entity("minecart", EntityData(true, 10), EntityData(true, 84), true, 0.98, 0.7),
    MINECART_WITH_HOPPER = Entity("minecart with hopper", EntityData(false), EntityData(true, 96), true, 0.98, 0.7),
    MINECART_WITH_TNT = Entity("minecart with tnt", EntityData(false), EntityData(true, 97), true, 0.98, 0.7),
    MINECART_WITH_CHEST = Entity("minecart with chest", EntityData(false), EntityData(true, 98), true, 0.98, 0.7),
    MINECART_WITH_COMMAND_BLOCK = Entity("minecart with command block", EntityData(false), EntityData(true, 100), true, 0.98, 0.7),
    ACTIVATED_TNT = Entity("activated tnt", EntityData(true, 50), EntityData(true, 65), true, 0.98, 0.98),
    ENDER_CRYSTAL = Entity("ender crystal", EntityData(true, 51), EntityData(true, 71), true, 2, 2),
    ARROW = Entity("arrow", EntityData(true, 60), EntityData(true, 80), true, 0.5, 0.5),
    SNOWBALL = Entity("snowball", EntityData(true, 61), EntityData(true, 81), true, 0.25, 0.25),
    EGG = Entity("egg", EntityData(true, 62), EntityData(true, 82), true, 0.25, 0.25),
    GHAST_FIREBALL = Entity("ghast fireball", EntityData(true, 63), EntityData(true, 85), true, 1, 1),
    BLAZE_FIREBALL = Entity("blaze fireball", EntityData(true, 64), EntityData(true, 94), true, 0.3125, 0.3125),
    ENDERPEARL = Entity("enderpearl", EntityData(true, 65), EntityData(true, 87), true, 0.25, 0.25),
    WITHER_SKULL = Entity("wither skull", EntityData(true, 66), EntityData(true, 89), true, 0.3125, 0.3125),
    SHULKER_BULLET = Entity("shulker bullet", EntityData(true, 67), EntityData(true, 76), true, 0.3125, 0.3125),
    LLAMA_SPIT = Entity("llama spit", EntityData(true, 68), EntityData(false), true, 0.25, 0.25),
    FALLING_BLOCK = Entity("falling block", EntityData(true, 70), EntityData(true, 66), true, 0.98, 0.98),
    ITEM_FRAME = Entity("item frame", EntityData(true, 71), EntityData(false), true),
    EYE_OF_ENDER = Entity("eye of ender", EntityData(true, 72), EntityData(true, 70), true, 0.25, 0.25),
    SPLASH_POTION = Entity("splash potion", EntityData(true, 73), EntityData(true, 86), true, 0.25, 0.25),
    EXP_BOTTLE = Entity("exp bottle", EntityData(true, 75), EntityData(true, 68), true, 0.25, 0.25),
    FIREWORK_ROCKET = Entity("firework rocket", EntityData(true, 76), EntityData(false), true, 0.25, 0.25),
    LEASH_KNOT = Entity("leash knot", EntityData(true, 77), EntityData(true, 88), true, 0.375, 0.25),
    ARMOR_STAND = Entity("armor stand", EntityData(true, 78), EntityData(false), true, 0.5, 1.975),
    EVOCATION_FANGS = Entity("evocation fangs", EntityData(true, 79), EntityData(false), true, 0.5, 0.8),
    FISHING_HOOK = Entity("fishing hook", EntityData(false), EntityData(true, 77), true, 0.25, 0.25),
    SPECTRAL_ARROW = Entity("spectral arrow", EntityData(true, 91), EntityData(false), true, 0.5, 0.5),
    DRAGON_FIREBALL = Entity("dragon fireball", EntityData(true, 93), EntityData(true, 79), true, 1, 1),
    CAMERA = Entity("camera", EntityData(false), EntityData(true, 62), true),
    ELDER_GUARDIAN = Entity("elder guardian", EntityData(true, 4), EntityData(true, 50), false, 1.9975, 1.9975),
    WITHER_SKELETON = Entity("wither skeleton", EntityData(true, 5), EntityData(true, 48), false, 0.7, 2.4),
    STRAY = Entity("stray", EntityData(true, 6), EntityData(true, 46), false, 0.6, 1.99),
    HUSK = Entity("husk", EntityData(true, 23), EntityData(true, 47), false, 0.6, 1.99),
    ZOMBIE_VILLAGER = Entity("zombie villager", EntityData(true, 27), EntityData(true, 44), false, 0.6, 1.95),
    SKELETON_HORSE = Entity("skeleton horse", EntityData(true, 28), EntityData(true, 26), false, 1.39648, 1.6),
    ZOMBIE_HORSE = Entity("zombie horse", EntityData(true, 29), EntityData(true, 27), false, 1.39648, 1.6),
    DONKEY = Entity("donkey", EntityData(true, 31), EntityData(true, 24), false, 1.39648, 1.6),
    MULE = Entity("mule", EntityData(true, 32), EntityData(true, 25), false, 1.39648, 1.6),
    EVOCATION_ILLAGER = Entity("evocation illager", EntityData(true, 34), EntityData(false), false, 0.6, 1.95),
    VEX = Entity("vex", EntityData(true, 35), EntityData(false), false, 0.4, 0.8),
    VINDICATION_ILLAGER = Entity("vindication illager", EntityData(true, 36), EntityData(false), false, 0.6, 1.95),
    CREEPER = Entity("creeper", EntityData(true, 50), EntityData(true, 33), false, 0.6, 1.7),
    SKELETON = Entity("skeleton", EntityData(false), EntityData(true, 34), false, 0.6, 1.99),
    SPIDER = Entity("spider", EntityData(true, 52), EntityData(true, 35), false, 1.4, 0.9),
    GIANT = Entity("giant", EntityData(true, 53), EntityData(false), false, 3.6, 10.8),
    ZOMBIE = Entity("zombie", EntityData(true, 54), EntityData(true, 32), false, 0.6, 1.95),
    SLIME = Entity("slime", EntityData(true, 55), EntityData(true, 37), false, 0.51, 0.51),
    GHAST = Entity("ghast", EntityData(true, 56), EntityData(true, 41), false, 4, 4),
    ENDERMAN = Entity("enderman", EntityData(true, 58), EntityData(true, 38), false, 0.6, 2.9),
    CAVE_SPIDER = Entity("cave spider", EntityData(true, 59), EntityData(true, 40), false, 0.7, 0.5),
    SILVERFISH = Entity("silverfish", EntityData(true, 60), EntityData(true, 39), false, 0.4, 0.3),
    BLAZE = Entity("blaze", EntityData(true, 61), EntityData(true, 43), false, 0.6, 1.8),
    MAGMA_CUBE = Entity("magma cube", EntityData(true, 62), EntityData(true, 42), false, 0.51, 0.51),
    ENDER_DRAGON = Entity("ender dragon", EntityData(true, 63), EntityData(true, 53), false, 16, 8),
    WITHER_BOSS = Entity("wither boss", EntityData(true, 64), EntityData(true, 52), false, 0.9, 3.5),
    BAT = Entity("bat", EntityData(true, 65), EntityData(true, 19), false, 0.5, 0.9),
    WITCH = Entity("witch", EntityData(true, 66), EntityData(true, 45), false, 0.6, 1.95),
    ENDERMITE = Entity("endermite", EntityData(true, 67), EntityData(true, 55), false, 0.4, 0.3),
    GUARDIAN = Entity("guardian", EntityData(true, 68), EntityData(true, 49), false, 0.85, 0.85),
    SHULKER = Entity("shulker", EntityData(true, 69), EntityData(true, 54), false, 1, 1),
    PIG = Entity("pig", EntityData(true, 90), EntityData(true, 12), false, 0.9, 0.9),
    SHEEP = Entity("sheep", EntityData(true, 91), EntityData(true, 13), false, 0.9, 1.3),
    COW = Entity("cow", EntityData(true, 92), EntityData(true, 11), false, 0.9, 1.4),
    CHICKEN = Entity("chicken", EntityData(true, 93), EntityData(true, 10), false, 0.4, 0.7),
    SQUID = Entity("squid", EntityData(true, 94), EntityData(true, 17), false, 0.8, 0.8),
    WOLF = Entity("wolf", EntityData(true, 95), EntityData(true, 14), false, 0.6, 0.85),
    MOOSHROOM = Entity("mooshroom", EntityData(true, 96), EntityData(true, 16), false, 0.9, 1.4),
    SNOW_GOLEM = Entity("snow golem", EntityData(true, 97), EntityData(true, 21), false, 0.7, 1.9),
    OCELOT = Entity("ocelot", EntityData(true, 98), EntityData(true, 22), false, 0.6, 0.7),
    IRON_GOLEM = Entity("iron golem", EntityData(true, 99), EntityData(true, 20), false, 1.4, 2.7),
    HORSE = Entity("horse", EntityData(true, 100), EntityData(true, 23), false, 1.39648, 1.6),
    RABBIT = Entity("rabbit", EntityData(true, 101), EntityData(true, 18), false, 0.4, 0.5),
    POLAR_BEAR = Entity("polar bear", EntityData(true, 102), EntityData(true, 28), false, 1.3, 1.4),
    LLAMA = Entity("llama", EntityData(true, 103), EntityData(false), false, 0.9, 1.87),
    VILLAGER = Entity("villager", EntityData(true, 120), EntityData(true, 15), false, 0.6, 1.95),
    NPC = Entity("npc", EntityData(false), EntityData(true, 51), false, 0.6, 1.95),

}
