/*
 * This file was automatically generated by sel-utils and
 * released under the MIT License.
 * 
 * License: https://github.com/sel-project/sel-utils/blob/master/LICENSE
 * Repository: https://github.com/sel-project/sel-utils
 * Generated from https://github.com/sel-project/sel-utils/blob/master/xml/metadata/pocket105.xml
 */
module sul.metadata.pocket105;

import std.typecons : Tuple, tuple;

import sul.utils.buffer : Buffer;
import sul.utils.metadataflags;
import sul.utils.var;

static import sul.protocol.pocket105.types;

alias Changed(T) = Tuple!(T, "value", bool, "changed");

enum MetadataType : uint {

	BYTE = 0,
	SHORT = 1,
	INT = 2,
	FLOAT = 3,
	STRING = 4,
	SLOT = 5,
	BLOCK_POSITION = 6,
	LONG = 7,
	ENTITY_POSITION = 8,
}

class Metadata {

	public enum ENTITY_FLAGS : size_t {
		ON_FIRE = 0,
		SNEAKING = 1,
		RIDING = 2,
		SPRINTING = 3,
		USING_ITEM = 4,
		INVISIBLE = 5,
		TEMPTED = 6,
		IN_LOVE = 7,
		SADDLED = 8,
		POWERED = 9,
		IGNITED = 10,
		BABY = 11,
		CONVERTING = 12,
		CRITICAL = 13,
		SHOW_NAMETAG = 14,
		ALWAYS_SHOW_NAMETAG = 15,
		NO_AI = 16,
		SILENT = 17,
		CLIMBING = 18,
		RESTING = 19,
		SITTING = 20,
		ANGRY = 21,
		INTERESTED = 22,
		CHARGED = 23,
		TAMED = 24,
		LEASHED = 25,
		SHEARED = 26,
		GLIDING = 27,
		ELDER = 28,
		MOVING = 29,
		BREATHING = 30,
		CHESTED = 31,
		STACKABLE = 32,
		IDLING = 36,
	}
	public enum uint VARIANT = 2;
	public enum uint COLOR = 3;
	public enum uint NAMETAG = 4;
	public enum uint OWNER = 5;
	public enum uint AIR = 7;
	public enum uint POTION_COLOR = 8;
	public enum uint POTION_AMBIENT = 9;
	public enum uint SLIME_SIZE = 16;
	public enum PLAYER_FLAGS : size_t {
		ASLEEP = 1,
	}
	public enum uint PLAYER_INDEX = 28;
	public enum uint BED_POSITION = 29;
	public enum uint LEAD_HOLDER = 38;
	public enum uint SCALE = 39;
	public enum uint INTERACTIVE_TAG = 40;
	public enum uint INTERACTIVE_TAG_URL = 43;
	public enum uint MAX_AIR = 44;
	public enum uint MARK_VARIANT = 45;
	public enum uint BOUNDING_BOX_WIDTH = 54;
	public enum uint BOUNDING_BOX_HEIGHT = 55;
	public enum uint FUSE_LENGTH = 56;
	public enum uint AREA_EFFECT_CLOUD_RADIUS = 61;
	public enum uint AREA_EFFECT_CLOUD_WAITING = 62;
	public enum uint AREA_EFFECT_CLOUD_PARTICLE = 63;
	public enum uint TRADING_PLAYER = 68;

	public DecodedMetadata[] decoded;

	private bool _cached = false;
	private ubyte[] _cache;

	private void delegate(Buffer) pure nothrow @safe[] _changed;

	private MetadataFlags!(long) _entityFlags = cast(MetadataFlags!(long))0;
	private Changed!(int) _variant;
	private Changed!(byte) _color;
	private Changed!(string) _nametag;
	private Changed!(long) _owner = tuple(cast(long)-1, false);
	private short _air = cast(short)0;
	private Changed!(int) _potionColor;
	private Changed!(byte) _potionAmbient;
	private Changed!(byte) _slimeSize = tuple(cast(byte)1, false);
	private Changed!(MetadataFlags!(byte)) _playerFlags;
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
	private Changed!(float) _areaEffectCloudRadius;
	private Changed!(int) _areaEffectCloudWaiting;
	private Changed!(int) _areaEffectCloudParticle;
	private Changed!(long) _tradingPlayer;

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
		return _entityFlags._0;
	}

	public pure nothrow @property @safe bool onFire(bool value) {
		_entityFlags._0 = value;
		return value;
	}

	public pure nothrow @property @safe bool sneaking() {
		return _entityFlags._1;
	}

	public pure nothrow @property @safe bool sneaking(bool value) {
		_entityFlags._1 = value;
		return value;
	}

	public pure nothrow @property @safe bool riding() {
		return _entityFlags._2;
	}

	public pure nothrow @property @safe bool riding(bool value) {
		_entityFlags._2 = value;
		return value;
	}

	public pure nothrow @property @safe bool sprinting() {
		return _entityFlags._3;
	}

	public pure nothrow @property @safe bool sprinting(bool value) {
		_entityFlags._3 = value;
		return value;
	}

	public pure nothrow @property @safe bool usingItem() {
		return _entityFlags._4;
	}

	public pure nothrow @property @safe bool usingItem(bool value) {
		_entityFlags._4 = value;
		return value;
	}

	public pure nothrow @property @safe bool invisible() {
		return _entityFlags._5;
	}

	public pure nothrow @property @safe bool invisible(bool value) {
		_entityFlags._5 = value;
		return value;
	}

	public pure nothrow @property @safe bool tempted() {
		return _entityFlags._6;
	}

	public pure nothrow @property @safe bool tempted(bool value) {
		_entityFlags._6 = value;
		return value;
	}

	public pure nothrow @property @safe bool inLove() {
		return _entityFlags._7;
	}

	public pure nothrow @property @safe bool inLove(bool value) {
		_entityFlags._7 = value;
		return value;
	}

	public pure nothrow @property @safe bool saddled() {
		return _entityFlags._8;
	}

	public pure nothrow @property @safe bool saddled(bool value) {
		_entityFlags._8 = value;
		return value;
	}

	public pure nothrow @property @safe bool powered() {
		return _entityFlags._9;
	}

	public pure nothrow @property @safe bool powered(bool value) {
		_entityFlags._9 = value;
		return value;
	}

	public pure nothrow @property @safe bool ignited() {
		return _entityFlags._10;
	}

	public pure nothrow @property @safe bool ignited(bool value) {
		_entityFlags._10 = value;
		return value;
	}

	public pure nothrow @property @safe bool baby() {
		return _entityFlags._11;
	}

	public pure nothrow @property @safe bool baby(bool value) {
		_entityFlags._11 = value;
		return value;
	}

	public pure nothrow @property @safe bool converting() {
		return _entityFlags._12;
	}

	public pure nothrow @property @safe bool converting(bool value) {
		_entityFlags._12 = value;
		return value;
	}

	public pure nothrow @property @safe bool critical() {
		return _entityFlags._13;
	}

	public pure nothrow @property @safe bool critical(bool value) {
		_entityFlags._13 = value;
		return value;
	}

	public pure nothrow @property @safe bool showNametag() {
		return _entityFlags._14;
	}

	public pure nothrow @property @safe bool showNametag(bool value) {
		_entityFlags._14 = value;
		return value;
	}

	public pure nothrow @property @safe bool alwaysShowNametag() {
		return _entityFlags._15;
	}

	public pure nothrow @property @safe bool alwaysShowNametag(bool value) {
		_entityFlags._15 = value;
		return value;
	}

	public pure nothrow @property @safe bool noAi() {
		return _entityFlags._16;
	}

	public pure nothrow @property @safe bool noAi(bool value) {
		_entityFlags._16 = value;
		return value;
	}

	public pure nothrow @property @safe bool silent() {
		return _entityFlags._17;
	}

	public pure nothrow @property @safe bool silent(bool value) {
		_entityFlags._17 = value;
		return value;
	}

	public pure nothrow @property @safe bool climbing() {
		return _entityFlags._18;
	}

	public pure nothrow @property @safe bool climbing(bool value) {
		_entityFlags._18 = value;
		return value;
	}

	public pure nothrow @property @safe bool resting() {
		return _entityFlags._19;
	}

	public pure nothrow @property @safe bool resting(bool value) {
		_entityFlags._19 = value;
		return value;
	}

	public pure nothrow @property @safe bool sitting() {
		return _entityFlags._20;
	}

	public pure nothrow @property @safe bool sitting(bool value) {
		_entityFlags._20 = value;
		return value;
	}

	public pure nothrow @property @safe bool angry() {
		return _entityFlags._21;
	}

	public pure nothrow @property @safe bool angry(bool value) {
		_entityFlags._21 = value;
		return value;
	}

	public pure nothrow @property @safe bool interested() {
		return _entityFlags._22;
	}

	public pure nothrow @property @safe bool interested(bool value) {
		_entityFlags._22 = value;
		return value;
	}

	public pure nothrow @property @safe bool charged() {
		return _entityFlags._23;
	}

	public pure nothrow @property @safe bool charged(bool value) {
		_entityFlags._23 = value;
		return value;
	}

	public pure nothrow @property @safe bool tamed() {
		return _entityFlags._24;
	}

	public pure nothrow @property @safe bool tamed(bool value) {
		_entityFlags._24 = value;
		return value;
	}

	public pure nothrow @property @safe bool leashed() {
		return _entityFlags._25;
	}

	public pure nothrow @property @safe bool leashed(bool value) {
		_entityFlags._25 = value;
		return value;
	}

	public pure nothrow @property @safe bool sheared() {
		return _entityFlags._26;
	}

	public pure nothrow @property @safe bool sheared(bool value) {
		_entityFlags._26 = value;
		return value;
	}

	public pure nothrow @property @safe bool gliding() {
		return _entityFlags._27;
	}

	public pure nothrow @property @safe bool gliding(bool value) {
		_entityFlags._27 = value;
		return value;
	}

	public pure nothrow @property @safe bool elder() {
		return _entityFlags._28;
	}

	public pure nothrow @property @safe bool elder(bool value) {
		_entityFlags._28 = value;
		return value;
	}

	public pure nothrow @property @safe bool moving() {
		return _entityFlags._29;
	}

	public pure nothrow @property @safe bool moving(bool value) {
		_entityFlags._29 = value;
		return value;
	}

	public pure nothrow @property @safe bool breathing() {
		return _entityFlags._30;
	}

	public pure nothrow @property @safe bool breathing(bool value) {
		_entityFlags._30 = value;
		return value;
	}

	public pure nothrow @property @safe bool chested() {
		return _entityFlags._31;
	}

	public pure nothrow @property @safe bool chested(bool value) {
		_entityFlags._31 = value;
		return value;
	}

	public pure nothrow @property @safe bool stackable() {
		return _entityFlags._32;
	}

	public pure nothrow @property @safe bool stackable(bool value) {
		_entityFlags._32 = value;
		return value;
	}

	public pure nothrow @property @safe bool idling() {
		return _entityFlags._36;
	}

	public pure nothrow @property @safe bool idling(bool value) {
		_entityFlags._36 = value;
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
		return _playerFlags.value._1;
	}

	public pure nothrow @property @safe bool asleep(bool value) {
		_playerFlags.value._1 = value;
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

	public pure nothrow @property @safe @nogc float areaEffectCloudRadius() {
		return _areaEffectCloudRadius.value;
	}

	public pure nothrow @property @safe float areaEffectCloudRadius(float value) {
		this._cached = false;
		this._areaEffectCloudRadius.value = value;
		if(!this._areaEffectCloudRadius.changed) {
			this._areaEffectCloudRadius.changed = true;
			this._changed ~= &this.encodeAreaEffectCloudRadius;
		}
		return value;
	}

	public pure nothrow @safe encodeAreaEffectCloudRadius(Buffer buffer) {
		with(buffer) {
			writeBytes(varuint.encode(61));
			writeBytes(varuint.encode(3));
			writeLittleEndianFloat(this._areaEffectCloudRadius.value);
		}
	}

	public pure nothrow @property @safe @nogc int areaEffectCloudWaiting() {
		return _areaEffectCloudWaiting.value;
	}

	public pure nothrow @property @safe int areaEffectCloudWaiting(int value) {
		this._cached = false;
		this._areaEffectCloudWaiting.value = value;
		if(!this._areaEffectCloudWaiting.changed) {
			this._areaEffectCloudWaiting.changed = true;
			this._changed ~= &this.encodeAreaEffectCloudWaiting;
		}
		return value;
	}

	public pure nothrow @safe encodeAreaEffectCloudWaiting(Buffer buffer) {
		with(buffer) {
			writeBytes(varuint.encode(62));
			writeBytes(varuint.encode(2));
			writeBytes(varint.encode(this._areaEffectCloudWaiting.value));
		}
	}

	public pure nothrow @property @safe @nogc int areaEffectCloudParticle() {
		return _areaEffectCloudParticle.value;
	}

	public pure nothrow @property @safe int areaEffectCloudParticle(int value) {
		this._cached = false;
		this._areaEffectCloudParticle.value = value;
		if(!this._areaEffectCloudParticle.changed) {
			this._areaEffectCloudParticle.changed = true;
			this._changed ~= &this.encodeAreaEffectCloudParticle;
		}
		return value;
	}

	public pure nothrow @safe encodeAreaEffectCloudParticle(Buffer buffer) {
		with(buffer) {
			writeBytes(varuint.encode(63));
			writeBytes(varuint.encode(2));
			writeBytes(varint.encode(this._areaEffectCloudParticle.value));
		}
	}

	public pure nothrow @property @safe @nogc long tradingPlayer() {
		return _tradingPlayer.value;
	}

	public pure nothrow @property @safe long tradingPlayer(long value) {
		this._cached = false;
		this._tradingPlayer.value = value;
		if(!this._tradingPlayer.changed) {
			this._tradingPlayer.changed = true;
			this._changed ~= &this.encodeTradingPlayer;
		}
		return value;
	}

	public pure nothrow @safe encodeTradingPlayer(Buffer buffer) {
		with(buffer) {
			writeBytes(varuint.encode(68));
			writeBytes(varuint.encode(7));
			writeBytes(varlong.encode(this._tradingPlayer.value));
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
		auto metadata = new Metadata();
		with(buffer) {
			uint id;
			size_t length=varuint.decode(_buffer, &_index);
			while(length-- > 0) {
				id=varuint.decode(_buffer, &_index);
				switch(varuint.decode(_buffer, &_index)) {
					case 0:
						byte _0;
						_0=readBigEndianByte();
						metadata.decoded ~= DecodedMetadata.fromByte(id, _0);
						break;
					case 1:
						short _1;
						_1=readLittleEndianShort();
						metadata.decoded ~= DecodedMetadata.fromShort(id, _1);
						break;
					case 2:
						int _2;
						_2=varint.decode(_buffer, &_index);
						metadata.decoded ~= DecodedMetadata.fromInt(id, _2);
						break;
					case 3:
						float _3;
						_3=readLittleEndianFloat();
						metadata.decoded ~= DecodedMetadata.fromFloat(id, _3);
						break;
					case 4:
						string _4;
						uint xq=varuint.decode(_buffer, &_index); _4=readString(xq);
						metadata.decoded ~= DecodedMetadata.fromString(id, _4);
						break;
					case 5:
						sul.protocol.pocket105.types.Slot _5;
						_5.decode(bufferInstance);
						metadata.decoded ~= DecodedMetadata.fromSlot(id, _5);
						break;
					case 6:
						Tuple!(int, "x", int, "y", int, "z") _6;
						_6.x=varint.decode(_buffer, &_index); _6.y=varint.decode(_buffer, &_index); _6.z=varint.decode(_buffer, &_index);
						metadata.decoded ~= DecodedMetadata.fromBlockPosition(id, _6);
						break;
					case 7:
						long _7;
						_7=varlong.decode(_buffer, &_index);
						metadata.decoded ~= DecodedMetadata.fromLong(id, _7);
						break;
					case 8:
						Tuple!(float, "x", float, "y", float, "z") _8;
						_8.x=readLittleEndianFloat(); _8.y=readLittleEndianFloat(); _8.z=readLittleEndianFloat();
						metadata.decoded ~= DecodedMetadata.fromEntityPosition(id, _8);
						break;
					default:
						break;
				}
			}
		}
		return metadata;
	}

}

class DecodedMetadata {

	public immutable uint id;
	public immutable uint type;

	union {
		byte byte_;
		short short_;
		int int_;
		float float_;
		string string_;
		sul.protocol.pocket105.types.Slot slot;
		Tuple!(int, "x", int, "y", int, "z") block_position;
		long long_;
		Tuple!(float, "x", float, "y", float, "z") entity_position;
	}

	private pure nothrow @safe @nogc this(uint id, uint type) {
		this.id = id;
		this.type = type;
	}

	public static pure nothrow @trusted DecodedMetadata fromByte(uint id, byte value) {
		auto ret = new DecodedMetadata(id, 0);
		ret.byte_ = value;
		return ret;
	}

	public static pure nothrow @trusted DecodedMetadata fromShort(uint id, short value) {
		auto ret = new DecodedMetadata(id, 1);
		ret.short_ = value;
		return ret;
	}

	public static pure nothrow @trusted DecodedMetadata fromInt(uint id, int value) {
		auto ret = new DecodedMetadata(id, 2);
		ret.int_ = value;
		return ret;
	}

	public static pure nothrow @trusted DecodedMetadata fromFloat(uint id, float value) {
		auto ret = new DecodedMetadata(id, 3);
		ret.float_ = value;
		return ret;
	}

	public static pure nothrow @trusted DecodedMetadata fromString(uint id, string value) {
		auto ret = new DecodedMetadata(id, 4);
		ret.string_ = value;
		return ret;
	}

	public static pure nothrow @trusted DecodedMetadata fromSlot(uint id, sul.protocol.pocket105.types.Slot value) {
		auto ret = new DecodedMetadata(id, 5);
		ret.slot = value;
		return ret;
	}

	public static pure nothrow @trusted DecodedMetadata fromBlockPosition(uint id, Tuple!(int, "x", int, "y", int, "z") value) {
		auto ret = new DecodedMetadata(id, 6);
		ret.block_position = value;
		return ret;
	}

	public static pure nothrow @trusted DecodedMetadata fromLong(uint id, long value) {
		auto ret = new DecodedMetadata(id, 7);
		ret.long_ = value;
		return ret;
	}

	public static pure nothrow @trusted DecodedMetadata fromEntityPosition(uint id, Tuple!(float, "x", float, "y", float, "z") value) {
		auto ret = new DecodedMetadata(id, 8);
		ret.entity_position = value;
		return ret;
	}

}