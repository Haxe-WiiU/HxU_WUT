package wut.whb;

@:cppInclude("whb/crash.h")
@:include("whb/crash.h")
extern class Crash {
    @:native("WHBInitCrashHandler")
    @:include("whb/crash.h")
    extern public static function WHBInitCrashHandler():Bool;
}