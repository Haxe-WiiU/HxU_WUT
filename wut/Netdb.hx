package wut;

import wut.sys.Socket.Sockaddr;
import wut.sys.Socket.Socklen_t;

@:cppInclude("netdb.h")
@:include("netdb.h")

@:include("netdb.h")
@:native("hostent")
extern enum Hostent {
	@:native("h_name")
	@:include("netdb.h")
	h_name;

	@:native("h_aliases")
	@:include("netdb.h")
	h_aliases;

	@:native("h_addrtype")
	@:include("netdb.h")
	h_addrtype;

	@:native("h_length")
	@:include("netdb.h")
	h_length;

	@:native("h_addr_list")
	@:include("netdb.h")
	h_addr_list;
}

@:native("servent")
@:include("netdb.h")
extern enum Servent {
	@:native("s_name")
	@:include("netdb.h")
	s_name;

	@:native("s_aliases")
	@:include("netdb.h")
	s_aliases;

	@:native("s_port")
	@:include("netdb.h")
	s_port;

	@:native("s_proto")
	@:include("netdb.h")
	s_proto;
}

@:native("addrinfo")
@:include("netdb.h")
extern enum Addrinfo {
	@:native("ai_flags")
	@:include("netdb.h")
	ai_flags;

	@:native("ai_family")
	@:include("netdb.h")
	ai_family;

	@:native("ai_socktype")
	@:include("netdb.h")
	ai_socktype;

	@:native("ai_protocol")
	@:include("netdb.h")
	ai_protocol;

	@:native("ai_addrlen")
	@:include("netdb.h")
	ai_addrlen;

	@:native("ai_addr")
	@:include("netdb.h")
	ai_canonname;

	@:native("ai_canonname")
	@:include("netdb.h")
	ai_addr;

	@:native("ai_next")
	@:include("netdb.h")
	ai_next;
}

@:include("netdb.h")
extern class Netdb {
	@:native("NETDB_INTERNAL")
	@:include("netdb.h")
	extern public static var NETDB_INTERNAL:Int;

	@:native("NETDB_SUCCESS")
	@:include("netdb.h")
	extern public static var NETDB_SUCCESS:Int;

	@:native("HOST_NOT_FOUND")
	@:include("netdb.h")
	extern public static var NETDB_NOT_FOUND:Int;

	@:native("TRY_AGAIN")
	@:include("netdb.h")
	extern public static var NETDB_TRY_AGAIN:Int;

	@:native("NO_RECOVERY")
	@:include("netdb.h")
	extern public static var NETDB_NO_RECOVERY:Int;

	@:native("NO_DATA")
	@:include("netdb.h")
	extern public static var NETDB_NO_DATA:Int;

	@:native("NO_ADDRESS")
	@:include("netdb.h")
	extern public static var NETDB_NO_ADDRESS:Int;

	///////
	@:native("EAI_ADDRFAMILY")
	@:include("netdb.h")
	extern public static var EAI_ADDRFAMILY:Int;

	@:native("EAI_AGAIN")
	@:include("netdb.h")
	extern public static var EAI_AGAIN:Int;

	@:native("EAI_BADFLAGS")
	@:include("netdb.h")
	extern public static var EAI_BADFLAGS:Int;

	@:native("EAI_FAIL")
	@:include("netdb.h")
	extern public static var EAI_FAIL:Int;

	@:native("EAI_FAMILY")
	@:include("netdb.h")
	extern public static var EAI_FAMILY:Int;

	@:native("EAI_MEMORY")
	@:include("netdb.h")
	extern public static var EAI_MEMORY:Int;

	@:native("EAI_NODATA")
	@:include("netdb.h")
	extern public static var EAI_NODATA:Int;

	@:native("EAI_NONAME")
	@:include("netdb.h")
	extern public static var EAI_NONAME:Int;

	@:native("EAI_SERVICE")
	@:include("netdb.h")
	extern public static var EAI_SERVICE:Int;

	@:native("EAI_SOCKTYPE")
	@:include("netdb.h")
	extern public static var EAI_SOCKTYPE:Int;

	@:native("EAI_SYSTEM")
	@:include("netdb.h")
	extern public static var EAI_SYSTEM:Int;

	@:native("EAI_BADHINTS")
	@:include("netdb.h")
	extern public static var EAI_BADHINTS:Int;

	@:native("EAI_PROTOCOL")
	@:include("netdb.h")
	extern public static var EAI_PROTOCOL:Int;

	@:native("EAI_OVERFLOW")
	@:include("netdb.h")
	extern public static var EAI_OVERFLOW:Int;

	@:native("EAI_MAX")
	@:include("netdb.h")
	extern public static var EAI_MAX:Int;

	///////
	@:native("NI_MAXHOST")
	@:include("netdb.h")
	extern public static var NI_MAXHOST:Int;

	@:native("NI_MAXSERV")
	@:include("netdb.h")
	extern public static var NI_MAXSERV:Int;

	///////
	@:native("NI_NOFQDN")
	@:include("netdb.h")
	extern public static var NI_NOFQDN:Int;

	@:native("NI_NUMERICHOST")
	@:include("netdb.h")
	extern public static var NI_NUMERICHOST:Int;

	@:native("NI_NAMEREQD")
	@:include("netdb.h")
	extern public static var NI_NAMEREQD:Int;

	@:native("NI_NUMERICSERV")
	@:include("netdb.h")
	extern public static var NI_NUMERICSERV:Int;

	@:native("NI_DGRAM")
	@:include("netdb.h")
	extern public static var NI_DGRAM:Int;

	@:native("NI_NUMERICSCOPE")
	@:include("netdb.h")
	extern public static var NI_NUMERICSCOPE:Int;

	///////
	@:native("AI_PASSIVE")
	@:include("netdb.h")
	extern public static var AI_PASSIVE:Int;

	@:native("AI_CANONNAME")
	@:include("netdb.h")
	extern public static var AI_CANONNAME:Int;

	@:native("AI_NUMERICHOST")
	@:include("netdb.h")
	extern public static var AI_NUMERICHOST:Int;

	@:native("AI_V4MAPPED")
	@:include("netdb.h")
	extern public static var AI_V4MAPPED:Int;

	@:native("AI_ALL")
	@:include("netdb.h")
	extern public static var AI_ALL:Int;

	@:native("AI_ADDRCONFIG")
	@:include("netdb.h")
	extern public static var AI_ADDRCONFIG:Int;

	///////
	@:native("gethostbyname")
	@:include("netdb.h")
	extern public static function gethostbyname(name:ConstCharPtr):Hostent;

	@:native("gethostbyaddr")
	@:include("netdb.h")
	extern public static function gethostbyaddr(addr:Sockaddr, len:Socklen_t, type:Int):Hostent;

	@:native("gethostent")
	@:include("netdb.h")
	extern public static function gethostent():Hostent;

	@:native("getservbyname")
	@:include("netdb.h")
	extern public static function getservbyname(name:ConstCharPtr, proto:ConstCharPtr):Servent;

	@:native("getservbyport")
	@:include("netdb.h")
	extern public static function getservbyport(port:Int, proto:ConstCharPtr):Servent;

	@:native("getservent")
	@:include("netdb.h")
	extern public static function getservent():Servent;

	@:native("getaddrinfo")
	@:include("netdb.h")
	extern public static function getaddrinfo(node:ConstCharPtr, service:ConstCharPtr, hints:Addrinfo, res:Addrinfo):Int;

	@:native("gai_strerror")
	@:include("netdb.h")
	extern public static function gai_strerror(error:Int):ConstCharPtr;
}
