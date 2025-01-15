package wut.vpadbase;

@:native("VPADChan")
extern enum VPADChan {
    @:native("VPAD_CHAN_0")
    VPAD_CHAN_0;

    @:native("VPAD_CHAN_1")
    VPAD_CHAN_1;
}

@:native("VPADIRCStatusFlags")
extern enum VPADIRCStatusFlags {
	@:native("VPAD_IRC_STATUS_FLAG_HAS_DATA")
    VPAD_IRC_STATUS_FLAG_HAS_DATA;

    @:native("VPAD_IRC_STATUS_FLAG_CONNECTED")
    VPAD_IRC_STATUS_FLAG_CONNECTED;
}

extern class Base {
    @:native("VPADBASEInit")
	extern public static function VPADBASEInit():Void;

    @:native("VPADBASEShutdown")
	extern public static function VPADBASEShutdown():Void;

    @:native("VPADBASEIsInit")
	extern public static function VPADBASEIsInit():Bool;

    @:native("VPADBASEGetMotorOnRemainingCount")
	extern public static function VPADBASEGetMotorOnRemainingCount(chan:VPADChan):UInt32;

    @:native("VPADBASESetMotorOnRemainingCount")
	extern public static function VPADBASESetMotorOnRemainingCount(chan:VPADChan, counter:UInt32):UInt32;

    @:native("VPADBASESetSensorBarSetting")
	extern public static function VPADBASESetSensorBarSetting(chan:VPADChan, setting:UInt8):Void;
    @:native("VPADBASEGetSensorBarSetting")
	extern public static function VPADBASEGetSensorBarSetting(chan:VPADChan, outSetting:Ptr<Int8>):Void;

    @:native("VPADBASEGetHeadphoneStatus")
	extern public static function VPADBASEGetHeadphoneStatus(chan:VPADChan):UInt32;

    @:native("VPADBASEGetIRCStatus")
	extern public static function VPADBASEGetIRCStatus(chan:VPADChan):VPADIRCStatusFlags;

    @:native("VPADBASEGetGameControllerMode")
	extern public static function VPADBASEGetGameControllerMode(chan:VPADChan, mode:Ptr<UInt32>):Void;

    @:native("VPADBASESetGameControllerMode")
	extern public static function VPADBASESetGameControllerMode(chan:VPADChan, mode:Int32):Void;

    @:native("VPADBASEGetPowerButtonPressStatus")
	extern public static function VPADBASEGetPowerButtonPressStatus(
        chan:VPADChan,
        tick:Ptr<UInt32>,
        status:Ptr<UInt32>
    ):Void;

    @:native("VPADBASESetPowerButtonPressStatus")
	extern public static function VPADBASESetPowerButtonPressStatus(
        chan:VPADChan,
        tick:UInt32,
        status:UInt32
    ):Void;

    @:native("VPADBASESetPowerButtonDisableMode")
	extern public static function VPADBASESetPowerButtonDisableMode(chan:VPADChan, mode:UInt32):Void;

    @:native("VPADBASEClearIRCEvent")
	extern public static function VPADBASEClearIRCEvent(chan:VPADChan):Void;
}
