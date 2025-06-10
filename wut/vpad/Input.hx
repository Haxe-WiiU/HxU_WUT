package wut.vpad;

import wut.vpadbase.Base.VPADChan;

@:cppInclude("vpad/input.h")
@:include("vpad/input.h")

@:include("vpad/input.h")
@:native("VPADButtons")
extern enum VPADButtons {
	@:native("VPAD_BUTTON_A")
	@:include("vpad/input.h")
    VPAD_BUTTON_A;
	@:native("VPAD_BUTTON_B")
	@:include("vpad/input.h")
    VPAD_BUTTON_B;
	@:native("VPAD_BUTTON_X")
	@:include("vpad/input.h")
    VPAD_BUTTON_X;
	@:native("VPAD_BUTTON_Y")
	@:include("vpad/input.h")
    VPAD_BUTTON_Y;
	@:native("VPAD_BUTTON_LEFT")
	@:include("vpad/input.h")
	VPAD_BUTTON_LEFT;
	@:native("VPAD_BUTTON_RIGHT")
	@:include("vpad/input.h")
    VPAD_BUTTON_RIGHT;
	@:native("VPAD_BUTTON_UP")
	@:include("vpad/input.h")
	VPAD_BUTTON_UP;
	@:native("VPAD_BUTTON_DOWN")
	@:include("vpad/input.h")
    VPAD_BUTTON_DOWN;
	@:native("VPAD_BUTTON_ZL")
	@:include("vpad/input.h")
	VPAD_BUTTON_ZL;
	@:native("VPAD_BUTTON_ZR")
	@:include("vpad/input.h")
    VPAD_BUTTON_ZR;
	@:native("VPAD_BUTTON_L")
	@:include("vpad/input.h")
	VPAD_BUTTON_L;
	@:native("VPAD_BUTTON_R")
	@:include("vpad/input.h")
	VPAD_BUTTON_R;
	@:native("VPAD_BUTTON_PLUS")
	@:include("vpad/input.h")
	VPAD_BUTTON_PLUS;
	@:native("VPAD_BUTTON_MINUS")
	@:include("vpad/input.h")
	VPAD_BUTTON_MINUS;
	@:native("VPAD_BUTTON_HOME")
	@:include("vpad/input.h")
    VPAD_BUTTON_HOME;
	@:native("VPAD_BUTTON_SYNC")
	@:include("vpad/input.h")
	VPAD_BUTTON_SYNC;
	@:native("VPAD_BUTTON_STICK_R")
	@:include("vpad/input.h")
	VPAD_BUTTON_STICK_R;
	@:native("VPAD_BUTTON_STICK_L")
	@:include("vpad/input.h")
	VPAD_BUTTON_STICK_L;
	@:native("VPAD_BUTTON_TV")
	@:include("vpad/input.h")
	VPAD_BUTTON_TV;
	@:native("VPAD_STICK_R_EMULATION_LEFT")
	@:include("vpad/input.h")
	VPAD_STICK_R_EMULATION_LEFT;
	@:native("VPAD_STICK_R_EMULATION_RIGHT")
	@:include("vpad/input.h")
	VPAD_STICK_R_EMULATION_RIGHT;
	@:native("VPAD_STICK_R_EMULATION_UP")
	@:include("vpad/input.h")
	VPAD_STICK_R_EMULATION_UP;
	@:native("VPAD_STICK_R_EMULATION_DOWN")
	@:include("vpad/input.h")
	VPAD_STICK_R_EMULATION_DOWN;
	@:native("VPAD_STICK_L_EMULATION_LEFT")
	@:include("vpad/input.h")
	VPAD_STICK_L_EMULATION_LEFT;
	@:native("VPAD_STICK_L_EMULATION_RIGHT")
	@:include("vpad/input.h")
	VPAD_STICK_L_EMULATION_RIGHT;
	@:native("VPAD_STICK_L_EMULATION_UP")
	@:include("vpad/input.h")
	VPAD_STICK_L_EMULATION_UP;
	@:native("VPAD_STICK_L_EMULATION_DOWN")
	@:include("vpad/input.h")
	VPAD_STICK_L_EMULATION_DOWN;
}

@:include("vpad/input.h")
@:native("VPADVec2D")
@:valueType
extern class VPADVec2D {
	@:include("vpad/input.h")
	public var x:Float;
	@:include("vpad/input.h")
	public var y:Float;

	@:haxe.warning("-WExternWithExpr")
    public function new() {}
}

@:include("vpad/input.h")
@:native("VPADVec3D")
@:valueType
extern class VPADVec3D {
	@:include("vpad/input.h")
	public var x:Float;
	@:include("vpad/input.h")
	public var y:Float;
	@:include("vpad/input.h")
	public var z:Float;

	@:haxe.warning("-WExternWithExpr")
    public function new() {}
}

@:include("vpad/input.h")
@:native("VPADDirection")
@:valueType
extern class VPADDirection {
	@:include("vpad/input.h")
	public var x:VPADVec3D;
	@:include("vpad/input.h")
	public var y:VPADVec3D;
	@:include("vpad/input.h")
	public var z:VPADVec3D;

	@:haxe.warning("-WExternWithExpr")
    public function new() {}
}

@:include("vpad/input.h")
@:native("VPADTouchCalibrationParam")
@:valueType
extern class VPADTouchCalibrationParam {
	@:include("vpad/input.h")
	public var adjustX:UInt16;
	@:include("vpad/input.h")
	public var adjustY:UInt16;
	@:include("vpad/input.h")
	public var scaleX:Float;
	@:include("vpad/input.h")
	public var scaleY:Float;

	@:haxe.warning("-WExternWithExpr")
    public function new() {}
}

@:include("vpad/input.h")
@:native("VPADTouchData")
@:valueType
extern class VPADTouchData {
	@:include("vpad/input.h")
	public var x:UInt16;
	@:include("vpad/input.h")
	public var y:UInt16;
	@:include("vpad/input.h")
	public var touched:UInt16;
	@:include("vpad/input.h")
	public var validity:UInt16;

	@:haxe.warning("-WExternWithExpr")
    public function new() {}
}

@:include("vpad/input.h")
@:native("VPADAccStatus")
@:valueType
extern class VPADAccStatus {
	@:include("vpad/input.h")
	public var acc:VPADVec3D;
	@:include("vpad/input.h")
	public var magnitude:Float;
	@:include("vpad/input.h")
	public var variation:VPADVec3D;
	@:include("vpad/input.h")
	public var vertical:VPADVec2D;

	@:haxe.warning("-WExternWithExpr")
    public function new() {}
}

@:include("vpad/input.h")
@:native("VPADLcdMode")
@:valueType
extern enum VPADLcdMode {
	VPAD_LCD_STANDBY;
	VPAD_LCD_OFF;
	VPAD_LCD_ON;
}

@:include("vpad/input.h")
@:native("VPADTouchPadResolution")
@:valueType
extern enum VPADTouchPadResolution {
	VPAD_TP_1920X1080;
	VPAD_TP_1280X720;
	VPAD_TP_854X480;
}

@:include("vpad/input.h")
@:native("VPADGyroZeroDriftMode")
@:valueType
extern enum VPADGyroZeroDriftMode {
	VPAD_GYRO_ZERODRIFT_LOOSE;
	VPAD_GYRO_ZERODRIFT_STANDARD;
    VPAD_GYRO_ZERODRIFT_TIGHT;
    VPAD_GYRO_ZERODRIFT_NONE;
}

@:include("vpad/input.h")
@:native("VPADTouchPadValidity")
@:valueType
extern enum VPADTouchPadValidity {
	VPAD_VALID;
	VPAD_INVALID_X;
    VPAD_INVALID_Y;
}

@:include("vpad/input.h")
@:native("VPADReadError")
@:valueType
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

@:include("vpad/input.h")
@:native("VPADStatus")
@:valueType
extern class VPADStatus {
	@:include("vpad/input.h")
	public var hold:UInt32;
	@:include("vpad/input.h")
	public var trigger:UInt32;
	@:include("vpad/input.h")
	public var release:UInt32;
	@:include("vpad/input.h")
	public var leftStick:VPADVec2D;
	@:include("vpad/input.h")
	public var rightStick:VPADVec2D;
	@:include("vpad/input.h")
	public var accelorometer:VPADAccStatus;
	@:include("vpad/input.h")
	public var gyro:VPADVec3D;
	@:include("vpad/input.h")
	public var angle:VPADVec3D;
	@:include("vpad/input.h")
	public var error:UInt8;
	@:include("vpad/input.h")
	public var tpNormal:VPADTouchData;
	@:include("vpad/input.h")
	public var tpFiltered1:VPADTouchData;
	@:include("vpad/input.h")
	public var tpFiltered2:VPADTouchData;
	@:include("vpad/input.h")
	public var direction:VPADDirection;
	@:include("vpad/input.h")
	public var usingHeadphones:Bool;
	@:include("vpad/input.h")
	public var mag:VPADVec3D;
	@:include("vpad/input.h")
	public var slideVolume:UInt8;
	@:include("vpad/input.h")
	public var battery:UInt8;
	@:include("vpad/input.h")
	public var micStatus:UInt8;
	@:include("vpad/input.h")
	public var slideVolumeEx:UInt8;

	@:haxe.warning("-WExternWithExpr")
    public function new() {}
}

@:native("VPADSamplingCallback")
extern class VPADSamplingCallback {
	@:haxe.warning("-WExternWithExpr")
    public function new() {}
}

@:include("vpad/input.h")
extern class VPAD {
    @:native("VPADInit")
	@:include("vpad/input.h")
    extern public static function VPADInit():Void;

	@:native("VPADShutdown")
	@:include("vpad/input.h")
	extern public static function VPADShutdown():Void;

    @:native("VPADRead")
	@:include("vpad/input.h")
    extern public static function VPADRead(chan:VPADChan, buffers:Ptr<VPADStatus>, count:UInt32, error:Ptr<VPADReadError>):UInt32;

	@:native("VPADGetTPCalibrationParam")
	@:include("vpad/input.h")
	extern public static function VPADGetTPCalibrationParam(chan:VPADChan, outParam:Ptr<VPADTouchCalibrationParam>):Void;

	@:native("VPADSetTPCalibrationParam")
	@:include("vpad/input.h")
	extern public static function VPADSetTPCalibrationParam(chan:VPADChan, param:Ptr<VPADTouchCalibrationParam>):Void;

	@:native("VPADGetTPCalibratedPoint")
	@:include("vpad/input.h")
	extern public static function VPADGetTPCalibratedPoint(chan:VPADChan, calibratedData:Ptr<VPADTouchData>, uncalibratedData:Ptr<VPADTouchData>):Void;

	@:native("VPADGetTPCalibratedPointEx")
	@:include("vpad/input.h")
	extern public static function VPADGetTPCalibratedPointEx(chan:VPADChan, tpResolution:VPADTouchPadResolution, calibratedData:Ptr<VPADTouchData>, uncalibratedData:Ptr<VPADTouchData>):Void;

	@:native("VPADSetAccParam")
	@:include("vpad/input.h")
	extern public static function VPADSetAccParam(chan:VPADChan, playRadius:Float, sensitivity:Float):Void;

	@:native("VPADGetAccParam")
	@:include("vpad/input.h")
	extern public static function VPADGetAccParam(chan:VPADChan, outPlayRadius:Ptr<Float>, outSensitivity:Ptr<Float>):Void;

    @:native("VPADGetSamplingState")
	@:include("vpad/input.h")
    extern public static function VPADGetSamplingState(chan:VPADChan):Bool;

    @:native("VPADSetSamplingCallback")
	@:include("vpad/input.h")
    extern public static function VPADSetSamplingCallback(chan:VPADChan, callback:VPADSamplingCallback):Void;

    @:native("VPADSetLcdMode")
	@:include("vpad/input.h")
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

	@:native("VPADControlMotor")
	@:include("vpad/input.h")
	extern public static function VPADControlMotor(chan:VPADChan, pattern:Ptr<UInt8>, length:UInt8):UInt32;

	@:native("VPADStopMotor")
	@:include("vpad/input.h")
	extern public static function VPADStopMotor(chan:VPADChan):Void;
}
