/*
 * This file was automatically generated by sel-utils and
 * released under the GNU General Public License version 3.
 * 
 * License: https://github.com/sel-project/sel-utils/blob/master/LICENSE
 * Repository: https://github.com/sel-project/sel-utils
 */
module sul.enchantments;

public struct EnchantmentValue
{

    bool exists;
    ubyte id;

    alias exists this;

}

public struct Enchantment
{

    string name;
    EnchantmentData minecraft, pocket;
    ubyte max;

}

public enum Enchantments : Enchantment
{

    PROTECTION = Enchantment("protection", EnchantmentData(true, 0), EnchantmentData(true, 0), 4),
    FIRE_PROTECTION = Enchantment("fire protection", EnchantmentData(true, 1), EnchantmentData(true, 1), 4),
    FEATHER_FALLING = Enchantment("feather falling", EnchantmentData(true, 2), EnchantmentData(true, 2), 4),
    BLAST_PROTECTION = Enchantment("blast protection", EnchantmentData(true, 3), EnchantmentData(true, 3), 4),
    PROJECTILE_PROTECTION = Enchantment("projectile protection", EnchantmentData(true, 4), EnchantmentData(true, 4), 4),
    RESPIRATION = Enchantment("respiration", EnchantmentData(true, 5), EnchantmentData(true, 6), 3),
    AQUA_AFFINITY = Enchantment("aqua affinity", EnchantmentData(true, 6), EnchantmentData(true, 8), 1),
    THORNS = Enchantment("thorns", EnchantmentData(true, 7), EnchantmentData(true, 5), 3),
    DEPTH_STRIDER = Enchantment("depth strider", EnchantmentData(true, 8), EnchantmentData(true, 7), 3),
    FROST_WALKER = Enchantment("frost walker", EnchantmentData(true, 9), EnchantmentData(false, 0), 2),
    CURSE_OF_BINDING = Enchantment("curse of binding", EnchantmentData(true, 10), EnchantmentData(false, 0), 1),
    SHARPNESS = Enchantment("sharpness", EnchantmentData(true, 16), EnchantmentData(true, 9), 5),
    SMITE = Enchantment("smite", EnchantmentData(true, 17), EnchantmentData(true, 10), 5),
    BANE_OF_ARTHROPODS = Enchantment("bane of arthropods", EnchantmentData(true, 18), EnchantmentData(true, 11), 5),
    KNOCKBACK = Enchantment("knockback", EnchantmentData(true, 19), EnchantmentData(true, 12), 2),
    FIRE_ASPECT = Enchantment("fire aspect", EnchantmentData(true, 20), EnchantmentData(true, 13), 2),
    LOOTING = Enchantment("looting", EnchantmentData(true, 21), EnchantmentData(true, 14), 3),
    SWEEPING_EDGE = Enchantment("sweeping edge", EnchantmentData(true, 22), EnchantmentData(false, 0), 3),
    EFFICIENCY = Enchantment("efficiency", EnchantmentData(true, 32), EnchantmentData(true, 15), 5),
    SILK_TOUCH = Enchantment("silk touch", EnchantmentData(true, 33), EnchantmentData(true, 16), 1),
    UNBREAKING = Enchantment("unbreaking", EnchantmentData(true, 34), EnchantmentData(true, 17), 3),
    FORTUNE = Enchantment("fortune", EnchantmentData(true, 35), EnchantmentData(true, 18), 3),
    POWER = Enchantment("power", EnchantmentData(true, 48), EnchantmentData(true, 19), 5),
    PUNCH = Enchantment("punch", EnchantmentData(true, 49), EnchantmentData(true, 20), 2),
    FLAME = Enchantment("flame", EnchantmentData(true, 50), EnchantmentData(true, 21), 1),
    INFINITY = Enchantment("infinity", EnchantmentData(true, 51), EnchantmentData(true, 22), 1),
    LUCK_OF_THE_SEA = Enchantment("luck of the sea", EnchantmentData(true, 61), EnchantmentData(true, 23), 3),
    LURE = Enchantment("lure", EnchantmentData(true, 62), EnchantmentData(true, 24), 3),
    MENDING = Enchantment("mending", EnchantmentData(true, 70), EnchantmentData(false, 0), 1),
    CURSE_OF_VANISHING = Enchantment("curse of vanishing", EnchantmentData(true, 71), EnchantmentData(false, 0), 1),    

}
