import os.path
import xml.etree.ElementTree as ET


TARGETS = ["Array", "Dictionary"]
# Obtain from https://github.com/godotengine/godot/tree/master/doc/classes
DOC_PATH = "doc/classes"


for target in TARGETS:
	filepath = os.path.join(DOC_PATH, f"{target}.xml")
	if not os.path.isfile(filepath):
		print(f"Failed to find {filepath}")
		continue
	print(f"Processing {filepath}")
	tree = ET.parse(filepath)
	root = tree.getroot()
	names = []
	for method in root.findall("methods/method"):
		names.append(method.attrib["name"])

	print(str(names).replace("'", "\""))
