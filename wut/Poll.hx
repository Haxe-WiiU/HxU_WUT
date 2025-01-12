package wut;

@:cppInclude("poll.h")
@:include("poll.h")

@:native("nfds_t")
extern class Nfds_t {}

@:native("pollfd")
extern enum Pollfd {
	@:native("fd")
	fd;

	@:native("events")
	events;

	@:native("revents")
	revents;
}

extern class Poll {
    @:native("poll")
	extern public static function poll(fds:Ptr<Pollfd>, nfds:Nfds_t, timeout:Int):Int;
}
