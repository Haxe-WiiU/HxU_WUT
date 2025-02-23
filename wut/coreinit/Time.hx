package wut.coreinit;

@:cppInclude("coreinit/time.h") @:include("coreinit/time.h")

@:native("OSTick")
extern typedef OSTick = Int32

@:native("OSTime")
extern typedef OSTime = Int64

extern class Time {

    @:native("OSSecondsToTicks")
    extern public static function OSSecondsToTicks(val:UInt64):OSTick;

	@:native("OSGetTime")
    extern public static function OSGetTime():OSTime;

	@:native("OSGetSystemTime")
    extern public static function OSGetSystemTime():OSTime;

	@:native("OSGetTick")
    extern public static function OSGetTick():OSTick;

	@:native("OSGetSystemTick")
    extern public static function OSGetSystemTick():OSTick;
}