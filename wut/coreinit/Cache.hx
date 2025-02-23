package wut.coreinit;

@:cppInclude("coreinit/cache.h") @:include("coreinit/cache.h")

extern class Cache {
	@:native("DCInvalidateRange")
	@:include("coreinit/cache.h")
	extern public static function DCInvalidateRange(addr:VoidPtr, size:UInt32):Void;

    @:native("DCFlushRange")
	@:include("coreinit/cache.h")
	extern public static function DCFlushRange(addr:VoidPtr, size:UInt32):Void;

	@:native("DCStoreRange")
	@:include("coreinit/cache.h")
	extern public static function DCStoreRange(addr:VoidPtr, size:UInt32):Void;

	@:native("DCFlushRangeNoSync")
	@:include("coreinit/cache.h")
	extern public static function DCFlushRangeNoSync(addr:VoidPtr, size:UInt32):Void;

	@:native("DCStoreRangeNoSync")
	@:include("coreinit/cache.h")
	extern public static function DCStoreRangeNoSync(addr:VoidPtr, size:UInt32):Void;

	@:native("DCZeroRange")
	@:include("coreinit/cache.h")
    extern public static function DCZeroRange(addr:VoidPtr, size:UInt32):Void;

	@:native("DCTouchRange")
	@:include("coreinit/cache.h")
    extern public static function DCTouchRange(addr:VoidPtr, size:UInt32):Void;

	@:native("ICInvalidateRange")
	@:include("coreinit/cache.h")
    extern public static function ICInvalidateRange(addr:VoidPtr, size:UInt32):Void;

	@:native("OSMemoryBarrier")
	@:include("coreinit/cache.h")
    extern public static function OSMemoryBarrier():Void;
}