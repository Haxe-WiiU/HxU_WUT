package wut.vpad;

import wut.vpadbase.Base.VPADChan;

@:cppInclude("vpad/input.h") @:include("vpad/input.h")
@:cppInclude("vpadbase/base.h") @:include("vpadbase/base.h")

@:native("VPADButtons")
extern enum abstract VPADButtons(Int) {
	@:native("VPAD_BUTTON_A")
    var VPAD_BUTTON_A;

	@:native("VPAD_BUTTON_B")
    var VPAD_BUTTON_B;

	@:native("VPAD_BUTTON_X")
    var VPAD_BUTTON_X;

	@:native("VPAD_BUTTON_Y")
    var VPAD_BUTTON_Y;

	@:native("VPAD_BUTTON_LEFT")
	var VPAD_BUTTON_LEFT;

	@:native("VPAD_BUTTON_RIGHT")
    var VPAD_BUTTON_RIGHT;

	@:native("VPAD_BUTTON_UP")
	var VPAD_BUTTON_UP;

	@:native("VPAD_BUTTON_DOWN")
    var VPAD_BUTTON_DOWN;

	@:native("VPAD_BUTTON_ZL")
	var VPAD_BUTTON_ZL;

	@:native("VPAD_BUTTON_ZR")
    var VPAD_BUTTON_ZR;

	@:native("VPAD_BUTTON_L")
	var VPAD_BUTTON_L;

	@:native("VPAD_BUTTON_R")
	var VPAD_BUTTON_R;

	@:native("VPAD_BUTTON_PLUS")
	var VPAD_BUTTON_PLUS;

	@:native("VPAD_BUTTON_MINUS")
	var VPAD_BUTTON_MINUS;

	@:native("VPAD_BUTTON_HOME")
    var VPAD_BUTTON_HOME;

	@:native("VPAD_BUTTON_SYNC")
	var VPAD_BUTTON_SYNC;

	@:native("VPAD_BUTTON_STICK_R")
	var VPAD_BUTTON_STICK_R;

	@:native("VPAD_BUTTON_STICK_L")
	var VPAD_BUTTON_STICK_L;

	@:native("VPAD_BUTTON_TV")
	var VPAD_BUTTON_TV;

	@:native("VPAD_STICK_R_EMULATION_LEFT")
	var VPAD_STICK_R_EMULATION_LEFT;

	@:native("VPAD_STICK_R_EMULATION_RIGHT")
	var VPAD_STICK_R_EMULATION_RIGHT;

	@:native("VPAD_STICK_R_EMULATION_UP")
	var VPAD_STICK_R_EMULATION_UP;

	@:native("VPAD_STICK_R_EMULATION_DOWN")
	var VPAD_STICK_R_EMULATION_DOWN;

	@:native("VPAD_STICK_L_EMULATION_LEFT")
	var VPAD_STICK_L_EMULATION_LEFT;

	@:native("VPAD_STICK_L_EMULATION_RIGHT")
	var VPAD_STICK_L_EMULATION_RIGHT;

	@:native("VPAD_STICK_L_EMULATION_UP")
	var VPAD_STICK_L_EMULATION_UP;

	@:native("VPAD_STICK_L_EMULATION_DOWN")
	var VPAD_STICK_L_EMULATION_DOWN;
}

@:native("VPADVec2D")
extern class VPADVec2D {
	@:native("x")
	var x:Float;

	@:native("y")
	var y:Float;
}

@:native("VPADVec3D")
extern class VPADVec3D {
	@:native("x")
	var x:Float;

	@:native("y")
	var y:Float;

	@:native("z")
	var z:Float;
}

@:native("VPADDirection")
extern enum VPADDirection {
	@:native("x")
	x;

	@:native("y")
	y;

	@:native("z")
	z;
}

@:native("VPADTouchCalibrationParam")
extern enum VPADTouchCalibrationParam {
	@:native("adjustX")
	adjustX;

	@:native("adjustY")
	adjustY;

	@:native("scaleX")
	scaleX;

	@:native("scaleY")
	scaleY;
}

@:native("VPADTouchData")
extern enum VPADTouchData {
	@:native("x")
	x;

	@:native("y")
	y;

	@:native("touched")
	touched;

	@:native("validity")
	validity;
}

@:native("VPADAccStatus")
extern enum VPADAccStatus {
	@:native("acc")
	acc;

	@:native("magnitude")
	magnitude;

	@:native("variation")
	variation;

	@:native("horizontal")
	vertical;
}

@:native("VPADLcdMode")
extern enum VPADLcdMode {

	@:native("VPAD_LCD_STANDBY")
	VPAD_LCD_STANDBY;

	@:native("VPAD_LCD_OFF")
	VPAD_LCD_OFF;

	@:native("VPAD_LCD_ON")
	VPAD_LCD_ON;
}

@:native("VPADTouchPadResolution")
extern enum VPADTouchPadResolution {

	@:native("VPAD_TP_1920X1080")
	VPAD_TP_1920X1080;

	@:native("VPAD_TP_1280X720")
	VPAD_TP_1280X720;

	@:native("VPAD_TP_854X480")
	VPAD_TP_854X480;
}

@:native("VPADGyroZeroDriftMode")
extern enum VPADGyroZeroDriftMode {
	@:native("VPAD_GYRO_ZERODRIFT_LOOSE")
	VPAD_GYRO_ZERODRIFT_LOOSE;

	@:native("VPAD_GYRO_ZERODRIFT_STANDARD")
	VPAD_GYRO_ZERODRIFT_STANDARD;

	@:native("VPAD_GYRO_ZERODRIFT_TIGHT")
    VPAD_GYRO_ZERODRIFT_TIGHT;

	@:native("VPAD_GYRO_ZERODRIFT_NONE")
    VPAD_GYRO_ZERODRIFT_NONE;
}

@:native("VPADTouchPadValidity")
extern enum VPADTouchPadValidity {
	@:native("VPAD_VALID")
	VPAD_VALID;

	@:native("VPAD_INVALID_X")
	VPAD_INVALID_X;

	@:native("VPAD_INVALID_Y")
    VPAD_INVALID_Y;
}

@:native("VPADReadError")
extern enum VPADReadError {
	@:native("VPAD_READ_SUCCESS")
	VPAD_READ_SUCCESS;	

	@:native("VPAD_READ_NO_SAMPLES")
	VPAD_READ_NO_SAMPLES;

	@:native("VPAD_READ_INVALID_CONTROLLER")
	VPAD_READ_INVALID_CONTROLLER;

	@:native("VPAD_READ_BUSY")
	VPAD_READ_BUSY;

	@:native("VPAD_READ_UNINITIALIZED")
	VPAD_READ_UNINITIALIZED;
}

@:cppInclude("vpad/input.h") @:include("vpad/input.h")
@:native("VPADStatus")
extern class VPADStatus {
	@:native("hold")
	public var hold:UInt32;

	@:native("trigger")
	public var trigger:UInt32;

	@:native("release")
	public var release:UInt32;

	@:native("leftStick")
	public var leftStick:VPADVec2D;

	@:native("rightStick")
	public var rightStick:VPADVec2D;

	@:native("accelorometer")
	public var accelorometer:VPADAccStatus;

	@:native("gyro")
	public var gyro:VPADVec3D;

	@:native("angle")
	public var angle:VPADVec3D;

	@:native("error")
	public var error:UInt8;
}

// @:cppInclude("vpad/input.h") @:include("vpad/input.h")
// @:native("VPADStatus")
// extern typedef VPADStatus = {
// 	@:native("hold")
// 	var hold:UInt32;

// 	@:native("trigger")
// 	var trigger:UInt32;

// 	@:native("release")
// 	var release:UInt32;

// 	@:native("leftStick")
// 	var leftStick:VPADVec2D;

// 	@:native("rightStick")
// 	var rightStick:VPADVec2D;

// 	@:native("accelorometer")
// 	var accelorometer:VPADAccStatus;

// 	@:native("gyro")
// 	var gyro:VPADVec3D;

// 	@:native("angle")
// 	var angle:VPADVec3D;

// 	@:native("error")
// 	var error:UInt8;
// }

@:native("VPADSamplingCallback")
extern class VPADSamplingCallback {
	
}

@:cppInclude("vpad/input.h") @:include("vpad/input.h")
extern class VPAD {
    @:native("VPADInit")
    extern public static function VPADInit():Void;

    @:native("VPADRead")
    extern public static function VPADRead(chan:VPADChan, buffers:Ptr<VPADStatus>, count:UInt32, error:Ptr<VPADReadError>):UInt32;

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
