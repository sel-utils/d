/*
 * This file was automatically generated by sel-utils and
 * released under the MIT License.
 * 
 * License: https://github.com/sel-project/sel-utils/blob/master/LICENSE
 * Repository: https://github.com/sel-project/sel-utils
 * Generated from https://github.com/sel-project/sel-utils/blob/master/xml/protocol/pocket132.xml
 */
module sul.protocol.pocket132.types;

import std.bitmanip : write, peek;
static import std.conv;
import std.system : Endian;
import std.typecons : Tuple;
import std.uuid : UUID;

import sul.utils.buffer;
import sul.utils.var;

static if(__traits(compiles, { import sul.metadata.pocket132; })) import sul.metadata.pocket132;

struct LoginBody {

	public enum string[] FIELDS = ["chain", "clientData"];

	public ubyte[] chain;
	public ubyte[] clientData;

	public pure nothrow @safe void encode(Buffer o_buffer) {
		Buffer buffer = new Buffer();
		with(buffer) {
			writeLittleEndianUint(cast(uint)chain.length); writeBytes(chain);
			writeLittleEndianUint(cast(uint)clientData.length); writeBytes(clientData);
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
			chain.length=readLittleEndianUint(); if(_buffer.length>=_index+chain.length){ chain=_buffer[_index.._index+chain.length].dup; _index+=chain.length; }
			clientData.length=readLittleEndianUint(); if(_buffer.length>=_index+clientData.length){ clientData=_buffer[_index.._index+clientData.length].dup; _index+=clientData.length; }
		}
	}

	public string toString() {
		return "LoginBody(chain: " ~ std.conv.to!string(this.chain) ~ ", clientData: " ~ std.conv.to!string(this.clientData) ~ ")";
	}

}

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

	public enum string[] FIELDS = ["id", "metaAndCount", "nbt", "canPlaceOn", "canDestroy"];

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
	public string[] canPlaceOn;
	public string[] canDestroy;

	public pure nothrow @safe void encode(Buffer buffer) {
		with(buffer) {
			writeBytes(varint.encode(id));
			if(id>0){ writeBytes(varint.encode(metaAndCount)); }
			if(id>0){ writeLittleEndianUshort(cast(ushort)nbt.length); writeBytes(nbt); }
			writeBytes(varuint.encode(cast(uint)canPlaceOn.length)); foreach(yfuxyvb;canPlaceOn){ writeBytes(varuint.encode(cast(uint)yfuxyvb.length)); writeString(yfuxyvb); }
			writeBytes(varuint.encode(cast(uint)canDestroy.length)); foreach(yfrvdje;canDestroy){ writeBytes(varuint.encode(cast(uint)yfrvdje.length)); writeString(yfrvdje); }
		}
	}

	public pure nothrow @safe void decode(Buffer buffer) {
		with(buffer) {
			id=varint.decode(_buffer, &_index);
			if(id>0){ metaAndCount=varint.decode(_buffer, &_index); }
			if(id>0){ nbt.length=readLittleEndianUshort(); if(_buffer.length>=_index+nbt.length){ nbt=_buffer[_index.._index+nbt.length].dup; _index+=nbt.length; } }
			canPlaceOn.length=varuint.decode(_buffer, &_index); foreach(ref yfuxyvb;canPlaceOn){ uint ezely=varuint.decode(_buffer, &_index); yfuxyvb=readString(ezely); }
			canDestroy.length=varuint.decode(_buffer, &_index); foreach(ref yfrvdje;canDestroy){ uint ezdrz=varuint.decode(_buffer, &_index); yfrvdje=readString(ezdrz); }
		}
	}

	public string toString() {
		return "Slot(id: " ~ std.conv.to!string(this.id) ~ ", metaAndCount: " ~ std.conv.to!string(this.metaAndCount) ~ ", nbt: " ~ std.conv.to!string(this.nbt) ~ ", canPlaceOn: " ~ std.conv.to!string(this.canPlaceOn) ~ ", canDestroy: " ~ std.conv.to!string(this.canDestroy) ~ ")";
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

struct McpeUuid {

	public enum string[] FIELDS = ["mostSignificantBits", "leastSignificantBits"];

	public long mostSignificantBits;
	public long leastSignificantBits;

	public pure nothrow @safe void encode(Buffer buffer) {
		with(buffer) {
			writeLittleEndianLong(mostSignificantBits);
			writeLittleEndianLong(leastSignificantBits);
		}
	}

	public pure nothrow @safe void decode(Buffer buffer) {
		with(buffer) {
			mostSignificantBits=readLittleEndianLong();
			leastSignificantBits=readLittleEndianLong();
		}
	}

	public string toString() {
		return "McpeUuid(mostSignificantBits: " ~ std.conv.to!string(this.mostSignificantBits) ~ ", leastSignificantBits: " ~ std.conv.to!string(this.leastSignificantBits) ~ ")";
	}

}

/**
 * Informations about a player that will be added to the player's list in the pause
 * menu.
 */
struct PlayerList {

	public enum string[] FIELDS = ["uuid", "entityId", "displayName", "skin", "unknown4"];

	/**
	 * UUID of the player. If it's associated with an XBOX Live account the player's profile
	 * will also be available in pause menu.
	 */
	public sul.protocol.pocket132.types.McpeUuid uuid;

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
	public sul.protocol.pocket132.types.Skin skin;
	public string unknown4;

	public pure nothrow @safe void encode(Buffer buffer) {
		with(buffer) {
			uuid.encode(bufferInstance);
			writeBytes(varlong.encode(entityId));
			writeBytes(varuint.encode(cast(uint)displayName.length)); writeString(displayName);
			skin.encode(bufferInstance);
			writeBytes(varuint.encode(cast(uint)unknown4.length)); writeString(unknown4);
		}
	}

	public pure nothrow @safe void decode(Buffer buffer) {
		with(buffer) {
			uuid.decode(bufferInstance);
			entityId=varlong.decode(_buffer, &_index);
			uint zlcxe5bu=varuint.decode(_buffer, &_index); displayName=readString(zlcxe5bu);
			skin.decode(bufferInstance);
			uint d5b9bq=varuint.decode(_buffer, &_index); unknown4=readString(d5b9bq);
		}
	}

	public string toString() {
		return "PlayerList(uuid: " ~ std.conv.to!string(this.uuid) ~ ", entityId: " ~ std.conv.to!string(this.entityId) ~ ", displayName: " ~ std.conv.to!string(this.displayName) ~ ", skin: " ~ std.conv.to!string(this.skin) ~ ", unknown4: " ~ std.conv.to!string(this.unknown4) ~ ")";
	}

}

/**
 * Player's skin.
 */
struct Skin {

	public enum string[] FIELDS = ["name", "data", "capeData", "geometryName", "geometryData"];

	/**
	 * Name of the skin. It's used to render the shape of the skin correctly.
	 */
	public string name;

	/**
	 * Bytes of the skin in format RGBA. The length should be 8192 or 16382.
	 */
	public ubyte[] data;
	public ubyte[] capeData;
	public string geometryName;
	public ubyte[] geometryData;

	public pure nothrow @safe void encode(Buffer buffer) {
		with(buffer) {
			writeBytes(varuint.encode(cast(uint)name.length)); writeString(name);
			writeBytes(varuint.encode(cast(uint)data.length)); writeBytes(data);
			writeBytes(varuint.encode(cast(uint)capeData.length)); writeBytes(capeData);
			writeBytes(varuint.encode(cast(uint)geometryName.length)); writeString(geometryName);
			writeBytes(varuint.encode(cast(uint)geometryData.length)); writeBytes(geometryData);
		}
	}

	public pure nothrow @safe void decode(Buffer buffer) {
		with(buffer) {
			uint bfz=varuint.decode(_buffer, &_index); name=readString(bfz);
			data.length=varuint.decode(_buffer, &_index); if(_buffer.length>=_index+data.length){ data=_buffer[_index.._index+data.length].dup; _index+=data.length; }
			capeData.length=varuint.decode(_buffer, &_index); if(_buffer.length>=_index+capeData.length){ capeData=_buffer[_index.._index+capeData.length].dup; _index+=capeData.length; }
			uint zvbvcly1=varuint.decode(_buffer, &_index); geometryName=readString(zvbvcly1);
			geometryData.length=varuint.decode(_buffer, &_index); if(_buffer.length>=_index+geometryData.length){ geometryData=_buffer[_index.._index+geometryData.length].dup; _index+=geometryData.length; }
		}
	}

	public string toString() {
		return "Skin(name: " ~ std.conv.to!string(this.name) ~ ", data: " ~ std.conv.to!string(this.data) ~ ", capeData: " ~ std.conv.to!string(this.capeData) ~ ", geometryName: " ~ std.conv.to!string(this.geometryName) ~ ", geometryData: " ~ std.conv.to!string(this.geometryData) ~ ")";
	}

}

struct Link {

	// action
	public enum ubyte ADD = 0;
	public enum ubyte RIDE = 1;
	public enum ubyte REMOVE = 2;

	public enum string[] FIELDS = ["from", "to", "action", "unknown3"];

	public long from;
	public long to;
	public ubyte action;
	public ubyte unknown3;

	public pure nothrow @safe void encode(Buffer buffer) {
		with(buffer) {
			writeBytes(varlong.encode(from));
			writeBytes(varlong.encode(to));
			writeLittleEndianUbyte(action);
			writeLittleEndianUbyte(unknown3);
		}
	}

	public pure nothrow @safe void decode(Buffer buffer) {
		with(buffer) {
			from=varlong.decode(_buffer, &_index);
			to=varlong.decode(_buffer, &_index);
			action=readLittleEndianUbyte();
			unknown3=readLittleEndianUbyte();
		}
	}

	public string toString() {
		return "Link(from: " ~ std.conv.to!string(this.from) ~ ", to: " ~ std.conv.to!string(this.to) ~ ", action: " ~ std.conv.to!string(this.action) ~ ", unknown3: " ~ std.conv.to!string(this.unknown3) ~ ")";
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

struct InventoryAction {

	// source
	public enum uint CONTAINER = 0;
	public enum uint WORLD = 2;
	public enum uint CREATIVE = 3;

	public enum string[] FIELDS = ["source", "container", "unknown2", "slot", "oldItem", "newItem"];

	public uint source;
	public int container = -1;
	public uint unknown2;
	public uint slot;
	public sul.protocol.pocket132.types.Slot oldItem;
	public sul.protocol.pocket132.types.Slot newItem;

	public pure nothrow @safe void encode(Buffer buffer) {
		with(buffer) {
			writeBytes(varuint.encode(source));
			if(source==0){ writeBytes(varint.encode(container)); }
			if(source==2){ writeBytes(varuint.encode(unknown2)); }
			writeBytes(varuint.encode(slot));
			oldItem.encode(bufferInstance);
			newItem.encode(bufferInstance);
		}
	}

	public pure nothrow @safe void decode(Buffer buffer) {
		with(buffer) {
			source=varuint.decode(_buffer, &_index);
			if(source==0){ container=varint.decode(_buffer, &_index); }
			if(source==2){ unknown2=varuint.decode(_buffer, &_index); }
			slot=varuint.decode(_buffer, &_index);
			oldItem.decode(bufferInstance);
			newItem.decode(bufferInstance);
		}
	}

	public string toString() {
		return "InventoryAction(source: " ~ std.conv.to!string(this.source) ~ ", container: " ~ std.conv.to!string(this.container) ~ ", unknown2: " ~ std.conv.to!string(this.unknown2) ~ ", slot: " ~ std.conv.to!string(this.slot) ~ ", oldItem: " ~ std.conv.to!string(this.oldItem) ~ ", newItem: " ~ std.conv.to!string(this.newItem) ~ ")";
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
	public sul.protocol.pocket132.types.Section[] sections;
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
	public sul.protocol.pocket132.types.ExtraData[] extraData;

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
			foreach(avzhc;heights){ writeLittleEndianUshort(avzhc); }
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
			foreach(ref avzhc;heights){ avzhc=readLittleEndianUshort(); }
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

	public enum string[] FIELDS = ["storageVersion", "blockIds", "blockMetas"];

	public ubyte storageVersion = 0;
	public ubyte[4096] blockIds;
	public ubyte[2048] blockMetas;

	public pure nothrow @safe void encode(Buffer buffer) {
		with(buffer) {
			writeLittleEndianUbyte(storageVersion);
			writeBytes(blockIds);
			writeBytes(blockMetas);
		}
	}

	public pure nothrow @safe void decode(Buffer buffer) {
		with(buffer) {
			storageVersion=readLittleEndianUbyte();
			if(_buffer.length>=_index+blockIds.length){ blockIds=_buffer[_index.._index+blockIds.length].dup; _index+=blockIds.length; }
			if(_buffer.length>=_index+blockMetas.length){ blockMetas=_buffer[_index.._index+blockMetas.length].dup; _index+=blockMetas.length; }
		}
	}

	public string toString() {
		return "Section(storageVersion: " ~ std.conv.to!string(this.storageVersion) ~ ", blockIds: " ~ std.conv.to!string(this.blockIds) ~ ", blockMetas: " ~ std.conv.to!string(this.blockMetas) ~ ")";
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
			writeLittleEndianUbyte(position.x); writeLittleEndianUbyte(position.z);
			writeBytes(varuint.encode(cast(uint)label.length)); writeString(label);
			writeLittleEndianUint(color);
		}
	}

	public pure nothrow @safe void decode(Buffer buffer) {
		with(buffer) {
			rotationAndIcon=varint.decode(_buffer, &_index);
			position.x=readLittleEndianUbyte(); position.z=readLittleEndianUbyte();
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
	public enum string COMMAND_BLOCK_OUTPUT = "commandblockoutput";
	public enum string DO_DAYLIGHT_CYCLE = "dodaylightcycle";
	public enum string DO_ENTITY_DROPS = "doentitydrops";
	public enum string DO_FIRE_TICK = "dofiretick";
	public enum string DO_MOB_LOOT = "domobloot";
	public enum string DO_MOB_SPAWNING = "domobspawning";
	public enum string DO_TILE_DROPS = "dotiledrops";
	public enum string DO_WEATHER_CYCLE = "doweathercycle";
	public enum string DROWNING_DAMAGE = "drowningdamage";
	public enum string FALL_DAMAGE = "falldamage";
	public enum string FIRE_DAMAGE = "firedamage";
	public enum string KEEP_INVENTORY = "keepinventory";
	public enum string MOB_GRIEFING = "mobgriefing";
	public enum string PVP = "pvp";
	public enum string SEND_COMMAND_FEEDBACK = "sendcommandfeedback";

	// type
	public enum ubyte BOOLEAN = 1;
	public enum ubyte INTEGER = 2;
	public enum ubyte FLOATING = 3;

	public enum string[] FIELDS = ["name", "type", "booleanValue", "integerValue", "floatingValue"];

	/**
	 * Name of the rule. Same of the `gamerule` command's field in the game.
	 * The behaviours indicated in the following constants' descriptions is enabled or
	 * disabled.
	 */
	public string name;
	public ubyte type;
	public bool booleanValue;
	public uint integerValue;
	public float floatingValue;

	public pure nothrow @safe void encode(Buffer buffer) {
		with(buffer) {
			writeBytes(varuint.encode(cast(uint)name.length)); writeString(name);
			writeLittleEndianUbyte(type);
			if(type==1){ writeLittleEndianBool(booleanValue); }
			if(type==2){ writeBytes(varuint.encode(integerValue)); }
			if(type==3){ writeLittleEndianFloat(floatingValue); }
		}
	}

	public pure nothrow @safe void decode(Buffer buffer) {
		with(buffer) {
			uint bfz=varuint.decode(_buffer, &_index); name=readString(bfz);
			type=readLittleEndianUbyte();
			if(type==1){ booleanValue=readLittleEndianBool(); }
			if(type==2){ integerValue=varuint.decode(_buffer, &_index); }
			if(type==3){ floatingValue=readLittleEndianFloat(); }
		}
	}

	public string toString() {
		return "Rule(name: " ~ std.conv.to!string(this.name) ~ ", type: " ~ std.conv.to!string(this.type) ~ ", booleanValue: " ~ std.conv.to!string(this.booleanValue) ~ ", integerValue: " ~ std.conv.to!string(this.integerValue) ~ ", floatingValue: " ~ std.conv.to!string(this.floatingValue) ~ ")";
	}

}

struct Enum {

	public enum string[] FIELDS = ["name", "valuesIndexes"];

	public string name;
	public ushort[] valuesIndexes;

	public pure nothrow @safe void encode(Buffer buffer) {
		with(buffer) {
			writeBytes(varuint.encode(cast(uint)name.length)); writeString(name);
			writeBytes(varuint.encode(cast(uint)valuesIndexes.length)); foreach(dfdvs5zh;valuesIndexes){ writeLittleEndianUshort(dfdvs5zh); }
		}
	}

	public pure nothrow @safe void decode(Buffer buffer) {
		with(buffer) {
			uint bfz=varuint.decode(_buffer, &_index); name=readString(bfz);
			valuesIndexes.length=varuint.decode(_buffer, &_index); foreach(ref dfdvs5zh;valuesIndexes){ dfdvs5zh=readLittleEndianUshort(); }
		}
	}

	public string toString() {
		return "Enum(name: " ~ std.conv.to!string(this.name) ~ ", valuesIndexes: " ~ std.conv.to!string(this.valuesIndexes) ~ ")";
	}

}

struct Command {

	public enum string[] FIELDS = ["name", "description", "unknown2", "permissionLevel", "aliasesEnum", "overloads"];

	public string name;
	public string description;
	public ubyte unknown2;
	public ubyte permissionLevel;
	public int aliasesEnum = -1;
	public sul.protocol.pocket132.types.Overload[] overloads;

	public pure nothrow @safe void encode(Buffer buffer) {
		with(buffer) {
			writeBytes(varuint.encode(cast(uint)name.length)); writeString(name);
			writeBytes(varuint.encode(cast(uint)description.length)); writeString(description);
			writeLittleEndianUbyte(unknown2);
			writeLittleEndianUbyte(permissionLevel);
			writeLittleEndianInt(aliasesEnum);
			writeBytes(varuint.encode(cast(uint)overloads.length)); foreach(bzcxyr;overloads){ bzcxyr.encode(bufferInstance); }
		}
	}

	public pure nothrow @safe void decode(Buffer buffer) {
		with(buffer) {
			uint bfz=varuint.decode(_buffer, &_index); name=readString(bfz);
			uint zvyjcrb4=varuint.decode(_buffer, &_index); description=readString(zvyjcrb4);
			unknown2=readLittleEndianUbyte();
			permissionLevel=readLittleEndianUbyte();
			aliasesEnum=readLittleEndianInt();
			overloads.length=varuint.decode(_buffer, &_index); foreach(ref bzcxyr;overloads){ bzcxyr.decode(bufferInstance); }
		}
	}

	public string toString() {
		return "Command(name: " ~ std.conv.to!string(this.name) ~ ", description: " ~ std.conv.to!string(this.description) ~ ", unknown2: " ~ std.conv.to!string(this.unknown2) ~ ", permissionLevel: " ~ std.conv.to!string(this.permissionLevel) ~ ", aliasesEnum: " ~ std.conv.to!string(this.aliasesEnum) ~ ", overloads: " ~ std.conv.to!string(this.overloads) ~ ")";
	}

}

struct Overload {

	public enum string[] FIELDS = ["parameters"];

	public sul.protocol.pocket132.types.Parameter[] parameters;

	public pure nothrow @safe void encode(Buffer buffer) {
		with(buffer) {
			writeBytes(varuint.encode(cast(uint)parameters.length)); foreach(cfy1dvc;parameters){ cfy1dvc.encode(bufferInstance); }
		}
	}

	public pure nothrow @safe void decode(Buffer buffer) {
		with(buffer) {
			parameters.length=varuint.decode(_buffer, &_index); foreach(ref cfy1dvc;parameters){ cfy1dvc.decode(bufferInstance); }
		}
	}

	public string toString() {
		return "Overload(parameters: " ~ std.conv.to!string(this.parameters) ~ ")";
	}

}

struct Parameter {

	// type
	public enum uint VALID = 1048576;
	public enum uint INT = 1;
	public enum uint FLOAT = 2;
	public enum uint MIXED = 3;
	public enum uint TARGET = 4;
	public enum uint STRING = 12;
	public enum uint POSITION = 13;
	public enum uint RAWTEXT = 16;
	public enum uint TEXT = 18;
	public enum uint JSON = 21;
	public enum uint COMMAND = 28;
	public enum uint ENUM = 2097152;
	public enum uint TEMPLATE = 16777216;

	public enum string[] FIELDS = ["name", "type", "optional"];

	public string name;
	public uint type;
	public bool optional;

	public pure nothrow @safe void encode(Buffer buffer) {
		with(buffer) {
			writeBytes(varuint.encode(cast(uint)name.length)); writeString(name);
			writeLittleEndianUint(type);
			writeLittleEndianBool(optional);
		}
	}

	public pure nothrow @safe void decode(Buffer buffer) {
		with(buffer) {
			uint bfz=varuint.decode(_buffer, &_index); name=readString(bfz);
			type=readLittleEndianUint();
			optional=readLittleEndianBool();
		}
	}

	public string toString() {
		return "Parameter(name: " ~ std.conv.to!string(this.name) ~ ", type: " ~ std.conv.to!string(this.type) ~ ", optional: " ~ std.conv.to!string(this.optional) ~ ")";
	}

}

