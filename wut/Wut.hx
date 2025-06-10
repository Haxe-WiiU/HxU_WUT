package wut; 

@:cppInclude("wut.h")
@:include("wut.h")
extern class Wut {
	@:native("WUT_DEBUG_REPORT")
	@:include("wut.h")
	extern public static function debugReport(msg:ConstCharPtr):Void;
}