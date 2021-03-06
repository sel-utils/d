/*
 * This file was automatically generated by sel-utils and
 * released under the MIT License.
 * 
 * License: https://github.com/sel-project/sel-utils/blob/master/LICENSE
 * Repository: https://github.com/sel-project/sel-utils
 * Generated from https://github.com/sel-project/sel-utils/blob/master/xml/protocol/raknet8.xml
 */
module sul.protocol.raknet8.control;

import std.bitmanip : write, peek;
static import std.conv;
import std.system : Endian;
import std.typetuple : TypeTuple;
import std.typecons : Tuple;
import std.uuid : UUID;

import sul.utils.buffer;
import sul.utils.var;

static import sul.protocol.raknet8.types;

static if(__traits(compiles, { import sul.metadata.raknet8; })) import sul.metadata.raknet8;

alias Packets = TypeTuple!(Ack, Nack, Encapsulated);

class Ack : Buffer {

	public enum ubyte ID = 192;

	public enum bool CLIENTBOUND = true;
	public enum bool SERVERBOUND = true;

	public enum string[] FIELDS = ["packets"];

	public sul.protocol.raknet8.types.Acknowledge[] packets;

	public pure nothrow @safe @nogc this() {}

	public pure nothrow @safe @nogc this(sul.protocol.raknet8.types.Acknowledge[] packets) {
		this.packets = packets;
	}

	public pure nothrow @safe ubyte[] encode(bool writeId=true)() {
		_buffer.length = 0;
		static if(writeId){ writeBigEndianUbyte(ID); }
		writeBigEndianUshort(cast(ushort)packets.length); foreach(cfavc;packets){ cfavc.encode(bufferInstance); }
		return _buffer;
	}

	public pure nothrow @safe void decode(bool readId=true)() {
		static if(readId){ ubyte _id; _id=readBigEndianUbyte(); }
		packets.length=readBigEndianUshort(); foreach(ref cfavc;packets){ cfavc.decode(bufferInstance); }
	}

	public static pure nothrow @safe Ack fromBuffer(bool readId=true)(ubyte[] buffer) {
		Ack ret = new Ack();
		ret._buffer = buffer;
		ret.decode!readId();
		return ret;
	}

	public override string toString() {
		return "Ack(packets: " ~ std.conv.to!string(this.packets) ~ ")";
	}

}

class Nack : Buffer {

	public enum ubyte ID = 160;

	public enum bool CLIENTBOUND = true;
	public enum bool SERVERBOUND = true;

	public enum string[] FIELDS = ["packets"];

	public sul.protocol.raknet8.types.Acknowledge[] packets;

	public pure nothrow @safe @nogc this() {}

	public pure nothrow @safe @nogc this(sul.protocol.raknet8.types.Acknowledge[] packets) {
		this.packets = packets;
	}

	public pure nothrow @safe ubyte[] encode(bool writeId=true)() {
		_buffer.length = 0;
		static if(writeId){ writeBigEndianUbyte(ID); }
		writeBigEndianUshort(cast(ushort)packets.length); foreach(cfavc;packets){ cfavc.encode(bufferInstance); }
		return _buffer;
	}

	public pure nothrow @safe void decode(bool readId=true)() {
		static if(readId){ ubyte _id; _id=readBigEndianUbyte(); }
		packets.length=readBigEndianUshort(); foreach(ref cfavc;packets){ cfavc.decode(bufferInstance); }
	}

	public static pure nothrow @safe Nack fromBuffer(bool readId=true)(ubyte[] buffer) {
		Nack ret = new Nack();
		ret._buffer = buffer;
		ret.decode!readId();
		return ret;
	}

	public override string toString() {
		return "Nack(packets: " ~ std.conv.to!string(this.packets) ~ ")";
	}

}

class Encapsulated : Buffer {

	public enum ubyte ID = 132;

	public enum bool CLIENTBOUND = true;
	public enum bool SERVERBOUND = true;

	public enum string[] FIELDS = ["count", "encapsulation"];

	public int count;
	public sul.protocol.raknet8.types.Encapsulation encapsulation;

	public pure nothrow @safe @nogc this() {}

	public pure nothrow @safe @nogc this(int count, sul.protocol.raknet8.types.Encapsulation encapsulation=sul.protocol.raknet8.types.Encapsulation.init) {
		this.count = count;
		this.encapsulation = encapsulation;
	}

	public pure nothrow @safe ubyte[] encode(bool writeId=true)() {
		_buffer.length = 0;
		static if(writeId){ writeBigEndianUbyte(ID); }
		writeLittleEndianTriad(count);
		encapsulation.encode(bufferInstance);
		return _buffer;
	}

	public pure nothrow @safe void decode(bool readId=true)() {
		static if(readId){ ubyte _id; _id=readBigEndianUbyte(); }
		count=readLittleEndianTriad();
		encapsulation.decode(bufferInstance);
	}

	public static pure nothrow @safe Encapsulated fromBuffer(bool readId=true)(ubyte[] buffer) {
		Encapsulated ret = new Encapsulated();
		ret._buffer = buffer;
		ret.decode!readId();
		return ret;
	}

	public override string toString() {
		return "Encapsulated(count: " ~ std.conv.to!string(this.count) ~ ", encapsulation: " ~ std.conv.to!string(this.encapsulation) ~ ")";
	}

}

