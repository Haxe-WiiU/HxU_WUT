package wut.coreinit;

@:cppInclude("coreinit/debug.h") @:include("coreinit/debug.h")
@:native("DisassemblyPrintFn")
extern typedef DisassemblyPrintFn = (fmt:ConstCharPtr) -> Void;

@:native("DisassemblyFindSymbolFn")
extern typedef DisassemblyFindSymbolFn = (addr:Ptr<UInt32>, symbolNameBuf:Ptr<Char>, symbolNameBufSize:UInt32) -> UInt32;

@:native("DisassemblePPCFlags")
extern enum DisassemblePPCFlags {
	@:enum("DISASSEMBLE_PPC_FLAGS_NONE")
	DISASSEMBLE_PPC_FLAGS_NONE;
}

extern class Debug {
	@:native("OSConsoleWrite")
	extern public static function OSConsoleWrite(msg:ConstCharPtr, size:UInt32):Void;

	@:native("OSReport")
	extern public static function OSReport(msg:ConstCharPtr, size:UInt32):Void;

	@:native("OSReportVerbose")
	extern public static function OSReportVerbose(fmt:ConstCharPtr):Void;

	@:native("OSReportInfo")
	extern public static function OSReportInfo(fmt:ConstCharPtr):Void;

	@:native("OSReportWarn")
	extern public static function OSReportWarn(fmt:ConstCharPtr):Void;

	@:native("OSPanic")
	extern public static function OSPanic(file:ConstCharPtr, line:UInt32, fmt:ConstCharPtr):Void;

	@:native("OSFatal")
	extern public static function OSFatal(fmt:ConstCharPtr):Void;

	@:native("OSGetSymbolName")
	extern public static function OSGetSymbolName(addr:Ptr<UInt32>, symbolNameBuf:Ptr<Char>,
		symbolNameBufSize:UInt32):UInt32;

	@:native("OSGetUPID")
	extern public static function OSGetUPID():UInt32;

	@:native("OSIsDebuggerInitialized")
	extern public static function OSIsDebuggerInitialized():Bool;

	@:native("OSIsECOBoot")
	extern public static function OSIsECOBoot():Bool;

	@:native("OSIsECOMode")
	extern public static function OSIsECOMode():Bool;

	@:native("__OSSetCrashRecovery")
	extern public static function __OSSetCrashRecovery(crashRecovery:UInt32):Void;

	@:native("__OSGetCrashRecovery")
	extern public static function __OSGetCrashRecovery():UInt32;

	@:native("DisassemblePPCOpcode")
	extern public static function DisassemblePPCOpcode(opcode:Ptr<UInt32>, char:Ptr<Char>, bufferSize:UInt32,
		findSymbolFn:DisassemblyFindSymbolFn, flags:DisassemblePPCFlags):Bool;

	@:native("DisassemblePPCRange")
	extern public static function DisassemblePPCRange(start:Ptr<Void>, end:Ptr<Void>, printFn:DisassemblyPrintFn, findSymbolFn:DisassemblyFindSymbolFn,
		flags:DisassemblePPCFlags):Void;
}
