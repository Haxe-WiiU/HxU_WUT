package wut.coreinit;

@:cppInclude("coreinit/screen.h") 
@:include("coreinit/screen.h")

@:cppInclude("coreinit/screen.h") 
@:include("coreinit/screen.h")
@:native("OSScreenID")
extern enum OSScreenID {
	@:native("SCREEN_TV")
	@:include("coreinit/screen.h")
	SCREEN_TV;

	@:native("SCREEN_DRC")
	@:include("coreinit/screen.h")
	SCREEN_DRC;
}

@:cppInclude("coreinit/screen.h") 
@:include("coreinit/screen.h")
extern class Screen {
	@:native("OSScreenInit")
	@:include("coreinit/screen.h")
    extern public static function OSScreenInit():Void;

	@:native("OSScreenShutdown")
	@:include("coreinit/screen.h")
    extern public static function OSScreenShutdown():Void;

	@:native("OSScreenGetBufferSizeEx")
	@:include("coreinit/screen.h")
	extern public static function OSScreenGetBufferSizeEx(screen:OSScreenID):UInt32;

	@:native("OSScreenSetBufferEx")
	@:include("coreinit/screen.h")
    extern public static function OSScreenSetBufferEx(screen:OSScreenID, addr:VoidPtr):Void;

	@:native("OSScreenClearBufferEx")
	@:include("coreinit/screen.h")
	extern public static function OSScreenClearBufferEx(screen:OSScreenID, colour:UInt32):Void;

	@:native("OSScreenFlipBuffersEx")
	@:include("coreinit/screen.h")
    extern public static function OSScreenFlipBuffersEx(screen:OSScreenID):Void;

	@:native("OSScreenPutFontEx")
	@:include("coreinit/screen.h")
	extern public static function OSScreenPutFontEx(screen:OSScreenID, column:UInt32, row:UInt32, buffer:ConstCharPtr):Void;

	@:native("OSScreenPutPixelEx")
	@:include("coreinit/screen.h")
    extern public static function OSScreenPutPixelEx(screen:OSScreenID, x:UInt32, y:UInt32, colour:UInt32):Void;

	@:native("OSScreenEnableEx")
	@:include("coreinit/screen.h")
    extern public static function OSScreenEnableEx(screen:OSScreenID, enable:Bool):Void;
}