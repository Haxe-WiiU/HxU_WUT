package wut;

@:cppInclude("netdb.h") @:include("netdb.h")
@:native("hostent")
typedef Hostent = {
	var h_name:ConstCharPtr;
	var h_aliases:ConstCharPtr;
	var h_addrtype:Int;
	var h_length:Int;
	var h_addr_list:ConstCharPtr;
}

@:native("servent")
typedef Servent = {
	var s_name:ConstCharPtr;
	var s_aliases:ConstCharPtr;
	var s_port:Int;
	var s_proto:ConstCharPtr;
}

@:native("addrinfo")
typedef Addrinfo = {
	var ai_flags:Int;
	var ai_family:Int;
	var ai_socktype:Int;
	var ai_protocol:Int;
	var ai_addrlen:Socklen_t;
	var ai_canonname:ConstCharPtr;
	var ai_addr:Sockaddr;
	var ai_next:Addrinfo;
}

class Netdb {
	@:native("NETDB_INTERNAL")
	extern public static var NETDB_INTERNAL:Int;

	@:native("NETDB_SUCCESS")
	extern public static var NETDB_SUCCESS:Int;

	@:native("HOST_NOT_FOUND")
	extern public static var NETDB_NOT_FOUND:Int;

	@:native("TRY_AGAIN")
	extern public static var NETDB_TRY_AGAIN:Int;

	@:native("NO_RECOVERY")
	extern public static var NETDB_NO_RECOVERY:Int;

	@:native("NO_DATA")
	extern public static var NETDB_NO_DATA:Int;

	@:native("NO_ADDRESS")
	extern public static var NETDB_NO_ADDRESS:Int;

	///////
	@:native("EAI_ADDRFAMILY")
	extern public static var EAI_ADDRFAMILY:Int;

	@:native("EAI_AGAIN")
	extern public static var EAI_AGAIN:Int;

	@:native("EAI_BADFLAGS")
	extern public static var EAI_BADFLAGS:Int;

	@:native("EAI_FAIL")
	extern public static var EAI_FAIL:Int;

	@:native("EAI_FAMILY")
	extern public static var EAI_FAMILY:Int;

	@:native("EAI_MEMORY")
	extern public static var EAI_MEMORY:Int;

	@:native("EAI_NODATA")
	extern public static var EAI_NODATA:Int;

	@:native("EAI_NONAME")
	extern public static var EAI_NONAME:Int;

	@:native("EAI_SERVICE")
	extern public static var EAI_SERVICE:Int;

	@:native("EAI_SOCKTYPE")
	extern public static var EAI_SOCKTYPE:Int;

	@:native("EAI_SYSTEM")
	extern public static var EAI_SYSTEM:Int;

	@:native("EAI_BADHINTS")
	extern public static var EAI_BADHINTS:Int;

	@:native("EAI_PROTOCOL")
	extern public static var EAI_PROTOCOL:Int;

	@:native("EAI_OVERFLOW")
	extern public static var EAI_OVERFLOW:Int;

	@:native("EAI_MAX")
	extern public static var EAI_MAX:Int;

	///////
	@:native("NI_MAXHOST")
	extern public static var NI_MAXHOST:Int;

	@:native("NI_MAXSERV")
	extern public static var NI_MAXSERV:Int;

	///////
	@:native("NI_NOFQDN")
	extern public static var NI_NOFQDN:Int;

	@:native("NI_NUMERICHOST")
	extern public static var NI_NUMERICHOST:Int;

	@:native("NI_NAMEREQD")
	extern public static var NI_NAMEREQD:Int;

	@:native("NI_NUMERICSERV")
	extern public static var NI_NUMERICSERV:Int;

	@:native("NI_DGRAM")
	extern public static var NI_DGRAM:Int;

	@:native("NI_NUMERICSCOPE")
	extern public static var NI_NUMERICSCOPE:Int;

	///////
	@:native("AI_PASSIVE")
	extern public static var AI_PASSIVE:Int;

	@:native("AI_CANONNAME")
	extern public static var AI_CANONNAME:Int;

	@:native("AI_NUMERICHOST")
	extern public static var AI_NUMERICHOST:Int;

	@:native("AI_V4MAPPED")
	extern public static var AI_V4MAPPED:Int;

	@:native("AI_ALL")
	extern public static var AI_ALL:Int;

	@:native("AI_ADDRCONFIG")
	extern public static var AI_ADDRCONFIG:Int;

	///////

	@:native("gethostbyname")
	extern public static function gethostbyname(name:ConstCharPtr):Hostent;

	@:native("gethostbyaddr")
	extern public static function gethostbyaddr(addr:Sockaddr, len:Socklen_t, type:Int):Hostent;

	@:native("gethostent")
	extern public static function gethostent():Hostent;

	@:native("getservbyname")
	extern public static function getservbyname(name:ConstCharPtr, proto:ConstCharPtr):Servent;

	@:native("getservbyport")
	extern public static function getservbyport(port:Int, proto:ConstCharPtr):Servent;

	@:native("getservent")
	extern public static function getservent():Servent;

	@:native("getaddrinfo")
	extern public static function getaddrinfo(node:ConstCharPtr, service:ConstCharPtr, hints:Addrinfo, res:Addrinfo):Int;

	@:native("gai_strerror")
	extern public static function gai_strerror(error:Int):ConstCharPtr;
}
