/*
 * This file was automatically generated by sel-utils and
 * released under the GNU General Public License version 3.
 * 
 * License: https://github.com/sel-project/sel-utils/blob/master/LICENSE
 * Repository: https://github.com/sel-project/sel-utils
 * Generated from https://github.com/sel-project/sel-utils/blob/master/xml/protocol/pocket105.xml
 */
module sul.protocol.pocket105.types;

import std.bitmanip : write, peek;
static import std.conv;
import std.system : Endian;
import std.typecons : Tuple;
import std.uuid : UUID;

import sul.utils.buffer;
import sul.utils.var;

static if(__traits(compiles, { import sul.metadata.pocket105; })) import sul.metadata.pocket105;

struct PackWithSize {

	public enum string[] FIELDS = ["id", "vers", "size"];

	public string id;
	public string vers;
	public ulong size;

	public pure nothrow @safe void encode(Buffer buffer) {
		with(buffer) {
			writeBytes(varuint.encode(cast(uint)id.length)); writeString(id);
			writeBytes(varuint.encode(cast(uint)vers.length)); writeString(vers);
			writeLittleEndianUlong(size);
		}
	}

	public pure nothrow @safe void decode(Buffer buffer) {
		with(buffer) {
			uint aq=varuint.decode(_buffer, &_index); id=readString(aq);
			uint dvc=varuint.decode(_buffer, &_index); vers=readString(dvc);
			size=readLittleEndianUlong();
		}
	}

	public string toString() {
		return "PackWithSize(id: " ~ std.conv.to!string(this.id) ~ ", vers: " ~ std.conv.to!string(this.vers) ~ ", size: " ~ std.conv.to!string(this.size) ~ ")";
	}

}

struct Pack {

	public enum string[] FIELDS = ["id", "vers"];

	public string id;
	public string vers;

	public pure nothrow @safe void encode(Buffer buffer) {
		with(buffer) {
			writeBytes(varuint.encode(cast(uint)id.length)); writeString(id);
			writeBytes(varuint.encode(cast(uint)vers.length)); writeString(vers);
		}
	}

	public pure nothrow @safe void decode(Buffer buffer) {
		with(buffer) {
			uint aq=varuint.decode(_buffer, &_index); id=readString(aq);
			uint dvc=varuint.decode(_buffer, &_index); vers=readString(dvc);
		}
	}

	public string toString() {
		return "Pack(id: " ~ std.conv.to!string(this.id) ~ ", vers: " ~ std.conv.to!string(this.vers) ~ ")";
	}

}

/**
 * Informations about a slot, that, if not empty, contains an item id and meta, the
 * count (0-255) and, optionally, an nbt tag for enchantments, custom name, colours
 * and more.
 */
struct Slot {

	public enum string[] FIELDS = ["id", "metaAndCount", "nbt"];

	/**
	 * Item's id or 0 if the slot is empty.
	 */
	public int id;

	/**
	 * Item's meta or uses (unsigned short) left-shifted 8 times and the count (unisgned
	 * byte).
	 * Examples:
	 * ---
	 * var encoded = item.meta << 8 | item.count
	 * var meta = encoded >> 8
	 * var count = count & 255
	 * ---
	 */
	public int metaAndCount;

	/**
	 * Optional nbt data encoded as a nameless little-endian compound tag.
	 */
	public ubyte[] nbt;

	public pure nothrow @safe void encode(Buffer buffer) {
		with(buffer) {
			writeBytes(varint.encode(id));
			if(id>0){ writeBytes(varint.encode(metaAndCount)); }
			if(id>0){ writeLittleEndianUshort(cast(ushort)nbt.length); writeBytes(nbt); }
		}
	}

	public pure nothrow @safe void decode(Buffer buffer) {
		with(buffer) {
			id=varint.decode(_buffer, &_index);
			if(id>0){ metaAndCount=varint.decode(_buffer, &_index); }
			if(id>0){ nbt.length=readLittleEndianUshort(); if(_buffer.length>=_index+nbt.length){ nbt=_buffer[_index.._index+nbt.length].dup; _index+=nbt.length; } }
		}
	}

	public string toString() {
		return "Slot(id: " ~ std.conv.to!string(this.id) ~ ", metaAndCount: " ~ std.conv.to!string(this.metaAndCount) ~ ", nbt: " ~ std.conv.to!string(this.nbt) ~ ")";
	}

}

struct Attribute {

	public enum string[] FIELDS = ["min", "max", "value", "def", "name"];

	public float min;
	public float max;
	public float value;
	public float def;
	public string name;

	public pure nothrow @safe void encode(Buffer buffer) {
		with(buffer) {
			writeLittleEndianFloat(min);
			writeLittleEndianFloat(max);
			writeLittleEndianFloat(value);
			writeLittleEndianFloat(def);
			writeBytes(varuint.encode(cast(uint)name.length)); writeString(name);
		}
	}

	public pure nothrow @safe void decode(Buffer buffer) {
		with(buffer) {
			min=readLittleEndianFloat();
			max=readLittleEndianFloat();
			value=readLittleEndianFloat();
			def=readLittleEndianFloat();
			uint bfz=varuint.decode(_buffer, &_index); name=readString(bfz);
		}
	}

	public string toString() {
		return "Attribute(min: " ~ std.conv.to!string(this.min) ~ ", max: " ~ std.conv.to!string(this.max) ~ ", value: " ~ std.conv.to!string(this.value) ~ ", def: " ~ std.conv.to!string(this.def) ~ ", name: " ~ std.conv.to!string(this.name) ~ ")";
	}

}

/**
 * Position of a block, where x and z are signed and y is always positive (as blocks
 * cannot be placed under 0).
 */
struct BlockPosition {

	public enum string[] FIELDS = ["x", "y", "z"];

	public int x;
	public uint y;
	public int z;

	public pure nothrow @safe void encode(Buffer buffer) {
		with(buffer) {
			writeBytes(varint.encode(x));
			writeBytes(varuint.encode(y));
			writeBytes(varint.encode(z));
		}
	}

	public pure nothrow @safe void decode(Buffer buffer) {
		with(buffer) {
			x=varint.decode(_buffer, &_index);
			y=varuint.decode(_buffer, &_index);
			z=varint.decode(_buffer, &_index);
		}
	}

	public string toString() {
		return "BlockPosition(x: " ~ std.conv.to!string(this.x) ~ ", y: " ~ std.conv.to!string(this.y) ~ ", z: " ~ std.conv.to!string(this.z) ~ ")";
	}

}

/**
 * Player's skin.
 */
struct Skin {

	public enum string[] FIELDS = ["name", "data"];

	/**
	 * Name of the skin. It's used to render the shape of the skin correctly.
	 */
	public string name;

	/**
	 * Bytes of the skin in format RGBA. The length should be 8192 or 16382.
	 */
	public ubyte[] data;

	public pure nothrow @safe void encode(Buffer buffer) {
		with(buffer) {
			writeBytes(varuint.encode(cast(uint)name.length)); writeString(name);
			writeBytes(varuint.encode(cast(uint)data.length)); writeBytes(data);
		}
	}

	public pure nothrow @safe void decode(Buffer buffer) {
		with(buffer) {
			uint bfz=varuint.decode(_buffer, &_index); name=readString(bfz);
			data.length=varuint.decode(_buffer, &_index); if(_buffer.length>=_index+data.length){ data=_buffer[_index.._index+data.length].dup; _index+=data.length; }
		}
	}

	public string toString() {
		return "Skin(name: " ~ std.conv.to!string(this.name) ~ ", data: " ~ std.conv.to!string(this.data) ~ ")";
	}

}

/**
 * Informations about a player that will be added to the player's list in the pause
 * menu.
 */
struct PlayerList {

	public enum string[] FIELDS = ["uuid", "entityId", "displayName", "skin"];

	/**
	 * UUID of the player. If it's associated with an XBOX Live account the player's profile
	 * will also be available in pause menu.
	 */
	public UUID uuid;

	/**
	 * Player's id, used to associate the skin with the game's entity spawned with AddPlayer.
	 */
	public long entityId;

	/**
	 * Player's display name, that can contain Minecraft's formatting codes. It shouldn't
	 * contain suffixes nor prefixes.
	 */
	public string displayName;

	/**
	 * Player's skin usually given in the Login's packet body.
	 */
	public sul.protocol.pocket105.types.Skin skin;

	public pure nothrow @safe void encode(Buffer buffer) {
		with(buffer) {
			writeBytes(uuid.data);
			writeBytes(varlong.encode(entityId));
			writeBytes(varuint.encode(cast(uint)displayName.length)); writeString(displayName);
			skin.encode(bufferInstance);
		}
	}

	public pure nothrow @safe void decode(Buffer buffer) {
		with(buffer) {
			if(_buffer.length>=_index+16){ ubyte[16] dvz=_buffer[_index.._index+16].dup; _index+=16; uuid=UUID(dvz); }
			entityId=varlong.decode(_buffer, &_index);
			uint zlcxe5bu=varuint.decode(_buffer, &_index); displayName=readString(zlcxe5bu);
			skin.decode(bufferInstance);
		}
	}

	public string toString() {
		return "PlayerList(uuid: " ~ std.conv.to!string(this.uuid) ~ ", entityId: " ~ std.conv.to!string(this.entityId) ~ ", displayName: " ~ std.conv.to!string(this.displayName) ~ ", skin: " ~ std.conv.to!string(this.skin) ~ ")";
	}

}

struct Link {

	// action
	public enum ubyte ADD = 0;
	public enum ubyte RIDE = 1;
	public enum ubyte REMOVE = 2;

	public enum string[] FIELDS = ["from", "to", "action"];

	public long from;
	public long to;
	public ubyte action;

	public pure nothrow @safe void encode(Buffer buffer) {
		with(buffer) {
			writeBytes(varlong.encode(from));
			writeBytes(varlong.encode(to));
			writeBigEndianUbyte(action);
		}
	}

	public pure nothrow @safe void decode(Buffer buffer) {
		with(buffer) {
			from=varlong.decode(_buffer, &_index);
			to=varlong.decode(_buffer, &_index);
			action=readBigEndianUbyte();
		}
	}

	public string toString() {
		return "Link(from: " ~ std.conv.to!string(this.from) ~ ", to: " ~ std.conv.to!string(this.to) ~ ", action: " ~ std.conv.to!string(this.action) ~ ")";
	}

}

struct Recipe {

	// type
	public enum int SHAPELESS = 0;
	public enum int SHAPED = 1;
	public enum int FURNACE = 2;
	public enum int FURNACE_DATA = 3;
	public enum int MULTI = 4;

	public enum string[] FIELDS = ["type", "data"];

	public int type;
	public ubyte[] data;

	public pure nothrow @safe void encode(Buffer buffer) {
		with(buffer) {
			writeBytes(varint.encode(type));
			writeBytes(data);
		}
	}

	public pure nothrow @safe void decode(Buffer buffer) {
		with(buffer) {
			type=varint.decode(_buffer, &_index);
			data=_buffer[_index..$].dup; _index=_buffer.length;
		}
	}

	public string toString() {
		return "Recipe(type: " ~ std.conv.to!string(this.type) ~ ", data: " ~ std.conv.to!string(this.data) ~ ")";
	}

}

/**
 * Chunk's blocks, lights and other immutable data.
 */
struct ChunkData {

	public enum string[] FIELDS = ["sections", "heights", "biomes", "borders", "extraData", "blockEntities"];

	/**
	 * 16x16x16 section of the chunk. The array's keys also indicate the section's height
	 * (the 3rd element of the array will be the 3rd section from bottom, starting at `y=24`).
	 * The amount of sections should be in a range from 0 (empty chunk) to 16.
	 */
	public sul.protocol.pocket105.types.Section[] sections;

	/**
	 * Coordinates of the highest block in the column that receives sky light (order `xz`).
	 * It is used to increase the speed when calculating the block's light level.
	 */
	public ushort[256] heights;

	/**
	 * Biomes in order `xz`.
	 */
	public ubyte[256] biomes;

	/**
	 * Colums where there are world borders (in format `xz`). This feature hasn't been
	 * implemented in the game yet and crashes the client.
	 */
	public ubyte[] borders;
	public sul.protocol.pocket105.types.ExtraData[] extraData;

	/**
	 * Additional data for the chunk's block entities (tiles), encoded in the same way
	 * as BlockEntityData.nbt is. The position is given by the `Int` tags `x`, `y`, `z`
	 * which are added to the block's compound tag together with the `String` tag `id`
	 * that contains the name of the tile in pascal case.
	 * Wrong encoding or missing tags may result in the block becoming invisible.
	 */
	public ubyte[] blockEntities;

	public pure nothrow @safe void encode(Buffer o_buffer) {
		Buffer buffer = new Buffer();
		with(buffer) {
			writeBytes(varuint.encode(cast(uint)sections.length)); foreach(cvdlbm;sections){ cvdlbm.encode(bufferInstance); }
			foreach(avzhc;heights){ writeBigEndianUshort(avzhc); }
			writeBytes(biomes);
			writeBytes(varuint.encode(cast(uint)borders.length)); writeBytes(borders);
			writeBytes(varuint.encode(cast(uint)extraData.length)); foreach(zhcfyr;extraData){ zhcfyr.encode(bufferInstance); }
			writeBytes(blockEntities);
		}
		with(o_buffer){ writeBytes(varuint.encode(cast(uint)buffer._buffer.length)); }
		o_buffer.writeBytes(buffer._buffer);
	}

	public pure nothrow @safe void decode(Buffer o_buffer) {
		Buffer buffer = new Buffer();
		with(o_buffer) {
			immutable _length=varuint.decode(_buffer, &_index);
			buffer._buffer = readBytes(_length);
		}
		with(buffer) {
			sections.length=varuint.decode(_buffer, &_index); foreach(ref cvdlbm;sections){ cvdlbm.decode(bufferInstance); }
			foreach(ref avzhc;heights){ avzhc=readBigEndianUshort(); }
			if(_buffer.length>=_index+biomes.length){ biomes=_buffer[_index.._index+biomes.length].dup; _index+=biomes.length; }
			borders.length=varuint.decode(_buffer, &_index); if(_buffer.length>=_index+borders.length){ borders=_buffer[_index.._index+borders.length].dup; _index+=borders.length; }
			extraData.length=varuint.decode(_buffer, &_index); foreach(ref zhcfyr;extraData){ zhcfyr.decode(bufferInstance); }
			blockEntities=_buffer[_index..$].dup; _index=_buffer.length;
		}
	}

	public string toString() {
		return "ChunkData(sections: " ~ std.conv.to!string(this.sections) ~ ", heights: " ~ std.conv.to!string(this.heights) ~ ", biomes: " ~ std.conv.to!string(this.biomes) ~ ", borders: " ~ std.conv.to!string(this.borders) ~ ", extraData: " ~ std.conv.to!string(this.extraData) ~ ", blockEntities: " ~ std.conv.to!string(this.blockEntities) ~ ")";
	}

}

/**
 * Section of a chunk with informations about blocks and lights. The array of bytes
 * are always ordered `xzy`.
 */
struct Section {

	public enum string[] FIELDS = ["storageVersion", "blockIds", "blockMetas", "skyLight", "blockLight"];

	public ubyte storageVersion = 0;
	public ubyte[4096] blockIds;
	public ubyte[2048] blockMetas;
	public ubyte[2048] skyLight;
	public ubyte[2048] blockLight;

	public pure nothrow @safe void encode(Buffer buffer) {
		with(buffer) {
			writeBigEndianUbyte(storageVersion);
			writeBytes(blockIds);
			writeBytes(blockMetas);
			writeBytes(skyLight);
			writeBytes(blockLight);
		}
	}

	public pure nothrow @safe void decode(Buffer buffer) {
		with(buffer) {
			storageVersion=readBigEndianUbyte();
			if(_buffer.length>=_index+blockIds.length){ blockIds=_buffer[_index.._index+blockIds.length].dup; _index+=blockIds.length; }
			if(_buffer.length>=_index+blockMetas.length){ blockMetas=_buffer[_index.._index+blockMetas.length].dup; _index+=blockMetas.length; }
			if(_buffer.length>=_index+skyLight.length){ skyLight=_buffer[_index.._index+skyLight.length].dup; _index+=skyLight.length; }
			if(_buffer.length>=_index+blockLight.length){ blockLight=_buffer[_index.._index+blockLight.length].dup; _index+=blockLight.length; }
		}
	}

	public string toString() {
		return "Section(storageVersion: " ~ std.conv.to!string(this.storageVersion) ~ ", blockIds: " ~ std.conv.to!string(this.blockIds) ~ ", blockMetas: " ~ std.conv.to!string(this.blockMetas) ~ ", skyLight: " ~ std.conv.to!string(this.skyLight) ~ ", blockLight: " ~ std.conv.to!string(this.blockLight) ~ ")";
	}

}

struct ExtraData {

	public enum string[] FIELDS = ["key", "value"];

	public uint key;
	public ushort value;

	public pure nothrow @safe void encode(Buffer buffer) {
		with(buffer) {
			writeBytes(varuint.encode(key));
			writeLittleEndianUshort(value);
		}
	}

	public pure nothrow @safe void decode(Buffer buffer) {
		with(buffer) {
			key=varuint.decode(_buffer, &_index);
			value=readLittleEndianUshort();
		}
	}

	public string toString() {
		return "ExtraData(key: " ~ std.conv.to!string(this.key) ~ ", value: " ~ std.conv.to!string(this.value) ~ ")";
	}

}

struct Decoration {

	public enum string[] FIELDS = ["rotationAndIcon", "position", "label", "color"];

	public int rotationAndIcon;
	public Tuple!(ubyte, "x", ubyte, "z") position;
	public string label;

	/**
	 * ARGB colour.
	 */
	public uint color;

	public pure nothrow @safe void encode(Buffer buffer) {
		with(buffer) {
			writeBytes(varint.encode(rotationAndIcon));
			writeBigEndianUbyte(position.x); writeBigEndianUbyte(position.z);
			writeBytes(varuint.encode(cast(uint)label.length)); writeString(label);
			writeLittleEndianUint(color);
		}
	}

	public pure nothrow @safe void decode(Buffer buffer) {
		with(buffer) {
			rotationAndIcon=varint.decode(_buffer, &_index);
			position.x=readBigEndianUbyte(); position.z=readBigEndianUbyte();
			uint bfzw=varuint.decode(_buffer, &_index); label=readString(bfzw);
			color=readLittleEndianUint();
		}
	}

	public string toString() {
		return "Decoration(rotationAndIcon: " ~ std.conv.to!string(this.rotationAndIcon) ~ ", position: " ~ std.conv.to!string(this.position) ~ ", label: " ~ std.conv.to!string(this.label) ~ ", color: " ~ std.conv.to!string(this.color) ~ ")";
	}

}

/**
 * A game rule that prevents the client from doing client-side actions and animations.
 */
struct Rule {

	// name
	public enum string DROWNING_DAMAGE = "drowningdamage";
	public enum string FALL_DAMAGE = "falldamage";
	public enum string FIRE_DAMAGE = "firedamage";
	public enum string IMMUTABLE_WORLD = "immutableworld";
	public enum string PVP = "pvp";

	public enum string[] FIELDS = ["name", "value", "unknown2"];

	/**
	 * Name of the rule. Same of the `gamerule` command's field in Minecraft: Education
	 * Edition.
	 * The behaviours indicated in the following constants' descriptions is enabled or
	 * disabled.
	 */
	public string name;

	/**
	 * Indicates whether the game rule is enabled.
	 */
	public bool value;
	public bool unknown2;

	public pure nothrow @safe void encode(Buffer buffer) {
		with(buffer) {
			writeBytes(varuint.encode(cast(uint)name.length)); writeString(name);
			writeBigEndianBool(value);
			writeBigEndianBool(unknown2);
		}
	}

	public pure nothrow @safe void decode(Buffer buffer) {
		with(buffer) {
			uint bfz=varuint.decode(_buffer, &_index); name=readString(bfz);
			value=readBigEndianBool();
			unknown2=readBigEndianBool();
		}
	}

	public string toString() {
		return "Rule(name: " ~ std.conv.to!string(this.name) ~ ", value: " ~ std.conv.to!string(this.value) ~ ", unknown2: " ~ std.conv.to!string(this.unknown2) ~ ")";
	}

}
