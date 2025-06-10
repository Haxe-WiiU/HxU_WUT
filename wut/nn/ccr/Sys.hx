package wut.nn.ccr;

@:cppInclude("nn/ccr/sys.h") @:include("nn/ccr/sys.h")

@:include("nn/ccr/sys.h")
@:native("CCRSysLCDMode")
extern enum CCRSysLCDMode {
    CCR_SYS_LCD_MODE_BRIGHTNESS_1;
    CCR_SYS_LCD_MODE_BRIGHTNESS_2;
    CCR_SYS_LCD_MODE_BRIGHTNESS_3;
    CCR_SYS_LCD_MODE_BRIGHTNESS_4;
    CCR_SYS_LCD_MODE_BRIGHTNESS_5;
}

@:include("nn/ccr/sys.h")
extern class Sys {
    @:include("nn/ccr/sys.h")
    @:native("CCRSysDRCShutdown")
    public static function ccrSysDRCShutdown():Int32;

    @:include("nn/ccr/sys.h")
    @:native("CCRSysSetCurrentLCDMode")
    public static function CCRSysSetCurrentLCDMode(mode:CCRSysLCDMode):Int32;

    @:include("nn/ccr/sys.h")
    @:native("CCRSysGetCurrentLCDMode")
    public static function CCRSysGetCurrentLCDMode(mode:Ptr<CCRSysLCDMode>):Int32;
}