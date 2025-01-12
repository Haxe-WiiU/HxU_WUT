package wut.coreinit;

@:cppInclude("coreinit/cache.h") @:include("coreinit/cache.h")

extern class Cache {
	@:native("DCInvalidateRange")
	extern public static function DCInvalidateRange(addr:Ptr<Void>, size:Int):Void;

    @:native("DCFlushRange")
	extern public static function DCFlushRange(addr:VoidPtr, size:Int):Void;

	@:native("DCStoreRange")
	extern public static function DCStoreRange(addr:Ptr<Void>, size:Int):Void;

	@:native("DCFlushRangeNoSync")
	extern public static function DCFlushRangeNoSync(addr:Ptr<Void>, size:Int):Void;

	@:native("DCStoreRangeNoSync")
	extern public static function DCStoreRangeNoSync(addr:Ptr<Void>, size:Int):Void;

	@:native("DCZeroRange")
    extern public static function DCZeroRange(addr:Ptr<Void>, size:Int):Void;

	@:native("DCTouchRange")
    extern public static function DCTouchRange(addr:Ptr<Void>, size:Int):Void;

	@:native("ICInvalidateRange")
    extern public static function ICInvalidateRange(addr:Ptr<Void>, size:Int):Void;

	@:native("OSMemoryBarrier")
    extern public static function OSMemoryBarrier():Void;
}