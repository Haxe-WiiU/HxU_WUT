package wut;

@:cppInclude("gfd.h") @:include("gfd.h")
@:native("GFDBlockType")
extern enum GFDBlockType {
	GFD_BLOCK_END_OF_FILE;
	GFD_BLOCK_PADDING;
	GFD_BLOCK_VERTEX_SHADER_HEADER;
	GFD_BLOCK_VERTEX_SHADER_PROGRAM;
	GFD_BLOCK_PIXEL_SHADER_HEADER;
	GFD_BLOCK_PIXEL_SHADER_PROGRAM;
	GFD_BLOCK_GEOMETRY_SHADER_HEADER;
	GFD_BLOCK_GEOMETRY_SHADER_PROGRAM;
	GFD_BLOCK_GEOMETRY_SHADER_COPY_PROGRAM ;
	GFD_BLOCK_TEXTURE_HEADER;
	GFD_BLOCK_TEXTURE_IMAGE;
	GFD_BLOCK_TEXTURE_MIPMAP;
	GFD_BLOCK_COMPUTE_SHADER_HEADER;
	GFD_BLOCK_COMPUTE_SHADER_PROGRAM;
}

@:native("GFDHeader")
extern typedef GFDHeader = {
	var magic:CppType<"uint32_t">;
	var headerSize:CppType<"uint32_t">;
	var majorVersion:CppType<"uint32_t">;
	var minorVersion:CppType<"uint32_t">;
	var gpuVersion:CppType<"uint32_t">;
	var unk1:CppType<"uint32_t">;
	var unk2:CppType<"uint32_t">;
}

@:native("GFDBlockHeader")
extern typedef GFDBlockHeader = {
	var magic:CppType<"uint32_t">;
	var headerSize:CppType<"uint32_t">;
	var majorVersion:CppType<"uint32_t">;
	var minorVersion:CppType<"uint32_t">;
	var type:GFDBlockType;
	var dataSize:CppType<"uint32_t">;
	var id:CppType<"uint32_t">;
	var index:CppType<"uint32_t">;
}

@:native("GFDRelocationHeader")
extern typedef GFDRelocationHeader = {
	var magic:CppType<"uint32_t">;
	var headerSize:CppType<"uint32_t">;
	var unk1:CppType<"uint32_t">;
	var dataSize:CppType<"uint32_t">;
	var dataOffset:CppType<"uint32_t">;
	var textSize:CppType<"uint32_t">;
	var textOffset:CppType<"uint32_t">;
	var patchBase:CppType<"uint32_t">;
	var patchCount:CppType<"uint32_t">;
	var patchOffset:CppType<"uint32_t">;
}

extern class Gfd {
	@:native("GFDGetLastErrorString")
	extern public static function getLastErrorString():Ptr<Char>;

	@:native("GFDGetGeometryShaderCount")
	extern public static function getGeometryShaderCount(file:Const<Ptr<Void>>):CppType<"uint32_t">;

	@:native("GFDGetGeometryShaderHeaderSize")
	extern public static function GFDGetGeometryShaderHeaderSize(index:CppType<"uint32_t">, file:Const<Ptr<Void>>):CppType<"uint32_t">;

	@:native("GFDGetGeometryShaderProgramSize")
	extern public static function GFDGetGeometryShaderProgramSize(index:CppType<"uint32_t">, file:Const<Ptr<Void>>):CppType<"uint32_t">;

	@:native("GFDGetGeometryShaderCopyProgramSize")
	extern public static function GFDGetGeometryShaderCopyProgramSize(index:CppType<"uint32_t">, file:Const<Ptr<Void>>):CppType<"uint32_t">;

	@:native("GFDGetGeometryShader")
	extern public static function GFDGetGeometryShader(shader:Ptr<GX2GeometryShader>, program:Ptr<Void>, copyProgram:Ptr<Void>, index:CppType<"uint32_t">,
		file:Const<Ptr<Void>>):Bool;

	@:native("GFDGetPixelShaderCount")
	extern public static function getPixelShaderCount(file:Const<Ptr<Void>>):CppType<"uint32_t">;

	@:native("GFDGetPixelShaderHeaderSize")
	extern public static function GFDGetPixelShaderHeaderSize(index:CppType<"uint32_t">, file:Const<Ptr<Void>>):CppType<"uint32_t">;

	@:native("GFDGetPixelShaderProgramSize")
	extern public static function GFDGetPixelShaderProgramSize(index:CppType<"uint32_t">, file:Const<Ptr<Void>>):CppType<"uint32_t">;

	@:native("GFDGetPixelShader")
	extern public static function GFDGetPixelShader(shader:Ptr<GX2PixelShader>, program:Ptr<Void>, index:CppType<"uint32_t">, file:Const<Ptr<Void>>):Bool;

	@:native("GFDGetVertexShaderCount")
	extern public static function getVertexShaderCount(file:Const<Ptr<Void>>):CppType<"uint32_t">;

	@:native("GFDGetVertexShaderHeaderSize")
	extern public static function GFDGetVertexShaderHeaderSize(index:CppType<"uint32_t">, file:Const<Ptr<Void>>):CppType<"uint32_t">;

	@:native("GFDGetVertexShaderProgramSize")
	extern public static function GFDGetVertexShaderProgramSize(index:CppType<"uint32_t">, file:Const<Ptr<Void>>):CppType<"uint32_t">;

	@:native("GFDGetVertexShader")
	extern public static function GFDGetVertexShader(shader:Ptr<GX2VertexShader>, program:Ptr<Void>, index:CppType<"uint32_t">, file:Const<Ptr<Void>>):Bool;

	@:native("GFDGetTextureCount")
	extern public static function getTextureCount(file:Const<Ptr<Void>>):CppType<"uint32_t">;

	@:native("GFDGetTextureHeaderSize")
	extern public static function GFDGetTextureHeaderSize(index:CppType<"uint32_t">, file:Const<Ptr<Void>>):CppType<"uint32_t">;

	@:native("GFDGetTextureImageSize")
	extern public static function GFDGetTextureImageSize(index:CppType<"uint32_t">, file:Const<Ptr<Void>>):CppType<"uint32_t">;

	@:native("GFDGetTextureMipImageSize")
	extern public static function GFDGetTextureMipImageSize(index:CppType<"uint32_t">, file:Const<Ptr<Void>>):CppType<"uint32_t">;

	@:native("GFDGetTextureAlignmentSize")
	extern public static function GFDGetTextureAlignmentSize(index:CppType<"uint32_t">, file:Const<Ptr<Void>>):CppType<"uint32_t">;

	@:native("GFDGetTexture")
	extern public static function GFDGetTexture(texture:Ptr<GX2Texture>, image:Ptr<Void>, mipImage:Ptr<Void>, index:CppType<"uint32_t">, file:Const<Ptr<Void>>):Bool;

	@:native("GFDGetGX2RTexture")
	extern public static function GFDGetGX2RTexture(texture:Ptr<GX2Texture>, index:CppType<"uint32_t">, file:Const<Ptr<Void>>):Bool;

	@:native("GFDGetTexturePointer")
	extern public static function GFDGetTexturePointer(index:CppType<"uint32_t">, file:Const<Ptr<Void>>):Const<Ptr<GX2Texture>>;
}
