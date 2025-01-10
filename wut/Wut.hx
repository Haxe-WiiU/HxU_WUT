package wut;

import cxx.ConstCharPtr;

@:cppInclude("wut.h")
@:include("wut.h")
class Wut {
	@:native("WUT_DEBUG_REPORT")
	extern public static function debugReport(message:ConstCharPtr):Void;
}