package wut.coreinit;

@:cppInclude("coreinit/core.h") @:include("coreinit/core.h")

extern class Core {
	@:native("OSGetCoreCount")
	extern public static function OSGetCoreCount():UInt32;

	@:native("OSGetCoreId")
	extern public static function OSGetCoreId():UInt32;

	@:native("OSGetMainCoreId")
	extern public static function OSGetMainCoreId():UInt32;

	@:native("OSIsMainCore")
	extern public static function OSIsMainCore():Bool;
}