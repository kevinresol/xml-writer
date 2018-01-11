# XML Writer

Abstract over the standard `Xml` class for a more type-safe XML writing experience.

### Example

```haxe
var doc = 
	new Document(
		new ProcessingInstruction('xml version="1.0" encoding="UTF-8"'),
		new DocType('note')
	)
	.add(
		new Element('root')
			.add(new PCData('<testdata/>'))
			.add(new CData('<testdata/>'))
			.add(new Comment('comment'))
			.add(
				new Element('child')
					.setAttribute('name', 'child')
			)
			.setAttribute('name', 'parent')
	);

trace(doc);
/*
	Output: (manually added line breaks for easier read)
	
	<?xml version="1.0" encoding="UTF-8"?>
	<!DOCTYPE note>
	<root name="parent">
		&lt;testdata/&gt;
		<![CDATA[<testdata/>]]>
		<!--comment-->
		<child name="child"/>
	</root>
*/
```