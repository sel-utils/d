/*
 * This file was automatically generated by sel-utils and
 * released under the GNU General Public License version 3.
 * 
 * License: https://github.com/sel-project/sel-utils/blob/master/LICENSE
 * Repository: https://github.com/sel-project/sel-utils
 * Generated from https://github.com/sel-project/sel-utils/blob/master/xml/protocol/hncom1.xml
 */
/**
 * Packets related to a player. The first field of every packet is an `hub id` that
 * uniquely identifies a player in the hub and never changes until it's disconnected.
 */
module sul.protocol.hncom1.player;

import std.bitmanip : write, peek;
static import std.conv;
import std.system : Endian;
import std.typetuple : TypeTuple;
import std.typecons : Tuple;
import std.uuid : UUID;

import sul.utils.buffer;
import sul.utils.var;

static import sul.protocol.hncom1.types;

static if(__traits(compiles, { import sul.metadata.hncom1; })) import sul.metadata.hncom1;

alias Packets = TypeTuple!(Add, Remove, Kick, Transfer, UpdateDisplayName, UpdateWorld, UpdateViewDistance, UpdateLanguage, UpdateInputMode, UpdateLatency, UpdatePacketLoss, GamePacket, OrderedGamePacket);

/**
 * Adds a player to the node.
 */
class Add : Buffer {

	public enum ubyte ID = 15;

	public enum bool CLIENTBOUND = true;
	public enum bool SERVERBOUND = false;

	// reason
	public enum ubyte FIRST_JOIN = 0;
	public enum ubyte TRANSFERRED = 1;
	public enum ubyte FORCIBLY_TRANSFERRED = 2;

	// input mode
	public enum ubyte KEYBOARD = 0;
	public enum ubyte TOUCH = 1;
	public enum ubyte CONTROLLER = 2;

	public enum string[] FIELDS = ["hubId", "reason", "type", "protocol", "vers", "username", "displayName", "dimension", "viewDistance", "clientAddress", "serverAddress", "serverPort", "uuid", "skin", "language", "inputMode", "latency"];

	public uint hubId;

	/**
	 * Reason for which the player has been added to the node.
	 */
	public ubyte reason;

	/**
	 * Game of the client, which could either be Minecraft or Minecraft: Pocket Edition.
	 */
	public ubyte type;

	/**
	 * Version of the protocol used by the client.
	 */
	public uint protocol;

	/**
	 * Version of the game used by the client, usually in the format major.minor[.patch],
	 * calculated by the server or passed by the client during the authentication process.
	 * The node should verify that the version exists and matches the protocol in the previous
	 * field.
	 */
	public string vers;

	/**
	 * Username of the player.
	 */
	public string username;

	/**
	 * Display name of the player, which can contain formatting codes. By default it's
	 * equals to the username but it can be updated by the node using UpdateDisplayName.
	 */
	public string displayName;

	/**
	 * Dimension in which the player was playing before being transferred. It could diffent
	 * from client's game type and version because the dimension's ids are different in
	 * Minecraft and Minecraft: Pocket Edition.
	 * It's used to send the game's change dimension packet to despawn old entities and
	 * delete old chunks.
	 */
	public byte dimension;

	/**
	 * Client's view distance (or chunk radius). See [UpdateViewDistance.viewDistance](#player_update-view-distance_view-distance)
	 * for more informations.
	 */
	public uint viewDistance;

	/**
	 * Remote address of the client.
	 */
	public sul.protocol.hncom1.types.Address clientAddress;

	/**
	 * Ip used by the client to connect to the server. The value of this field is the address
	 * the client has saved in its servers list. For example a client that joins through
	 * `localhost` and a client that joins through `127.0.0.1` will connect to the same
	 * server but the field of this value will be different (`localhost` for the first
	 * client and `127.0.0.1` for the second).
	 */
	public string serverAddress;

	/**
	 * Port used by the client to connect to the server.
	 */
	public ushort serverPort;

	/**
	 * Client's UUID, given by Mojang's or Microsoft's services if the server is in online
	 * mode or given by the client (and not verified) if the server is in offline mode.
	 */
	public UUID uuid;

	/**
	 * Client's skin, given by the client or downloaded from Mojang's services in online
	 * mode.
	 */
	public sul.protocol.hncom1.types.Skin skin;

	/**
	 * Client's language, in the same format as HubInfo.language, which should be updated
	 * from the node when the client changes it. See also UpdateLanguage.language.
	 */
	public string language;

	/**
	 * Client's input mode. See UpdateInputMode.inputMode for more informations.
	 */
	public ubyte inputMode;

	/**
	 * Client's latency (ping time). See UpdateLatency.latency for more informations.
	 */
	public uint latency;

	public pure nothrow @safe @nogc this() {}

	public pure nothrow @safe @nogc this(uint hubId, ubyte reason=ubyte.init, ubyte type=ubyte.init, uint protocol=uint.init, string vers=string.init, string username=string.init, string displayName=string.init, byte dimension=byte.init, uint viewDistance=uint.init, sul.protocol.hncom1.types.Address clientAddress=sul.protocol.hncom1.types.Address.init, string serverAddress=string.init, ushort serverPort=ushort.init, UUID uuid=UUID.init, sul.protocol.hncom1.types.Skin skin=sul.protocol.hncom1.types.Skin.init, string language=string.init, ubyte inputMode=ubyte.init, uint latency=uint.init) {
		this.hubId = hubId;
		this.reason = reason;
		this.type = type;
		this.protocol = protocol;
		this.vers = vers;
		this.username = username;
		this.displayName = displayName;
		this.dimension = dimension;
		this.viewDistance = viewDistance;
		this.clientAddress = clientAddress;
		this.serverAddress = serverAddress;
		this.serverPort = serverPort;
		this.uuid = uuid;
		this.skin = skin;
		this.language = language;
		this.inputMode = inputMode;
		this.latency = latency;
	}

	public pure nothrow @safe ubyte[] encode(bool writeId=true)() {
		_buffer.length = 0;
		static if(writeId){ writeBigEndianUbyte(ID); }
		writeBytes(varuint.encode(hubId));
		writeBigEndianUbyte(reason);
		writeBigEndianUbyte(type);
		writeBytes(varuint.encode(protocol));
		writeBytes(varuint.encode(cast(uint)vers.length)); writeString(vers);
		writeBytes(varuint.encode(cast(uint)username.length)); writeString(username);
		writeBytes(varuint.encode(cast(uint)displayName.length)); writeString(displayName);
		if(reason!=0){ writeBigEndianByte(dimension); }
		if(reason!=0){ writeBytes(varuint.encode(viewDistance)); }
		clientAddress.encode(bufferInstance);
		writeBytes(varuint.encode(cast(uint)serverAddress.length)); writeString(serverAddress);
		writeBigEndianUshort(serverPort);
		writeBytes(uuid.data);
		skin.encode(bufferInstance);
		writeBytes(varuint.encode(cast(uint)language.length)); writeString(language);
		writeBigEndianUbyte(inputMode);
		writeBytes(varuint.encode(latency));
		return _buffer;
	}

	public pure nothrow @safe void decode(bool readId=true)() {
		static if(readId){ ubyte _id; _id=readBigEndianUbyte(); }
		hubId=varuint.decode(_buffer, &_index);
		reason=readBigEndianUbyte();
		type=readBigEndianUbyte();
		protocol=varuint.decode(_buffer, &_index);
		uint dvc=varuint.decode(_buffer, &_index); vers=readString(dvc);
		uint dnc5bu=varuint.decode(_buffer, &_index); username=readString(dnc5bu);
		uint zlcxe5bu=varuint.decode(_buffer, &_index); displayName=readString(zlcxe5bu);
		if(reason!=0){ dimension=readBigEndianByte(); }
		if(reason!=0){ viewDistance=varuint.decode(_buffer, &_index); }
		clientAddress.decode(bufferInstance);
		uint cvdvqrcv=varuint.decode(_buffer, &_index); serverAddress=readString(cvdvqrcv);
		serverPort=readBigEndianUshort();
		if(_buffer.length>=_index+16){ ubyte[16] dvz=_buffer[_index.._index+16].dup; _index+=16; uuid=UUID(dvz); }
		skin.decode(bufferInstance);
		uint bfzvzu=varuint.decode(_buffer, &_index); language=readString(bfzvzu);
		inputMode=readBigEndianUbyte();
		latency=varuint.decode(_buffer, &_index);
	}

	public static pure nothrow @safe Add fromBuffer(bool readId=true)(ubyte[] buffer) {
		Add ret = new Add();
		ret._buffer = buffer;
		ret.decode!readId();
		return ret;
	}

	public override string toString() {
		return "Add(hubId: " ~ std.conv.to!string(this.hubId) ~ ", reason: " ~ std.conv.to!string(this.reason) ~ ", type: " ~ std.conv.to!string(this.type) ~ ", protocol: " ~ std.conv.to!string(this.protocol) ~ ", vers: " ~ std.conv.to!string(this.vers) ~ ", username: " ~ std.conv.to!string(this.username) ~ ", displayName: " ~ std.conv.to!string(this.displayName) ~ ", dimension: " ~ std.conv.to!string(this.dimension) ~ ", viewDistance: " ~ std.conv.to!string(this.viewDistance) ~ ", clientAddress: " ~ std.conv.to!string(this.clientAddress) ~ ", serverAddress: " ~ std.conv.to!string(this.serverAddress) ~ ", serverPort: " ~ std.conv.to!string(this.serverPort) ~ ", uuid: " ~ std.conv.to!string(this.uuid) ~ ", skin: " ~ std.conv.to!string(this.skin) ~ ", language: " ~ std.conv.to!string(this.language) ~ ", inputMode: " ~ std.conv.to!string(this.inputMode) ~ ", latency: " ~ std.conv.to!string(this.latency) ~ ")";
	}

	alias _encode = encode;

	enum string variantField = "type";

	alias Variants = TypeTuple!(Pocket, Minecraft, Console);

	/**
	 * A Minecraft: Pocket Edition client.
	 */
	public class Pocket {

		public enum typeof(type) TYPE = 1;

		// device os
		public enum ubyte UNKNOWN = 0;
		public enum ubyte ANDROID = 1;
		public enum ubyte IOS = 2;
		public enum ubyte FIRE_OS = 3;
		public enum ubyte GEAR_VR = 4;
		public enum ubyte APPLE_TV = 5;
		public enum ubyte FIRE_TV = 6;
		public enum ubyte WINDOWS10 = 7;

		public enum string[] FIELDS = ["xuid", "edu", "packetLoss", "deviceOs", "deviceModel"];

		/**
		 * XBOX Live id, which is a unique identifier for authenticated players or 0 if the
		 * server is in offline mode.
		 */
		public long xuid;

		/**
		 * Indicates whether the client is using the Education Edition variant of the game.
		 */
		public bool edu;

		/**
		 * Client's packet loss calculated from the hub. See UpdatePacketLoss.packetLoss for
		 * more informations.
		 */
		public float packetLoss;

		/**
		 * Client's operative system, if supplied by the client. This field's value may be
		 * used to divide players that play from a phone from players that play on a computer.
		 */
		public ubyte deviceOs;

		/**
		 * Client's device model, if supplied by the client. This field is usually a string
		 * in the format `MANUFACTURER MODEL`: for example, the Oneplus one is `ONEPLUS A0001`.
		 * This field's value may be used to ban low-end devices.
		 */
		public string deviceModel;

		public pure nothrow @safe @nogc this() {}

		public pure nothrow @safe @nogc this(long xuid, bool edu=bool.init, float packetLoss=float.init, ubyte deviceOs=ubyte.init, string deviceModel=string.init) {
			this.xuid = xuid;
			this.edu = edu;
			this.packetLoss = packetLoss;
			this.deviceOs = deviceOs;
			this.deviceModel = deviceModel;
		}

		public pure nothrow @safe ubyte[] encode(bool writeId=true)() {
			type = 1;
			_encode!writeId();
			writeBytes(varlong.encode(xuid));
			writeBigEndianBool(edu);
			writeBigEndianFloat(packetLoss);
			writeBigEndianUbyte(deviceOs);
			writeBytes(varuint.encode(cast(uint)deviceModel.length)); writeString(deviceModel);
			return _buffer;
		}

		public pure nothrow @safe void decode() {
			xuid=varlong.decode(_buffer, &_index);
			edu=readBigEndianBool();
			packetLoss=readBigEndianFloat();
			deviceOs=readBigEndianUbyte();
			uint zvant9zw=varuint.decode(_buffer, &_index); deviceModel=readString(zvant9zw);
		}

		public override string toString() {
			return "Add.Pocket(xuid: " ~ std.conv.to!string(this.xuid) ~ ", edu: " ~ std.conv.to!string(this.edu) ~ ", packetLoss: " ~ std.conv.to!string(this.packetLoss) ~ ", deviceOs: " ~ std.conv.to!string(this.deviceOs) ~ ", deviceModel: " ~ std.conv.to!string(this.deviceModel) ~ ")";
		}

	}

	/**
	 * A Minecraft client. Currently there are no additional fields.
	 */
	public class Minecraft {

		public enum typeof(type) TYPE = 2;

		public enum string[] FIELDS = [];

		public pure nothrow @safe ubyte[] encode(bool writeId=true)() {
			type = 2;
			_encode!writeId();
			return _buffer;
		}

		public pure nothrow @safe void decode() {
		}

		public override string toString() {
			return "Add.Minecraft()";
		}

	}

	public class Console {

		public enum typeof(type) TYPE = 3;

		public enum string[] FIELDS = [];

		public pure nothrow @safe ubyte[] encode(bool writeId=true)() {
			type = 3;
			_encode!writeId();
			return _buffer;
		}

		public pure nothrow @safe void decode() {
		}

		public override string toString() {
			return "Add.Console()";
		}

	}

}

/**
 * Removes a player from the node. If the player is removed using Kick or Transfer
 * this packet is not sent.
 */
class Remove : Buffer {

	public enum ubyte ID = 16;

	public enum bool CLIENTBOUND = true;
	public enum bool SERVERBOUND = false;

	// reason
	public enum ubyte LEFT = 0;
	public enum ubyte TIMED_OUT = 1;
	public enum ubyte KICKED = 2;
	public enum ubyte TRANSFERRED = 3;

	public enum string[] FIELDS = ["hubId", "reason"];

	public uint hubId;

	/**
	 * Reason of the disconnection.
	 */
	public ubyte reason;

	public pure nothrow @safe @nogc this() {}

	public pure nothrow @safe @nogc this(uint hubId, ubyte reason=ubyte.init) {
		this.hubId = hubId;
		this.reason = reason;
	}

	public pure nothrow @safe ubyte[] encode(bool writeId=true)() {
		_buffer.length = 0;
		static if(writeId){ writeBigEndianUbyte(ID); }
		writeBytes(varuint.encode(hubId));
		writeBigEndianUbyte(reason);
		return _buffer;
	}

	public pure nothrow @safe void decode(bool readId=true)() {
		static if(readId){ ubyte _id; _id=readBigEndianUbyte(); }
		hubId=varuint.decode(_buffer, &_index);
		reason=readBigEndianUbyte();
	}

	public static pure nothrow @safe Remove fromBuffer(bool readId=true)(ubyte[] buffer) {
		Remove ret = new Remove();
		ret._buffer = buffer;
		ret.decode!readId();
		return ret;
	}

	public override string toString() {
		return "Remove(hubId: " ~ std.conv.to!string(this.hubId) ~ ", reason: " ~ std.conv.to!string(this.reason) ~ ")";
	}

}

/**
 * Kicks a player from the node and the whole server. When a player is disconnected
 * from the node using this packet the hub will not send the Remove packet.
 */
class Kick : Buffer {

	public enum ubyte ID = 17;

	public enum bool CLIENTBOUND = false;
	public enum bool SERVERBOUND = true;

	public enum string[] FIELDS = ["hubId", "reason", "translation", "parameters"];

	public uint hubId;

	/**
	 * Reason of the disconnection that will be displayed in the client's disconnection
	 * screen.
	 */
	public string reason;

	/**
	 * Whether the previous string should be translated client-side or not.
	 */
	public bool translation;

	/**
	 * Optional parameters for the translation.
	 */
	public string[] parameters;

	public pure nothrow @safe @nogc this() {}

	public pure nothrow @safe @nogc this(uint hubId, string reason=string.init, bool translation=bool.init, string[] parameters=(string[]).init) {
		this.hubId = hubId;
		this.reason = reason;
		this.translation = translation;
		this.parameters = parameters;
	}

	public pure nothrow @safe ubyte[] encode(bool writeId=true)() {
		_buffer.length = 0;
		static if(writeId){ writeBigEndianUbyte(ID); }
		writeBytes(varuint.encode(hubId));
		writeBytes(varuint.encode(cast(uint)reason.length)); writeString(reason);
		writeBigEndianBool(translation);
		if(translation==true){ writeBytes(varuint.encode(cast(uint)parameters.length)); foreach(cfy1dvc;parameters){ writeBytes(varuint.encode(cast(uint)cfy1dvc.length)); writeString(cfy1dvc); } }
		return _buffer;
	}

	public pure nothrow @safe void decode(bool readId=true)() {
		static if(readId){ ubyte _id; _id=readBigEndianUbyte(); }
		hubId=varuint.decode(_buffer, &_index);
		uint cvc9=varuint.decode(_buffer, &_index); reason=readString(cvc9);
		translation=readBigEndianBool();
		if(translation==true){ parameters.length=varuint.decode(_buffer, &_index); foreach(ref cfy1dvc;parameters){ uint yzmry=varuint.decode(_buffer, &_index); cfy1dvc=readString(yzmry); } }
	}

	public static pure nothrow @safe Kick fromBuffer(bool readId=true)(ubyte[] buffer) {
		Kick ret = new Kick();
		ret._buffer = buffer;
		ret.decode!readId();
		return ret;
	}

	public override string toString() {
		return "Kick(hubId: " ~ std.conv.to!string(this.hubId) ~ ", reason: " ~ std.conv.to!string(this.reason) ~ ", translation: " ~ std.conv.to!string(this.translation) ~ ", parameters: " ~ std.conv.to!string(this.parameters) ~ ")";
	}

}

/**
 * Transfers a player to another node. When a player is transferred from the node the
 * hub will not send the Remove packet and there's no way, for the node, to know whether
 * the player was disconnected or successfully transferred, if not using messages through
 * a user-defined protocol.
 */
class Transfer : Buffer {

	public enum ubyte ID = 18;

	public enum bool CLIENTBOUND = false;
	public enum bool SERVERBOUND = true;

	// on fail
	public enum ubyte DISCONNECT = 0;
	public enum ubyte AUTO = 1;
	public enum ubyte RECONNECT = 2;

	public enum string[] FIELDS = ["hubId", "node", "onFail"];

	public uint hubId;

	/**
	 * Id of the node that player will be transferred to. It should be an id of a connected
	 * node (which can be calculated using AddNode and RemoveNode), otherwise the player
	 * will be disconnected or moved to another node (see the following field).
	 */
	public uint node;

	/**
	 * Indicates the action to be taken when a transfer fails because the indicated node
	 * is not connected anymore or it cannot accept the given player's game type or protocol.
	 * If the indicated node is full the player will be simply disconnected with the `Server
	 * Full` message.
	 */
	public ubyte onFail;

	public pure nothrow @safe @nogc this() {}

	public pure nothrow @safe @nogc this(uint hubId, uint node=uint.init, ubyte onFail=ubyte.init) {
		this.hubId = hubId;
		this.node = node;
		this.onFail = onFail;
	}

	public pure nothrow @safe ubyte[] encode(bool writeId=true)() {
		_buffer.length = 0;
		static if(writeId){ writeBigEndianUbyte(ID); }
		writeBytes(varuint.encode(hubId));
		writeBytes(varuint.encode(node));
		writeBigEndianUbyte(onFail);
		return _buffer;
	}

	public pure nothrow @safe void decode(bool readId=true)() {
		static if(readId){ ubyte _id; _id=readBigEndianUbyte(); }
		hubId=varuint.decode(_buffer, &_index);
		node=varuint.decode(_buffer, &_index);
		onFail=readBigEndianUbyte();
	}

	public static pure nothrow @safe Transfer fromBuffer(bool readId=true)(ubyte[] buffer) {
		Transfer ret = new Transfer();
		ret._buffer = buffer;
		ret.decode!readId();
		return ret;
	}

	public override string toString() {
		return "Transfer(hubId: " ~ std.conv.to!string(this.hubId) ~ ", node: " ~ std.conv.to!string(this.node) ~ ", onFail: " ~ std.conv.to!string(this.onFail) ~ ")";
	}

}

/**
 * Updates the player's display name when it changes.
 */
class UpdateDisplayName : Buffer {

	public enum ubyte ID = 19;

	public enum bool CLIENTBOUND = false;
	public enum bool SERVERBOUND = true;

	public enum string[] FIELDS = ["hubId", "displayName"];

	public uint hubId;

	/**
	 * Player's display name that can contain formatting codes. Prefixes and suffixes should
	 * be avoided.
	 */
	public string displayName;

	public pure nothrow @safe @nogc this() {}

	public pure nothrow @safe @nogc this(uint hubId, string displayName=string.init) {
		this.hubId = hubId;
		this.displayName = displayName;
	}

	public pure nothrow @safe ubyte[] encode(bool writeId=true)() {
		_buffer.length = 0;
		static if(writeId){ writeBigEndianUbyte(ID); }
		writeBytes(varuint.encode(hubId));
		writeBytes(varuint.encode(cast(uint)displayName.length)); writeString(displayName);
		return _buffer;
	}

	public pure nothrow @safe void decode(bool readId=true)() {
		static if(readId){ ubyte _id; _id=readBigEndianUbyte(); }
		hubId=varuint.decode(_buffer, &_index);
		uint zlcxe5bu=varuint.decode(_buffer, &_index); displayName=readString(zlcxe5bu);
	}

	public static pure nothrow @safe UpdateDisplayName fromBuffer(bool readId=true)(ubyte[] buffer) {
		UpdateDisplayName ret = new UpdateDisplayName();
		ret._buffer = buffer;
		ret.decode!readId();
		return ret;
	}

	public override string toString() {
		return "UpdateDisplayName(hubId: " ~ std.conv.to!string(this.hubId) ~ ", displayName: " ~ std.conv.to!string(this.displayName) ~ ")";
	}

}

/**
 * Updates player's world and dimension.
 */
class UpdateWorld : Buffer {

	public enum ubyte ID = 20;

	public enum bool CLIENTBOUND = false;
	public enum bool SERVERBOUND = true;

	public enum string[] FIELDS = ["hubId", "world", "dimension"];

	public uint hubId;

	/**
	 * World's name, used mainly for display purposes.
	 */
	public string world;

	/**
	 * World's dimension, that may differ from Minecraft's version. It's used for synchronise
	 * entities and chunks when changing node as described at Add.dimension.
	 */
	public byte dimension;

	public pure nothrow @safe @nogc this() {}

	public pure nothrow @safe @nogc this(uint hubId, string world=string.init, byte dimension=byte.init) {
		this.hubId = hubId;
		this.world = world;
		this.dimension = dimension;
	}

	public pure nothrow @safe ubyte[] encode(bool writeId=true)() {
		_buffer.length = 0;
		static if(writeId){ writeBigEndianUbyte(ID); }
		writeBytes(varuint.encode(hubId));
		writeBytes(varuint.encode(cast(uint)world.length)); writeString(world);
		writeBigEndianByte(dimension);
		return _buffer;
	}

	public pure nothrow @safe void decode(bool readId=true)() {
		static if(readId){ ubyte _id; _id=readBigEndianUbyte(); }
		hubId=varuint.decode(_buffer, &_index);
		uint d9bq=varuint.decode(_buffer, &_index); world=readString(d9bq);
		dimension=readBigEndianByte();
	}

	public static pure nothrow @safe UpdateWorld fromBuffer(bool readId=true)(ubyte[] buffer) {
		UpdateWorld ret = new UpdateWorld();
		ret._buffer = buffer;
		ret.decode!readId();
		return ret;
	}

	public override string toString() {
		return "UpdateWorld(hubId: " ~ std.conv.to!string(this.hubId) ~ ", world: " ~ std.conv.to!string(this.world) ~ ", dimension: " ~ std.conv.to!string(this.dimension) ~ ")";
	}

}

/**
 * Update's the player's view distance (or chunk radius). This packet is sent when
 * the client updates its view distance and the server accepts it.
 */
class UpdateViewDistance : Buffer {

	public enum ubyte ID = 21;

	public enum bool CLIENTBOUND = false;
	public enum bool SERVERBOUND = true;

	public enum string[] FIELDS = ["hubId", "viewDistance"];

	public uint hubId;
	public uint viewDistance;

	public pure nothrow @safe @nogc this() {}

	public pure nothrow @safe @nogc this(uint hubId, uint viewDistance=uint.init) {
		this.hubId = hubId;
		this.viewDistance = viewDistance;
	}

	public pure nothrow @safe ubyte[] encode(bool writeId=true)() {
		_buffer.length = 0;
		static if(writeId){ writeBigEndianUbyte(ID); }
		writeBytes(varuint.encode(hubId));
		writeBytes(varuint.encode(viewDistance));
		return _buffer;
	}

	public pure nothrow @safe void decode(bool readId=true)() {
		static if(readId){ ubyte _id; _id=readBigEndianUbyte(); }
		hubId=varuint.decode(_buffer, &_index);
		viewDistance=varuint.decode(_buffer, &_index);
	}

	public static pure nothrow @safe UpdateViewDistance fromBuffer(bool readId=true)(ubyte[] buffer) {
		UpdateViewDistance ret = new UpdateViewDistance();
		ret._buffer = buffer;
		ret.decode!readId();
		return ret;
	}

	public override string toString() {
		return "UpdateViewDistance(hubId: " ~ std.conv.to!string(this.hubId) ~ ", viewDistance: " ~ std.conv.to!string(this.viewDistance) ~ ")";
	}

}

/**
 * Updates the player's language when the client changes it.
 */
class UpdateLanguage : Buffer {

	public enum ubyte ID = 22;

	public enum bool CLIENTBOUND = false;
	public enum bool SERVERBOUND = true;

	public enum string[] FIELDS = ["hubId", "language"];

	public uint hubId;

	/**
	 * Player's language in the same format as HubInfo.language.
	 */
	public string language;

	public pure nothrow @safe @nogc this() {}

	public pure nothrow @safe @nogc this(uint hubId, string language=string.init) {
		this.hubId = hubId;
		this.language = language;
	}

	public pure nothrow @safe ubyte[] encode(bool writeId=true)() {
		_buffer.length = 0;
		static if(writeId){ writeBigEndianUbyte(ID); }
		writeBytes(varuint.encode(hubId));
		writeBytes(varuint.encode(cast(uint)language.length)); writeString(language);
		return _buffer;
	}

	public pure nothrow @safe void decode(bool readId=true)() {
		static if(readId){ ubyte _id; _id=readBigEndianUbyte(); }
		hubId=varuint.decode(_buffer, &_index);
		uint bfzvzu=varuint.decode(_buffer, &_index); language=readString(bfzvzu);
	}

	public static pure nothrow @safe UpdateLanguage fromBuffer(bool readId=true)(ubyte[] buffer) {
		UpdateLanguage ret = new UpdateLanguage();
		ret._buffer = buffer;
		ret.decode!readId();
		return ret;
	}

	public override string toString() {
		return "UpdateLanguage(hubId: " ~ std.conv.to!string(this.hubId) ~ ", language: " ~ std.conv.to!string(this.language) ~ ")";
	}

}

/**
 * Update the player's current input mode.
 */
class UpdateInputMode : Buffer {

	public enum ubyte ID = 23;

	public enum bool CLIENTBOUND = true;
	public enum bool SERVERBOUND = false;

	// input mode
	public enum ubyte KEYBOARD = 0;
	public enum ubyte TOUCH = 1;
	public enum ubyte CONTROLLER = 2;

	public enum string[] FIELDS = ["hubId", "inputMode"];

	public uint hubId;

	/**
	 * Player's input mode.
	 */
	public ubyte inputMode;

	public pure nothrow @safe @nogc this() {}

	public pure nothrow @safe @nogc this(uint hubId, ubyte inputMode=ubyte.init) {
		this.hubId = hubId;
		this.inputMode = inputMode;
	}

	public pure nothrow @safe ubyte[] encode(bool writeId=true)() {
		_buffer.length = 0;
		static if(writeId){ writeBigEndianUbyte(ID); }
		writeBytes(varuint.encode(hubId));
		writeBigEndianUbyte(inputMode);
		return _buffer;
	}

	public pure nothrow @safe void decode(bool readId=true)() {
		static if(readId){ ubyte _id; _id=readBigEndianUbyte(); }
		hubId=varuint.decode(_buffer, &_index);
		inputMode=readBigEndianUbyte();
	}

	public static pure nothrow @safe UpdateInputMode fromBuffer(bool readId=true)(ubyte[] buffer) {
		UpdateInputMode ret = new UpdateInputMode();
		ret._buffer = buffer;
		ret.decode!readId();
		return ret;
	}

	public override string toString() {
		return "UpdateInputMode(hubId: " ~ std.conv.to!string(this.hubId) ~ ", inputMode: " ~ std.conv.to!string(this.inputMode) ~ ")";
	}

}

/**
 * Updates the latency between the player and the hub.
 */
class UpdateLatency : Buffer {

	public enum ubyte ID = 24;

	public enum bool CLIENTBOUND = true;
	public enum bool SERVERBOUND = false;

	public enum string[] FIELDS = ["hubId", "latency"];

	public uint hubId;

	/**
	 * Player's latency in milliseconds. The latency between the client and the node is
	 * then calculated adding the latency between the node and the hub (calculated using
	 * HubInfo.time) to this field's value.
	 */
	public uint latency;

	public pure nothrow @safe @nogc this() {}

	public pure nothrow @safe @nogc this(uint hubId, uint latency=uint.init) {
		this.hubId = hubId;
		this.latency = latency;
	}

	public pure nothrow @safe ubyte[] encode(bool writeId=true)() {
		_buffer.length = 0;
		static if(writeId){ writeBigEndianUbyte(ID); }
		writeBytes(varuint.encode(hubId));
		writeBytes(varuint.encode(latency));
		return _buffer;
	}

	public pure nothrow @safe void decode(bool readId=true)() {
		static if(readId){ ubyte _id; _id=readBigEndianUbyte(); }
		hubId=varuint.decode(_buffer, &_index);
		latency=varuint.decode(_buffer, &_index);
	}

	public static pure nothrow @safe UpdateLatency fromBuffer(bool readId=true)(ubyte[] buffer) {
		UpdateLatency ret = new UpdateLatency();
		ret._buffer = buffer;
		ret.decode!readId();
		return ret;
	}

	public override string toString() {
		return "UpdateLatency(hubId: " ~ std.conv.to!string(this.hubId) ~ ", latency: " ~ std.conv.to!string(this.latency) ~ ")";
	}

}

/**
 * Updates the player's packet loss if it uses a connectionless protocol like UDP.
 */
class UpdatePacketLoss : Buffer {

	public enum ubyte ID = 25;

	public enum bool CLIENTBOUND = true;
	public enum bool SERVERBOUND = false;

	public enum string[] FIELDS = ["hubId", "packetLoss"];

	public uint hubId;

	/**
	 * Percentage of lost packets in range 0 (no packet lost) to 100 (every packet lost).
	 */
	public float packetLoss;

	public pure nothrow @safe @nogc this() {}

	public pure nothrow @safe @nogc this(uint hubId, float packetLoss=float.init) {
		this.hubId = hubId;
		this.packetLoss = packetLoss;
	}

	public pure nothrow @safe ubyte[] encode(bool writeId=true)() {
		_buffer.length = 0;
		static if(writeId){ writeBigEndianUbyte(ID); }
		writeBytes(varuint.encode(hubId));
		writeBigEndianFloat(packetLoss);
		return _buffer;
	}

	public pure nothrow @safe void decode(bool readId=true)() {
		static if(readId){ ubyte _id; _id=readBigEndianUbyte(); }
		hubId=varuint.decode(_buffer, &_index);
		packetLoss=readBigEndianFloat();
	}

	public static pure nothrow @safe UpdatePacketLoss fromBuffer(bool readId=true)(ubyte[] buffer) {
		UpdatePacketLoss ret = new UpdatePacketLoss();
		ret._buffer = buffer;
		ret.decode!readId();
		return ret;
	}

	public override string toString() {
		return "UpdatePacketLoss(hubId: " ~ std.conv.to!string(this.hubId) ~ ", packetLoss: " ~ std.conv.to!string(this.packetLoss) ~ ")";
	}

}

/**
 * Sends data to client or handles data received from the client.
 */
class GamePacket : Buffer {

	public enum ubyte ID = 26;

	public enum bool CLIENTBOUND = true;
	public enum bool SERVERBOUND = true;

	public enum string[] FIELDS = ["hubId", "packet"];

	public uint hubId;

	/**
	 * Serialised packet ready to be encrypted or encapsulated and sent to the client when
	 * this packet is serverbound or packet already unencrypted and uncompressed ready
	 * to be handled by the node otherwise.
	 * 
	 * <h4>Format</h4>
	 * 
	 * <h5>Minecraft (serverbound)</h5>
	 * The packet is prefixed with a varuint-encoded 0 if the packet is not compressed
	 * or with the uncompressed packet's length encoded as a varuint if the packet is compressed.
	 * 
	 * <h5>Minecraft (clientbound)</h5>
	 * The packet is already unencrypted and uncompressed and ready to be handled as a
	 * serverbound packet.
	 * 
	 * <h5>Minecraft: Pocket Edition (serverbound)</h5>
	 * The packet is simply encoded (may be compressed in a Batch packet) and ready to
	 * be encapsulated using RakNet.
	 * 
	 * <h5>Minecraft: Pocket Edition (clientbound)</h5>
	 * The packet is already unencrypted and uncompressed if it was a Batch packet and
	 * ready to be handled as a serverbound packet.
	 */
	public ubyte[] packet;

	public pure nothrow @safe @nogc this() {}

	public pure nothrow @safe @nogc this(uint hubId, ubyte[] packet=(ubyte[]).init) {
		this.hubId = hubId;
		this.packet = packet;
	}

	public pure nothrow @safe ubyte[] encode(bool writeId=true)() {
		_buffer.length = 0;
		static if(writeId){ writeBigEndianUbyte(ID); }
		writeBytes(varuint.encode(hubId));
		writeBytes(packet);
		return _buffer;
	}

	public pure nothrow @safe void decode(bool readId=true)() {
		static if(readId){ ubyte _id; _id=readBigEndianUbyte(); }
		hubId=varuint.decode(_buffer, &_index);
		packet=_buffer[_index..$].dup; _index=_buffer.length;
	}

	public static pure nothrow @safe GamePacket fromBuffer(bool readId=true)(ubyte[] buffer) {
		GamePacket ret = new GamePacket();
		ret._buffer = buffer;
		ret.decode!readId();
		return ret;
	}

	public override string toString() {
		return "GamePacket(hubId: " ~ std.conv.to!string(this.hubId) ~ ", packet: " ~ std.conv.to!string(this.packet) ~ ")";
	}

}

/**
 * Sends data to the client but order it because it could be sent by the node unordered,
 * due to compressed packet sent delayed.
 */
class OrderedGamePacket : Buffer {

	public enum ubyte ID = 27;

	public enum bool CLIENTBOUND = false;
	public enum bool SERVERBOUND = true;

	public enum string[] FIELDS = ["hubId", "order", "packet"];

	public uint hubId;

	/**
	 * Order of the packet. If the hub receives a packet with an id different from 0 or
	 * the latest ordered packet's order + 1 it should wait for the packets with the missing
	 * order(s) before sending.
	 */
	public uint order;

	/**
	 * Serialised packet (see GamePacket.packet).
	 */
	public ubyte[] packet;

	public pure nothrow @safe @nogc this() {}

	public pure nothrow @safe @nogc this(uint hubId, uint order=uint.init, ubyte[] packet=(ubyte[]).init) {
		this.hubId = hubId;
		this.order = order;
		this.packet = packet;
	}

	public pure nothrow @safe ubyte[] encode(bool writeId=true)() {
		_buffer.length = 0;
		static if(writeId){ writeBigEndianUbyte(ID); }
		writeBytes(varuint.encode(hubId));
		writeBytes(varuint.encode(order));
		writeBytes(packet);
		return _buffer;
	}

	public pure nothrow @safe void decode(bool readId=true)() {
		static if(readId){ ubyte _id; _id=readBigEndianUbyte(); }
		hubId=varuint.decode(_buffer, &_index);
		order=varuint.decode(_buffer, &_index);
		packet=_buffer[_index..$].dup; _index=_buffer.length;
	}

	public static pure nothrow @safe OrderedGamePacket fromBuffer(bool readId=true)(ubyte[] buffer) {
		OrderedGamePacket ret = new OrderedGamePacket();
		ret._buffer = buffer;
		ret.decode!readId();
		return ret;
	}

	public override string toString() {
		return "OrderedGamePacket(hubId: " ~ std.conv.to!string(this.hubId) ~ ", order: " ~ std.conv.to!string(this.order) ~ ", packet: " ~ std.conv.to!string(this.packet) ~ ")";
	}

}