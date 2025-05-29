package wut.nn.ccr;

@:cppInclude("nn/ccr/sys.h") @:include("nn/ccr/sys.h")

@:include("nn/ccr/sys.h")
@:native("CCRSysLCDMode")
extern typedef CCRSysLCDMode = Int;

@:include("nn/ccr/sys.h")
extern class Sys {

    @:include("nn/ccr/sys.h")
    @:native("CCRSysDRCShutdown")
    public static function ccrSysDRCShutdown():Int32;

    @:include("nn/ccr/sys.h")
    @:native("CCRSysSetCurrentLCDMode")
    public static function ccrSysSetCurrentLCDMode(mode:CCRSysLCDMode):Int32;

    @:include("nn/ccr/sys.h")
    @:native("CCRSysGetCurrentLCDMode")
    public static function ccrSysGetCurrentLCDMode(mode:Ptr<CCRSysLCDMode>):Int32;
}