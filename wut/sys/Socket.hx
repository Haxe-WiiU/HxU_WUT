package wut.sys;

@:cppInclude("sys/socket.h") @:include("sys/socket.h")

@:native("socklen_t")
@:include("sys/socket.h")
extern typedef Socklen_t = UInt32;
@:native("sa_family_t")
@:include("sys/socket.h")
extern typedef Sa_family_t = UInt16;

@:native("sockaddr")
@:include("sys/socket.h")
extern typedef Sockaddr = {
    @:native("sa_family_t")
    @:include("sys/socket.h")
	var sa_family:Sa_family_t;

	@:native("sa_data")
    @:include("sys/socket.h")
	var sa_data:Char;
}

@:native("sockaddr_storage")
@:include("sys/socket.h")
extern typedef Sockaddr_storage = {
    @:native("ss_family")
    @:include("sys/socket.h")
    var ss_family:Sa_family_t;

	@:native("ss_padding")
    @:include("sys/socket.h")
	var ss_padding:Char;
}

@:native("linger")
@:include("sys/socket.h")
extern typedef Linger = {
    @:native("l_onoff")
    @:include("sys/socket.h")
	var l_onoff:Int;

    @:native("l_linger")
    var l_linger:Int;
}

@:include("sys/socket.h")
extern class Socket {
    @:native("PF_INET")
    @:include("sys/socket.h")
    extern public static var PF_INET:Int;

    @:native("AF_INET")
    @:include("sys/socket.h")
    extern public static var AF_INET:Int;

    @:native("SOCK_STREAM")
    @:include("sys/socket.h")
    extern public static var SOCK_STREAM:Int;

    @:native("SOCK_DGRAM")
    @:include("sys/socket.h")
    extern public static var SOCK_DGRAM:Int;

    //////////////////////////

	@:native("accept")
    @:include("sys/socket.h")
	extern public static function accept(sockfd:Int, addr:Ptr<Sockaddr>, addrlen:Socklen_t):Int;

    @:native("bind")
    @:include("sys/socket.h")
	extern public static function bind(sockfd:Int, addr:Ptr<Sockaddr>, addrlen:Socklen_t):Int;

    @:native("connect")
    @:include("sys/socket.h")
    extern public static function connect(sockfd:Int, addr:Ptr<Sockaddr>, addrlen:Socklen_t):Int;

	@:native("getpeername")
    @:include("sys/socket.h")
	extern public static function getpeername(sockfd:Int, addr:Ptr<Sockaddr>, addrlen:Socklen_t):Int;

    @:native("getsockname")
    @:include("sys/socket.h")
    extern public static function getsockname(sockfd:Int, addr:Ptr<Sockaddr>, addrlen:Socklen_t):Int;

	@:native("getsockopt")
    @:include("sys/socket.h")
    extern public static function getsockopt(sockfd:Int, level:Int, optname:Int, optval:VoidPtr, optlen:Socklen_t):Int;

    @:native("listen")
    @:include("sys/socket.h")
    extern public static function listen(sockfd:Int, backlog:Int):Int;

    @:native("recv")
    @:include("sys/socket.h")
	extern public static function recv(sockfd:Int, buf:Ptr<Void>, len:SizeT, flags:Int):Int;

    @:native("recvfrom")
    @:include("sys/socket.h")
    extern public static function recvfrom(sockfd:Int, buf:Ptr<Void>, len:SizeT, flags:Int, addr:Ptr<Sockaddr>, addrlen:Socklen_t):Int;

    @:native("send")
    @:include("sys/socket.h")
    extern public static function send(sockfd:Int, buf:VoidPtr, len:SizeT, flags:Int):SizeT;

    @:native("sendto")
    @:include("sys/socket.h")
	extern public static function sendto(sockfd:Int, buf:Const<Ptr<Void>>, len:SizeT, flags:Int, dest_addr:Ptr<Sockaddr>, addrlen:Socklen_t):Int;

    @:native("setsockopt")
    @:include("sys/socket.h")
    extern public static function setsockopt(sockfd:Int, level:Int, optname:Int, optval:Const<VoidPtr>, optlen:Socklen_t):Int;

    @:native("shutdown")
    @:include("sys/socket.h")
    extern public static function shutdown(sockfd:Int, how:Int):Int;

    @:native("socket")
    @:include("sys/socket.h")
    extern public static function socket(domain:Int, type:Int, protocol:Int):Int;

	@:native("sockatmark")
    @:include("sys/socket.h")
    extern public static function sockatmark(sockfd:Int):Int;
}





