/*
 * This file was automatically generated by sel-utils and
 * released under the GNU General Public License version 3.
 * 
 * License: https://github.com/sel-project/sel-utils/blob/master/LICENSE
 * Repository: https://github.com/sel-project/sel-utils
 * Generated from https://github.com/sel-project/sel-utils/blob/master/xml/protocol/hncom1.xml
 */
/**
 * Packets used during the authentication process to exchange informations.
 */
module sul.protocol.hncom1.login;

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

alias Packets = TypeTuple!(ConnectionRequest, ConnectionResponse, HubInfo, NodeInfo);

/**
 * First real packet sent by the client with its informations.
 */
class ConnectionRequest : Buffer {

	public enum ubyte ID = 1;

	public enum bool CLIENTBOUND = false;
	public enum bool SERVERBOUND = true;

	public enum string[] FIELDS = ["protocol", "password", "name", "main"];

	/**
	 * Version of the protocol used by the client that must match the hub's one.
	 */
	public uint protocol;

	/**
	 * Password, if the hub requires one, or an empty string.
	 */
	public string password;

	/**
	 * Name of the node that will be validated by the hub. It should always be lowercase
	 * and only contain letters, numbers, dashes and underscores.
	 */
	public string name;

	/**
	 * Indicates whether the node accepts clients when they first connect to the hub or
	 * exclusively when they are manually transferred.
	 */
	public bool main = true;

	public pure nothrow @safe @nogc this() {}

	public pure nothrow @safe @nogc this(uint protocol, string password=string.init, string name=string.init, bool main=true) {
		this.protocol = protocol;
		this.password = password;
		this.name = name;
		this.main = main;
	}

	public pure nothrow @safe ubyte[] encode(bool writeId=true)() {
		_buffer.length = 0;
		static if(writeId){ writeBigEndianUbyte(ID); }
		writeBytes(varuint.encode(protocol));
		writeBytes(varuint.encode(cast(uint)password.length)); writeString(password);
		writeBytes(varuint.encode(cast(uint)name.length)); writeString(name);
		writeBigEndianBool(main);
		return _buffer;
	}

	public pure nothrow @safe void decode(bool readId=true)() {
		static if(readId){ ubyte _id; _id=readBigEndianUbyte(); }
		protocol=varuint.decode(_buffer, &_index);
		uint cfcdcq=varuint.decode(_buffer, &_index); password=readString(cfcdcq);
		uint bfz=varuint.decode(_buffer, &_index); name=readString(bfz);
		main=readBigEndianBool();
	}

	public static pure nothrow @safe ConnectionRequest fromBuffer(bool readId=true)(ubyte[] buffer) {
		ConnectionRequest ret = new ConnectionRequest();
		ret._buffer = buffer;
		ret.decode!readId();
		return ret;
	}

	public override string toString() {
		return "ConnectionRequest(protocol: " ~ std.conv.to!string(this.protocol) ~ ", password: " ~ std.conv.to!string(this.password) ~ ", name: " ~ std.conv.to!string(this.name) ~ ", main: " ~ std.conv.to!string(this.main) ~ ")";
	}

}

/**
 * Reply sent after the ConnectionRequest packet if the node's ip has been accepted.
 * It indicates the status of the connection.
 */
class ConnectionResponse : Buffer {

	public enum ubyte ID = 2;

	public enum bool CLIENTBOUND = true;
	public enum bool SERVERBOUND = false;

	// status
	public enum ubyte OK = 0;
	public enum ubyte OUTDATED_HUB = 1;
	public enum ubyte OUTDATED_NODE = 2;
	public enum ubyte PASSWORD_REQUIRED = 3;
	public enum ubyte WRONG_PASSWORD = 4;
	public enum ubyte INVALID_NAME_LENGTH = 5;
	public enum ubyte INVALID_NAME_CHARACTERS = 6;
	public enum ubyte NAME_ALREADY_USED = 7;
	public enum ubyte NAME_RESERVED = 8;

	public enum string[] FIELDS = ["status", "protocol"];

	/**
	 * Indicates the status of connection. If not 0, it indicates an error.
	 */
	public ubyte status;

	/**
	 * Indicates the version of the protocol used by the hub when the status code indicates
	 * that the hub or the node is obsolete.
	 */
	public uint protocol;

	public pure nothrow @safe @nogc this() {}

	public pure nothrow @safe @nogc this(ubyte status, uint protocol=uint.init) {
		this.status = status;
		this.protocol = protocol;
	}

	public pure nothrow @safe ubyte[] encode(bool writeId=true)() {
		_buffer.length = 0;
		static if(writeId){ writeBigEndianUbyte(ID); }
		writeBigEndianUbyte(status);
		if(status==1||status==2){ writeBytes(varuint.encode(protocol)); }
		return _buffer;
	}

	public pure nothrow @safe void decode(bool readId=true)() {
		static if(readId){ ubyte _id; _id=readBigEndianUbyte(); }
		status=readBigEndianUbyte();
		if(status==1||status==2){ protocol=varuint.decode(_buffer, &_index); }
	}

	public static pure nothrow @safe ConnectionResponse fromBuffer(bool readId=true)(ubyte[] buffer) {
		ConnectionResponse ret = new ConnectionResponse();
		ret._buffer = buffer;
		ret.decode!readId();
		return ret;
	}

	public override string toString() {
		return "ConnectionResponse(status: " ~ std.conv.to!string(this.status) ~ ", protocol: " ~ std.conv.to!string(this.protocol) ~ ")";
	}

}

/**
 * Informations about the hub.
 */
class HubInfo : Buffer {

	public enum ubyte ID = 3;

	public enum bool CLIENTBOUND = true;
	public enum bool SERVERBOUND = false;

	// max
	public enum int UNLIMITED = -1;

	public enum string[] FIELDS = ["time", "serverId", "reservedUuids", "displayName", "onlineMode", "gamesInfo", "online", "max", "language", "acceptedLanguages", "additionalJson"];

	/**
	 * Unix time with microseconds precision that indicates the exact moment when this
	 * packet was created. It's used by the node to calculate the latency.
	 */
	public ulong time;

	/**
	 * Server's id, either given by a snoop system or randomly generated at runtime.
	 */
	public ulong serverId;

	/**
	 * First number of the 4,294,967,296 (2³²) reserved by the hub to create the node's
	 * UUIDs. Every UUID generated by the node is formed by the server's id (most signicant)
	 * and the next reserved uuid (least significant). This way every UUID in the hub and
	 * in the connected nodes is always different.
	 */
	public ulong reservedUuids;

	/**
	 * Unformatted name of the server as indicated in the hub's configuration file.
	 */
	public string displayName;

	/**
	 * Indicates whether the player are authenticated using the games' official authentication
	 * services and their identity should be trusted.
	 */
	public bool onlineMode;

	/**
	 * Informations about the games supported by the hub.
	 */
	public sul.protocol.hncom1.types.GameInfo[] gamesInfo;

	/**
	 * Number of players currently online and connected to other nodes.
	 */
	public uint online;

	/**
	 * Number of maximum players that can connect to the server (that is the sum of the
	 * max players of the nodes already connected). The number may change after this node
	 * connects.
	 */
	public int max;

	/**
	 * Default server's language in format (language_COUNTRY, e.g. en_GB) and also the
	 * default language for players that don't specify their language or for the ones which
	 * language is not supported by the server.
	 */
	public string language;

	/**
	 * Languages accepted by the server in the same format as language. The list should
	 * always contain at least one element (the default language).
	 */
	public string[] acceptedLanguages;

	/**
	 * Optional informations about the server's software, social accounts, system and options
	 * in the format indicated below.
	 * ---
	 * {
	 *    "software": {
	 *       "name": "SEL",
	 *       "version": "1.0.4",
	 *       "stable": true
	 *    },
	 *    "minecraft": {
	 *       "edu": false,
	 *       "realm": true
	 *    },
	 *    "social": {
	 *       "website": "example.com",
	 *       "facebook": "example-official",
	 *       "twitter": "example_tweets",
	 *       "youtube": "examplechannel",
	 *       "instagram": "example",
	 *       "google_plus": "example-plus"
	 *    },
	 *    "system": {
	 *       "os": "Ubuntu 16.04",
	 *       "cpu": "Intel(R) Core(TM) i5-5200U CPU @ 2.20GHz",
	 *       "cores": 2,
	 *       "ram": 2147483648
	 *    }
	 * }
	 * ---
	 */
	public string additionalJson;

	public pure nothrow @safe @nogc this() {}

	public pure nothrow @safe @nogc this(ulong time, ulong serverId=ulong.init, ulong reservedUuids=ulong.init, string displayName=string.init, bool onlineMode=bool.init, sul.protocol.hncom1.types.GameInfo[] gamesInfo=(sul.protocol.hncom1.types.GameInfo[]).init, uint online=uint.init, int max=int.init, string language=string.init, string[] acceptedLanguages=(string[]).init, string additionalJson=string.init) {
		this.time = time;
		this.serverId = serverId;
		this.reservedUuids = reservedUuids;
		this.displayName = displayName;
		this.onlineMode = onlineMode;
		this.gamesInfo = gamesInfo;
		this.online = online;
		this.max = max;
		this.language = language;
		this.acceptedLanguages = acceptedLanguages;
		this.additionalJson = additionalJson;
	}

	public pure nothrow @safe ubyte[] encode(bool writeId=true)() {
		_buffer.length = 0;
		static if(writeId){ writeBigEndianUbyte(ID); }
		writeBytes(varulong.encode(time));
		writeBytes(varulong.encode(serverId));
		writeBytes(varulong.encode(reservedUuids));
		writeBytes(varuint.encode(cast(uint)displayName.length)); writeString(displayName);
		writeBigEndianBool(onlineMode);
		writeBytes(varuint.encode(cast(uint)gamesInfo.length)); foreach(zfznbz;gamesInfo){ zfznbz.encode(bufferInstance); }
		writeBytes(varuint.encode(online));
		writeBytes(varint.encode(max));
		writeBytes(varuint.encode(cast(uint)language.length)); writeString(language);
		writeBytes(varuint.encode(cast(uint)acceptedLanguages.length)); foreach(ynzbzry5;acceptedLanguages){ writeBytes(varuint.encode(cast(uint)ynzbzry5.length)); writeString(ynzbzry5); }
		writeBytes(varuint.encode(cast(uint)additionalJson.length)); writeString(additionalJson);
		return _buffer;
	}

	public pure nothrow @safe void decode(bool readId=true)() {
		static if(readId){ ubyte _id; _id=readBigEndianUbyte(); }
		time=varulong.decode(_buffer, &_index);
		serverId=varulong.decode(_buffer, &_index);
		reservedUuids=varulong.decode(_buffer, &_index);
		uint zlcxe5bu=varuint.decode(_buffer, &_index); displayName=readString(zlcxe5bu);
		onlineMode=readBigEndianBool();
		gamesInfo.length=varuint.decode(_buffer, &_index); foreach(ref zfznbz;gamesInfo){ zfznbz.decode(bufferInstance); }
		online=varuint.decode(_buffer, &_index);
		max=varint.decode(_buffer, &_index);
		uint bfzvzu=varuint.decode(_buffer, &_index); language=readString(bfzvzu);
		acceptedLanguages.length=varuint.decode(_buffer, &_index); foreach(ref ynzbzry5;acceptedLanguages){ uint e5ypeu=varuint.decode(_buffer, &_index); ynzbzry5=readString(e5ypeu); }
		uint yrarb5bp=varuint.decode(_buffer, &_index); additionalJson=readString(yrarb5bp);
	}

	public static pure nothrow @safe HubInfo fromBuffer(bool readId=true)(ubyte[] buffer) {
		HubInfo ret = new HubInfo();
		ret._buffer = buffer;
		ret.decode!readId();
		return ret;
	}

	public override string toString() {
		return "HubInfo(time: " ~ std.conv.to!string(this.time) ~ ", serverId: " ~ std.conv.to!string(this.serverId) ~ ", reservedUuids: " ~ std.conv.to!string(this.reservedUuids) ~ ", displayName: " ~ std.conv.to!string(this.displayName) ~ ", onlineMode: " ~ std.conv.to!string(this.onlineMode) ~ ", gamesInfo: " ~ std.conv.to!string(this.gamesInfo) ~ ", online: " ~ std.conv.to!string(this.online) ~ ", max: " ~ std.conv.to!string(this.max) ~ ", language: " ~ std.conv.to!string(this.language) ~ ", acceptedLanguages: " ~ std.conv.to!string(this.acceptedLanguages) ~ ", additionalJson: " ~ std.conv.to!string(this.additionalJson) ~ ")";
	}

}

/**
 * Informations about the node.
 */
class NodeInfo : Buffer {

	public enum ubyte ID = 4;

	public enum bool CLIENTBOUND = false;
	public enum bool SERVERBOUND = true;

	// max
	public enum uint UNLIMITED = 0;

	public enum string[] FIELDS = ["time", "max", "acceptedGames", "plugins", "additionalJson"];

	/**
	 * Unix time with microseconds precision that indicates the exact moment when this
	 * packet was created. It's used by the hub to calculate the latency.
	 */
	public ulong time;

	/**
	 * Maximum number of players accepted by node.
	 */
	public uint max;

	/**
	 * Informations about the games accepted by the node. There should be at least one
	 * combination of game/protocol that is also accepted by hub as indicated in HubInfo.gamesInfo,
	 * otherwise the node will never receive any player.
	 */
	public sul.protocol.hncom1.types.Game[] acceptedGames;

	/**
	 * List of plugins loaded on the node for creating queries on the hub.
	 */
	public sul.protocol.hncom1.types.Plugin[] plugins;

	/**
	 * Optional informations about the server's software and system, similar to HubInfo.additionalJson.
	 * ---
	 * {
	 *    "software": {
	 *       "name": "SEL",
	 *       "version": "1.0.4",
	 *       "stable": true
	 *    },
	 *    "system": {
	 *       "os": "Windows 10",
	 *       "cpu": "Intel(R) Core(TM) i7-5700U CPU @ 3.40GHz",
	 *       "cores": 4,
	 *       "ram": 8589934592
	 *    }
	 * }
	 * ---
	 */
	public string additionalJson;

	public pure nothrow @safe @nogc this() {}

	public pure nothrow @safe @nogc this(ulong time, uint max=uint.init, sul.protocol.hncom1.types.Game[] acceptedGames=(sul.protocol.hncom1.types.Game[]).init, sul.protocol.hncom1.types.Plugin[] plugins=(sul.protocol.hncom1.types.Plugin[]).init, string additionalJson=string.init) {
		this.time = time;
		this.max = max;
		this.acceptedGames = acceptedGames;
		this.plugins = plugins;
		this.additionalJson = additionalJson;
	}

	public pure nothrow @safe ubyte[] encode(bool writeId=true)() {
		_buffer.length = 0;
		static if(writeId){ writeBigEndianUbyte(ID); }
		writeBytes(varulong.encode(time));
		writeBytes(varuint.encode(max));
		writeBytes(varuint.encode(cast(uint)acceptedGames.length)); foreach(ynzbzry1;acceptedGames){ ynzbzry1.encode(bufferInstance); }
		writeBytes(varuint.encode(cast(uint)plugins.length)); foreach(cxzlc;plugins){ cxzlc.encode(bufferInstance); }
		writeBytes(varuint.encode(cast(uint)additionalJson.length)); writeString(additionalJson);
		return _buffer;
	}

	public pure nothrow @safe void decode(bool readId=true)() {
		static if(readId){ ubyte _id; _id=readBigEndianUbyte(); }
		time=varulong.decode(_buffer, &_index);
		max=varuint.decode(_buffer, &_index);
		acceptedGames.length=varuint.decode(_buffer, &_index); foreach(ref ynzbzry1;acceptedGames){ ynzbzry1.decode(bufferInstance); }
		plugins.length=varuint.decode(_buffer, &_index); foreach(ref cxzlc;plugins){ cxzlc.decode(bufferInstance); }
		uint yrarb5bp=varuint.decode(_buffer, &_index); additionalJson=readString(yrarb5bp);
	}

	public static pure nothrow @safe NodeInfo fromBuffer(bool readId=true)(ubyte[] buffer) {
		NodeInfo ret = new NodeInfo();
		ret._buffer = buffer;
		ret.decode!readId();
		return ret;
	}

	public override string toString() {
		return "NodeInfo(time: " ~ std.conv.to!string(this.time) ~ ", max: " ~ std.conv.to!string(this.max) ~ ", acceptedGames: " ~ std.conv.to!string(this.acceptedGames) ~ ", plugins: " ~ std.conv.to!string(this.plugins) ~ ", additionalJson: " ~ std.conv.to!string(this.additionalJson) ~ ")";
	}

}
