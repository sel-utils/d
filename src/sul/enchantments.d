/*
 * This file was automatically generated by sel-utils and
 * released under the MIT License.
 * 
 * License: https://github.com/sel-project/sel-utils/blob/master/LICENSE
 * Repository: https://github.com/sel-project/sel-utils
 * Generated from https://github.com/sel-project/sel-utils/blob/master/xml/enchantments.xml
 */
module sul.enchantments;

public struct EnchantmentData
{

    bool exists;
    ubyte id;

    alias exists this;

}

public struct Enchantment
{

    string name;
    EnchantmentData java, bedrock;
    ubyte max;

}

public enum Enchantments : Enchantment
{

    protection = Enchantment("protection", EnchantmentData(true, 0), EnchantmentData(true, 0), 4),
    fireProtection = Enchantment("fire protection", EnchantmentData(true, 1), EnchantmentData(true, 1), 4),
    featherFalling = Enchantment("feather falling", EnchantmentData(true, 2), EnchantmentData(true, 2), 4),
    blastProtection = Enchantment("blast protection", EnchantmentData(true, 3), EnchantmentData(true, 3), 4),
    projectileProtection = Enchantment("projectile protection", EnchantmentData(true, 4), EnchantmentData(true, 4), 4),
    respiration = Enchantment("respiration", EnchantmentData(true, 5), EnchantmentData(true, 6), 3),
    aquaAffinity = Enchantment("aqua affinity", EnchantmentData(true, 6), EnchantmentData(true, 8), 1),
    thorns = Enchantment("thorns", EnchantmentData(true, 7), EnchantmentData(true, 5), 3),
    depthStrider = Enchantment("depth strider", EnchantmentData(true, 8), EnchantmentData(true, 7), 3),
    frostWalker = Enchantment("frost walker", EnchantmentData(true, 9), EnchantmentData(true, 25), 2),
    curseOfBinding = Enchantment("curse of binding", EnchantmentData(true, 10), EnchantmentData(false, 0), 1),
    sharpness = Enchantment("sharpness", EnchantmentData(true, 16), EnchantmentData(true, 9), 5),
    smite = Enchantment("smite", EnchantmentData(true, 17), EnchantmentData(true, 10), 5),
    baneOfArthropods = Enchantment("bane of arthropods", EnchantmentData(true, 18), EnchantmentData(true, 11), 5),
    knockback = Enchantment("knockback", EnchantmentData(true, 19), EnchantmentData(true, 12), 2),
    fireAspect = Enchantment("fire aspect", EnchantmentData(true, 20), EnchantmentData(true, 13), 2),
    looting = Enchantment("looting", EnchantmentData(true, 21), EnchantmentData(true, 14), 3),
    sweepingEdge = Enchantment("sweeping edge", EnchantmentData(true, 22), EnchantmentData(false, 0), 3),
    efficiency = Enchantment("efficiency", EnchantmentData(true, 32), EnchantmentData(true, 15), 5),
    silkTouch = Enchantment("silk touch", EnchantmentData(true, 33), EnchantmentData(true, 16), 1),
    unbreaking = Enchantment("unbreaking", EnchantmentData(true, 34), EnchantmentData(true, 17), 3),
    fortune = Enchantment("fortune", EnchantmentData(true, 35), EnchantmentData(true, 18), 3),
    power = Enchantment("power", EnchantmentData(true, 48), EnchantmentData(true, 19), 5),
    punch = Enchantment("punch", EnchantmentData(true, 49), EnchantmentData(true, 20), 2),
    flame = Enchantment("flame", EnchantmentData(true, 50), EnchantmentData(true, 21), 1),
    infinity = Enchantment("infinity", EnchantmentData(true, 51), EnchantmentData(true, 22), 1),
    luckOfTheSea = Enchantment("luck of the sea", EnchantmentData(true, 61), EnchantmentData(true, 23), 3),
    lure = Enchantment("lure", EnchantmentData(true, 62), EnchantmentData(true, 24), 3),
    mending = Enchantment("mending", EnchantmentData(true, 70), EnchantmentData(true, 26), 1),
    curseOfVanishing = Enchantment("curse of vanishing", EnchantmentData(true, 71), EnchantmentData(false, 0), 1),

}

