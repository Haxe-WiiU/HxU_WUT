package wut.vpadbase;

@:native("VPADChan")
@:include("vpadbase/base.h")
extern enum VPADChan {
    @:native("VPAD_CHAN_0")
    @:include("vpadbase/base.h")
    VPAD_CHAN_0;

    @:native("VPAD_CHAN_1")
    @:include("vpadbase/base.h")
    VPAD_CHAN_1;
}

@:native("VPADIRCStatusFlags")
@:include("vpadbase/base.h")
extern enum VPADIRCStatusFlags {
    VPAD_IRC_STATUS_FLAG_HAS_DATA;

    @:native("VPAD_IRC_STATUS_FLAG_CONNECTED")
    VPAD_IRC_STATUS_FLAG_CONNECTED;
}

@:include("vpadbase/base.h")
extern class Base {
    @:native("VPADBASEInit")
    @:include("vpadbase/base.h")
	extern public static function VPADBASEInit():Void;

    @:native("VPADBASEShutdown")
    @:include("vpadbase/base.h")
	extern public static function VPADBASEShutdown():Void;

    @:native("VPADBASEIsInit")
    @:include("vpadbase/base.h")
	extern public static function VPADBASEIsInit():Bool;

    @:native("VPADBASEGetMotorOnRemainingCount")
    @:include("vpadbase/base.h")
	extern public static function VPADBASEGetMotorOnRemainingCount(chan:VPADChan):UInt32;

    @:native("VPADBASESetMotorOnRemainingCount")
    @:include("vpadbase/base.h")
	extern public static function VPADBASESetMotorOnRemainingCount(chan:VPADChan, counter:UInt32):UInt32;

    @:native("VPADBASESetSensorBarSetting")
    @:include("vpadbase/base.h")
	extern public static function VPADBASESetSensorBarSetting(chan:VPADChan, setting:UInt8):Void;

    @:native("VPADBASEGetSensorBarSetting")
    @:include("vpadbase/base.h")
	extern public static function VPADBASEGetSensorBarSetting(chan:VPADChan, outSetting:Ptr<Int8>):Void;

    @:native("VPADBASEGetHeadphoneStatus")
    @:include("vpadbase/base.h")
	extern public static function VPADBASEGetHeadphoneStatus(chan:VPADChan):UInt32;

    @:native("VPADBASEGetIRCStatus")
    @:include("vpadbase/base.h")
	extern public static function VPADBASEGetIRCStatus(chan:VPADChan):VPADIRCStatusFlags;

    @:native("VPADBASEGetGameControllerMode")
    @:include("vpadbase/base.h")
	extern public static function VPADBASEGetGameControllerMode(chan:VPADChan, mode:Ptr<UInt32>):Void;

    @:native("VPADBASESetGameControllerMode")
    @:include("vpadbase/base.h")
	extern public static function VPADBASESetGameControllerMode(chan:VPADChan, mode:Int32):Void;

    @:native("VPADBASEGetPowerButtonPressStatus")
    @:include("vpadbase/base.h")
	extern public static function VPADBASEGetPowerButtonPressStatus(
        chan:VPADChan,
        tick:Ptr<UInt32>,
        status:Ptr<UInt32>
    ):Void;

    @:native("VPADBASESetPowerButtonPressStatus")
    @:include("vpadbase/base.h")
	extern public static function VPADBASESetPowerButtonPressStatus(
        chan:VPADChan,
        tick:UInt32,
        status:UInt32
    ):Void;

    @:native("VPADBASESetPowerButtonDisableMode")
    @:include("vpadbase/base.h")
	extern public static function VPADBASESetPowerButtonDisableMode(chan:VPADChan, mode:UInt32):Void;

    @:native("VPADBASEClearIRCEvent")
    @:include("vpadbase/base.h")
	extern public static function VPADBASEClearIRCEvent(chan:VPADChan):Void;
}
