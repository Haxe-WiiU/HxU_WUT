package wut.vpad;

@:cppInclude("vpad/input.h") @:include("vpad/input.h")

@:native("VPADButtons")
extern enum VPADButtons {
    VPAD_BUTTON_A;
    VPAD_BUTTON_B;
    VPAD_BUTTON_X;
    VPAD_BUTTON_Y;
	VPAD_BUTTON_LEFT;
    VPAD_BUTTON_RIGHT;
	VPAD_BUTTON_UP;
    VPAD_BUTTON_DOWN;
	VPAD_BUTTON_ZL;
    VPAD_BUTTON_ZR;
	VPAD_BUTTON_L;
	VPAD_BUTTON_R;
	VPAD_BUTTON_PLUS;
	VPAD_BUTTON_MINUS;
    VPAD_BUTTON_HOME;
	VPAD_BUTTON_SYNC;
	VPAD_BUTTON_STICK_R;
	VPAD_BUTTON_STICK_L;
	VPAD_BUTTON_TV;
	VPAD_STICK_R_EMULATION_LEFT;
	VPAD_STICK_R_EMULATION_RIGHT;
	VPAD_STICK_R_EMULATION_UP;
	VPAD_STICK_R_EMULATION_DOWN;
	VPAD_STICK_L_EMULATION_LEFT;
	VPAD_STICK_L_EMULATION_RIGHT;
	VPAD_STICK_L_EMULATION_UP;
	VPAD_STICK_L_EMULATION_DOWN;
}

@:native("VPADVec2D")
extern typedef VPADVec2D = {
	var x:Float;
	var y:Float;
}

@:native("VPADVec3D")
extern typedef VPADVec3D = {
	var x:Float;
	var y:Float;
	var z:Float;
}

@:native("VPADDirection")
extern typedef VPADDirection = {
	var x:VPADVec3D;
	var y:VPADVec3D;
	var z:VPADVec3D;
}

@:native("VPADTouchCalibrationParam")
extern typedef VPADTouchCalibrationParam = {
	var adjustX:CppType<"uint16_t">;
	var adjustY:CppType<"uint16_t">;
	var scaleX:Float;
	var scaleY:Float;
}

@:native("VPADTouchData")
extern typedef VPADTouchData = {
	var x:CppType<"uint16_t">;
	var y:CppType<"uint16_t">;
	var touched:CppType<"uint16_t">;
	var validity:CppType<"uint16_t">;
}

@:native("VPADAccStatus")
extern typedef VPADAccStatus = {
	var acc:VPADVec3D;
	var magnitude:Float;
	var variation:Float;
	var vertical:VPADVec2D;
}

@:native("VPADLcdMode")
extern enum VPADLcdMode {
	VPAD_LCD_STANDBY;
	VPAD_LCD_OFF;
	VPAD_LCD_ON;
}

@:native("VPADTouchPadResolution")
extern enum VPADTouchPadResolution {
	VPAD_TP_1920X1080;
	VPAD_TP_1280X720;
	VPAD_TP_854X480;
}

@:native("VPADGyroZeroDriftMode")
extern enum VPADGyroZeroDriftMode {
	VPAD_GYRO_ZERODRIFT_LOOSE;
	VPAD_GYRO_ZERODRIFT_STANDARD;
    VPAD_GYRO_ZERODRIFT_TIGHT;
    VPAD_GYRO_ZERODRIFT_NONE;
}

@:native("VPADTouchPadValidity")
extern enum VPADTouchPadValidity {
	VPAD_VALID;
	VPAD_INVALID_X;
    VPAD_INVALID_Y;
}

@:native("VPADReadError")
extern enum VPADReadError {
	VPAD_READ_SUCCESS;
	VPAD_READ_NO_SAMPLES;
	VPAD_READ_INVALID_CONTROLLER;
	VPAD_READ_BUSY;
	VPAD_READ_UNINITIALIZED;
}

@:native("VPADStatus")
extern typedef VPADStatus = {
	var hold:CppType<"uint32_t">;
	var trigger:CppType<"uint32_t">;
	var release:CppType<"uint32_t">;
	var leftStick:VPADVec2D;
	var rightStick:VPADVec2D;
	var accelorometer:VPADAccStatus;
	var gyro:VPADVec3D;
	var angle:VPADVec3D;
	var error:CppType<"uint8_t">;
	var tpNormal:VPADTouchData;
	var tpFiltered1:VPADTouchData;
	var tpFiltered2:VPADTouchData;
	var direction:VPADDirection;
	var usingHeadphones:Bool;
	var mag:VPADVec3D;
	var slideVolume:CppType<"uint8_t">;
	var battery:CppType<"uint8_t">;
	var micStatus:CppType<"uint8_t">;
	var slideVolumeEx:CppType<"uint8_t">;
}

typedef VPADSamplingCallback = Void->Void;

extern class VPAD {
    @:native("VPADInit")
    extern public static function VPADInit():Void;

    @:native("VPADRead")
    extern public static function VPADRead(chan:VPADChan, status:Ptr<VPADStatus>, count:CppType<"uint32_t">):VPADReadError;

    @:native("VPADGetSamplingState")
    extern public static function VPADGetSamplingState(chan:VPADChan):Bool;

    @:native("VPADSetSamplingCallback")
    extern public static function VPADSetSamplingCallback(chan:VPADChan, callback:VPADSamplingCallback):Void;

    @:native("VPADSetLcdMode")
    extern public static function VPADSetLcdMode(chan:VPADChan, mode:VPADLcdMode):Void;

    @:native("VPADGetGyroZeroDriftMode")
    extern public static function VPADGetGyroZeroDriftMode(chan:VPADChan):VPADGyroZeroDriftMode;

    @:native("VPADSetGyroZeroDriftMode")
    extern public static function VPADSetGyroZeroDriftMode(chan:VPADChan, mode:VPADGyroZeroDriftMode):Void;

    @:native("VPADGetTouchPadResolution")
    extern public static function VPADGetTouchPadResolution(chan:VPADChan):VPADTouchPadResolution;

    @:native("VPADSetTouchPadResolution")
    extern public static function VPADSetTouchPadResolution(chan:VPADChan, resolution:VPADTouchPadResolution):Void;

    @:native("VPADGetAccStatus")
    extern public static function VPADGetAccStatus(chan:VPADChan):Ptr<VPADAccStatus>;
}
