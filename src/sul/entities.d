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

    boat = Entity("boat", EntityData(true, 1), EntityData(true, 90), true, 1.5, 0.6),
    droppedItem = Entity("dropped item", EntityData(true, 2), EntityData(true, 64), true, 0.25, 0.25),
    experienceOrb = Entity("experience orb", EntityData(true, 2), EntityData(true, 69), true, 0.25, 0.25),
    areaEffectCloud = Entity("area effect cloud", EntityData(true, 3), EntityData(true, 95), true, 2, 0.5),
    minecart = Entity("minecart", EntityData(true, 10), EntityData(true, 84), true, 0.98, 0.7),
    minecartWithHopper = Entity("minecart with hopper", EntityData(false), EntityData(true, 96), true, 0.98, 0.7),
    minecartWithTnt = Entity("minecart with tnt", EntityData(false), EntityData(true, 97), true, 0.98, 0.7),
    minecartWithChest = Entity("minecart with chest", EntityData(false), EntityData(true, 98), true, 0.98, 0.7),
    minecartWithCommandBlock = Entity("minecart with command block", EntityData(false), EntityData(true, 100), true, 0.98, 0.7),
    activatedTnt = Entity("activated tnt", EntityData(true, 50), EntityData(true, 65), true, 0.98, 0.98),
    enderCrystal = Entity("ender crystal", EntityData(true, 51), EntityData(true, 71), true, 2, 2),
    arrow = Entity("arrow", EntityData(true, 60), EntityData(true, 80), true, 0.5, 0.5),
    snowball = Entity("snowball", EntityData(true, 61), EntityData(true, 81), true, 0.25, 0.25),
    egg = Entity("egg", EntityData(true, 62), EntityData(true, 82), true, 0.25, 0.25),
    ghastFireball = Entity("ghast fireball", EntityData(true, 63), EntityData(true, 85), true, 1, 1),
    blazeFireball = Entity("blaze fireball", EntityData(true, 64), EntityData(true, 94), true, 0.3125, 0.3125),
    enderpearl = Entity("enderpearl", EntityData(true, 65), EntityData(true, 87), true, 0.25, 0.25),
    witherSkull = Entity("wither skull", EntityData(true, 66), EntityData(true, 89), true, 0.3125, 0.3125),
    shulkerBullet = Entity("shulker bullet", EntityData(true, 67), EntityData(true, 76), true, 0.3125, 0.3125),
    llamaSpit = Entity("llama spit", EntityData(true, 68), EntityData(true, 102), true, 0.25, 0.25),
    fallingBlock = Entity("falling block", EntityData(true, 70), EntityData(true, 66), true, 0.98, 0.98),
    itemFrame = Entity("item frame", EntityData(true, 71), EntityData(false), true),
    eyeOfEnder = Entity("eye of ender", EntityData(true, 72), EntityData(true, 70), true, 0.25, 0.25),
    splashPotion = Entity("splash potion", EntityData(true, 73), EntityData(true, 86), true, 0.25, 0.25),
    expBottle = Entity("exp bottle", EntityData(true, 75), EntityData(true, 68), true, 0.25, 0.25),
    fireworkRocket = Entity("firework rocket", EntityData(true, 76), EntityData(false), true, 0.25, 0.25),
    leashKnot = Entity("leash knot", EntityData(true, 77), EntityData(true, 88), true, 0.375, 0.25),
    armorStand = Entity("armor stand", EntityData(true, 78), EntityData(false), true, 0.5, 1.975),
    evocationFangs = Entity("evocation fangs", EntityData(true, 79), EntityData(true, 103), true, 0.5, 0.8),
    fishingHook = Entity("fishing hook", EntityData(false), EntityData(true, 77), true, 0.25, 0.25),
    spectralArrow = Entity("spectral arrow", EntityData(true, 91), EntityData(false), true, 0.5, 0.5),
    dragonFireball = Entity("dragon fireball", EntityData(true, 93), EntityData(true, 79), true, 1, 1),
    camera = Entity("camera", EntityData(false), EntityData(true, 62), true),
    painting = Entity("painting", EntityData(false), EntityData(true, 83), true),
    lightning = Entity("lightning", EntityData(false), EntityData(true, 93), true),
    elderGuardian = Entity("elder guardian", EntityData(true, 4), EntityData(true, 50), false, 1.9975, 1.9975),
    witherSkeleton = Entity("wither skeleton", EntityData(true, 5), EntityData(true, 48), false, 0.7, 2.4),
    stray = Entity("stray", EntityData(true, 6), EntityData(true, 46), false, 0.6, 1.99),
    husk = Entity("husk", EntityData(true, 23), EntityData(true, 47), false, 0.6, 1.99),
    zombieVillager = Entity("zombie villager", EntityData(true, 27), EntityData(true, 44), false, 0.6, 1.95),
    skeletonHorse = Entity("skeleton horse", EntityData(true, 28), EntityData(true, 26), false, 1.39648, 1.6),
    zombieHorse = Entity("zombie horse", EntityData(true, 29), EntityData(true, 27), false, 1.39648, 1.6),
    donkey = Entity("donkey", EntityData(true, 31), EntityData(true, 24), false, 1.39648, 1.6),
    mule = Entity("mule", EntityData(true, 32), EntityData(true, 25), false, 1.39648, 1.6),
    evoker = Entity("evoker", EntityData(true, 34), EntityData(true, 104), false, 0.6, 1.95),
    vex = Entity("vex", EntityData(true, 35), EntityData(true, 105), false, 0.4, 0.8),
    vindicator = Entity("vindicator", EntityData(true, 36), EntityData(true, 56), false, 0.6, 1.95),
    creeper = Entity("creeper", EntityData(true, 50), EntityData(true, 33), false, 0.6, 1.7),
    skeleton = Entity("skeleton", EntityData(false), EntityData(true, 34), false, 0.6, 1.99),
    spider = Entity("spider", EntityData(true, 52), EntityData(true, 35), false, 1.4, 0.9),
    giant = Entity("giant", EntityData(true, 53), EntityData(false), false, 3.6, 10.8),
    zombie = Entity("zombie", EntityData(true, 54), EntityData(true, 32), false, 0.6, 1.95),
    slime = Entity("slime", EntityData(true, 55), EntityData(true, 37), false, 0.51, 0.51),
    ghast = Entity("ghast", EntityData(true, 56), EntityData(true, 41), false, 4, 4),
    enderman = Entity("enderman", EntityData(true, 58), EntityData(true, 38), false, 0.6, 2.9),
    caveSpider = Entity("cave spider", EntityData(true, 59), EntityData(true, 40), false, 0.7, 0.5),
    silverfish = Entity("silverfish", EntityData(true, 60), EntityData(true, 39), false, 0.4, 0.3),
    blaze = Entity("blaze", EntityData(true, 61), EntityData(true, 43), false, 0.6, 1.8),
    magmaCube = Entity("magma cube", EntityData(true, 62), EntityData(true, 42), false, 0.51, 0.51),
    enderDragon = Entity("ender dragon", EntityData(true, 63), EntityData(true, 53), false, 16, 8),
    witherBoss = Entity("wither boss", EntityData(true, 64), EntityData(true, 52), false, 0.9, 3.5),
    bat = Entity("bat", EntityData(true, 65), EntityData(true, 19), false, 0.5, 0.9),
    witch = Entity("witch", EntityData(true, 66), EntityData(true, 45), false, 0.6, 1.95),
    endermite = Entity("endermite", EntityData(true, 67), EntityData(true, 55), false, 0.4, 0.3),
    guardian = Entity("guardian", EntityData(true, 68), EntityData(true, 49), false, 0.85, 0.85),
    shulker = Entity("shulker", EntityData(true, 69), EntityData(true, 54), false, 1, 1),
    pig = Entity("pig", EntityData(true, 90), EntityData(true, 12), false, 0.9, 0.9),
    sheep = Entity("sheep", EntityData(true, 91), EntityData(true, 13), false, 0.9, 1.3),
    cow = Entity("cow", EntityData(true, 92), EntityData(true, 11), false, 0.9, 1.4),
    chicken = Entity("chicken", EntityData(true, 93), EntityData(true, 10), false, 0.4, 0.7),
    squid = Entity("squid", EntityData(true, 94), EntityData(true, 17), false, 0.8, 0.8),
    wolf = Entity("wolf", EntityData(true, 95), EntityData(true, 14), false, 0.6, 0.85),
    mooshroom = Entity("mooshroom", EntityData(true, 96), EntityData(true, 16), false, 0.9, 1.4),
    snowGolem = Entity("snow golem", EntityData(true, 97), EntityData(true, 21), false, 0.7, 1.9),
    ocelot = Entity("ocelot", EntityData(true, 98), EntityData(true, 22), false, 0.6, 0.7),
    ironGolem = Entity("iron golem", EntityData(true, 99), EntityData(true, 20), false, 1.4, 2.7),
    horse = Entity("horse", EntityData(true, 100), EntityData(true, 23), false, 1.39648, 1.6),
    rabbit = Entity("rabbit", EntityData(true, 101), EntityData(true, 18), false, 0.4, 0.5),
    polarBear = Entity("polar bear", EntityData(true, 102), EntityData(true, 28), false, 1.3, 1.4),
    llama = Entity("llama", EntityData(true, 103), EntityData(true, 29), false, 0.9, 1.87),
    villager = Entity("villager", EntityData(true, 120), EntityData(true, 15), false, 0.6, 1.95),
    npc = Entity("npc", EntityData(false), EntityData(true, 51), false, 0.6, 1.95),

}
