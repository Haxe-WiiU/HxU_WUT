package wut.coreinit;

@:cppInclude("coreinit/systeminfo.h") @:include("coreinit/systeminfo.h")

extern class Systeminfo {
    @:native("OSEnableHomeButtonMenu")
    @:include("coreinit/systeminfo.h")
    extern public static function OSEnableHomeButtonMenu(enable:Bool):Bool;

    @:native("OSIsHomeButtonMenuEnabled")
    @:include("coreinit/systeminfo.h")
    extern public static function OSIsHomeButtonMenuEnabled():Bool;
}