package wut.vpad;

import wut.vpadbase.Base.VPADChan;

@:cppInclude("vpad/input.h") @:include("vpad/input.h")

@:native("VPADButtons")
extern enum VPADButtons {
	@:native("VPAD_BUTTON_A")
    VPAD_BUTTON_A;

	@:native("VPAD_BUTTON_B")
    VPAD_BUTTON_B;

	@:native("VPAD_BUTTON_X")
    VPAD_BUTTON_X;

	@:native("VPAD_BUTTON_Y")
    VPAD_BUTTON_Y;

	@:native("VPAD_BUTTON_LEFT")
	VPAD_BUTTON_LEFT;

	@:native("VPAD_BUTTON_RIGHT")
    VPAD_BUTTON_RIGHT;

	@:native("VPAD_BUTTON_UP")
	VPAD_BUTTON_UP;

	@:native("VPAD_BUTTON_DOWN")
    VPAD_BUTTON_DOWN;

	@:native("VPAD_BUTTON_ZL")
	VPAD_BUTTON_ZL;

	@:native("VPAD_BUTTON_ZR")
    VPAD_BUTTON_ZR;

	@:native("VPAD_BUTTON_L")
	VPAD_BUTTON_L;

	@:native("VPAD_BUTTON_R")
	VPAD_BUTTON_R;

	@:native("VPAD_BUTTON_PLUS")
	VPAD_BUTTON_PLUS;

	@:native("VPAD_BUTTON_MINUS")
	VPAD_BUTTON_MINUS;

	@:native("VPAD_BUTTON_HOME")
    VPAD_BUTTON_HOME;

	@:native("VPAD_BUTTON_SYNC")
	VPAD_BUTTON_SYNC;

	@:native("VPAD_BUTTON_STICK_R")
	VPAD_BUTTON_STICK_R;

	@:native("VPAD_BUTTON_STICK_L")
	VPAD_BUTTON_STICK_L;

	@:native("VPAD_BUTTON_TV")
	VPAD_BUTTON_TV;

	@:native("VPAD_STICK_R_EMULATION_LEFT")
	VPAD_STICK_R_EMULATION_LEFT;

	@:native("VPAD_STICK_R_EMULATION_RIGHT")
	VPAD_STICK_R_EMULATION_RIGHT;

	@:native("VPAD_STICK_R_EMULATION_UP")
	VPAD_STICK_R_EMULATION_UP;

	@:native("VPAD_STICK_R_EMULATION_DOWN")
	VPAD_STICK_R_EMULATION_DOWN;

	@:native("VPAD_STICK_L_EMULATION_LEFT")
	VPAD_STICK_L_EMULATION_LEFT;

	@:native("VPAD_STICK_L_EMULATION_RIGHT")
	VPAD_STICK_L_EMULATION_RIGHT;

	@:native("VPAD_STICK_L_EMULATION_UP")
	VPAD_STICK_L_EMULATION_UP;

	@:native("VPAD_STICK_L_EMULATION_DOWN")
	VPAD_STICK_L_EMULATION_DOWN;
}

@:native("VPADVec2D")
extern enum VPADVec2D {
	@:native("x")
	x;

	@:native("y")
	y;
}

@:native("VPADVec3D")
extern enum VPADVec3D {
	@:native("x")
	x;

	@:native("y")
	y;

	@:native("z")
	z;
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

@:native("VPADStatus")
extern enum VPADStatus {
	@:native("hold")
	hold;

	@:native("trigger")
	trigger;

	@:native("release")
	release;

	@:native("leftStick")
	leftStick;

	@:native("rightStick")
	rightStick;

	@:native("accelorometer")
	accelorometer;

	@:native("gyro")
	gyro;

	@:native("angle")
	angle;
}

@:native("VPADSamplingCallback")
extern class VPADSamplingCallback {
	
}

extern class VPAD {
    @:native("VPADInit")
    extern public static function VPADInit():Void;

    @:native("VPADRead")
    extern public static function VPADRead(chan:VPADChan, status:Ptr<VPADStatus>, count:UInt32):VPADReadError;

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
