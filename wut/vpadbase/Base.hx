package wut.vpadbase;

@:native("VPADChan")
extern enum VPADChan {
    VPAD_CHAN_0; // Channel 0
    VPAD_CHAN_1; // Channel 1
}

@:native("VPADIRCStatusFlags")
extern enum VPADIRCStatusFlags {
    VPAD_IRC_STATUS_FLAG_HAS_DATA;    // Indicates pending data
    VPAD_IRC_STATUS_FLAG_CONNECTED;   // Indicates another device is connected
}

extern class VPADBASE {
    // Initializes the VPADBASE library
    @:native("VPADBASEInit")
	extern public static function VPADBASEInit():Void;

    // Deinitializes the VPADBASE library
    @:native("VPADBASEShutdown")
	extern public static function VPADBASEShutdown():Void;

    // Checks if VPADBASE is initialized
    @:native("VPADBASEIsInit")
	extern public static function VPADBASEIsInit():Bool;

    // Get the remaining rumble time for the given Gamepad
    @:native("VPADBASEGetMotorOnRemainingCount")
	extern public static function VPADBASEGetMotorOnRemainingCount(chan:VPADChan):CppType<"int32_t">;

    // Set the remaining rumble time for the given Gamepad
    @:native("VPADBASESetMotorOnRemainingCount")
	extern public static function VPADBASESetMotorOnRemainingCount(chan:VPADChan, counter:CppType<"int32_t">):CppType<"int32_t">;

    // Set the sensor bar setting
    @:native("VPADBASESetSensorBarSetting")
	extern public static function VPADBASESetSensorBarSetting(chan:VPADChan, setting:CppType<"int8_t">):Void;

    // Get the sensor bar setting
    @:native("VPADBASEGetSensorBarSetting")
	extern public static function VPADBASEGetSensorBarSetting(chan:VPADChan, outSetting:Ptr<CppType<"int8_t">>):Void;

    // Get headphone status
    @:native("VPADBASEGetHeadphoneStatus")
	extern public static function VPADBASEGetHeadphoneStatus(chan:VPADChan):CppType<"int32_t">;

    // Get the current IRC status
    @:native("VPADBASEGetIRCStatus")
	extern public static function VPADBASEGetIRCStatus(chan:VPADChan):VPADIRCStatusFlags;

    // Get the controller mode
    @:native("VPADBASEGetGameControllerMode")
	extern public static function VPADBASEGetGameControllerMode(chan:VPADChan, mode:Ptr<CppType<"int32_t">>):Void;

    // Set the controller mode
    @:native("VPADBASESetGameControllerMode")
	extern public static function VPADBASESetGameControllerMode(chan:VPADChan, mode:CppType<"int32_t">):Void;

    // Get the POWER button press status
    @:native("VPADBASEGetPowerButtonPressStatus")
	extern public static function VPADBASEGetPowerButtonPressStatus(
        chan:VPADChan,
        tick:Ptr<CppType<"uint32_t">>,
        status:Ptr<CppType<"uint32_t">>
    ):Void;

    // Set the POWER button press status
    @:native("VPADBASESetPowerButtonPressStatus")
	extern public static function VPADBASESetPowerButtonPressStatus(
        chan:VPADChan,
        tick:CppType<"uint32_t">,
        status:CppType<"uint32_t">
    ):Void;

    // Set the POWER button disable mode
    @:native("VPADBASESetPowerButtonDisableMode")
	extern public static function VPADBASESetPowerButtonDisableMode(chan:VPADChan, mode:CppType<"uint32_t">):Void;

    // Clear pending IRC events
    @:native("VPADBASEClearIRCEvent")
	extern public static function VPADBASEClearIRCEvent(chan:VPADChan):Void;
}
