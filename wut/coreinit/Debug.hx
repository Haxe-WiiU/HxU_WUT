package wut.coreinit;

@:cppInclude("coreinit/debug.h") @:include("coreinit/debug.h")
@:native("DisassemblyPrintFn")
extern typedef DisassemblyPrintFn = (fmt:ConstCharPtr) -> Void;

@:native("DisassemblyFindSymbolFn")
@:cppInclude("coreinit/debug.h")
@:include("coreinit/debug.h")
extern typedef DisassemblyFindSymbolFn = (addr:Ptr<UInt32>, symbolNameBuf:Ptr<Char>, symbolNameBufSize:UInt32) -> UInt32;

@:native("DisassemblePPCFlags")
@:cppInclude("coreinit/debug.h")
@:include("coreinit/debug.h")
extern enum DisassemblePPCFlags {
	@:enum("DISASSEMBLE_PPC_FLAGS_NONE")
	DISASSEMBLE_PPC_FLAGS_NONE;
}

@:cppInclude("coreinit/debug.h") @:include("coreinit/debug.h")
extern class Debug {
	@:native("OSConsoleWrite")
	@:include("coreinit/debug.h")
	extern public static function OSConsoleWrite(msg:ConstCharPtr, size:UInt32):Void;

	@:native("OSReport")
	@:include("coreinit/debug.h")
	extern public static function OSReport(msg:ConstCharPtr, size:UInt32):Void;

	@:native("OSReportVerbose")
	@:include("coreinit/debug.h")
	extern public static function OSReportVerbose(fmt:ConstCharPtr):Void;

	@:native("OSReportInfo")
	@:include("coreinit/debug.h")
	extern public static function OSReportInfo(fmt:ConstCharPtr):Void;

	@:native("OSReportWarn")
	@:include("coreinit/debug.h")
	extern public static function OSReportWarn(fmt:ConstCharPtr):Void;

	@:native("OSPanic")
	@:include("coreinit/debug.h")
	extern public static function OSPanic(file:ConstCharPtr, line:UInt32, fmt:ConstCharPtr):Void;

	@:native("OSFatal")
	@:include("coreinit/debug.h")
	extern public static function OSFatal(fmt:ConstCharPtr):Void;

	@:native("OSGetSymbolName")
	@:include("coreinit/debug.h")
	extern public static function OSGetSymbolName(addr:Ptr<UInt32>, symbolNameBuf:Ptr<Char>,
		symbolNameBufSize:UInt32):UInt32;

	@:native("OSGetUPID")
	@:include("coreinit/debug.h")
	extern public static function OSGetUPID():UInt32;

	@:native("OSIsDebuggerInitialized")
	@:include("coreinit/debug.h")
	extern public static function OSIsDebuggerInitialized():Bool;

	@:native("OSIsECOBoot")
	@:include("coreinit/debug.h")
	extern public static function OSIsECOBoot():Bool;

	@:native("OSIsECOMode")
	@:include("coreinit/debug.h")
	extern public static function OSIsECOMode():Bool;

	@:native("__OSSetCrashRecovery")
	@:include("coreinit/debug.h")
	extern public static function __OSSetCrashRecovery(crashRecovery:UInt32):Void;

	@:native("__OSGetCrashRecovery")
	@:include("coreinit/debug.h")
	extern public static function __OSGetCrashRecovery():UInt32;

	@:native("DisassemblePPCOpcode")
	@:include("coreinit/debug.h")
	extern public static function DisassemblePPCOpcode(opcode:Ptr<UInt32>, char:Ptr<Char>, bufferSize:UInt32,
		findSymbolFn:DisassemblyFindSymbolFn, flags:DisassemblePPCFlags):Bool;

	@:native("DisassemblePPCRange")
	@:include("coreinit/debug.h")
	extern public static function DisassemblePPCRange(start:Ptr<Void>, end:Ptr<Void>, printFn:DisassemblyPrintFn, findSymbolFn:DisassemblyFindSymbolFn,
		flags:DisassemblePPCFlags):Void;
}
