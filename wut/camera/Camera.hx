package wut.camera;

@:cppInclude("camera/camera.h")
@:include("camera/camera.h")

@:native("CAMERAHandle")
@:include("camera/camera.h")
extern typedef CAMERAHandle = Int;

@:native("CAMERAError")
@:include("camera/camera.h")
extern enum CAMERAError {
    @:native("CAMERA_ERROR_OK")
    @:include("camera/camera.h")
    CAMERA_ERROR_OK;
    @:native("CAMERA_ERROR_INVALID_ARG")
    @:include("camera/camera.h")
    CAMERA_ERROR_INVALID_ARG;
    @:native("CAMERA_ERROR_INVALID_HANDLE")
    @:include("camera/camera.h")
    CAMERA_ERROR_INVALID_HANDLE;
    @:native("CAMERA_ERROR_TOO_MANY_SURFACES")
    @:include("camera/camera.h")
    CAMERA_ERROR_TOO_MANY_SURFACES;
    @:native("CAMERA_ERROR_INSUFFICIENT_MEMORY")
    @:include("camera/camera.h")
    CAMERA_ERROR_INSUFFICIENT_MEMORY;
    @:native("CAMERA_ERROR_NOT_READY")
    @:include("camera/camera.h")
    CAMERA_ERROR_NOT_READY;
    @:native("CAMERA_ERROR_UNINITIALIZED")
    @:include("camera/camera.h")
    CAMERA_ERROR_UNINITIALIZED;
    @:native("CAMERA_ERROR_UVC")
    @:include("camera/camera.h")
    CAMERA_ERROR_UVC;
    @:native("CAMERA_ERROR_UVD_CONTEXT")
    @:include("camera/camera.h")
    CAMERA_ERROR_UVD_CONTEXT;
    @:native("CAMERA_ERROR_DEVICE_IN_USE")
    @:include("camera/camera.h")
    CAMERA_ERROR_DEVICE_IN_USE;
    @:native("CAMERA_ERROR_UVD_SESSION")
    @:include("camera/camera.h")
    CAMERA_ERROR_UVD_SESSION;
    @:native("CAMERA_ERROR_SEGMENT_VIOLATION")
    @:include("camera/camera.h")
    CAMERA_ERROR_SEGMENT_VIOLATION;
}

@:native("CamFps")
@:include("camera/camera.h")
extern enum CamFps {
    @:native("CAMERA_FPS_15")
    @:include("camera/camera.h")
    CAMERA_FPS_15;
    @:native("CAMERA_FPS_30")
    @:include("camera/camera.h")
    CAMERA_FPS_30;
}

@:include("arpa/inet.h")
extern class Camera {
    @:native("CAMERA_WIDTH")
    @:include("camera/camera.h")
    extern public static var CAMERA_WIDTH:Int;

    @:native("CAMERA_PITCH")
    @:include("camera/camera.h")
    extern public static var CAMERA_PITCH:Int;

    @:native("CAMERA_HEIGHT")
    @:include("camera/camera.h")
    extern public static var CAMERA_HEIGHT:Int;

    @:native("CAMERA_Y_BUFFER_SIZE")
    @:include("camera/camera.h")
    extern public static var CAMERA_Y_BUFFER_SIZE:Int;

    @:native("CAMERA_UV_BUFFER_SIZE")
    @:include("camera/camera.h")
    extern public static var CAMERA_UV_BUFFER_SIZE:Int;

    @:native("CAMERA_YUV_BUFFER_SIZE")
    @:include("camera/camera.h")
    extern public static var CAMERA_YUV_BUFFER_SIZE:Int;

    @:native("CAMERA_YUV_BUFFER_ALIGNMENT")
    @:include("camera/camera.h")
    extern public static var CAMERA_YUV_BUFFER_ALIGNMENT:Int;
}
