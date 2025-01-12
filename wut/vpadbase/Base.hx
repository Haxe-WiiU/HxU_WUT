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
	extern public static function VPADBASEGetMotorOnRemainingCount(chan:VPADChan):CppType<"int32_t">;

    @:native("VPADBASESetMotorOnRemainingCount")
	extern public static function VPADBASESetMotorOnRemainingCount(chan:VPADChan, counter:CppType<"int32_t">):CppType<"int32_t">;

    @:native("VPADBASESetSensorBarSetting")
	extern public static function VPADBASESetSensorBarSetting(chan:VPADChan, setting:CppType<"int8_t">):Void;
    @:native("VPADBASEGetSensorBarSetting")
	extern public static function VPADBASEGetSensorBarSetting(chan:VPADChan, outSetting:Ptr<CppType<"int8_t">>):Void;

    @:native("VPADBASEGetHeadphoneStatus")
	extern public static function VPADBASEGetHeadphoneStatus(chan:VPADChan):CppType<"int32_t">;

    @:native("VPADBASEGetIRCStatus")
	extern public static function VPADBASEGetIRCStatus(chan:VPADChan):VPADIRCStatusFlags;

    @:native("VPADBASEGetGameControllerMode")
	extern public static function VPADBASEGetGameControllerMode(chan:VPADChan, mode:Ptr<CppType<"int32_t">>):Void;

    @:native("VPADBASESetGameControllerMode")
	extern public static function VPADBASESetGameControllerMode(chan:VPADChan, mode:CppType<"int32_t">):Void;

    @:native("VPADBASEGetPowerButtonPressStatus")
	extern public static function VPADBASEGetPowerButtonPressStatus(
        chan:VPADChan,
        tick:Ptr<Int>,
        status:Ptr<Int>
    ):Void;

    @:native("VPADBASESetPowerButtonPressStatus")
	extern public static function VPADBASESetPowerButtonPressStatus(
        chan:VPADChan,
        tick:Int,
        status:Int
    ):Void;

    @:native("VPADBASESetPowerButtonDisableMode")
	extern public static function VPADBASESetPowerButtonDisableMode(chan:VPADChan, mode:Int):Void;

    @:native("VPADBASEClearIRCEvent")
	extern public static function VPADBASEClearIRCEvent(chan:VPADChan):Void;
}
