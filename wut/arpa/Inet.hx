package wut.arpa;

import wut.netinet.In.In_addr;
import wut.netinet.In.In_addr_t;

@:cppInclude("arpa/inet.h")
@:include("arpa/inet.h")

extern class Inet {
    @:native("htonl")
    @:include("arpa/inet.h")
    extern public static function htonl(hostlong:UInt32):UInt32;

    @:native("htons")
    @:include("arpa/inet.h")
    extern public static function htons(hostshort:UInt16):UInt16;

    @:native("ntohl")
    @:include("arpa/inet.h")
    extern public static function ntohl(netlong:UInt32):UInt32;

    @:native("ntohs")
    @:include("arpa/inet.h")
    extern public static function ntohs(netshort:UInt16):UInt16;

    @:native("inet_addr")
    @:include("arpa/inet.h")
    extern public static function inet_addr(cp:ConstCharPtr):In_addr_t;

    @:native("inet_aton")
    @:include("arpa/inet.h")
    extern public static function inet_aton(cp:ConstCharPtr, inp:Ptr<In_addr>):Int;

    @:native("inet_ntoa")
    @:include("arpa/inet.h")
    extern public static function inet_ntoa(inp:In_addr):ConstCharPtr;

    @:native("inet_ntoa_r")
    @:include("arpa/inet.h")
    extern public static function inet_ntoa_r(inp:In_addr, buf:ConstCharPtr):ConstCharPtr;

    @:native("inet_ntop")
    @:include("arpa/inet.h")
    extern public static function inet_ntop(af:Int, src:Const<VoidPtr>, dst:Ptr<Char>, len:Int):ConstCharPtr;

    @:native("inet_pton")
    @:include("arpa/inet.h")
    extern public static function inet_pton(af:Int, src:ConstCharPtr, dst:VoidPtr):Int;
}