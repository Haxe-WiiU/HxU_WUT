package wut.netinet;

import wut.sys.Socket;
import wut.sys.Socket.Sa_family_t;

@:cppInclude("netinet/in.h")
@:include("netinet/in.h")

@:native("in_port_t")
@:include("netinet/in.h")
extern typedef In_port_t = UInt16;
@:native("in_addr_t")
@:include("netinet/in.h")
extern typedef In_addr_t = UInt32;

@:native("in_addr")
@:include("netinet/in.h")
extern typedef In_addr = {
    @:native("s_addr")
    var s_addr:In_addr_t;
}

@:native("sockaddr_in")
@:include("netinet/in.h")
extern typedef Sockaddr_in = {
    @:native("sin_family")
    @:include("netinet/in.h")
    var sin_family:Sa_family_t;

    @:native("sin_port")
    @:include("netinet/in.h")
    var sin_port:In_port_t;

    @:native("sin_addr")
    @:include("netinet/in.h")
    var sin_addr:In_addr;

    @:native("sin_zero")
    @:include("netinet/in.h")
    var sin_zero:Char;
}

@:native("ip_mreq")
@:include("netinet/in.h")
extern typedef Ip_mreq = {
    @:native("imr_multiaddr")
    @:include("netinet/in.h")
    var imr_multiaddr:In_addr;

    @:native("imr_interface")
    @:include("netinet/in.h")
    var imr_interface:In_addr;
}

@:include("netinet/in.h")
extern class In {
    @:native("IPPROTO_UDP")
    @:include("netinet/in.h")
    extern public static var IPPROTO_UDP:Int;
}