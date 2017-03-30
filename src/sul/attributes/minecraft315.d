/*
 * This file was automatically generated by sel-utils and
 * released under the GNU General Public License version 3.
 * 
 * License: https://github.com/sel-project/sel-utils/blob/master/LICENSE
 * Repository: https://github.com/sel-project/sel-utils
 * Generated from https://github.com/sel-project/sel-utils/blob/master/xml/attributes/minecraft315.xml
 */
module sul.attributes.minecraft315;

import std.typecons : Tuple;

alias Attribute = Tuple!(string, "name", float, "min", float, "max", float, "def");

struct Attributes {

	@disable this();

	enum maxHealth = Attribute("generic.maxHealth", 0, 1024, 20);

	enum absorption = Attribute("generic.absorption", 0, 4, 0);

	enum movementSpeed = Attribute("generic.movementSpeed", 0, 24791, 0.1);

	enum knockbackResistance = Attribute("generic.knockbackResistance", 0, 1, 0);

	enum attackDamage = Attribute("generic.attackDamage", 0, 2048, 2);

	enum attackSpeed = Attribute("generic.attackSpeed", 0, 1024, 4);

}