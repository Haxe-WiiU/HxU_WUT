package wut;

@:cppInclude("poll.h")
@:include("poll.h")

@:native("nfds_t")
@:include("poll.h")
extern class Nfds_t {}

@:native("pollfd")
@:include("poll.h")
extern enum Pollfd {
	@:native("fd")
	@:include("poll.h")
	fd;

	@:native("events")
	@:include("poll.h")
	events;

	@:native("revents")
	@:include("poll.h")
	revents;
}

@:include("poll.h")
extern class Poll {
    @:native("poll")
	@:include("poll.h")
	extern public static function poll(fds:Ptr<Pollfd>, nfds:Nfds_t, timeout:Int):Int;
}
