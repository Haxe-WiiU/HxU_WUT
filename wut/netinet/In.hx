package wut.netinet;

import wut.sys.Socket;
import wut.sys.Socket.Sa_family_t;

@:cppInclude("netinet/in.h")
@:include("netinet/in.h")

@:native("in_port_t")
extern typedef In_port_t = UInt16;
@:native("in_addr_t")
extern typedef In_addr_t = UInt32;

@:native("in_addr")
extern typedef In_addr = {
    @:native("s_addr")
    var s_addr:In_addr_t;
}

@:native("sockaddr_in")
extern typedef Sockaddr_in = {
    @:native("sin_family")
    var sin_family:Sa_family_t;

    @:native("sin_port")
    var sin_port:In_port_t;

    @:native("sin_addr")
    var sin_addr:In_addr;

    @:native("sin_zero")
    var sin_zero:Char;
}

@:native("ip_mreq")
extern typedef Ip_mreq = {
    @:native("imr_multiaddr")
    var imr_multiaddr:In_addr;

    @:native("imr_interface")
    var imr_interface:In_addr;
}

extern class In {
    @:native("IPPROTO_UDP")
    extern public static var IPPROTO_UDP:Int;
}