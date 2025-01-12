package wut.sys;

@:cppInclude("sys/socket.h") @:include("sys/socket.h")

@:native("socklen_t")
extern class Socklen_t {}

@:native("sockaddr")
extern enum Sockaddr {
    @:native("sa_family_t")
	sa_family;

	@:native("sa_data")
	sa_data;
}

@:native("sockaddr_storage")
extern enum Sockaddr_storage {
    @:native("ss_family")
    ss_family;

	@:native("ss_padding")
	ss_padding;
}

@:native("linger")
extern enum Linger {
    @:native("l_onoff")
	l_onoff;

    @:native("l_linger")
    l_linger;
}

extern class Socket {
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
    extern public static function getsockopt(sockfd:Int, level:Int, optname:Int, optval:Ptr<Void>, optlen:Socklen_t):Int;

    @:native("listen")
    extern public static function listen(sockfd:Int, backlog:Int):Int;

    @:native("recv")
	extern public static function recv(sockfd:Int, buf:Ptr<Void>, len:Int, flags:Int):Int;

    @:native("recvfrom")
    extern public static function recvfrom(sockfd:Int, buf:Ptr<Void>, len:Int, flags:Int, addr:Ptr<Sockaddr>, addrlen:Socklen_t):Int;

    @:native("send")
    extern public static function send(sockfd:Int, buf:Ptr<Void>, len:Int, flags:Int):Int;

    @:native("sendto")
	extern public static function sendto(sockfd:Int, buf:Const<Ptr<Void>>, len:Int, flags:Int, dest_addr:Ptr<Sockaddr>, addrlen:Socklen_t):Int;

    @:native("setsockopt")
    extern public static function setsockopt(sockfd:Int, level:Int, optname:Int, optval:Const<Ptr<Void>>, optlen:Socklen_t):Int;

    @:native("shutdown")
    extern public static function shutdown(sockfd:Int, how:Int):Int;

    @:native("socket")
    extern public static function socket(domain:Int, type:Int, protocol:Int):Int;

	@:native("sockatmark")
    extern public static function sockatmark(sockfd:Int):Int;
}





