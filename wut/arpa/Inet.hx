package wut.arpa;

import wut.netinet.In.In_addr;
import wut.netinet.In.In_addr_t;

@:cppInclude("arpa/inet.h")
@:include("arpa/inet.h")

extern class Inet {
    @:native("htonl")
    extern public static function htonl(hostlong:UInt32):UInt32;

    @:native("htons")
    extern public static function htons(hostshort:UInt16):UInt16;

    @:native("ntohl")
    extern public static function ntohl(netlong:UInt32):UInt32;

    @:native("ntohs")
    extern public static function ntohs(netshort:UInt16):UInt16;

    @:native("inet_addr")
    extern public static function inet_addr(cp:ConstCharPtr):In_addr_t;

    @:native("inet_aton")
    extern public static function inet_aton(cp:ConstCharPtr, inp:Ptr<In_addr>):Int;

    @:native("inet_ntoa")
    extern public static function inet_ntoa(inp:In_addr):ConstCharPtr;

    @:native("inet_ntoa_r")
    extern public static function inet_ntoa_r(inp:In_addr, buf:ConstCharPtr):ConstCharPtr;

    @:native("inet_ntop")
    extern public static function inet_ntop(af:Int, src:Const<VoidPtr>, dst:Ptr<Char>, len:Int):ConstCharPtr;

    @:native("inet_pton")
    extern public static function inet_pton(af:Int, src:ConstCharPtr, dst:VoidPtr):Int;
}