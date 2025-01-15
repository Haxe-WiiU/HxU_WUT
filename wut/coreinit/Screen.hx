package wut.coreinit;

@:cppInclude("coreinit/screen.h") 
@:include("coreinit/screen.h")

@:native("OSScreenID")
extern enum OSScreenID {
	@:native("SCREEN_TV")
	SCREEN_TV;

	@:native("SCREEN_DRC")
	SCREEN_DRC;
}

extern class Screen {
	@:native("OSScreenInit")
    extern public static function OSScreenInit():Void;

	@:native("OSScreenShutdown")
    extern public static function OSScreenShutdown():Void;

	@:native("OSScreenGetBufferSizeEx")
	extern public static function OSScreenGetBufferSizeEx(screen:OSScreenID):UInt32;

	@:native("OSScreenSetBufferEx")
    extern public static function OSScreenSetBufferEx(screen:OSScreenID, addr:VoidPtr):Void;

	@:native("OSScreenClearBufferEx")
	extern public static function OSScreenClearBufferEx(screen:OSScreenID, colour:UInt32):Void;

	@:native("OSScreenFlipBuffersEx")
    extern public static function OSScreenFlipBuffersEx(screen:OSScreenID):Void;

	@:native("OSScreenPutFontEx")
	extern public static function OSScreenPutFontEx(screen:OSScreenID, column:UInt32, row:UInt32, buffer:ConstCharPtr):Void;

	@:native("OSScreenPutPixelEx")
    extern public static function OSScreenPutPixelEx(screen:OSScreenID, x:UInt32, y:UInt32, colour:UInt32):Void;

	@:native("OSScreenEnableEx")
    extern public static function OSScreenEnableEx(screen:OSScreenID, enable:Bool):Void;
}