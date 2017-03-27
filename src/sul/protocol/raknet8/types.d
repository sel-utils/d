/*
 * This file was automatically generated by sel-utils and
 * released under the GNU General Public License version 3.
 * 
 * License: https://github.com/sel-project/sel-utils/blob/master/LICENSE
 * Repository: https://github.com/sel-project/sel-utils
 * Generated from https://github.com/sel-project/sel-utils/blob/master/xml/protocol/raknet8.xml
 */
module sul.protocol.raknet8.types;

import std.bitmanip : write, peek;
static import std.conv;
import std.system : Endian;
import std.typecons : Tuple;
import std.uuid : UUID;

import sul.utils.buffer;
import sul.utils.var;

static if(__traits(compiles, { import sul.metadata.raknet8; })) import sul.metadata.raknet8;

struct Address {

	public enum string[] FIELDS = ["type", "ipv4", "ipv6", "port"];

	public ubyte type;
	public uint ipv4;
	public ubyte[16] ipv6;
	public ushort port;

	public pure nothrow @safe void encode(Buffer buffer) {
		with(buffer) {
			writeBigEndianUbyte(type);
			if(type==4){ writeBigEndianUint(ipv4); }
			if(type==6){ writeBytes(ipv6); }
			writeBigEndianUshort(port);
		}
	}

	public pure nothrow @safe void decode(Buffer buffer) {
		with(buffer) {
			type=readBigEndianUbyte();
			if(type==4){ ipv4=readBigEndianUint(); }
			if(type==6){ if(_buffer.length>=_index+ipv6.length){ ipv6=_buffer[_index.._index+ipv6.length].dup; _index+=ipv6.length; } }
			port=readBigEndianUshort();
		}
	}

	public string toString() {
		return "Address(type: " ~ std.conv.to!string(this.type) ~ ", ipv4: " ~ std.conv.to!string(this.ipv4) ~ ", ipv6: " ~ std.conv.to!string(this.ipv6) ~ ", port: " ~ std.conv.to!string(this.port) ~ ")";
	}

}

struct Acknowledge {

	public enum string[] FIELDS = ["unique", "first", "last"];

	public bool unique;
	public int first;
	public int last;

	public pure nothrow @safe void encode(Buffer buffer) {
		with(buffer) {
			writeBigEndianBool(unique);
			writeLittleEndianTriad(first);
			if(unique==false){ writeLittleEndianTriad(last); }
		}
	}

	public pure nothrow @safe void decode(Buffer buffer) {
		with(buffer) {
			unique=readBigEndianBool();
			first=readLittleEndianTriad();
			if(unique==false){ last=readLittleEndianTriad(); }
		}
	}

	public string toString() {
		return "Acknowledge(unique: " ~ std.conv.to!string(this.unique) ~ ", first: " ~ std.conv.to!string(this.first) ~ ", last: " ~ std.conv.to!string(this.last) ~ ")";
	}

}

struct Encapsulation {

	public enum string[] FIELDS = ["info", "length", "messageIndex", "orderIndex", "orderChannel", "split", "payload"];

	public ubyte info;
	public ushort length;
	public int messageIndex;
	public int orderIndex;
	public ubyte orderChannel;
	public sul.protocol.raknet8.types.Split split;
	public ubyte[] payload;

	public pure nothrow @safe void encode(Buffer buffer) {
		with(buffer) {
			writeBigEndianUbyte(info);
			writeBigEndianUshort(length);
			if((info&0x7F)>=64){ writeLittleEndianTriad(messageIndex); }
			if((info&0x7F)>=96){ writeLittleEndianTriad(orderIndex); }
			if((info&0x7F)>=96){ writeBigEndianUbyte(orderChannel); }
			if((info&0x10)!=0){ split.encode(bufferInstance); }
			writeBytes(payload);
		}
	}

	public pure nothrow @safe void decode(Buffer buffer) {
		with(buffer) {
			info=readBigEndianUbyte();
			length=readBigEndianUshort();
			if((info&0x7F)>=64){ messageIndex=readLittleEndianTriad(); }
			if((info&0x7F)>=96){ orderIndex=readLittleEndianTriad(); }
			if((info&0x7F)>=96){ orderChannel=readBigEndianUbyte(); }
			if((info&0x10)!=0){ split.decode(bufferInstance); }
			payload=_buffer[_index..$].dup; _index=_buffer.length;
		}
	}

	public string toString() {
		return "Encapsulation(info: " ~ std.conv.to!string(this.info) ~ ", length: " ~ std.conv.to!string(this.length) ~ ", messageIndex: " ~ std.conv.to!string(this.messageIndex) ~ ", orderIndex: " ~ std.conv.to!string(this.orderIndex) ~ ", orderChannel: " ~ std.conv.to!string(this.orderChannel) ~ ", split: " ~ std.conv.to!string(this.split) ~ ", payload: " ~ std.conv.to!string(this.payload) ~ ")";
	}

}

struct Split {

	public enum string[] FIELDS = ["count", "id", "order"];

	public uint count;
	public ushort id;
	public uint order;

	public pure nothrow @safe void encode(Buffer buffer) {
		with(buffer) {
			writeBigEndianUint(count);
			writeBigEndianUshort(id);
			writeBigEndianUint(order);
		}
	}

	public pure nothrow @safe void decode(Buffer buffer) {
		with(buffer) {
			count=readBigEndianUint();
			id=readBigEndianUshort();
			order=readBigEndianUint();
		}
	}

	public string toString() {
		return "Split(count: " ~ std.conv.to!string(this.count) ~ ", id: " ~ std.conv.to!string(this.id) ~ ", order: " ~ std.conv.to!string(this.order) ~ ")";
	}

}
