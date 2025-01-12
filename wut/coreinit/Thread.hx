package wut.coreinit;

import src.wut.coreinit.Time.OSTime;

@:cppInclude("coreinit/thread.h") @:include("coreinit/thread.h")

extern class Thread {
	@:native("OSSleepTicks")
	extern public static function OSSleepTicks(ticks:OSTime):Void;
}