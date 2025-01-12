// package src.wut;

// @:cppInclude("gfd.h") @:include("gfd.h")
// @:native("GFDBlockType")
// extern enum GFDBlockType {
// 	GFD_BLOCK_END_OF_FILE;
// 	GFD_BLOCK_PADDING;
// 	GFD_BLOCK_VERTEX_SHADER_HEADER;
// 	GFD_BLOCK_VERTEX_SHADER_PROGRAM;
// 	GFD_BLOCK_PIXEL_SHADER_HEADER;
// 	GFD_BLOCK_PIXEL_SHADER_PROGRAM;
// 	GFD_BLOCK_GEOMETRY_SHADER_HEADER;
// 	GFD_BLOCK_GEOMETRY_SHADER_PROGRAM;
// 	GFD_BLOCK_GEOMETRY_SHADER_COPY_PROGRAM ;
// 	GFD_BLOCK_TEXTURE_HEADER;
// 	GFD_BLOCK_TEXTURE_IMAGE;
// 	GFD_BLOCK_TEXTURE_MIPMAP;
// 	GFD_BLOCK_COMPUTE_SHADER_HEADER;
// 	GFD_BLOCK_COMPUTE_SHADER_PROGRAM;
// }

// @:native("GFDHeader")
// extern typedef GFDHeader = {
// 	var magic:Int;
// 	var headerSize:Int;
// 	var majorVersion:Int;
// 	var minorVersion:Int;
// 	var gpuVersion:Int;
// 	var unk1:Int;
// 	var unk2:Int;
// }

// @:native("GFDBlockHeader")
// extern typedef GFDBlockHeader = {
// 	var magic:Int;
// 	var headerSize:Int;
// 	var majorVersion:Int;
// 	var minorVersion:Int;
// 	var type:GFDBlockType;
// 	var dataSize:Int;
// 	var id:Int;
// 	var index:Int;
// }

// @:native("GFDRelocationHeader")
// extern typedef GFDRelocationHeader = {
// 	var magic:Int;
// 	var headerSize:Int;
// 	var unk1:Int;
// 	var dataSize:Int;
// 	var dataOffset:Int;
// 	var textSize:Int;
// 	var textOffset:Int;
// 	var patchBase:Int;
// 	var patchCount:Int;
// 	var patchOffset:Int;
// }

// extern class Gfd {
// 	@:native("GFDGetLastErrorString")
// 	extern public static function getLastErrorString():Ptr<Char>;

// 	@:native("GFDGetGeometryShaderCount")
// 	extern public static function getGeometryShaderCount(file:Const<Ptr<Void>>):Int;

// 	@:native("GFDGetGeometryShaderHeaderSize")
// 	extern public static function GFDGetGeometryShaderHeaderSize(index:Int, file:Const<Ptr<Void>>):Int;

// 	@:native("GFDGetGeometryShaderProgramSize")
// 	extern public static function GFDGetGeometryShaderProgramSize(index:Int, file:Const<Ptr<Void>>):Int;

// 	@:native("GFDGetGeometryShaderCopyProgramSize")
// 	extern public static function GFDGetGeometryShaderCopyProgramSize(index:Int, file:Const<Ptr<Void>>):Int;

// 	@:native("GFDGetGeometryShader")
// 	extern public static function GFDGetGeometryShader(shader:Ptr<GX2GeometryShader>, program:Ptr<Void>, copyProgram:Ptr<Void>, index:Int,
// 		file:Const<Ptr<Void>>):Bool;

// 	@:native("GFDGetPixelShaderCount")
// 	extern public static function getPixelShaderCount(file:Const<Ptr<Void>>):Int;

// 	@:native("GFDGetPixelShaderHeaderSize")
// 	extern public static function GFDGetPixelShaderHeaderSize(index:Int, file:Const<Ptr<Void>>):Int;

// 	@:native("GFDGetPixelShaderProgramSize")
// 	extern public static function GFDGetPixelShaderProgramSize(index:Int, file:Const<Ptr<Void>>):Int;

// 	@:native("GFDGetPixelShader")
// 	extern public static function GFDGetPixelShader(shader:Ptr<GX2PixelShader>, program:Ptr<Void>, index:Int, file:Const<Ptr<Void>>):Bool;

// 	@:native("GFDGetVertexShaderCount")
// 	extern public static function getVertexShaderCount(file:Const<Ptr<Void>>):Int;

// 	@:native("GFDGetVertexShaderHeaderSize")
// 	extern public static function GFDGetVertexShaderHeaderSize(index:Int, file:Const<Ptr<Void>>):Int;

// 	@:native("GFDGetVertexShaderProgramSize")
// 	extern public static function GFDGetVertexShaderProgramSize(index:Int, file:Const<Ptr<Void>>):Int;

// 	@:native("GFDGetVertexShader")
// 	extern public static function GFDGetVertexShader(shader:Ptr<GX2VertexShader>, program:Ptr<Void>, index:Int, file:Const<Ptr<Void>>):Bool;

// 	@:native("GFDGetTextureCount")
// 	extern public static function getTextureCount(file:Const<Ptr<Void>>):Int;

// 	@:native("GFDGetTextureHeaderSize")
// 	extern public static function GFDGetTextureHeaderSize(index:Int, file:Const<Ptr<Void>>):Int;

// 	@:native("GFDGetTextureImageSize")
// 	extern public static function GFDGetTextureImageSize(index:Int, file:Const<Ptr<Void>>):Int;

// 	@:native("GFDGetTextureMipImageSize")
// 	extern public static function GFDGetTextureMipImageSize(index:Int, file:Const<Ptr<Void>>):Int;

// 	@:native("GFDGetTextureAlignmentSize")
// 	extern public static function GFDGetTextureAlignmentSize(index:Int, file:Const<Ptr<Void>>):Int;

// 	@:native("GFDGetTexture")
// 	extern public static function GFDGetTexture(texture:Ptr<GX2Texture>, image:Ptr<Void>, mipImage:Ptr<Void>, index:Int, file:Const<Ptr<Void>>):Bool;

// 	@:native("GFDGetGX2RTexture")
// 	extern public static function GFDGetGX2RTexture(texture:Ptr<GX2Texture>, index:Int, file:Const<Ptr<Void>>):Bool;

// 	@:native("GFDGetTexturePointer")
// 	extern public static function GFDGetTexturePointer(index:Int, file:Const<Ptr<Void>>):Const<Ptr<GX2Texture>>;
// }
