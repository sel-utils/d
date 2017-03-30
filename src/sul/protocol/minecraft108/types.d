/*
 * This file was automatically generated by sel-utils and
 * released under the GNU General Public License version 3.
 * 
 * License: https://github.com/sel-project/sel-utils/blob/master/LICENSE
 * Repository: https://github.com/sel-project/sel-utils
 * Generated from https://github.com/sel-project/sel-utils/blob/master/xml/protocol/minecraft108.xml
 */
module sul.protocol.minecraft108.types;

import std.bitmanip : write, peek;
static import std.conv;
import std.system : Endian;
import std.typecons : Tuple;
import std.uuid : UUID;

import sul.utils.buffer;
import sul.utils.var;

static if(__traits(compiles, { import sul.metadata.minecraft108; })) import sul.metadata.minecraft108;

struct Statistic {

	public enum string[] FIELDS = ["name", "value"];

	public string name;
	public uint value;

	public pure nothrow @safe void encode(Buffer buffer) {
		with(buffer) {
			writeBytes(varuint.encode(cast(uint)name.length)); writeString(name);
			writeBytes(varuint.encode(value));
		}
	}

	public pure nothrow @safe void decode(Buffer buffer) {
		with(buffer) {
			uint bfz=varuint.decode(_buffer, &_index); name=readString(bfz);
			value=varuint.decode(_buffer, &_index);
		}
	}

	public string toString() {
		return "Statistic(name: " ~ std.conv.to!string(this.name) ~ ", value: " ~ std.conv.to!string(this.value) ~ ")";
	}

}

struct BlockChange {

	public enum string[] FIELDS = ["xz", "y", "block"];

	public ubyte xz;
	public ubyte y;
	public uint block;

	public pure nothrow @safe void encode(Buffer buffer) {
		with(buffer) {
			writeBigEndianUbyte(xz);
			writeBigEndianUbyte(y);
			writeBytes(varuint.encode(block));
		}
	}

	public pure nothrow @safe void decode(Buffer buffer) {
		with(buffer) {
			xz=readBigEndianUbyte();
			y=readBigEndianUbyte();
			block=varuint.decode(_buffer, &_index);
		}
	}

	public string toString() {
		return "BlockChange(xz: " ~ std.conv.to!string(this.xz) ~ ", y: " ~ std.conv.to!string(this.y) ~ ", block: " ~ std.conv.to!string(this.block) ~ ")";
	}

}

struct Slot {

	public enum string[] FIELDS = ["id", "count", "damage", "nbt"];

	public short id;
	public ubyte count;
	public ushort damage;
	public ubyte[] nbt;

	public pure nothrow @safe void encode(Buffer buffer) {
		with(buffer) {
			writeBigEndianShort(id);
			if(id>0){ writeBigEndianUbyte(count); }
			if(id>0){ writeBigEndianUshort(damage); }
			if(id>0){ writeBytes(nbt); }
		}
	}

	public pure nothrow @safe void decode(Buffer buffer) {
		with(buffer) {
			id=readBigEndianShort();
			if(id>0){ count=readBigEndianUbyte(); }
			if(id>0){ damage=readBigEndianUshort(); }
			if(id>0){ nbt=_buffer[_index..$].dup; _index=_buffer.length; }
		}
	}

	public string toString() {
		return "Slot(id: " ~ std.conv.to!string(this.id) ~ ", count: " ~ std.conv.to!string(this.count) ~ ", damage: " ~ std.conv.to!string(this.damage) ~ ", nbt: " ~ std.conv.to!string(this.nbt) ~ ")";
	}

}

struct Icon {

	// direction and type
	public enum ubyte WHITE_ARROW = 0;
	public enum ubyte GREEN_ARROW = 1;
	public enum ubyte RED_ARROW = 2;
	public enum ubyte BLUE_ARROW = 3;
	public enum ubyte WHITE_CROSS = 4;
	public enum ubyte RED_POINTER = 5;
	public enum ubyte WHITE_CIRCLE = 6;

	public enum string[] FIELDS = ["directionAndType", "position"];

	public ubyte directionAndType;
	public Tuple!(ubyte, "x", ubyte, "z") position;

	public pure nothrow @safe void encode(Buffer buffer) {
		with(buffer) {
			writeBigEndianUbyte(directionAndType);
			writeBigEndianUbyte(position.x); writeBigEndianUbyte(position.z);
		}
	}

	public pure nothrow @safe void decode(Buffer buffer) {
		with(buffer) {
			directionAndType=readBigEndianUbyte();
			position.x=readBigEndianUbyte(); position.z=readBigEndianUbyte();
		}
	}

	public string toString() {
		return "Icon(directionAndType: " ~ std.conv.to!string(this.directionAndType) ~ ", position: " ~ std.conv.to!string(this.position) ~ ")";
	}

}

struct Property {

	public enum string[] FIELDS = ["name", "value", "signed", "signature"];

	public string name;
	public string value;
	public bool signed;
	public string signature;

	public pure nothrow @safe void encode(Buffer buffer) {
		with(buffer) {
			writeBytes(varuint.encode(cast(uint)name.length)); writeString(name);
			writeBytes(varuint.encode(cast(uint)value.length)); writeString(value);
			writeBigEndianBool(signed);
			if(signed==true){ writeBytes(varuint.encode(cast(uint)signature.length)); writeString(signature); }
		}
	}

	public pure nothrow @safe void decode(Buffer buffer) {
		with(buffer) {
			uint bfz=varuint.decode(_buffer, &_index); name=readString(bfz);
			uint dfdu=varuint.decode(_buffer, &_index); value=readString(dfdu);
			signed=readBigEndianBool();
			if(signed==true){ uint clbfdj=varuint.decode(_buffer, &_index); signature=readString(clbfdj); }
		}
	}

	public string toString() {
		return "Property(name: " ~ std.conv.to!string(this.name) ~ ", value: " ~ std.conv.to!string(this.value) ~ ", signed: " ~ std.conv.to!string(this.signed) ~ ", signature: " ~ std.conv.to!string(this.signature) ~ ")";
	}

}

struct ListAddPlayer {

	// gamemode
	public enum uint SURVIVAL = 0;
	public enum uint CREATIVE = 1;
	public enum uint ADVENTURE = 2;
	public enum uint SPECTATOR = 3;

	public enum string[] FIELDS = ["uuid", "name", "properties", "gamemode", "latency", "hasDisplayName", "displayName"];

	public UUID uuid;
	public string name;
	public sul.protocol.minecraft108.types.Property[] properties;
	public uint gamemode;
	public uint latency;
	public bool hasDisplayName;
	public string displayName;

	public pure nothrow @safe void encode(Buffer buffer) {
		with(buffer) {
			writeBytes(uuid.data);
			writeBytes(varuint.encode(cast(uint)name.length)); writeString(name);
			writeBytes(varuint.encode(cast(uint)properties.length)); foreach(cjcvdlc;properties){ cjcvdlc.encode(bufferInstance); }
			writeBytes(varuint.encode(gamemode));
			writeBytes(varuint.encode(latency));
			writeBigEndianBool(hasDisplayName);
			if(hasDisplayName==true){ writeBytes(varuint.encode(cast(uint)displayName.length)); writeString(displayName); }
		}
	}

	public pure nothrow @safe void decode(Buffer buffer) {
		with(buffer) {
			if(_buffer.length>=_index+16){ ubyte[16] dvz=_buffer[_index.._index+16].dup; _index+=16; uuid=UUID(dvz); }
			uint bfz=varuint.decode(_buffer, &_index); name=readString(bfz);
			properties.length=varuint.decode(_buffer, &_index); foreach(ref cjcvdlc;properties){ cjcvdlc.decode(bufferInstance); }
			gamemode=varuint.decode(_buffer, &_index);
			latency=varuint.decode(_buffer, &_index);
			hasDisplayName=readBigEndianBool();
			if(hasDisplayName==true){ uint zlcxe5bu=varuint.decode(_buffer, &_index); displayName=readString(zlcxe5bu); }
		}
	}

	public string toString() {
		return "ListAddPlayer(uuid: " ~ std.conv.to!string(this.uuid) ~ ", name: " ~ std.conv.to!string(this.name) ~ ", properties: " ~ std.conv.to!string(this.properties) ~ ", gamemode: " ~ std.conv.to!string(this.gamemode) ~ ", latency: " ~ std.conv.to!string(this.latency) ~ ", hasDisplayName: " ~ std.conv.to!string(this.hasDisplayName) ~ ", displayName: " ~ std.conv.to!string(this.displayName) ~ ")";
	}

}

struct ListUpdateGamemode {

	// gamemode
	public enum uint SURVIVAL = 0;
	public enum uint CREATIVE = 1;
	public enum uint ADVENTURE = 2;
	public enum uint SPECTATOR = 3;

	public enum string[] FIELDS = ["uuid", "gamemode"];

	public UUID uuid;
	public uint gamemode;

	public pure nothrow @safe void encode(Buffer buffer) {
		with(buffer) {
			writeBytes(uuid.data);
			writeBytes(varuint.encode(gamemode));
		}
	}

	public pure nothrow @safe void decode(Buffer buffer) {
		with(buffer) {
			if(_buffer.length>=_index+16){ ubyte[16] dvz=_buffer[_index.._index+16].dup; _index+=16; uuid=UUID(dvz); }
			gamemode=varuint.decode(_buffer, &_index);
		}
	}

	public string toString() {
		return "ListUpdateGamemode(uuid: " ~ std.conv.to!string(this.uuid) ~ ", gamemode: " ~ std.conv.to!string(this.gamemode) ~ ")";
	}

}

struct ListUpdateLatency {

	public enum string[] FIELDS = ["uuid", "latency"];

	public UUID uuid;
	public uint latency;

	public pure nothrow @safe void encode(Buffer buffer) {
		with(buffer) {
			writeBytes(uuid.data);
			writeBytes(varuint.encode(latency));
		}
	}

	public pure nothrow @safe void decode(Buffer buffer) {
		with(buffer) {
			if(_buffer.length>=_index+16){ ubyte[16] dvz=_buffer[_index.._index+16].dup; _index+=16; uuid=UUID(dvz); }
			latency=varuint.decode(_buffer, &_index);
		}
	}

	public string toString() {
		return "ListUpdateLatency(uuid: " ~ std.conv.to!string(this.uuid) ~ ", latency: " ~ std.conv.to!string(this.latency) ~ ")";
	}

}

struct ListUpdateDisplayName {

	public enum string[] FIELDS = ["uuid", "hasDisplayName", "displayName"];

	public UUID uuid;
	public bool hasDisplayName;
	public string displayName;

	public pure nothrow @safe void encode(Buffer buffer) {
		with(buffer) {
			writeBytes(uuid.data);
			writeBigEndianBool(hasDisplayName);
			if(hasDisplayName==true){ writeBytes(varuint.encode(cast(uint)displayName.length)); writeString(displayName); }
		}
	}

	public pure nothrow @safe void decode(Buffer buffer) {
		with(buffer) {
			if(_buffer.length>=_index+16){ ubyte[16] dvz=_buffer[_index.._index+16].dup; _index+=16; uuid=UUID(dvz); }
			hasDisplayName=readBigEndianBool();
			if(hasDisplayName==true){ uint zlcxe5bu=varuint.decode(_buffer, &_index); displayName=readString(zlcxe5bu); }
		}
	}

	public string toString() {
		return "ListUpdateDisplayName(uuid: " ~ std.conv.to!string(this.uuid) ~ ", hasDisplayName: " ~ std.conv.to!string(this.hasDisplayName) ~ ", displayName: " ~ std.conv.to!string(this.displayName) ~ ")";
	}

}

struct Modifier {

	// operation
	public enum ubyte ADD_SUBSTRACT_AMOUNT = 0;
	public enum ubyte ADD_SUBSTRACT_AMOUNT_PERCENTAGE = 1;
	public enum ubyte MULTIPLY_AMOUNT_PERCENTAGE = 2;

	public enum string[] FIELDS = ["uuid", "amount", "operation"];

	public UUID uuid;
	public double amount;
	public ubyte operation;

	public pure nothrow @safe void encode(Buffer buffer) {
		with(buffer) {
			writeBytes(uuid.data);
			writeBigEndianDouble(amount);
			writeBigEndianUbyte(operation);
		}
	}

	public pure nothrow @safe void decode(Buffer buffer) {
		with(buffer) {
			if(_buffer.length>=_index+16){ ubyte[16] dvz=_buffer[_index.._index+16].dup; _index+=16; uuid=UUID(dvz); }
			amount=readBigEndianDouble();
			operation=readBigEndianUbyte();
		}
	}

	public string toString() {
		return "Modifier(uuid: " ~ std.conv.to!string(this.uuid) ~ ", amount: " ~ std.conv.to!string(this.amount) ~ ", operation: " ~ std.conv.to!string(this.operation) ~ ")";
	}

}

struct Attribute {

	public enum string[] FIELDS = ["key", "value", "modifiers"];

	public string key;
	public double value;
	public sul.protocol.minecraft108.types.Modifier[] modifiers;

	public pure nothrow @safe void encode(Buffer buffer) {
		with(buffer) {
			writeBytes(varuint.encode(cast(uint)key.length)); writeString(key);
			writeBigEndianDouble(value);
			writeBytes(varuint.encode(cast(uint)modifiers.length)); foreach(b9azzj;modifiers){ b9azzj.encode(bufferInstance); }
		}
	}

	public pure nothrow @safe void decode(Buffer buffer) {
		with(buffer) {
			uint av=varuint.decode(_buffer, &_index); key=readString(av);
			value=readBigEndianDouble();
			modifiers.length=varuint.decode(_buffer, &_index); foreach(ref b9azzj;modifiers){ b9azzj.decode(bufferInstance); }
		}
	}

	public string toString() {
		return "Attribute(key: " ~ std.conv.to!string(this.key) ~ ", value: " ~ std.conv.to!string(this.value) ~ ", modifiers: " ~ std.conv.to!string(this.modifiers) ~ ")";
	}

}

struct OptionalPosition {

	public enum string[] FIELDS = ["hasPosition", "position"];

	public bool hasPosition;
	public ulong position;

	public pure nothrow @safe void encode(Buffer buffer) {
		with(buffer) {
			writeBigEndianBool(hasPosition);
			if(hasPosition==true){ writeBigEndianUlong(position); }
		}
	}

	public pure nothrow @safe void decode(Buffer buffer) {
		with(buffer) {
			hasPosition=readBigEndianBool();
			if(hasPosition==true){ position=readBigEndianUlong(); }
		}
	}

	public string toString() {
		return "OptionalPosition(hasPosition: " ~ std.conv.to!string(this.hasPosition) ~ ", position: " ~ std.conv.to!string(this.position) ~ ")";
	}

}

struct OptionalUuid {

	public enum string[] FIELDS = ["hasUuid", "uuid"];

	public bool hasUuid;
	public UUID uuid;

	public pure nothrow @safe void encode(Buffer buffer) {
		with(buffer) {
			writeBigEndianBool(hasUuid);
			writeBytes(uuid.data);
		}
	}

	public pure nothrow @safe void decode(Buffer buffer) {
		with(buffer) {
			hasUuid=readBigEndianBool();
			if(_buffer.length>=_index+16){ ubyte[16] dvz=_buffer[_index.._index+16].dup; _index+=16; uuid=UUID(dvz); }
		}
	}

	public string toString() {
		return "OptionalUuid(hasUuid: " ~ std.conv.to!string(this.hasUuid) ~ ", uuid: " ~ std.conv.to!string(this.uuid) ~ ")";
	}

}

