/*
 * This file was automatically generated by sel-utils and
 * released under the GNU General Public License version 3.
 * 
 * License: https://github.com/sel-project/sel-utils/blob/master/LICENSE
 * Repository: https://github.com/sel-project/sel-utils
 * Generated from https://github.com/sel-project/sel-utils/blob/master/xml/protocol/externalconsole2.xml
 */
module sul.protocol.externalconsole2.types;

import std.bitmanip : write, peek;
static import std.conv;
import std.system : Endian;
import std.typecons : Tuple;
import std.uuid : UUID;

import sul.utils.buffer;
import sul.utils.var;

static if(__traits(compiles, { import sul.metadata.externalconsole2; })) import sul.metadata.externalconsole2;

struct Game {

	// type
	public enum ubyte POCKET = 1;
	public enum ubyte MINECRAFT = 2;

	public enum string[] FIELDS = ["type", "protocols"];

	/**
	 * Variant of the game.
	 */
	public ubyte type;

	/**
	 * List of protocols supported by the server for the indicated game.
	 */
	public uint[] protocols;

	public pure nothrow @safe void encode(Buffer buffer) {
		with(buffer) {
			writeBigEndianUbyte(type);
			writeBigEndianUshort(cast(ushort)protocols.length); foreach(cjd9bx;protocols){ writeBigEndianUint(cjd9bx); }
		}
	}

	public pure nothrow @safe void decode(Buffer buffer) {
		with(buffer) {
			type=readBigEndianUbyte();
			protocols.length=readBigEndianUshort(); foreach(ref cjd9bx;protocols){ cjd9bx=readBigEndianUint(); }
		}
	}

	public string toString() {
		return "Game(type: " ~ std.conv.to!string(this.type) ~ ", protocols: " ~ std.conv.to!string(this.protocols) ~ ")";
	}

}

/**
 * Resources usage of a node.
 */
struct NodeStats {

	public enum string[] FIELDS = ["name", "tps", "ram", "cpu"];

	/**
	 * Name of the node. Should match one of the names given in [Welcome.Accepted.connectedNodes](#login_welcome_accepted_connected-nodes)
	 * or one added using the UpdateNodes packet.
	 * If the server isn't built on the hub-node layout the name is an empty string and
	 * the following values are for the whole server and not for a node.
	 */
	public string name;

	/**
	 * Ticks per second of the node in range 0 to 20. If the value is less than 20, the
	 * server is lagging.
	 */
	public float tps;

	/**
	 * RAM allocated by the node in bytes.
	 * If the value is 0 the node couldn't retrieve the amount of memory allocated by its
	 * process.
	 */
	public ulong ram;

	/**
	 * Percentage of CPU used by the node. The value can be higher than 100 when the machine
	 * where the node is running has more than one CPU.
	 * If the value is `not a number` the node couldn't retrieve the amount of CPU used
	 * by its process.
	 */
	public float cpu;

	public pure nothrow @safe void encode(Buffer buffer) {
		with(buffer) {
			writeBigEndianUshort(cast(ushort)name.length); writeString(name);
			writeBigEndianFloat(tps);
			writeBigEndianUlong(ram);
			writeBigEndianFloat(cpu);
		}
	}

	public pure nothrow @safe void decode(Buffer buffer) {
		with(buffer) {
			ushort bfz=readBigEndianUshort(); name=readString(bfz);
			tps=readBigEndianFloat();
			ram=readBigEndianUlong();
			cpu=readBigEndianFloat();
		}
	}

	public string toString() {
		return "NodeStats(name: " ~ std.conv.to!string(this.name) ~ ", tps: " ~ std.conv.to!string(this.tps) ~ ", ram: " ~ std.conv.to!string(this.ram) ~ ", cpu: " ~ std.conv.to!string(this.cpu) ~ ")";
	}

}

