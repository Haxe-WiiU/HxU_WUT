package wut.whb;

@:cppInclude("whb/sdcard.h") @:include("whb/sdcard.h")

extern class Sdcard {
	@:native("WHBMountSdCard")
    extern public static function mountSdCard():Bool;

	@:native("WHBGetSdCardMountPath")
    extern public static function getSdCardMountPath():Ptr<Char>;

    @:native("WHBUnmountSdCard")
    extern public static function unmountSdCard():Bool;
}