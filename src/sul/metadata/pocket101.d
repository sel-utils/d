/*
 * This file was automatically generated by sel-utils and
 * released under the MIT License.
 * 
 * License: https://github.com/sel-project/sel-utils/blob/master/LICENSE
 * Repository: https://github.com/sel-project/sel-utils
 * Generated from https://github.com/sel-project/sel-utils/blob/master/xml/metadata/pocket101.xml
 */
module sul.metadata.pocket101;

import std.typecons : Tuple, tuple;

import sul.utils.buffer : Buffer;
import sul.utils.var;

static import sul.protocol.pocket101.types;

alias Changed(T) = Tuple!(T, "value", bool, "changed");

class Metadata {

	private bool _cached = false;
	private ubyte[] _cache;

	private void delegate(Buffer) pure nothrow @safe[] _changed;

	private long _entityFlags = cast(long)0;
	private Changed!(int) _variant;
	private Changed!(byte) _color;
	private Changed!(string) _nametag;
	private Changed!(long) _owner = tuple(cast(long)-1, false);
	private short _air = cast(short)0;
	private Changed!(int) _potionColor;
	private Changed!(byte) _potionAmbient;
	private Changed!(byte) _slimeSize = tuple(cast(byte)1, false);
	private Changed!(byte) _playerFlags;
	private Changed!(int) _playerIndex;
	private Changed!(Tuple!(int, "x", int, "y", int, "z")) _bedPosition;
	private long _leadHolder = cast(long)-1;
	private Changed!(float) _scale = tuple(cast(float)1, false);
	private Changed!(string) _interactiveTag;
	private Changed!(string) _interactiveTagUrl;
	private Changed!(short) _maxAir;
	private Changed!(int) _markVariant;
	private Changed!(float) _boundingBoxWidth;
	private Changed!(float) _boundingBoxHeight;
	private Changed!(int) _fuseLength;

	public pure nothrow @safe this() {
		this.reset();
	}

	public pure nothrow @safe void reset() {
		this._changed = [
			&this.encodeEntityFlags,
			&this.encodeAir,
			&this.encodeLeadHolder,
		];
	}

	public pure nothrow @property @safe @nogc long entityFlags() {
		return _entityFlags;
	}

	public pure nothrow @property @safe long entityFlags(long value) {
		this._cached = false;
		this._entityFlags = value;
		return value;
	}

	public pure nothrow @safe encodeEntityFlags(Buffer buffer) {
		with(buffer) {
			writeBytes(varuint.encode(0));
			writeBytes(varuint.encode(7));
			writeBytes(varlong.encode(this._entityFlags));
		}
	}

	public pure nothrow @property @safe bool onFire() {
		return (_entityFlags >>> 0) & 1;
	}

	public pure nothrow @property @safe bool onFire(bool value) {
		if(value) entityFlags = cast(long)(_entityFlags | (cast(long)true << 0));
		else entityFlags = cast(long)(_entityFlags & ~(cast(long)true << 0));
		return value;
	}

	public pure nothrow @property @safe bool sneaking() {
		return (_entityFlags >>> 1) & 1;
	}

	public pure nothrow @property @safe bool sneaking(bool value) {
		if(value) entityFlags = cast(long)(_entityFlags | (cast(long)true << 1));
		else entityFlags = cast(long)(_entityFlags & ~(cast(long)true << 1));
		return value;
	}

	public pure nothrow @property @safe bool riding() {
		return (_entityFlags >>> 2) & 1;
	}

	public pure nothrow @property @safe bool riding(bool value) {
		if(value) entityFlags = cast(long)(_entityFlags | (cast(long)true << 2));
		else entityFlags = cast(long)(_entityFlags & ~(cast(long)true << 2));
		return value;
	}

	public pure nothrow @property @safe bool sprinting() {
		return (_entityFlags >>> 3) & 1;
	}

	public pure nothrow @property @safe bool sprinting(bool value) {
		if(value) entityFlags = cast(long)(_entityFlags | (cast(long)true << 3));
		else entityFlags = cast(long)(_entityFlags & ~(cast(long)true << 3));
		return value;
	}

	public pure nothrow @property @safe bool usingItem() {
		return (_entityFlags >>> 4) & 1;
	}

	public pure nothrow @property @safe bool usingItem(bool value) {
		if(value) entityFlags = cast(long)(_entityFlags | (cast(long)true << 4));
		else entityFlags = cast(long)(_entityFlags & ~(cast(long)true << 4));
		return value;
	}

	public pure nothrow @property @safe bool invisible() {
		return (_entityFlags >>> 5) & 1;
	}

	public pure nothrow @property @safe bool invisible(bool value) {
		if(value) entityFlags = cast(long)(_entityFlags | (cast(long)true << 5));
		else entityFlags = cast(long)(_entityFlags & ~(cast(long)true << 5));
		return value;
	}

	public pure nothrow @property @safe bool tempted() {
		return (_entityFlags >>> 6) & 1;
	}

	public pure nothrow @property @safe bool tempted(bool value) {
		if(value) entityFlags = cast(long)(_entityFlags | (cast(long)true << 6));
		else entityFlags = cast(long)(_entityFlags & ~(cast(long)true << 6));
		return value;
	}

	public pure nothrow @property @safe bool inLove() {
		return (_entityFlags >>> 7) & 1;
	}

	public pure nothrow @property @safe bool inLove(bool value) {
		if(value) entityFlags = cast(long)(_entityFlags | (cast(long)true << 7));
		else entityFlags = cast(long)(_entityFlags & ~(cast(long)true << 7));
		return value;
	}

	public pure nothrow @property @safe bool saddled() {
		return (_entityFlags >>> 8) & 1;
	}

	public pure nothrow @property @safe bool saddled(bool value) {
		if(value) entityFlags = cast(long)(_entityFlags | (cast(long)true << 8));
		else entityFlags = cast(long)(_entityFlags & ~(cast(long)true << 8));
		return value;
	}

	public pure nothrow @property @safe bool powered() {
		return (_entityFlags >>> 9) & 1;
	}

	public pure nothrow @property @safe bool powered(bool value) {
		if(value) entityFlags = cast(long)(_entityFlags | (cast(long)true << 9));
		else entityFlags = cast(long)(_entityFlags & ~(cast(long)true << 9));
		return value;
	}

	public pure nothrow @property @safe bool ignited() {
		return (_entityFlags >>> 10) & 1;
	}

	public pure nothrow @property @safe bool ignited(bool value) {
		if(value) entityFlags = cast(long)(_entityFlags | (cast(long)true << 10));
		else entityFlags = cast(long)(_entityFlags & ~(cast(long)true << 10));
		return value;
	}

	public pure nothrow @property @safe bool baby() {
		return (_entityFlags >>> 11) & 1;
	}

	public pure nothrow @property @safe bool baby(bool value) {
		if(value) entityFlags = cast(long)(_entityFlags | (cast(long)true << 11));
		else entityFlags = cast(long)(_entityFlags & ~(cast(long)true << 11));
		return value;
	}

	public pure nothrow @property @safe bool converting() {
		return (_entityFlags >>> 12) & 1;
	}

	public pure nothrow @property @safe bool converting(bool value) {
		if(value) entityFlags = cast(long)(_entityFlags | (cast(long)true << 12));
		else entityFlags = cast(long)(_entityFlags & ~(cast(long)true << 12));
		return value;
	}

	public pure nothrow @property @safe bool critical() {
		return (_entityFlags >>> 13) & 1;
	}

	public pure nothrow @property @safe bool critical(bool value) {
		if(value) entityFlags = cast(long)(_entityFlags | (cast(long)true << 13));
		else entityFlags = cast(long)(_entityFlags & ~(cast(long)true << 13));
		return value;
	}

	public pure nothrow @property @safe bool showNametag() {
		return (_entityFlags >>> 14) & 1;
	}

	public pure nothrow @property @safe bool showNametag(bool value) {
		if(value) entityFlags = cast(long)(_entityFlags | (cast(long)true << 14));
		else entityFlags = cast(long)(_entityFlags & ~(cast(long)true << 14));
		return value;
	}

	public pure nothrow @property @safe bool alwaysShowNametag() {
		return (_entityFlags >>> 15) & 1;
	}

	public pure nothrow @property @safe bool alwaysShowNametag(bool value) {
		if(value) entityFlags = cast(long)(_entityFlags | (cast(long)true << 15));
		else entityFlags = cast(long)(_entityFlags & ~(cast(long)true << 15));
		return value;
	}

	public pure nothrow @property @safe bool noAi() {
		return (_entityFlags >>> 16) & 1;
	}

	public pure nothrow @property @safe bool noAi(bool value) {
		if(value) entityFlags = cast(long)(_entityFlags | (cast(long)true << 16));
		else entityFlags = cast(long)(_entityFlags & ~(cast(long)true << 16));
		return value;
	}

	public pure nothrow @property @safe bool silent() {
		return (_entityFlags >>> 17) & 1;
	}

	public pure nothrow @property @safe bool silent(bool value) {
		if(value) entityFlags = cast(long)(_entityFlags | (cast(long)true << 17));
		else entityFlags = cast(long)(_entityFlags & ~(cast(long)true << 17));
		return value;
	}

	public pure nothrow @property @safe bool climbing() {
		return (_entityFlags >>> 18) & 1;
	}

	public pure nothrow @property @safe bool climbing(bool value) {
		if(value) entityFlags = cast(long)(_entityFlags | (cast(long)true << 18));
		else entityFlags = cast(long)(_entityFlags & ~(cast(long)true << 18));
		return value;
	}

	public pure nothrow @property @safe bool resting() {
		return (_entityFlags >>> 19) & 1;
	}

	public pure nothrow @property @safe bool resting(bool value) {
		if(value) entityFlags = cast(long)(_entityFlags | (cast(long)true << 19));
		else entityFlags = cast(long)(_entityFlags & ~(cast(long)true << 19));
		return value;
	}

	public pure nothrow @property @safe bool sitting() {
		return (_entityFlags >>> 20) & 1;
	}

	public pure nothrow @property @safe bool sitting(bool value) {
		if(value) entityFlags = cast(long)(_entityFlags | (cast(long)true << 20));
		else entityFlags = cast(long)(_entityFlags & ~(cast(long)true << 20));
		return value;
	}

	public pure nothrow @property @safe bool angry() {
		return (_entityFlags >>> 21) & 1;
	}

	public pure nothrow @property @safe bool angry(bool value) {
		if(value) entityFlags = cast(long)(_entityFlags | (cast(long)true << 21));
		else entityFlags = cast(long)(_entityFlags & ~(cast(long)true << 21));
		return value;
	}

	public pure nothrow @property @safe bool interested() {
		return (_entityFlags >>> 22) & 1;
	}

	public pure nothrow @property @safe bool interested(bool value) {
		if(value) entityFlags = cast(long)(_entityFlags | (cast(long)true << 22));
		else entityFlags = cast(long)(_entityFlags & ~(cast(long)true << 22));
		return value;
	}

	public pure nothrow @property @safe bool charged() {
		return (_entityFlags >>> 23) & 1;
	}

	public pure nothrow @property @safe bool charged(bool value) {
		if(value) entityFlags = cast(long)(_entityFlags | (cast(long)true << 23));
		else entityFlags = cast(long)(_entityFlags & ~(cast(long)true << 23));
		return value;
	}

	public pure nothrow @property @safe bool tamed() {
		return (_entityFlags >>> 24) & 1;
	}

	public pure nothrow @property @safe bool tamed(bool value) {
		if(value) entityFlags = cast(long)(_entityFlags | (cast(long)true << 24));
		else entityFlags = cast(long)(_entityFlags & ~(cast(long)true << 24));
		return value;
	}

	public pure nothrow @property @safe bool leashed() {
		return (_entityFlags >>> 25) & 1;
	}

	public pure nothrow @property @safe bool leashed(bool value) {
		if(value) entityFlags = cast(long)(_entityFlags | (cast(long)true << 25));
		else entityFlags = cast(long)(_entityFlags & ~(cast(long)true << 25));
		return value;
	}

	public pure nothrow @property @safe bool sheared() {
		return (_entityFlags >>> 26) & 1;
	}

	public pure nothrow @property @safe bool sheared(bool value) {
		if(value) entityFlags = cast(long)(_entityFlags | (cast(long)true << 26));
		else entityFlags = cast(long)(_entityFlags & ~(cast(long)true << 26));
		return value;
	}

	public pure nothrow @property @safe bool gliding() {
		return (_entityFlags >>> 27) & 1;
	}

	public pure nothrow @property @safe bool gliding(bool value) {
		if(value) entityFlags = cast(long)(_entityFlags | (cast(long)true << 27));
		else entityFlags = cast(long)(_entityFlags & ~(cast(long)true << 27));
		return value;
	}

	public pure nothrow @property @safe bool elder() {
		return (_entityFlags >>> 28) & 1;
	}

	public pure nothrow @property @safe bool elder(bool value) {
		if(value) entityFlags = cast(long)(_entityFlags | (cast(long)true << 28));
		else entityFlags = cast(long)(_entityFlags & ~(cast(long)true << 28));
		return value;
	}

	public pure nothrow @property @safe bool moving() {
		return (_entityFlags >>> 29) & 1;
	}

	public pure nothrow @property @safe bool moving(bool value) {
		if(value) entityFlags = cast(long)(_entityFlags | (cast(long)true << 29));
		else entityFlags = cast(long)(_entityFlags & ~(cast(long)true << 29));
		return value;
	}

	public pure nothrow @property @safe bool breathing() {
		return (_entityFlags >>> 30) & 1;
	}

	public pure nothrow @property @safe bool breathing(bool value) {
		if(value) entityFlags = cast(long)(_entityFlags | (cast(long)true << 30));
		else entityFlags = cast(long)(_entityFlags & ~(cast(long)true << 30));
		return value;
	}

	public pure nothrow @property @safe bool chested() {
		return (_entityFlags >>> 31) & 1;
	}

	public pure nothrow @property @safe bool chested(bool value) {
		if(value) entityFlags = cast(long)(_entityFlags | (cast(long)true << 31));
		else entityFlags = cast(long)(_entityFlags & ~(cast(long)true << 31));
		return value;
	}

	public pure nothrow @property @safe bool stackable() {
		return (_entityFlags >>> 32) & 1;
	}

	public pure nothrow @property @safe bool stackable(bool value) {
		if(value) entityFlags = cast(long)(_entityFlags | (cast(long)true << 32));
		else entityFlags = cast(long)(_entityFlags & ~(cast(long)true << 32));
		return value;
	}

	public pure nothrow @property @safe bool idling() {
		return (_entityFlags >>> 36) & 1;
	}

	public pure nothrow @property @safe bool idling(bool value) {
		if(value) entityFlags = cast(long)(_entityFlags | (cast(long)true << 36));
		else entityFlags = cast(long)(_entityFlags & ~(cast(long)true << 36));
		return value;
	}

	public pure nothrow @property @safe @nogc int variant() {
		return _variant.value;
	}

	public pure nothrow @property @safe int variant(int value) {
		this._cached = false;
		this._variant.value = value;
		if(!this._variant.changed) {
			this._variant.changed = true;
			this._changed ~= &this.encodeVariant;
		}
		return value;
	}

	public pure nothrow @safe encodeVariant(Buffer buffer) {
		with(buffer) {
			writeBytes(varuint.encode(2));
			writeBytes(varuint.encode(2));
			writeBytes(varint.encode(this._variant.value));
		}
	}

	public pure nothrow @property @safe @nogc byte color() {
		return _color.value;
	}

	public pure nothrow @property @safe byte color(byte value) {
		this._cached = false;
		this._color.value = value;
		if(!this._color.changed) {
			this._color.changed = true;
			this._changed ~= &this.encodeColor;
		}
		return value;
	}

	public pure nothrow @safe encodeColor(Buffer buffer) {
		with(buffer) {
			writeBytes(varuint.encode(3));
			writeBytes(varuint.encode(0));
			writeBigEndianByte(this._color.value);
		}
	}

	public pure nothrow @property @safe @nogc string nametag() {
		return _nametag.value;
	}

	public pure nothrow @property @safe string nametag(string value) {
		this._cached = false;
		this._nametag.value = value;
		if(!this._nametag.changed) {
			this._nametag.changed = true;
			this._changed ~= &this.encodeNametag;
		}
		return value;
	}

	public pure nothrow @safe encodeNametag(Buffer buffer) {
		with(buffer) {
			writeBytes(varuint.encode(4));
			writeBytes(varuint.encode(4));
			writeBytes(varuint.encode(cast(uint)this._nametag.value.length)); writeString(this._nametag.value);
		}
	}

	public pure nothrow @property @safe @nogc long owner() {
		return _owner.value;
	}

	public pure nothrow @property @safe long owner(long value) {
		this._cached = false;
		this._owner.value = value;
		if(!this._owner.changed) {
			this._owner.changed = true;
			this._changed ~= &this.encodeOwner;
		}
		return value;
	}

	public pure nothrow @safe encodeOwner(Buffer buffer) {
		with(buffer) {
			writeBytes(varuint.encode(5));
			writeBytes(varuint.encode(7));
			writeBytes(varlong.encode(this._owner.value));
		}
	}

	public pure nothrow @property @safe @nogc short air() {
		return _air;
	}

	public pure nothrow @property @safe short air(short value) {
		this._cached = false;
		this._air = value;
		return value;
	}

	public pure nothrow @safe encodeAir(Buffer buffer) {
		with(buffer) {
			writeBytes(varuint.encode(7));
			writeBytes(varuint.encode(1));
			writeLittleEndianShort(this._air);
		}
	}

	public pure nothrow @property @safe @nogc int potionColor() {
		return _potionColor.value;
	}

	public pure nothrow @property @safe int potionColor(int value) {
		this._cached = false;
		this._potionColor.value = value;
		if(!this._potionColor.changed) {
			this._potionColor.changed = true;
			this._changed ~= &this.encodePotionColor;
		}
		return value;
	}

	public pure nothrow @safe encodePotionColor(Buffer buffer) {
		with(buffer) {
			writeBytes(varuint.encode(8));
			writeBytes(varuint.encode(2));
			writeBytes(varint.encode(this._potionColor.value));
		}
	}

	public pure nothrow @property @safe @nogc byte potionAmbient() {
		return _potionAmbient.value;
	}

	public pure nothrow @property @safe byte potionAmbient(byte value) {
		this._cached = false;
		this._potionAmbient.value = value;
		if(!this._potionAmbient.changed) {
			this._potionAmbient.changed = true;
			this._changed ~= &this.encodePotionAmbient;
		}
		return value;
	}

	public pure nothrow @safe encodePotionAmbient(Buffer buffer) {
		with(buffer) {
			writeBytes(varuint.encode(9));
			writeBytes(varuint.encode(0));
			writeBigEndianByte(this._potionAmbient.value);
		}
	}

	public pure nothrow @property @safe @nogc byte slimeSize() {
		return _slimeSize.value;
	}

	public pure nothrow @property @safe byte slimeSize(byte value) {
		this._cached = false;
		this._slimeSize.value = value;
		if(!this._slimeSize.changed) {
			this._slimeSize.changed = true;
			this._changed ~= &this.encodeSlimeSize;
		}
		return value;
	}

	public pure nothrow @safe encodeSlimeSize(Buffer buffer) {
		with(buffer) {
			writeBytes(varuint.encode(16));
			writeBytes(varuint.encode(0));
			writeBigEndianByte(this._slimeSize.value);
		}
	}

	public pure nothrow @property @safe @nogc byte playerFlags() {
		return _playerFlags.value;
	}

	public pure nothrow @property @safe byte playerFlags(byte value) {
		this._cached = false;
		this._playerFlags.value = value;
		if(!this._playerFlags.changed) {
			this._playerFlags.changed = true;
			this._changed ~= &this.encodePlayerFlags;
		}
		return value;
	}

	public pure nothrow @safe encodePlayerFlags(Buffer buffer) {
		with(buffer) {
			writeBytes(varuint.encode(27));
			writeBytes(varuint.encode(0));
			writeBigEndianByte(this._playerFlags.value);
		}
	}

	public pure nothrow @property @safe bool asleep() {
		return (_playerFlags.value >>> 1) & 1;
	}

	public pure nothrow @property @safe bool asleep(bool value) {
		if(value) playerFlags = cast(byte)(_playerFlags.value | (cast(byte)true << 1));
		else playerFlags = cast(byte)(_playerFlags.value & ~(cast(byte)true << 1));
		return value;
	}

	public pure nothrow @property @safe @nogc int playerIndex() {
		return _playerIndex.value;
	}

	public pure nothrow @property @safe int playerIndex(int value) {
		this._cached = false;
		this._playerIndex.value = value;
		if(!this._playerIndex.changed) {
			this._playerIndex.changed = true;
			this._changed ~= &this.encodePlayerIndex;
		}
		return value;
	}

	public pure nothrow @safe encodePlayerIndex(Buffer buffer) {
		with(buffer) {
			writeBytes(varuint.encode(28));
			writeBytes(varuint.encode(2));
			writeBytes(varint.encode(this._playerIndex.value));
		}
	}

	public pure nothrow @property @safe @nogc Tuple!(int, "x", int, "y", int, "z") bedPosition() {
		return _bedPosition.value;
	}

	public pure nothrow @property @safe Tuple!(int, "x", int, "y", int, "z") bedPosition(Tuple!(int, "x", int, "y", int, "z") value) {
		this._cached = false;
		this._bedPosition.value = value;
		if(!this._bedPosition.changed) {
			this._bedPosition.changed = true;
			this._changed ~= &this.encodeBedPosition;
		}
		return value;
	}

	public pure nothrow @safe encodeBedPosition(Buffer buffer) {
		with(buffer) {
			writeBytes(varuint.encode(29));
			writeBytes(varuint.encode(6));
			writeBytes(varint.encode(this._bedPosition.value.x)); writeBytes(varint.encode(this._bedPosition.value.y)); writeBytes(varint.encode(this._bedPosition.value.z));
		}
	}

	public pure nothrow @property @safe @nogc long leadHolder() {
		return _leadHolder;
	}

	public pure nothrow @property @safe long leadHolder(long value) {
		this._cached = false;
		this._leadHolder = value;
		return value;
	}

	public pure nothrow @safe encodeLeadHolder(Buffer buffer) {
		with(buffer) {
			writeBytes(varuint.encode(38));
			writeBytes(varuint.encode(7));
			writeBytes(varlong.encode(this._leadHolder));
		}
	}

	public pure nothrow @property @safe @nogc float scale() {
		return _scale.value;
	}

	public pure nothrow @property @safe float scale(float value) {
		this._cached = false;
		this._scale.value = value;
		if(!this._scale.changed) {
			this._scale.changed = true;
			this._changed ~= &this.encodeScale;
		}
		return value;
	}

	public pure nothrow @safe encodeScale(Buffer buffer) {
		with(buffer) {
			writeBytes(varuint.encode(39));
			writeBytes(varuint.encode(3));
			writeLittleEndianFloat(this._scale.value);
		}
	}

	public pure nothrow @property @safe @nogc string interactiveTag() {
		return _interactiveTag.value;
	}

	public pure nothrow @property @safe string interactiveTag(string value) {
		this._cached = false;
		this._interactiveTag.value = value;
		if(!this._interactiveTag.changed) {
			this._interactiveTag.changed = true;
			this._changed ~= &this.encodeInteractiveTag;
		}
		return value;
	}

	public pure nothrow @safe encodeInteractiveTag(Buffer buffer) {
		with(buffer) {
			writeBytes(varuint.encode(40));
			writeBytes(varuint.encode(4));
			writeBytes(varuint.encode(cast(uint)this._interactiveTag.value.length)); writeString(this._interactiveTag.value);
		}
	}

	public pure nothrow @property @safe @nogc string interactiveTagUrl() {
		return _interactiveTagUrl.value;
	}

	public pure nothrow @property @safe string interactiveTagUrl(string value) {
		this._cached = false;
		this._interactiveTagUrl.value = value;
		if(!this._interactiveTagUrl.changed) {
			this._interactiveTagUrl.changed = true;
			this._changed ~= &this.encodeInteractiveTagUrl;
		}
		return value;
	}

	public pure nothrow @safe encodeInteractiveTagUrl(Buffer buffer) {
		with(buffer) {
			writeBytes(varuint.encode(43));
			writeBytes(varuint.encode(4));
			writeBytes(varuint.encode(cast(uint)this._interactiveTagUrl.value.length)); writeString(this._interactiveTagUrl.value);
		}
	}

	public pure nothrow @property @safe @nogc short maxAir() {
		return _maxAir.value;
	}

	public pure nothrow @property @safe short maxAir(short value) {
		this._cached = false;
		this._maxAir.value = value;
		if(!this._maxAir.changed) {
			this._maxAir.changed = true;
			this._changed ~= &this.encodeMaxAir;
		}
		return value;
	}

	public pure nothrow @safe encodeMaxAir(Buffer buffer) {
		with(buffer) {
			writeBytes(varuint.encode(44));
			writeBytes(varuint.encode(1));
			writeLittleEndianShort(this._maxAir.value);
		}
	}

	public pure nothrow @property @safe @nogc int markVariant() {
		return _markVariant.value;
	}

	public pure nothrow @property @safe int markVariant(int value) {
		this._cached = false;
		this._markVariant.value = value;
		if(!this._markVariant.changed) {
			this._markVariant.changed = true;
			this._changed ~= &this.encodeMarkVariant;
		}
		return value;
	}

	public pure nothrow @safe encodeMarkVariant(Buffer buffer) {
		with(buffer) {
			writeBytes(varuint.encode(45));
			writeBytes(varuint.encode(2));
			writeBytes(varint.encode(this._markVariant.value));
		}
	}

	public pure nothrow @property @safe @nogc float boundingBoxWidth() {
		return _boundingBoxWidth.value;
	}

	public pure nothrow @property @safe float boundingBoxWidth(float value) {
		this._cached = false;
		this._boundingBoxWidth.value = value;
		if(!this._boundingBoxWidth.changed) {
			this._boundingBoxWidth.changed = true;
			this._changed ~= &this.encodeBoundingBoxWidth;
		}
		return value;
	}

	public pure nothrow @safe encodeBoundingBoxWidth(Buffer buffer) {
		with(buffer) {
			writeBytes(varuint.encode(54));
			writeBytes(varuint.encode(3));
			writeLittleEndianFloat(this._boundingBoxWidth.value);
		}
	}

	public pure nothrow @property @safe @nogc float boundingBoxHeight() {
		return _boundingBoxHeight.value;
	}

	public pure nothrow @property @safe float boundingBoxHeight(float value) {
		this._cached = false;
		this._boundingBoxHeight.value = value;
		if(!this._boundingBoxHeight.changed) {
			this._boundingBoxHeight.changed = true;
			this._changed ~= &this.encodeBoundingBoxHeight;
		}
		return value;
	}

	public pure nothrow @safe encodeBoundingBoxHeight(Buffer buffer) {
		with(buffer) {
			writeBytes(varuint.encode(55));
			writeBytes(varuint.encode(3));
			writeLittleEndianFloat(this._boundingBoxHeight.value);
		}
	}

	public pure nothrow @property @safe @nogc int fuseLength() {
		return _fuseLength.value;
	}

	public pure nothrow @property @safe int fuseLength(int value) {
		this._cached = false;
		this._fuseLength.value = value;
		if(!this._fuseLength.changed) {
			this._fuseLength.changed = true;
			this._changed ~= &this.encodeFuseLength;
		}
		return value;
	}

	public pure nothrow @safe encodeFuseLength(Buffer buffer) {
		with(buffer) {
			writeBytes(varuint.encode(56));
			writeBytes(varuint.encode(2));
			writeBytes(varint.encode(this._fuseLength.value));
		}
	}

	public pure nothrow @safe encode(Buffer buffer) {
		with(buffer) {
			if(this._cached) {
				buffer.writeBytes(this._cache);
			} else {
				immutable start = buffer._buffer.length;
				writeBytes(varuint.encode(cast(uint)this._changed.length));
				foreach(del ; this._changed) del(buffer);
				this._cached = true;
				this._cache = buffer._buffer[start..$];
			}
		}
	}

	public static pure nothrow @safe Metadata decode(Buffer buffer) {
		return null;
	}

}