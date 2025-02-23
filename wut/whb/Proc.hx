package wut.whb;

@:cppInclude("whb/proc.h")
@:include("whb/proc.h")
extern class Proc {
	@:native("WHBProcInit")
	@:include("whb/proc.h")
	extern public static function WHBProcInit():Void;

	@:native("WHBProcShutdown")
	@:include("whb/proc.h")
	extern public static function WHBProcShutdown():Void;

	@:native("WHBProcStopRunning")
	@:include("whb/proc.h")
	extern public static function WHBProcStopRunning():Void;

	@:native("WHBProcIsRunning")
	@:include("whb/proc.h")
	extern public static function WHBProcIsRunning():Bool;
}
