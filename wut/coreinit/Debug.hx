package wut.coreinit;

@:cppInclude("coreinit/debug.h") @:include("coreinit/debug.h")
@:native("DisassemblyPrintFn")
extern typedef DisassemblyPrintFn = (fmt:ConstCharPtr) -> Void;

@:native("DisassemblyFindSymbolFn")
extern typedef DisassemblyFindSymbolFn = (addr:Ptr<Int>, symbolNameBuf:Ptr<Char>, symbolNameBufSize:Int) -> Int;

@:native("DisassemblePPCFlags")
extern enum DisassemblePPCFlags {
	@:enum("DISASSEMBLE_PPC_FLAGS_NONE")
	DISASSEMBLE_PPC_FLAGS_NONE;
}

extern class Debug {
	@:native("OSConsoleWrite")
	extern public static function OSConsoleWrite(msg:ConstCharPtr, size:Int):Void;

	@:native("OSReport")
	extern public static function OSReport(msg:ConstCharPtr, size:Int):Void;

	@:native("OSReportVerbose")
	extern public static function OSReportVerbose(fmt:ConstCharPtr):Void;

	@:native("OSReportInfo")
	extern public static function OSReportInfo(fmt:ConstCharPtr):Void;

	@:native("OSReportWarn")
	extern public static function OSReportWarn(fmt:ConstCharPtr):Void;

	@:native("OSPanic")
	extern public static function OSPanic(file:ConstCharPtr, line:Int, fmt:ConstCharPtr):Void;

	@:native("OSFatal")
	extern public static function OSFatal(fmt:ConstCharPtr):Void;

	@:native("OSGetSymbolName")
	extern public static function OSGetSymbolName(addr:Ptr<Int>, symbolNameBuf:Ptr<Char>,
		symbolNameBufSize:Int):Int;

	@:native("OSGetUPID")
	extern public static function OSGetUPID():Int;

	@:native("OSIsDebuggerInitialized")
	extern public static function OSIsDebuggerInitialized():Bool;

	@:native("OSIsECOBoot")
	extern public static function OSIsECOBoot():Bool;

	@:native("OSIsECOMode")
	extern public static function OSIsECOMode():Bool;

	@:native("__OSSetCrashRecovery")
	extern public static function __OSSetCrashRecovery(crashRecovery:Int):Void;

	@:native("__OSGetCrashRecovery")
	extern public static function __OSGetCrashRecovery():Int;

	@:native("DisassemblePPCOpcode")
	extern public static function DisassemblePPCOpcode(opcode:Ptr<Int>, char:Ptr<Char>, bufferSize:Int,
		findSymbolFn:DisassemblyFindSymbolFn, flags:DisassemblePPCFlags):Bool;

	@:native("DisassemblePPCRange")
	extern public static function DisassemblePPCRange(start:Ptr<Void>, end:Ptr<Void>, printFn:DisassemblyPrintFn, findSymbolFn:DisassemblyFindSymbolFn,
		flags:DisassemblePPCFlags):Void;
}
