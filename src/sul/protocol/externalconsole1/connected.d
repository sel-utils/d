/*
 * This file was automatically generated by sel-utils and
 * released under the MIT License.
 * 
 * License: https://github.com/sel-project/sel-utils/blob/master/LICENSE
 * Repository: https://github.com/sel-project/sel-utils
 * Generated from https://github.com/sel-project/sel-utils/blob/master/xml/protocol/externalconsole1.xml
 */
/**
 * Packets regarding the server's console and commands.
 */
module sul.protocol.externalconsole1.connected;

import std.bitmanip : write, peek;
static import std.conv;
import std.system : Endian;
import std.typetuple : TypeTuple;
import std.typecons : Tuple;
import std.uuid : UUID;

import sul.utils.buffer;
import sul.utils.var;

static import sul.protocol.externalconsole1.types;

static if(__traits(compiles, { import sul.metadata.externalconsole1; })) import sul.metadata.externalconsole1;

alias Packets = TypeTuple!(ConsoleMessage, Command, PermissionDenied);

/**
 * Logs a message from the server's console. It may be the output of a command, a debug
 * message or any other message that the server retains able to be seen by the External
 * Console.
 */
class ConsoleMessage : Buffer {

	public enum ubyte ID = 4;

	public enum bool CLIENTBOUND = true;
	public enum bool SERVERBOUND = false;

	public enum string[] FIELDS = ["node", "timestamp", "logger", "message"];

	/**
	 * Name of the node that created the log or an empty string if the log was created
	 * by the hub or by a server that isn't based on the hub-node layout.
	 */
	public string node;

	/**
	 * Unix timestamp in milliseconds that indicates the exact time when the log was generated
	 * by the server.
	 * The logs may not arrive in order when the server uses the hub-node layout or some
	 * other kind of proxy because the logs created by the nodes have an additional latency
	 * (the one between the hub, or proxy, and the node).
	 */
	public ulong timestamp;

	/**
	 * Name of the logger. It may be the world name if the log was generated by a world's
	 * message (like a broadcast or a chat message), the name of plugin (for example `plugin\test`)
	 * or the name of the package/module/class that generated the log (like `math.vector`
	 * or `event.world.player`).
	 */
	public string logger;

	/**
	 * The logged message. It may contain Minecraft's formatting codes which should be
	 * translated into appropriate colours and formatting (bold, italic and strikethrough)
	 * by the client implementation of the external console.
	 */
	public string message;

	public pure nothrow @safe @nogc this() {}

	public pure nothrow @safe @nogc this(string node, ulong timestamp=ulong.init, string logger=string.init, string message=string.init) {
		this.node = node;
		this.timestamp = timestamp;
		this.logger = logger;
		this.message = message;
	}

	public pure nothrow @safe ubyte[] encode(bool writeId=true)() {
		_buffer.length = 0;
		static if(writeId){ writeBigEndianUbyte(ID); }
		writeBigEndianUshort(cast(ushort)node.length); writeString(node);
		writeBigEndianUlong(timestamp);
		writeBigEndianUshort(cast(ushort)logger.length); writeString(logger);
		writeBigEndianUshort(cast(ushort)message.length); writeString(message);
		return _buffer;
	}

	public pure nothrow @safe void decode(bool readId=true)() {
		static if(readId){ ubyte _id; _id=readBigEndianUbyte(); }
		ushort b9z=readBigEndianUshort(); node=readString(b9z);
		timestamp=readBigEndianUlong();
		ushort b9zv=readBigEndianUshort(); logger=readString(b9zv);
		ushort bvcfz=readBigEndianUshort(); message=readString(bvcfz);
	}

	public static pure nothrow @safe ConsoleMessage fromBuffer(bool readId=true)(ubyte[] buffer) {
		ConsoleMessage ret = new ConsoleMessage();
		ret._buffer = buffer;
		ret.decode!readId();
		return ret;
	}

	public override string toString() {
		return "ConsoleMessage(node: " ~ std.conv.to!string(this.node) ~ ", timestamp: " ~ std.conv.to!string(this.timestamp) ~ ", logger: " ~ std.conv.to!string(this.logger) ~ ", message: " ~ std.conv.to!string(this.message) ~ ")";
	}

}

/**
 * Executes a command remotely if the server allows it. If not a Permission Denied
 * is sent back. A good implementation of the external console client should never
 * send this packet if remoteCommands field in Welcome.Accepted is not true.
 */
class Command : Buffer {

	public enum ubyte ID = 5;

	public enum bool CLIENTBOUND = false;
	public enum bool SERVERBOUND = true;

	public enum string[] FIELDS = ["command"];

	/**
	 * Command to execute on the server.
	 */
	public string command;

	public pure nothrow @safe @nogc this() {}

	public pure nothrow @safe @nogc this(string command) {
		this.command = command;
	}

	public pure nothrow @safe ubyte[] encode(bool writeId=true)() {
		_buffer.length = 0;
		static if(writeId){ writeBigEndianUbyte(ID); }
		writeBigEndianUshort(cast(ushort)command.length); writeString(command);
		return _buffer;
	}

	public pure nothrow @safe void decode(bool readId=true)() {
		static if(readId){ ubyte _id; _id=readBigEndianUbyte(); }
		ushort y9bfz=readBigEndianUshort(); command=readString(y9bfz);
	}

	public static pure nothrow @safe Command fromBuffer(bool readId=true)(ubyte[] buffer) {
		Command ret = new Command();
		ret._buffer = buffer;
		ret.decode!readId();
		return ret;
	}

	public override string toString() {
		return "Command(command: " ~ std.conv.to!string(this.command) ~ ")";
	}

}

/**
 * Bodyless packet only sent in response to Command when the server doesn't allow the
 * execution of remote commands through the external console. A good implementation
 * of the external console client should never receive this packet avoiding the use
 * of the Command packet when the remoteCommands field is false.
 */
class PermissionDenied : Buffer {

	public enum ubyte ID = 6;

	public enum bool CLIENTBOUND = true;
	public enum bool SERVERBOUND = false;

	public enum string[] FIELDS = [];

	public pure nothrow @safe ubyte[] encode(bool writeId=true)() {
		_buffer.length = 0;
		static if(writeId){ writeBigEndianUbyte(ID); }
		return _buffer;
	}

	public pure nothrow @safe void decode(bool readId=true)() {
		static if(readId){ ubyte _id; _id=readBigEndianUbyte(); }
	}

	public static pure nothrow @safe PermissionDenied fromBuffer(bool readId=true)(ubyte[] buffer) {
		PermissionDenied ret = new PermissionDenied();
		ret._buffer = buffer;
		ret.decode!readId();
		return ret;
	}

	public override string toString() {
		return "PermissionDenied()";
	}

}

