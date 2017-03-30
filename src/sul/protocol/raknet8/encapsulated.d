/*
 * This file was automatically generated by sel-utils and
 * released under the GNU General Public License version 3.
 * 
 * License: https://github.com/sel-project/sel-utils/blob/master/LICENSE
 * Repository: https://github.com/sel-project/sel-utils
 * Generated from https://github.com/sel-project/sel-utils/blob/master/xml/protocol/raknet8.xml
 */
module sul.protocol.raknet8.encapsulated;

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

alias Packets = TypeTuple!(ClientConnect, ServerHandshake, ClientHandshake, ClientCancelConnection, Ping, Pong, Mcpe);

class ClientConnect : Buffer {

	public enum ubyte ID = 9;

	public enum bool CLIENTBOUND = false;
	public enum bool SERVERBOUND = true;

	public enum string[] FIELDS = ["clientId", "pingId"];

	public long clientId;
	public long pingId;

	public pure nothrow @safe @nogc this() {}

	public pure nothrow @safe @nogc this(long clientId, long pingId=long.init) {
		this.clientId = clientId;
		this.pingId = pingId;
	}

	public pure nothrow @safe ubyte[] encode(bool writeId=true)() {
		_buffer.length = 0;
		static if(writeId){ writeBigEndianUbyte(ID); }
		writeBigEndianLong(clientId);
		writeBigEndianLong(pingId);
		return _buffer;
	}

	public pure nothrow @safe void decode(bool readId=true)() {
		static if(readId){ ubyte _id; _id=readBigEndianUbyte(); }
		clientId=readBigEndianLong();
		pingId=readBigEndianLong();
	}

	public static pure nothrow @safe ClientConnect fromBuffer(bool readId=true)(ubyte[] buffer) {
		ClientConnect ret = new ClientConnect();
		ret._buffer = buffer;
		ret.decode!readId();
		return ret;
	}

	public override string toString() {
		return "ClientConnect(clientId: " ~ std.conv.to!string(this.clientId) ~ ", pingId: " ~ std.conv.to!string(this.pingId) ~ ")";
	}

}

class ServerHandshake : Buffer {

	public enum ubyte ID = 16;

	public enum bool CLIENTBOUND = true;
	public enum bool SERVERBOUND = false;

	public enum string[] FIELDS = ["clientAddress", "mtuLength", "systemAddresses", "pingId", "serverId"];

	public sul.protocol.raknet8.types.Address clientAddress;
	public ushort mtuLength;
	public sul.protocol.raknet8.types.Address[10] systemAddresses;
	public long pingId;
	public long serverId;

	public pure nothrow @safe @nogc this() {}

	public pure nothrow @safe @nogc this(sul.protocol.raknet8.types.Address clientAddress, ushort mtuLength=ushort.init, sul.protocol.raknet8.types.Address[10] systemAddresses=(sul.protocol.raknet8.types.Address[10]).init, long pingId=long.init, long serverId=long.init) {
		this.clientAddress = clientAddress;
		this.mtuLength = mtuLength;
		this.systemAddresses = systemAddresses;
		this.pingId = pingId;
		this.serverId = serverId;
	}

	public pure nothrow @safe ubyte[] encode(bool writeId=true)() {
		_buffer.length = 0;
		static if(writeId){ writeBigEndianUbyte(ID); }
		clientAddress.encode(bufferInstance);
		writeBigEndianUshort(mtuLength);
		foreach(cldvqrcv;systemAddresses){ cldvqrcv.encode(bufferInstance); }
		writeBigEndianLong(pingId);
		writeBigEndianLong(serverId);
		return _buffer;
	}

	public pure nothrow @safe void decode(bool readId=true)() {
		static if(readId){ ubyte _id; _id=readBigEndianUbyte(); }
		clientAddress.decode(bufferInstance);
		mtuLength=readBigEndianUshort();
		foreach(ref cldvqrcv;systemAddresses){ cldvqrcv.decode(bufferInstance); }
		pingId=readBigEndianLong();
		serverId=readBigEndianLong();
	}

	public static pure nothrow @safe ServerHandshake fromBuffer(bool readId=true)(ubyte[] buffer) {
		ServerHandshake ret = new ServerHandshake();
		ret._buffer = buffer;
		ret.decode!readId();
		return ret;
	}

	public override string toString() {
		return "ServerHandshake(clientAddress: " ~ std.conv.to!string(this.clientAddress) ~ ", mtuLength: " ~ std.conv.to!string(this.mtuLength) ~ ", systemAddresses: " ~ std.conv.to!string(this.systemAddresses) ~ ", pingId: " ~ std.conv.to!string(this.pingId) ~ ", serverId: " ~ std.conv.to!string(this.serverId) ~ ")";
	}

}

class ClientHandshake : Buffer {

	public enum ubyte ID = 19;

	public enum bool CLIENTBOUND = false;
	public enum bool SERVERBOUND = true;

	public enum string[] FIELDS = ["clientAddress", "systemAddresses", "pingId", "clientId"];

	public sul.protocol.raknet8.types.Address clientAddress;
	public sul.protocol.raknet8.types.Address[10] systemAddresses;
	public long pingId;
	public long clientId;

	public pure nothrow @safe @nogc this() {}

	public pure nothrow @safe @nogc this(sul.protocol.raknet8.types.Address clientAddress, sul.protocol.raknet8.types.Address[10] systemAddresses=(sul.protocol.raknet8.types.Address[10]).init, long pingId=long.init, long clientId=long.init) {
		this.clientAddress = clientAddress;
		this.systemAddresses = systemAddresses;
		this.pingId = pingId;
		this.clientId = clientId;
	}

	public pure nothrow @safe ubyte[] encode(bool writeId=true)() {
		_buffer.length = 0;
		static if(writeId){ writeBigEndianUbyte(ID); }
		clientAddress.encode(bufferInstance);
		foreach(cldvqrcv;systemAddresses){ cldvqrcv.encode(bufferInstance); }
		writeBigEndianLong(pingId);
		writeBigEndianLong(clientId);
		return _buffer;
	}

	public pure nothrow @safe void decode(bool readId=true)() {
		static if(readId){ ubyte _id; _id=readBigEndianUbyte(); }
		clientAddress.decode(bufferInstance);
		foreach(ref cldvqrcv;systemAddresses){ cldvqrcv.decode(bufferInstance); }
		pingId=readBigEndianLong();
		clientId=readBigEndianLong();
	}

	public static pure nothrow @safe ClientHandshake fromBuffer(bool readId=true)(ubyte[] buffer) {
		ClientHandshake ret = new ClientHandshake();
		ret._buffer = buffer;
		ret.decode!readId();
		return ret;
	}

	public override string toString() {
		return "ClientHandshake(clientAddress: " ~ std.conv.to!string(this.clientAddress) ~ ", systemAddresses: " ~ std.conv.to!string(this.systemAddresses) ~ ", pingId: " ~ std.conv.to!string(this.pingId) ~ ", clientId: " ~ std.conv.to!string(this.clientId) ~ ")";
	}

}

class ClientCancelConnection : Buffer {

	public enum ubyte ID = 21;

	public enum bool CLIENTBOUND = false;
	public enum bool SERVERBOUND = true;

	public enum string[] FIELDS = [];

	public pure nothrow @safe ubyte[] encode(bool writeId=true)() {
		_buffer.length = 0;
		static if(writeId){ writeBigEndianUbyte(ID); }
		return _buffer;
	}

	public pure nothrow @safe void decode(bool readId=true)() {
		static if(readId){ ubyte _id; _id=readBigEndianUbyte(); }
	}

	public static pure nothrow @safe ClientCancelConnection fromBuffer(bool readId=true)(ubyte[] buffer) {
		ClientCancelConnection ret = new ClientCancelConnection();
		ret._buffer = buffer;
		ret.decode!readId();
		return ret;
	}

	public override string toString() {
		return "ClientCancelConnection()";
	}

}

class Ping : Buffer {

	public enum ubyte ID = 0;

	public enum bool CLIENTBOUND = false;
	public enum bool SERVERBOUND = true;

	public enum string[] FIELDS = ["time"];

	public long time;

	public pure nothrow @safe @nogc this() {}

	public pure nothrow @safe @nogc this(long time) {
		this.time = time;
	}

	public pure nothrow @safe ubyte[] encode(bool writeId=true)() {
		_buffer.length = 0;
		static if(writeId){ writeBigEndianUbyte(ID); }
		writeBigEndianLong(time);
		return _buffer;
	}

	public pure nothrow @safe void decode(bool readId=true)() {
		static if(readId){ ubyte _id; _id=readBigEndianUbyte(); }
		time=readBigEndianLong();
	}

	public static pure nothrow @safe Ping fromBuffer(bool readId=true)(ubyte[] buffer) {
		Ping ret = new Ping();
		ret._buffer = buffer;
		ret.decode!readId();
		return ret;
	}

	public override string toString() {
		return "Ping(time: " ~ std.conv.to!string(this.time) ~ ")";
	}

}

class Pong : Buffer {

	public enum ubyte ID = 3;

	public enum bool CLIENTBOUND = true;
	public enum bool SERVERBOUND = false;

	public enum string[] FIELDS = ["time"];

	public long time;

	public pure nothrow @safe @nogc this() {}

	public pure nothrow @safe @nogc this(long time) {
		this.time = time;
	}

	public pure nothrow @safe ubyte[] encode(bool writeId=true)() {
		_buffer.length = 0;
		static if(writeId){ writeBigEndianUbyte(ID); }
		writeBigEndianLong(time);
		return _buffer;
	}

	public pure nothrow @safe void decode(bool readId=true)() {
		static if(readId){ ubyte _id; _id=readBigEndianUbyte(); }
		time=readBigEndianLong();
	}

	public static pure nothrow @safe Pong fromBuffer(bool readId=true)(ubyte[] buffer) {
		Pong ret = new Pong();
		ret._buffer = buffer;
		ret.decode!readId();
		return ret;
	}

	public override string toString() {
		return "Pong(time: " ~ std.conv.to!string(this.time) ~ ")";
	}

}

class Mcpe : Buffer {

	public enum ubyte ID = 254;

	public enum bool CLIENTBOUND = true;
	public enum bool SERVERBOUND = true;

	public enum string[] FIELDS = ["packet"];

	public ubyte[] packet;

	public pure nothrow @safe @nogc this() {}

	public pure nothrow @safe @nogc this(ubyte[] packet) {
		this.packet = packet;
	}

	public pure nothrow @safe ubyte[] encode(bool writeId=true)() {
		_buffer.length = 0;
		static if(writeId){ writeBigEndianUbyte(ID); }
		writeBytes(packet);
		return _buffer;
	}

	public pure nothrow @safe void decode(bool readId=true)() {
		static if(readId){ ubyte _id; _id=readBigEndianUbyte(); }
		packet=_buffer[_index..$].dup; _index=_buffer.length;
	}

	public static pure nothrow @safe Mcpe fromBuffer(bool readId=true)(ubyte[] buffer) {
		Mcpe ret = new Mcpe();
		ret._buffer = buffer;
		ret.decode!readId();
		return ret;
	}

	public override string toString() {
		return "Mcpe(packet: " ~ std.conv.to!string(this.packet) ~ ")";
	}

}