package xml;


abstract AttributeValue(String) from String to String {
	@:from
	public static inline function fromFloat(v:Float):AttributeValue
		return Std.string(v);
	@:from
	public static inline function fromBool(v:Bool):AttributeValue
		return v ? 'true' : 'false';
}