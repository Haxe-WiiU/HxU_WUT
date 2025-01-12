package wut.coreinit;

@:cppInclude("coreinit/time.h") @:include("coreinit/time.h")

@:native("OSTick")
extern typedef OSTick = CppType<"int32_t">

@:native("OSTime")
extern typedef OSTime = CppType<"int64_t">

@:native("OSSecondsToTicks")
extern typedef OSSecondsToTicks = (val:CppType<"uint64_t">) -> OSTick;

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