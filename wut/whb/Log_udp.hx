package wut.whb;

@:cppInclude("whb/log_udp.h")
@:include("whb/log_udp.h")
extern class Log_udp {
    @:native("WHBLogUdpInit")
    @:include("whb/log_udp.h")
    extern public static function WHBLogUdpInit():Bool;

    @:native("WHBLogUdpDeinit")
    @:include("whb/log_udp.h")
    extern public static function WHBLogUdpDeinit():Bool;
}