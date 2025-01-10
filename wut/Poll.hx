package wut;

@:cppInclude("poll.h")
@:include("poll.h")

@:native("pollfd")
typedef Pollfd = {
	var fd:Int;
	var events:Int;
	var revents:Int;
};

class Poll {
    @:native("poll")
	extern public static function poll(fds:Array<Pollfd>, timeout:Int):Int;
}
