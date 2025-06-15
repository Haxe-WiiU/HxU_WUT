package wut.mic;

@:cppInclude("mic/mic.h")
@:include("mic/mic.h")

@:native("MICHandle")
@:include("mic/mic.h")
extern typedef MICHandle = Int;

@:native("MICError")
@:include("mic/mic.h")
extern enum MICError {
    @:native("MIC_ERROR_OK")
    @:include("mic/mic.h")
    MIC_ERROR_OK;

    @:native("MIC_ERROR_NOT_OPENED")
    @:include("mic/mic.h")
    MIC_ERROR_NOT_OPENED;

    @:native("MIC_ERROR_INVALID_HANDLE")
    @:include("mic/mic.h")
    MIC_ERROR_INVALID_HANDLE;

    @:native("MIC_ERROR_INIT")
    @:include("mic/mic.h")
    MIC_ERROR_INIT;

    @:native("MIC_ERROR_ALREADY_CLOSED")
    @:include("mic/mic.h")
    MIC_ERROR_ALREADY_CLOSED;

    @:native("MIC_ERROR_INVALID_INSTANCE")
    @:include("mic/mic.h")
    MIC_ERROR_INVALID_INSTANCE;
}

@:native("MICInstance")
@:include("mic/mic.h")
extern enum MICInstance {
    @:native("MIC_INSTANCE_0")
    @:include("mic/mic.h")
    MIC_INSTANCE_0;

    @:native("MIC_INSTANCE_1")
    @:include("mic/mic.h")
    MIC_INSTANCE_1;
}

@:native("MICWorkMemory")
@:include("mic/mic.h")
extern typedef MICWorkMemory = {
    var sampleMaxCount:SizeT;
    var sampleBuffer:VoidPtr;
}

@:native("MICStatus")
@:include("mic/mic.h")
extern typedef MICStatus = {
    var state:Int;
    var availableData:Int;
    var bufferPos:Int;
}

@:cppInclude("mic/mic.h")
@:include("mic/mic.h")
extern class Mic {
    @:native("MICInit")
    @:include("mic/mic.h")
    extern public static function MICInit(instance:MICInstance, unused:Int, workMemory:Ptr<MICWorkMemory>, error:Ptr<MICError>):MICHandle;

    @:native("MICOpen")
    @:include("mic/mic.h")
    extern public static function MICOpen(handle:MICHandle):MICError;

    @:native("MICGetState")
    @:include("mic/mic.h")
    extern public static function MICGetState(handle:MICHandle, state:Int, outStateVal:Ptr<UInt32>):MICError;

    @:native("MICSetState")
    @:include("mic/mic.h")
    extern public static function MICSetState(handle:MICHandle, state:Int, stateVal:UInt32):MICError;

    @:native("MICGetStatus")
    @:include("mic/mic.h")
    extern public static function MICGetStatus(handle:MICHandle, status:Ptr<MICStatus>):MICError;

    @:native("MICSetDataConsumed")
    @:include("mic/mic.h")
    extern public static function MICSetDataConsumed(handle:MICHandle, dataAmountConsumed:Int):MICError;

    @:native("MICClose")
    @:include("mic/mic.h")
    extern public static function MICClose(handle:MICHandle):MICError;

    @:native("MICUninit")
    @:include("mic/mic.h")
    extern public static function MICUninit(handle:MICHandle):MICError;
}