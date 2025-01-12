package wut.whb;

@:cppInclude("whb/proc.h")
@:include("whb/proc.h")
extern class Proc {
	@:native("WHBProcInit")
	extern public static function WHBProcInit():Void;

	@:native("WHBProcShutdown")
	extern public static function WHBProcShutdown():Void;

	@:native("WHBProcStopRunning")
	extern public static function WHBProcStopRunning():Void;

	@:native("WHBProcIsRunning")
	extern public static function WHBProcIsRunning():Bool;
}
