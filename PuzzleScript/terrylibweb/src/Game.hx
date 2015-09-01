import openfl.external.ExternalInterface;

@:keep
class Game {
	public static function title(t:String) {
		Webscript.title = t;
		#if !flash
		ExternalInterface.call("settitle", t);
		#end
	}
	
	public static function homepage(p:String) {
		Webscript.homepage = p;
		#if !flash
		ExternalInterface.call("sethomepage", p);
		#end
	}
	
	public static function background(c:Int) {
		Webscript.background_color = c;
		#if !flash
		ExternalInterface.call("setbackgroundcolor", c);
		#end
	}
	
	public static function foreground(c:Int) {
		Webscript.foreground_color = c;
		#if !flash
		ExternalInterface.call("setforegroundcolor", c);
		#end
	}

	public static function editor():Bool{
		#if !flash
		return untyped __js__('IDE');
		#end
	}

	public static function prompt(description:String,defaultText:String):String{
		#if !flash
		return untyped __js__('prompt({0},{1})',description,defaultText);
		#end
	}
}