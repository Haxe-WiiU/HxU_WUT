package wut.coreinit;

@:cppInclude("coreinit/time.h") @:include("coreinit/time.h")

@:include("coreinit/time.h")
@:native("OSTick")
extern typedef OSTick = Int32;

@:include("coreinit/time.h")
@:native("OSTime")
extern typedef OSTime = Int64;

@:include("coreinit/time.h")
@:native("OSCalendarTime")
extern typedef OSCalendarTime = {
    var tm_sec:Int32;
    var tm_min:Int32;
    var tm_hour:Int32;
    var tm_mday:Int32;
    var tm_mon:Int32;
    var tm_year:Int32;
    var tm_wday:Int32;
    var tm_yday:Int32;
    var tm_msec:Int32;
    var tm_usec:Int32;
}

@:cppInclude("coreinit/time.h") 
@:include("coreinit/time.h")
extern class Time {
    @:include("coreinit/time.h")
    @:native("OSSecondsToTicks")
    extern public static function OSSecondsToTicks(val:UInt64):OSTick;

    @:include("coreinit/time.h")
	@:native("OSGetTime")
    extern public static function OSGetTime():OSTime;

	@:include("coreinit/time.h")
	@:native("OSGetSystemTime")
    extern public static function OSGetSystemTime():OSTime;

    @:include("coreinit/time.h")
	@:native("OSGetTick")
    extern public static function OSGetTick():OSTick;

    @:include("coreinit/time.h")
	@:native("OSGetSystemTick")
    extern public static function OSGetSystemTick():OSTick;

    @:include("coreinit/time.h")
    @:native("OSCalendarTimeToTicks")
    extern public static function OSCalendarTimeToTicks(calendarTime:Ptr<OSCalendarTime>):OSTick;
}