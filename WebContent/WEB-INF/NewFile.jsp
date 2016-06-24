<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="content-type" content="text/html; charset=ISO-8859-1">
	<title>Dynatree - Example</title>

	<script src="../Scripts/jquery.js" type="text/javascript"></script>
	<script src="../Scripts/jquery-ui.custom.js" type="text/javascript"></script>
	<script src="../Scripts/jquery.cookie.js" type="text/javascript"></script>

	<link href="../skin/ui.dynatree.css" rel="stylesheet" type="text/css" id="skinSheet">
	<script src="../Scripts/jquery.dynatree.js" type="text/javascript"></script>

	<!-- Start_Exclude: This block is not part of the sample code -->
	<!--link href="prettify.css" rel="stylesheet">
	<script src="prettify.js" type="text/javascript"></script>
	<link href="sample.css" rel="stylesheet" type="text/css">
	<script src="sample.js" type="text/javascript"></script-->
	<!-- End_Exclude -->

<script type="text/javascript">
	$(function(){
		$("#tree").dynatree({
			fx: { height: "toggle", duration: 200 },
			autoCollapse: true,
			onActivate: function(node) {
				$("#echoActive").text(node.data.title);
			},
			onDeactivate: function(node) {
				$("#echoActive").text("-");
			}
		});
		$("#cbAutoCollapse")
		.attr("checked", true) // set state, to prevent caching
		.click(function(){
			var f = $(this).attr("checked");
			$("#tree").dynatree("option", "autoCollapse", f);
		});
		$("#cbEffects")
		.attr("checked", true) // set state, to prevent caching
		.click(function(){
			var f = $(this).attr("checked");
			if(f){
				$("#tree").dynatree("option", "fx", { height: "toggle", duration: 200 });
			}else{
				$("#tree").dynatree("option", "fx", null);
			}
		});
		$("#skinCombo")
		.val(0) // set state to prevent caching
		.change(function(){
			var href = "../src/"
				+ $(this).val()
				+ "/ui.dynatree.css"
				+ "?reload=" + new Date().getTime();
			$("#skinSheet").attr("href", href);
		});
	});
</script>
</head>

<body class="example">
	<h1>Example: effects</h1>
	<p class="description">
		This sample enables effects to expand/Collapse and sets the
		<code>autoCollapse</code> option.
	</p>
	<div>
		<input type="checkbox" id="cbAutoCollapse"><label for="cbAutoCollapse">Auto collapse</label>
		-
		<input type="checkbox" id="cbEffects"><label for="cbEffects">Use effects</label>
		-
		Skin:
		<select id="skinCombo" size="1">
			<option value="skin">Standard ('/skin/')</option>
			<option value="skin-vista">Vista ('/skin-vista/')</option>
		</select>
	</div>
	<div id="tree">
		<ul style="display: none;">
			<li id="id1" title="Look, a tool tip!">item1 with key and tooltip
			<li id="id2">item2
			<li id="id3" class="folder">Folder with some children
				<ul>
					<li id="id3.1">Sub-item 3.1
						<ul>
							<li id="id3.1.1">Sub-item 3.1.1
							<li id="id3.1.2">Sub-item 3.1.2
						</ul>
					<li id="id3.2">Sub-item 3.2
						<ul>
							<li id="id3.2.1">Sub-item 3.2.1
							<li id="id3.2.2">Sub-item 3.2.2
						</ul>
				</ul>
			<li id="id4" class="expanded">Document with some children (expanded on init)
				<ul>
					<li id="id4.1"  class="active focused">Sub-item 4.1 (active and focus on init)
						<ul>
							<li id="id4.1.1">Sub-item 4.1.1
							<li id="id4.1.2">Sub-item 4.1.2
						</ul>
					<li id="id4.2">Sub-item 4.2
						<ul>
							<li id="id4.2.1">Sub-item 4.2.1
							<li id="id4.2.2">Sub-item 4.2.2
						</ul>
				</ul>
		</ul>
	</div>
	<div>Active node: <span id="echoActive">-</span></div>

	<!-- Start_Exclude: This block is not part of the sample code -->
	<hr>
	<p class="sample-links  no_code">
		<a class="hideInsideFS" href="http://dynatree.googlecode.com">jquery.dynatree.js project home</a>
		<a class="hideOutsideFS" href="#">Link to this page</a>
		<a class="hideInsideFS" href="samples.html">Example Browser</a>
		<a href="#" id="codeExample">View source code</a>
	</p>
	<pre id="sourceCode" class="prettyprint" style="display:none"></pre>
	<!-- End_Exclude -->
</body>
</html>
