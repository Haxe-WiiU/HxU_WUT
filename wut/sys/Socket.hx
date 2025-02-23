package wut.sys;

@:cppInclude("sys/socket.h") @:include("sys/socket.h")


@:native("socklen_t")
extern typedef Socklen_t = UInt32;
@:native("sa_family_t")
extern typedef Sa_family_t = UInt16;

@:native("sockaddr")
extern typedef Sockaddr = {
    @:native("sa_family_t")
	var sa_family:Sa_family_t;

	@:native("sa_data")
	var sa_data:Char;
}

@:native("sockaddr_storage")
extern typedef Sockaddr_storage = {
    @:native("ss_family")
    var ss_family:Sa_family_t;

	@:native("ss_padding")
	var ss_padding:Char;
}

@:native("linger")
extern typedef Linger = {
    @:native("l_onoff")
	var l_onoff:Int;

    @:native("l_linger")
    var l_linger:Int;
}

extern class Socket {

    @:native("PF_INET")
    extern public static var PF_INET:Int;

    @:native("AF_INET")
    extern public static var AF_INET:Int;

    @:native("SOCK_STREAM")
    extern public static var SOCK_STREAM:Int;

    @:native("SOCK_DGRAM")
    extern public static var SOCK_DGRAM:Int;

    //////////////////////////

	@:native("accept")
	extern public static function accept(sockfd:Int, addr:Ptr<Sockaddr>, addrlen:Socklen_t):Int;

    @:native("bind")
	extern public static function bind(sockfd:Int, addr:Ptr<Sockaddr>, addrlen:Socklen_t):Int;

    @:native("connect")
    extern public static function connect(sockfd:Int, addr:Ptr<Sockaddr>, addrlen:Socklen_t):Int;

	@:native("getpeername")
	extern public static function getpeername(sockfd:Int, addr:Ptr<Sockaddr>, addrlen:Socklen_t):Int;

    @:native("getsockname")
    extern public static function getsockname(sockfd:Int, addr:Ptr<Sockaddr>, addrlen:Socklen_t):Int;

	@:native("getsockopt")
    extern public static function getsockopt(sockfd:Int, level:Int, optname:Int, optval:VoidPtr, optlen:Socklen_t):Int;

    @:native("listen")
    extern public static function listen(sockfd:Int, backlog:Int):Int;

    @:native("recv")
	extern public static function recv(sockfd:Int, buf:Ptr<Void>, len:SizeT, flags:Int):Int;

    @:native("recvfrom")
    extern public static function recvfrom(sockfd:Int, buf:Ptr<Void>, len:SizeT, flags:Int, addr:Ptr<Sockaddr>, addrlen:Socklen_t):Int;

    @:native("send")
    extern public static function send(sockfd:Int, buf:VoidPtr, len:SizeT, flags:Int):SizeT;

    @:native("sendto")
	extern public static function sendto(sockfd:Int, buf:Const<Ptr<Void>>, len:SizeT, flags:Int, dest_addr:Ptr<Sockaddr>, addrlen:Socklen_t):Int;

    @:native("setsockopt")
    extern public static function setsockopt(sockfd:Int, level:Int, optname:Int, optval:Const<VoidPtr>, optlen:Socklen_t):Int;

    @:native("shutdown")
    extern public static function shutdown(sockfd:Int, how:Int):Int;

    @:native("socket")
    extern public static function socket(domain:Int, type:Int, protocol:Int):Int;

	@:native("sockatmark")
    extern public static function sockatmark(sockfd:Int):Int;
}





