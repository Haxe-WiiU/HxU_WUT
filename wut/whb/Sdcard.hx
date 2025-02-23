package wut.whb;

@:cppInclude("whb/sdcard.h") @:include("whb/sdcard.h")

extern class Sdcard {
	@:native("WHBMountSdCard")
    @:include("whb/sdcard.h")
    extern public static function WHBMountSdCard():Bool;

	@:native("WHBGetSdCardMountPath")
    @:include("whb/sdcard.h")
    extern public static function WHBGetSdCardMountPath():Ptr<Char>;

    @:native("WHBUnmountSdCard")
    @:include("whb/sdcard.h")
    extern public static function WHBUnmountSdCard():Bool;
}