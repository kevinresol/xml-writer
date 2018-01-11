package xml;

@:forward
abstract Element(ContainerNode) to Node to Xml  {
	
	public var name(get, set):String;
	public var attributes(get, never):Map<String, String>;
	
	public function new(tag) {
		this = new ContainerNode(Element);
		set_name(tag);
	}
	
	public inline function add(node:Node):Element {
		this.xml.addChild(node);
		return cast this;
	}
	
	inline function get_attributes()
		return @:privateAccess this.xml.attributeMap;
	
	public inline function setAttribute(name:String, value:String):Element {
		attributes.set(name, value);
		return cast this;
	}
	
	public inline function getAttribute(name:String)
		return attributes.get(name);
	
	public inline function removeAttribute(name:String)
		return attributes.remove(name);
	
	public inline function hasAttribute(name:String)
		return attributes.exists(name);
		
	inline function get_name()
		return this.xml.nodeName;
	
	inline function set_name(v)
		return this.xml.nodeName = v;
		
	@:to
	public inline function toString():String
		return this.toString();
}