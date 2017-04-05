/*
 * This file was automatically generated by sel-utils and
 * released under the GNU General Public License version 3.
 * 
 * License: https://github.com/sel-project/sel-utils/blob/master/LICENSE
 * Repository: https://github.com/sel-project/sel-utils
 * Generated from https://github.com/sel-project/sel-utils/blob/master/xml/attributes/pocket101.xml
 */
module sul.attributes.pocket101;

import std.typecons : Tuple;

alias Attribute = Tuple!(string, "name", float, "min", float, "max", float, "def");

public struct Attributes
{

    @disable this();

    enum health = Attribute("minecraft:health", 0f, 20f, 20f);
    enum absorption = Attribute("minecraft:generic.absorption", 0f, 4f, 0f);
    enum hunger = Attribute("minecraft:player.hunger", 0f, 20f, 20f);
    enum saturation = Attribute("minecraft:player.saturation", 0f, 20f, 5f);
    enum experience = Attribute("minecraft:player.experience", 0f, 1f, 0f);
    enum level = Attribute("minecraft:player.level", 0f, 24791f, 0f);
    enum speed = Attribute("minecraft:movement", 0f, 24791f, 0.1f);
    enum knockbackResistance = Attribute("minecraft:generic.knockback_resistance", 0f, 1f, 0f);

}
