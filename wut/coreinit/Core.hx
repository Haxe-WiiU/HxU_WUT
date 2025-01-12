package wut.coreinit;

@:cppInclude("coreinit/core.h") @:include("coreinit/core.h")

extern class Core {
	@:native("OSGetCoreCount")
	extern public static function OSGetCoreCount():Int;

	@:native("OSGetCoreId")
	extern public static function OSGetCoreId():Int;

	@:native("OSGetMainCoreId")
	extern public static function OSGetMainCoreId():Int;

	@:native("OSIsMainCore")
	extern public static function OSIsMainCore():Bool;
}