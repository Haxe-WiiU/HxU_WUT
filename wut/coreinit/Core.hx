package wut.coreinit;

@:cppInclude("coreinit/core.h") @:include("coreinit/core.h")

extern class Core {
	@:native("OSGetCoreCount")
	@:include("coreinit/core.h")
	extern public static function OSGetCoreCount():UInt32;

	@:native("OSGetCoreId")
	@:include("coreinit/core.h")
	extern public static function OSGetCoreId():UInt32;

	@:native("OSGetMainCoreId")
	@:include("coreinit/core.h")
	extern public static function OSGetMainCoreId():UInt32;

	@:native("OSIsMainCore")
	@:include("coreinit/core.h")
	extern public static function OSIsMainCore():Bool;
}