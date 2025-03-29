package wut.mic;

@:cppInclude("mic/mic.h")
@:include("mic/mic.h")

@:native("MICHandle")
extern typedef MICHandle = Int;

@:native("MICError")
extern enum MICError {
    @:native("MIC_ERROR_OK")
    MIC_ERROR_OK;

    @:native("MIC_ERROR_NOT_OPENED")
    MIC_ERROR_NOT_OPENED;

    @:native("MIC_ERROR_INVALID_HANDLE")
    MIC_ERROR_INVALID_HANDLE;

    @:native("MIC_ERROR_INIT")
    MIC_ERROR_INIT;

    @:native("MIC_ERROR_ALREADY_CLOSED")
    MIC_ERROR_ALREADY_CLOSED;

    @:native("MIC_ERROR_INVALID_INSTANCE")
    MIC_ERROR_INVALID_INSTANCE;
}

@:native("MICInstance")
extern enum MICInstance {
    @:native("MIC_INSTANCE_0")
    MIC_INSTANCE_0;

    @:native("MIC_INSTANCE_1")
    MIC_INSTANCE_1;
}

@:native("MICWorkMemory")
extern typedef MICWorkMemory = {
    var sampleMaxCount:SizeT;
    var sampleBuffer:VoidPtr;
}

@:native("MICStatus")
extern typedef MICStatus = {
    var state:Int;
    var availableData:Int;
    var bufferPos:Int;
}


@:cppInclude("mic/mic.h")
@:include("mic/mic.h")
extern class Mic {
    @:native("MICInit")
    extern public static function MICInit(instance:MICInstance, unused:Int, workMemory:Ptr<MICWorkMemory>, error:Ptr<MICError>):MICHandle;

    @:native("MICOpen")
    extern public static function MICOpen(handle:MICHandle):MICError;

    @:native("MICGetState")
    extern public static function MICGetState(handle:MICHandle, state:Int, outStateVal:Ptr<UInt32>):MICError;

    @:native("MICSetState")
    extern public static function MICSetState(handle:MICHandle, state:Int, stateVal:UInt32):MICError;

    @:native("MICGetStatus")
    extern public static function MICGetStatus(handle:MICHandle, status:Ptr<MICStatus>):MICError;

    @:native("MICSetDataConsumed")
    extern public static function MICSetDataConsumed(handle:MICHandle, dataAmountConsumed:Int):MICError;

    @:native("MICClose")
    extern public static function MICClose(handle:MICHandle):MICError;

    @:native("MICUninit")
    extern public static function MICUninit(handle:MICHandle):MICError;
}