/*
 * This file was automatically generated by sel-utils and
 * released under the GNU General Public License version 3.
 * 
 * License: https://github.com/sel-project/sel-utils/blob/master/LICENSE
 * Repository: https://github.com/sel-project/sel-utils
 * Generated from https://github.com/sel-project/sel-utils/blob/master/xml/attributes/minecraft110.xml
 */
module sul.attributes.minecraft110;

import std.typecons : Tuple;

alias Attribute = Tuple!(string, "name", float, "min", float, "max", float, "def");

public enum Attributes : Attribute
{

    maxHealth = Attribute("generic.maxHealth", 0f, 1024f, 20f),

    absorption = Attribute("generic.absorption", 0f, 4f, 0f),

    movementSpeed = Attribute("generic.movementSpeed", 0f, 24791f, 0.1f),

    knockbackResistance = Attribute("generic.knockbackResistance", 0f, 1f, 0f),

    attackDamage = Attribute("generic.attackDamage", 0f, 2048f, 2f),

    attackSpeed = Attribute("generic.attackSpeed", 0f, 1024f, 4f),

}
