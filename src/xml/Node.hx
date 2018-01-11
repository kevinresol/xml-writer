package xml;

abstract Node(Xml) from Xml to Xml {
	public var xml(get, never):Xml;
	public var type(get, never):Xml.XmlType;
	
	public inline function new(type)
		this = @:privateAccess new Xml(type);
		
	public inline function get_xml()
		return this;
		
	public inline function get_type()
		return this.nodeType;
		
	@:to
	public inline function toString():String
		return this.toString();
}