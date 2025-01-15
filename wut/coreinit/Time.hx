package wut.coreinit;

@:cppInclude("coreinit/time.h") @:include("coreinit/time.h")

@:native("OSTick")
extern typedef OSTick = Int32

@:native("OSTime")
extern typedef OSTime = Int64

@:native("OSSecondsToTicks")
extern typedef OSSecondsToTicks = (val:UInt64) -> OSTick;

extern class Time {
	@:native("OSGetTime")
    extern public static function OSGetTime():OSTime;

	@:native("OSGetSystemTime")
    extern public static function OSGetSystemTime():OSTime;

	@:native("OSGetTick")
    extern public static function OSGetTick():OSTick;

	@:native("OSGetSystemTick")
    extern public static function OSGetSystemTick():OSTick;
}