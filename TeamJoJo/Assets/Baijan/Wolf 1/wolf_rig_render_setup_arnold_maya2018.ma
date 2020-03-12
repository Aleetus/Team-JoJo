//Maya ASCII 2018 scene
//Name: wolf_rig_render_setup_arnold_maya2018.ma
//Last modified: Thu, Jul 11, 2019 05:42:29 PM
//Codeset: 1252
file -rdi 1 -ns "wolf_rig" -rfn "wolf_rigRN" -op "v=0;p=17;f=0" -typ "mayaAscii"
		 "D:/EVERYDAY 4/Wolf realistic/Wolf//wolf_rig.ma";
file -r -ns "wolf_rig" -dr 1 -rfn "wolf_rigRN" -op "v=0;p=17;f=0" -typ "mayaAscii"
		 "D:/EVERYDAY 4/Wolf realistic/Wolf//wolf_rig.ma";
requires maya "2018";
requires -nodeType "mentalrayFramebuffer" -nodeType "mentalrayOptions" -nodeType "mentalrayGlobals"
		 -nodeType "mentalrayItemsList" -dataType "byteArray" "Mayatomr" "2018.13  (3.14.5.3 - 274000.32864) ";
requires "stereoCamera" "10.0";
requires -nodeType "aiOptions" -nodeType "aiAOVDriver" -nodeType "aiAOVFilter" -nodeType "aiSkyDomeLight"
		 -nodeType "aiStandardSurface" -nodeType "aiPhysicalSky" "mtoa" "3.0.1";
requires -nodeType "ilrOptionsNode" -nodeType "ilrUIOptionsNode" -nodeType "ilrBakeLayerManager"
		 -nodeType "ilrBakeLayer" "Turtle" "2018.0.0";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2018";
fileInfo "version" "2018";
fileInfo "cutIdentifier" "201706261615-f9658c4cfc";
fileInfo "osv" "Microsoft Windows 8 Business Edition, 64-bit  (Build 9200)\n";
createNode transform -s -n "persp";
	rename -uid "B3469FB3-461F-2C56-A431-2FB0A87585A7";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 177.82144680355637 111.11844331913053 572.9259282507461 ;
	setAttr ".r" -type "double3" 3.2616472703975474 22.599999999999934 0 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "0E7B28C6-41CC-2D08-F6D7-01A70FC35A54";
	setAttr -k off ".v" no;
	setAttr ".ovr" 1.3;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 572.88526355863951;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".hc" -type "string" "viewSet -p %camera";
	setAttr ".dr" yes;
	setAttr ".col" -type "float3" 0.16500001 0.16500001 0.16500001 ;
	setAttr ".ai_translator" -type "string" "perspective";
createNode transform -s -n "top";
	rename -uid "2788219B-435C-ED39-5679-D6B46866A2D9";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1 0 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "F8A66DEF-48CC-97D5-03B3-BFA5025B7220";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "front";
	rename -uid "8B264E38-4500-498E-42E5-F88FB2FA6EA0";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "CDFB9D97-4A01-F0DB-7D36-E9BD61FA2D23";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "side";
	rename -uid "9E1F3530-4785-4A83-3863-5293E8038D9A";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 0 0 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "ADC0D52B-4AC5-78E9-985E-9EA7559EF274";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -n "aiSkyDomeLight1";
	rename -uid "AD08440F-4312-6117-DE15-FDBB11FE790B";
createNode aiSkyDomeLight -n "aiSkyDomeLightShape1" -p "aiSkyDomeLight1";
	rename -uid "62786DCF-42A7-E75C-B21D-10B6622E4E1C";
	addAttr -ci true -h true -sn "aal" -ln "attributeAliasList" -dt "attributeAlias";
	setAttr -k off ".v";
	setAttr ".csh" no;
	setAttr ".rcsh" no;
	setAttr ".intensity" 1.948051929473877;
	setAttr ".camera" 0;
	setAttr ".aal" -type "attributeAlias" {"exposure","aiExposure"} ;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "E83E5D6D-4656-8220-4690-E7A9C68A00A7";
	setAttr -s 19 ".lnk";
	setAttr -s 19 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "4A625B37-46E9-13AD-3B76-DF9CC9854DF1";
	setAttr ".bsdt[0].bscd" -type "Int32Array" 2 0 1 ;
	setAttr -s 2 ".bspr";
	setAttr -s 2 ".obsv";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "8A586560-40AB-3336-41F7-C59372F71D6A";
createNode displayLayerManager -n "layerManager";
	rename -uid "678F72A0-4FD2-2303-D27B-E7B445DD87AB";
	setAttr -s 2 ".dli[1]"  1;
	setAttr -s 2 ".dli";
createNode displayLayer -n "defaultLayer";
	rename -uid "D3E07A08-40B9-1D26-6CC5-85B75C8897CC";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "FA82DCCB-4F98-6B26-A643-65A0151AD9B5";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "E03D23D4-4F79-ACEA-9DF2-318593B4E3F6";
	setAttr ".g" yes;
createNode reference -n "wolf_rigRN";
	rename -uid "8912F0A9-4620-CF61-1BB7-1FB5043A4EA8";
	setAttr -s 56 ".phl";
	setAttr ".phl[1]" 0;
	setAttr ".phl[2]" 0;
	setAttr ".phl[3]" 0;
	setAttr ".phl[4]" 0;
	setAttr ".phl[5]" 0;
	setAttr ".phl[6]" 0;
	setAttr ".phl[7]" 0;
	setAttr ".phl[8]" 0;
	setAttr ".phl[9]" 0;
	setAttr ".phl[10]" 0;
	setAttr ".phl[11]" 0;
	setAttr ".phl[12]" 0;
	setAttr ".phl[13]" 0;
	setAttr ".phl[14]" 0;
	setAttr ".phl[15]" 0;
	setAttr ".phl[16]" 0;
	setAttr ".phl[17]" 0;
	setAttr ".phl[18]" 0;
	setAttr ".phl[19]" 0;
	setAttr ".phl[20]" 0;
	setAttr ".phl[21]" 0;
	setAttr ".phl[22]" 0;
	setAttr ".phl[23]" 0;
	setAttr ".phl[24]" 0;
	setAttr ".phl[25]" 0;
	setAttr ".phl[26]" 0;
	setAttr ".phl[27]" 0;
	setAttr ".phl[28]" 0;
	setAttr ".phl[29]" 0;
	setAttr ".phl[30]" 0;
	setAttr ".phl[31]" 0;
	setAttr ".phl[32]" 0;
	setAttr ".phl[33]" 0;
	setAttr ".phl[34]" 0;
	setAttr ".phl[35]" 0;
	setAttr ".phl[36]" 0;
	setAttr ".phl[37]" 0;
	setAttr ".phl[38]" 0;
	setAttr ".phl[39]" 0;
	setAttr ".phl[40]" 0;
	setAttr ".phl[41]" 0;
	setAttr ".phl[42]" 0;
	setAttr ".phl[43]" 0;
	setAttr ".phl[44]" 0;
	setAttr ".phl[45]" 0;
	setAttr ".phl[46]" 0;
	setAttr ".phl[47]" 0;
	setAttr ".phl[48]" 0;
	setAttr ".phl[49]" 0;
	setAttr ".phl[50]" 0;
	setAttr ".phl[51]" 0;
	setAttr ".phl[52]" 0;
	setAttr ".phl[53]" 0;
	setAttr ".phl[54]" 0;
	setAttr ".phl[55]" 0;
	setAttr ".phl[56]" 0;
	setAttr ".ed" -type "dataReferenceEdits" 
		"wolf_rigRN"
		"wolf_rigRN" 0
		"wolf_rigRN" 134
		2 "|wolf_rig:Group|wolf_rig:Main|wolf_rig:MotionSystem|wolf_rig:IKSystem|wolf_rig:IKHandle|wolf_rig:IKSplineHandle_M" 
		"rotate" " -type \"double3\" -90.00000331390008057 89.88575951724331503 89.99999816485868109"
		
		2 "|wolf_rig:Group|wolf_rig:Main|wolf_rig:MotionSystem|wolf_rig:IKSystem|wolf_rig:IKHandle|wolf_rig:IKSplineNHandle_M" 
		"translate" " -type \"double3\" -1.0494498756827645e-10 216.82121761659789172 123.20546273688871963"
		
		2 "|wolf_rig:Group|wolf_rig:Main|wolf_rig:MotionSystem|wolf_rig:IKSystem|wolf_rig:IKHandle|wolf_rig:IKSplineNHandle_M" 
		"rotate" " -type \"double3\" 89.99999999997990585 -55.07479628765248947 90.00000000001651301"
		
		2 "|wolf_rig:Group|wolf_rig:Geometry|wolf_rig:bodyFur4|wolf_rig:bodyFurShape4" 
		"instObjGroups.objectGroups" " -s 6"
		2 "|wolf_rig:Group|wolf_rig:Geometry|wolf_rig:bodyFur4|wolf_rig:bodyFurShape4" 
		"aiOpaque" " 0"
		2 "|wolf_rig:Group|wolf_rig:Geometry|wolf_rig:bodyFur3|wolf_rig:bodyFurShape3" 
		"instObjGroups.objectGroups" " -s 6"
		2 "|wolf_rig:Group|wolf_rig:Geometry|wolf_rig:bodyFur3|wolf_rig:bodyFurShape3" 
		"aiOpaque" " 0"
		2 "|wolf_rig:Group|wolf_rig:Geometry|wolf_rig:bodyFur2|wolf_rig:bodyFurShape2" 
		"instObjGroups.objectGroups" " -s 6"
		2 "|wolf_rig:Group|wolf_rig:Geometry|wolf_rig:bodyFur2|wolf_rig:bodyFurShape2" 
		"aiOpaque" " 0"
		2 "|wolf_rig:Group|wolf_rig:Geometry|wolf_rig:thighFur|wolf_rig:thighFurShape" 
		"instObjGroups.objectGroups" " -s 6"
		2 "|wolf_rig:Group|wolf_rig:Geometry|wolf_rig:thighFur|wolf_rig:thighFurShape" 
		"aiOpaque" " 0"
		2 "|wolf_rig:Group|wolf_rig:Geometry|wolf_rig:bodyTailFur|wolf_rig:bodyTailFurShape" 
		"aiOpaque" " 0"
		2 "|wolf_rig:Group|wolf_rig:Geometry|wolf_rig:wolf_rig2_lens|wolf_rig:wolf_rig2_lensShape" 
		"aiOpaque" " 0"
		2 "|wolf_rig:Group|wolf_rig:Geometry|wolf_rig:teethLower|wolf_rig:teethLowerShape" 
		"instObjGroups.objectGroups" " -s 6"
		2 "|wolf_rig:Group|wolf_rig:Geometry|wolf_rig:tongue|wolf_rig:tongueShape" 
		"instObjGroups.objectGroups" " -s 6"
		2 "|wolf_rig:Group|wolf_rig:Geometry|wolf_rig:body_main|wolf_rig:body_mainShape" 
		"instObjGroups.objectGroups" " -s 16"
		2 "|wolf_rig:Group|wolf_rig:Geometry|wolf_rig:eye_blink_r|wolf_rig:eye_blink_rShape" 
		"instObjGroups.objectGroups" " -s 4"
		2 "|wolf_rig:Group|wolf_rig:Geometry|wolf_rig:eye_blink_l|wolf_rig:eye_blink_lShape" 
		"instObjGroups.objectGroups" " -s 4"
		2 "|wolf_rig:Group|wolf_rig:Geometry|wolf_rig:body_mainBase|wolf_rig:body_mainBaseShape" 
		"instObjGroups.objectGroups" " -s 8"
		2 "|wolf_rig:Group|wolf_rig:Geometry|wolf_rig:mirror_fix_bs|wolf_rig:mirror_fix_bsShape" 
		"instObjGroups.objectGroups" " -s 8"
		2 "|wolf_rig:Group|wolf_rig:Geometry|wolf_rig:legFurs|wolf_rig:legFursShape" 
		"instObjGroups.objectGroups" " -s 6"
		2 "|wolf_rig:Group|wolf_rig:Geometry|wolf_rig:legFurs|wolf_rig:legFursShape" 
		"aiOpaque" " 0"
		2 "wolf_rig:geo" "displayType" " 0"
		2 "wolf_rig:furs" "displayType" " 0"
		3 "wolf_rig:wolf_rig2_blinn5SG.memberWireframeColor" "|wolf_rig:Group|wolf_rig:Geometry|wolf_rig:bodyFur4|wolf_rig:bodyFurShape4.instObjGroups.objectGroups[0].objectGrpColor" 
		""
		3 "|wolf_rig:Group|wolf_rig:Geometry|wolf_rig:mirror_fix_bs|wolf_rig:mirror_fix_bsShape.instObjGroups.objectGroups[0]" 
		"wolf_rig:wolf_rig2_blinn4SG.dagSetMembers" "-na"
		3 "wolf_rig:groupId7079.message" "wolf_rig:wolf_rig2_blinn4SG.groupNodes" 
		"-na"
		3 "|wolf_rig:Group|wolf_rig:Geometry|wolf_rig:body_mainBase|wolf_rig:body_mainBaseShape.instObjGroups.objectGroups[0]" 
		"wolf_rig:wolf_rig2_blinn4SG.dagSetMembers" "-na"
		3 "wolf_rig:groupId7072.message" "wolf_rig:wolf_rig2_blinn4SG.groupNodes" 
		"-na"
		3 "|wolf_rig:Group|wolf_rig:Geometry|wolf_rig:eye_blink_l|wolf_rig:eye_blink_lShape.instObjGroups.objectGroups[0]" 
		"wolf_rig:wolf_rig2_blinn4SG.dagSetMembers" "-na"
		3 "wolf_rig:groupId7068.message" "wolf_rig:wolf_rig2_blinn4SG.groupNodes" 
		"-na"
		3 "|wolf_rig:Group|wolf_rig:Geometry|wolf_rig:eye_blink_r|wolf_rig:eye_blink_rShape.instObjGroups.objectGroups[0]" 
		"wolf_rig:wolf_rig2_blinn4SG.dagSetMembers" "-na"
		3 "wolf_rig:groupId7066.message" "wolf_rig:wolf_rig2_blinn4SG.groupNodes" 
		"-na"
		3 "|wolf_rig:Group|wolf_rig:Geometry|wolf_rig:body_main|wolf_rig:body_mainShape.instObjGroups.objectGroups[0]" 
		"wolf_rig:wolf_rig2_blinn4SG.dagSetMembers" "-na"
		3 "wolf_rig:groupId7059.message" "wolf_rig:wolf_rig2_blinn4SG.groupNodes" 
		"-na"
		3 "wolf_rig:wolf_rig2_blinn5SG.memberWireframeColor" "|wolf_rig:Group|wolf_rig:Geometry|wolf_rig:bodyFur2|wolf_rig:bodyFurShape2.instObjGroups.objectGroups[0].objectGrpColor" 
		""
		3 "wolf_rig:wolf_rig2_blinn1SG.memberWireframeColor" "|wolf_rig:Group|wolf_rig:Geometry|wolf_rig:body_mainBase|wolf_rig:body_mainBaseShape.instObjGroups.objectGroups[1].objectGrpColor" 
		""
		3 "wolf_rig:wolf_rig2_blinn4SG.memberWireframeColor" "|wolf_rig:Group|wolf_rig:Geometry|wolf_rig:body_mainBase|wolf_rig:body_mainBaseShape.instObjGroups.objectGroups[0].objectGrpColor" 
		""
		3 "|wolf_rig:Group|wolf_rig:Geometry|wolf_rig:tongue|wolf_rig:tongueShape.instObjGroups.objectGroups[1]" 
		"wolf_rig:wolf_rig2_blinn8SG.dagSetMembers" "-na"
		3 "wolf_rig:groupId7050.message" "wolf_rig:wolf_rig2_blinn8SG.groupNodes" 
		"-na"
		3 "|wolf_rig:Group|wolf_rig:Geometry|wolf_rig:teethLower|wolf_rig:teethLowerShape.instObjGroups.objectGroups[0]" 
		"wolf_rig:wolf_rig2_blinn8SG.dagSetMembers" "-na"
		3 "wolf_rig:groupId7047.message" "wolf_rig:wolf_rig2_blinn8SG.groupNodes" 
		"-na"
		3 "|wolf_rig:Group|wolf_rig:Geometry|wolf_rig:wolf_rig2_upperTeeth|wolf_rig:wolf_rig2_upperTeethShape.instObjGroups" 
		"wolf_rig:wolf_rig2_blinn8SG.dagSetMembers" "-na"
		3 "wolf_rig:wolf_rig2_blinn1SG.memberWireframeColor" "|wolf_rig:Group|wolf_rig:Geometry|wolf_rig:mirror_fix_bs|wolf_rig:mirror_fix_bsShape.instObjGroups.objectGroups[1].objectGrpColor" 
		""
		3 "wolf_rig:wolf_rig2_blinn4SG.memberWireframeColor" "|wolf_rig:Group|wolf_rig:Geometry|wolf_rig:mirror_fix_bs|wolf_rig:mirror_fix_bsShape.instObjGroups.objectGroups[0].objectGrpColor" 
		""
		3 "wolf_rig:wolf_rig2_blinn1SG.memberWireframeColor" "|wolf_rig:Group|wolf_rig:Geometry|wolf_rig:eye_blink_l|wolf_rig:eye_blink_lShape.instObjGroups.objectGroups[1].objectGrpColor" 
		""
		3 "wolf_rig:wolf_rig2_blinn4SG.memberWireframeColor" "|wolf_rig:Group|wolf_rig:Geometry|wolf_rig:eye_blink_l|wolf_rig:eye_blink_lShape.instObjGroups.objectGroups[0].objectGrpColor" 
		""
		3 "|wolf_rig:Group|wolf_rig:Geometry|wolf_rig:wolf_rig2_lens|wolf_rig:wolf_rig2_lensShape.instObjGroups" 
		"wolf_rig:wolf_rig2_blinn3SG.dagSetMembers" "-na"
		3 "wolf_rig:wolf_rig2_blinn1SG.memberWireframeColor" "|wolf_rig:Group|wolf_rig:Geometry|wolf_rig:body_main|wolf_rig:body_mainShape.instObjGroups.objectGroups[1].objectGrpColor" 
		""
		3 "wolf_rig:wolf_rig2_blinn4SG.memberWireframeColor" "|wolf_rig:Group|wolf_rig:Geometry|wolf_rig:body_main|wolf_rig:body_mainShape.instObjGroups.objectGroups[0].objectGrpColor" 
		""
		3 "wolf_rig:wolf_rig2_blinn5SG.memberWireframeColor" "|wolf_rig:Group|wolf_rig:Geometry|wolf_rig:bodyFur3|wolf_rig:bodyFurShape3.instObjGroups.objectGroups[0].objectGrpColor" 
		""
		3 "wolf_rig:wolf_rig2_blinn1SG.memberWireframeColor" "|wolf_rig:Group|wolf_rig:Geometry|wolf_rig:eye_blink_r|wolf_rig:eye_blink_rShape.instObjGroups.objectGroups[1].objectGrpColor" 
		""
		3 "wolf_rig:wolf_rig2_blinn4SG.memberWireframeColor" "|wolf_rig:Group|wolf_rig:Geometry|wolf_rig:eye_blink_r|wolf_rig:eye_blink_rShape.instObjGroups.objectGroups[0].objectGrpColor" 
		""
		3 "wolf_rig:wolf_rig2_blinn8SG.memberWireframeColor" "|wolf_rig:Group|wolf_rig:Geometry|wolf_rig:tongue|wolf_rig:tongueShape.instObjGroups.objectGroups[1].objectGrpColor" 
		""
		3 "|wolf_rig:Group|wolf_rig:Geometry|wolf_rig:thighFur|wolf_rig:thighFurShape.instObjGroups.objectGroups[0]" 
		"wolf_rig:wolf_rig2_blinn5SG.dagSetMembers" "-na"
		3 "wolf_rig:groupId7074.message" "wolf_rig:wolf_rig2_blinn5SG.groupNodes" 
		"-na"
		3 "|wolf_rig:Group|wolf_rig:Geometry|wolf_rig:bodyFur2|wolf_rig:bodyFurShape2.instObjGroups.objectGroups[0]" 
		"wolf_rig:wolf_rig2_blinn5SG.dagSetMembers" "-na"
		3 "wolf_rig:groupId7063.message" "wolf_rig:wolf_rig2_blinn5SG.groupNodes" 
		"-na"
		3 "|wolf_rig:Group|wolf_rig:Geometry|wolf_rig:bodyFur3|wolf_rig:bodyFurShape3.instObjGroups.objectGroups[0]" 
		"wolf_rig:wolf_rig2_blinn5SG.dagSetMembers" "-na"
		3 "wolf_rig:groupId7030.message" "wolf_rig:wolf_rig2_blinn5SG.groupNodes" 
		"-na"
		3 "|wolf_rig:Group|wolf_rig:Geometry|wolf_rig:bodyFur4|wolf_rig:bodyFurShape4.instObjGroups.objectGroups[0]" 
		"wolf_rig:wolf_rig2_blinn5SG.dagSetMembers" "-na"
		3 "wolf_rig:groupId7033.message" "wolf_rig:wolf_rig2_blinn5SG.groupNodes" 
		"-na"
		3 "|wolf_rig:Group|wolf_rig:Geometry|wolf_rig:bodyTailFur|wolf_rig:bodyTailFurShape.instObjGroups" 
		"wolf_rig:wolf_rig2_blinn7SG.dagSetMembers" "-na"
		3 "wolf_rig:wolf_rig2_blinn6SG.memberWireframeColor" "|wolf_rig:Group|wolf_rig:Geometry|wolf_rig:legFurs|wolf_rig:legFursShape.instObjGroups.objectGroups[0].objectGrpColor" 
		""
		3 "|wolf_rig:Group|wolf_rig:Geometry|wolf_rig:legFurs|wolf_rig:legFursShape.instObjGroups.objectGroups[0]" 
		"wolf_rig:wolf_rig2_blinn6SG.dagSetMembers" "-na"
		3 "wolf_rig:groupId7081.message" "wolf_rig:wolf_rig2_blinn6SG.groupNodes" 
		"-na"
		3 "wolf_rig:wolf_rig2_blinn5SG.memberWireframeColor" "|wolf_rig:Group|wolf_rig:Geometry|wolf_rig:thighFur|wolf_rig:thighFurShape.instObjGroups.objectGroups[0].objectGrpColor" 
		""
		3 "|wolf_rig:Group|wolf_rig:Geometry|wolf_rig:mirror_fix_bs|wolf_rig:mirror_fix_bsShape.instObjGroups.objectGroups[1]" 
		"wolf_rig:wolf_rig2_blinn1SG.dagSetMembers" "-na"
		3 "wolf_rig:groupId7080.message" "wolf_rig:wolf_rig2_blinn1SG.groupNodes" 
		"-na"
		3 "|wolf_rig:Group|wolf_rig:Geometry|wolf_rig:body_mainBase|wolf_rig:body_mainBaseShape.instObjGroups.objectGroups[1]" 
		"wolf_rig:wolf_rig2_blinn1SG.dagSetMembers" "-na"
		3 "wolf_rig:groupId7073.message" "wolf_rig:wolf_rig2_blinn1SG.groupNodes" 
		"-na"
		3 "|wolf_rig:Group|wolf_rig:Geometry|wolf_rig:eye_blink_l|wolf_rig:eye_blink_lShape.instObjGroups.objectGroups[1]" 
		"wolf_rig:wolf_rig2_blinn1SG.dagSetMembers" "-na"
		3 "wolf_rig:groupId7069.message" "wolf_rig:wolf_rig2_blinn1SG.groupNodes" 
		"-na"
		3 "|wolf_rig:Group|wolf_rig:Geometry|wolf_rig:eye_blink_r|wolf_rig:eye_blink_rShape.instObjGroups.objectGroups[1]" 
		"wolf_rig:wolf_rig2_blinn1SG.dagSetMembers" "-na"
		3 "wolf_rig:groupId7067.message" "wolf_rig:wolf_rig2_blinn1SG.groupNodes" 
		"-na"
		3 "|wolf_rig:Group|wolf_rig:Geometry|wolf_rig:body_main|wolf_rig:body_mainShape.instObjGroups.objectGroups[1]" 
		"wolf_rig:wolf_rig2_blinn1SG.dagSetMembers" "-na"
		3 "wolf_rig:groupId7060.message" "wolf_rig:wolf_rig2_blinn1SG.groupNodes" 
		"-na"
		3 "wolf_rig:wolf_rig2_blinn8SG.memberWireframeColor" "|wolf_rig:Group|wolf_rig:Geometry|wolf_rig:teethLower|wolf_rig:teethLowerShape.instObjGroups.objectGroups[0].objectGrpColor" 
		""
		5 4 "wolf_rigRN" "|wolf_rig:Group|wolf_rig:Main|wolf_rig:MotionSystem|wolf_rig:ClusterSystem|wolf_rig:thigh_clusterAttach_R|wolf_rig:thigh_clusterOffset_R|wolf_rig:thigh_clusterSubtract_R|wolf_rig:thigh_cluster_R.drawOverride" 
		"wolf_rigRN.placeHolderList[1]" ""
		5 4 "wolf_rigRN" "|wolf_rig:Group|wolf_rig:Main|wolf_rig:MotionSystem|wolf_rig:ClusterSystem|wolf_rig:thigh_clusterAttach_L|wolf_rig:thigh_clusterOffset_L|wolf_rig:thigh_clusterSubtract_L|wolf_rig:thigh_cluster_L.drawOverride" 
		"wolf_rigRN.placeHolderList[2]" ""
		5 3 "wolf_rigRN" "|wolf_rig:Group|wolf_rig:Geometry|wolf_rig:bodyFur4|wolf_rig:bodyFurShape4.instObjGroups.objectGroups[0]" 
		"wolf_rigRN.placeHolderList[3]" "wolf_rig:wolf_rig2_blinn5SG.dsm"
		5 4 "wolf_rigRN" "|wolf_rig:Group|wolf_rig:Geometry|wolf_rig:bodyFur4|wolf_rig:bodyFurShape4.instObjGroups.objectGroups[0].objectGrpColor" 
		"wolf_rigRN.placeHolderList[4]" ""
		5 3 "wolf_rigRN" "|wolf_rig:Group|wolf_rig:Geometry|wolf_rig:bodyFur3|wolf_rig:bodyFurShape3.instObjGroups.objectGroups[0]" 
		"wolf_rigRN.placeHolderList[5]" "wolf_rig:wolf_rig2_blinn5SG.dsm"
		5 4 "wolf_rigRN" "|wolf_rig:Group|wolf_rig:Geometry|wolf_rig:bodyFur3|wolf_rig:bodyFurShape3.instObjGroups.objectGroups[0].objectGrpColor" 
		"wolf_rigRN.placeHolderList[6]" ""
		5 3 "wolf_rigRN" "|wolf_rig:Group|wolf_rig:Geometry|wolf_rig:bodyFur2|wolf_rig:bodyFurShape2.instObjGroups.objectGroups[0]" 
		"wolf_rigRN.placeHolderList[7]" "wolf_rig:wolf_rig2_blinn5SG.dsm"
		5 4 "wolf_rigRN" "|wolf_rig:Group|wolf_rig:Geometry|wolf_rig:bodyFur2|wolf_rig:bodyFurShape2.instObjGroups.objectGroups[0].objectGrpColor" 
		"wolf_rigRN.placeHolderList[8]" ""
		5 3 "wolf_rigRN" "|wolf_rig:Group|wolf_rig:Geometry|wolf_rig:thighFur|wolf_rig:thighFurShape.instObjGroups.objectGroups[0]" 
		"wolf_rigRN.placeHolderList[9]" "wolf_rig:wolf_rig2_blinn5SG.dsm"
		5 4 "wolf_rigRN" "|wolf_rig:Group|wolf_rig:Geometry|wolf_rig:thighFur|wolf_rig:thighFurShape.instObjGroups.objectGroups[0].objectGrpColor" 
		"wolf_rigRN.placeHolderList[10]" ""
		5 3 "wolf_rigRN" "|wolf_rig:Group|wolf_rig:Geometry|wolf_rig:bodyTailFur|wolf_rig:bodyTailFurShape.instObjGroups" 
		"wolf_rigRN.placeHolderList[11]" "wolf_rig:wolf_rig2_blinn7SG.dsm"
		5 3 "wolf_rigRN" "|wolf_rig:Group|wolf_rig:Geometry|wolf_rig:wolf_rig2_upperTeeth|wolf_rig:wolf_rig2_upperTeethShape.instObjGroups" 
		"wolf_rigRN.placeHolderList[12]" "wolf_rig:wolf_rig2_blinn8SG.dsm"
		5 3 "wolf_rigRN" "|wolf_rig:Group|wolf_rig:Geometry|wolf_rig:wolf_rig2_lens|wolf_rig:wolf_rig2_lensShape.instObjGroups" 
		"wolf_rigRN.placeHolderList[13]" "wolf_rig:wolf_rig2_blinn3SG.dsm"
		5 3 "wolf_rigRN" "|wolf_rig:Group|wolf_rig:Geometry|wolf_rig:teethLower|wolf_rig:teethLowerShape.instObjGroups.objectGroups[0]" 
		"wolf_rigRN.placeHolderList[14]" "wolf_rig:wolf_rig2_blinn8SG.dsm"
		5 4 "wolf_rigRN" "|wolf_rig:Group|wolf_rig:Geometry|wolf_rig:teethLower|wolf_rig:teethLowerShape.instObjGroups.objectGroups[0].objectGrpColor" 
		"wolf_rigRN.placeHolderList[15]" ""
		5 3 "wolf_rigRN" "|wolf_rig:Group|wolf_rig:Geometry|wolf_rig:tongue|wolf_rig:tongueShape.instObjGroups.objectGroups[1]" 
		"wolf_rigRN.placeHolderList[16]" "wolf_rig:wolf_rig2_blinn8SG.dsm"
		5 4 "wolf_rigRN" "|wolf_rig:Group|wolf_rig:Geometry|wolf_rig:tongue|wolf_rig:tongueShape.instObjGroups.objectGroups[1].objectGrpColor" 
		"wolf_rigRN.placeHolderList[17]" ""
		5 3 "wolf_rigRN" "|wolf_rig:Group|wolf_rig:Geometry|wolf_rig:body_main|wolf_rig:body_mainShape.instObjGroups.objectGroups[0]" 
		"wolf_rigRN.placeHolderList[18]" "wolf_rig:wolf_rig2_blinn4SG.dsm"
		5 4 "wolf_rigRN" "|wolf_rig:Group|wolf_rig:Geometry|wolf_rig:body_main|wolf_rig:body_mainShape.instObjGroups.objectGroups[0].objectGrpColor" 
		"wolf_rigRN.placeHolderList[19]" ""
		5 3 "wolf_rigRN" "|wolf_rig:Group|wolf_rig:Geometry|wolf_rig:body_main|wolf_rig:body_mainShape.instObjGroups.objectGroups[1]" 
		"wolf_rigRN.placeHolderList[20]" "wolf_rig:wolf_rig2_blinn1SG.dsm"
		5 4 "wolf_rigRN" "|wolf_rig:Group|wolf_rig:Geometry|wolf_rig:body_main|wolf_rig:body_mainShape.instObjGroups.objectGroups[1].objectGrpColor" 
		"wolf_rigRN.placeHolderList[21]" ""
		5 3 "wolf_rigRN" "|wolf_rig:Group|wolf_rig:Geometry|wolf_rig:eye_blink_r|wolf_rig:eye_blink_rShape.instObjGroups.objectGroups[0]" 
		"wolf_rigRN.placeHolderList[22]" "wolf_rig:wolf_rig2_blinn4SG.dsm"
		5 4 "wolf_rigRN" "|wolf_rig:Group|wolf_rig:Geometry|wolf_rig:eye_blink_r|wolf_rig:eye_blink_rShape.instObjGroups.objectGroups[0].objectGrpColor" 
		"wolf_rigRN.placeHolderList[23]" ""
		5 3 "wolf_rigRN" "|wolf_rig:Group|wolf_rig:Geometry|wolf_rig:eye_blink_r|wolf_rig:eye_blink_rShape.instObjGroups.objectGroups[1]" 
		"wolf_rigRN.placeHolderList[24]" "wolf_rig:wolf_rig2_blinn1SG.dsm"
		5 4 "wolf_rigRN" "|wolf_rig:Group|wolf_rig:Geometry|wolf_rig:eye_blink_r|wolf_rig:eye_blink_rShape.instObjGroups.objectGroups[1].objectGrpColor" 
		"wolf_rigRN.placeHolderList[25]" ""
		5 3 "wolf_rigRN" "|wolf_rig:Group|wolf_rig:Geometry|wolf_rig:eye_blink_l|wolf_rig:eye_blink_lShape.instObjGroups.objectGroups[0]" 
		"wolf_rigRN.placeHolderList[26]" "wolf_rig:wolf_rig2_blinn4SG.dsm"
		5 4 "wolf_rigRN" "|wolf_rig:Group|wolf_rig:Geometry|wolf_rig:eye_blink_l|wolf_rig:eye_blink_lShape.instObjGroups.objectGroups[0].objectGrpColor" 
		"wolf_rigRN.placeHolderList[27]" ""
		5 3 "wolf_rigRN" "|wolf_rig:Group|wolf_rig:Geometry|wolf_rig:eye_blink_l|wolf_rig:eye_blink_lShape.instObjGroups.objectGroups[1]" 
		"wolf_rigRN.placeHolderList[28]" "wolf_rig:wolf_rig2_blinn1SG.dsm"
		5 4 "wolf_rigRN" "|wolf_rig:Group|wolf_rig:Geometry|wolf_rig:eye_blink_l|wolf_rig:eye_blink_lShape.instObjGroups.objectGroups[1].objectGrpColor" 
		"wolf_rigRN.placeHolderList[29]" ""
		5 3 "wolf_rigRN" "|wolf_rig:Group|wolf_rig:Geometry|wolf_rig:body_mainBase|wolf_rig:body_mainBaseShape.instObjGroups.objectGroups[0]" 
		"wolf_rigRN.placeHolderList[30]" "wolf_rig:wolf_rig2_blinn4SG.dsm"
		5 4 "wolf_rigRN" "|wolf_rig:Group|wolf_rig:Geometry|wolf_rig:body_mainBase|wolf_rig:body_mainBaseShape.instObjGroups.objectGroups[0].objectGrpColor" 
		"wolf_rigRN.placeHolderList[31]" ""
		5 3 "wolf_rigRN" "|wolf_rig:Group|wolf_rig:Geometry|wolf_rig:body_mainBase|wolf_rig:body_mainBaseShape.instObjGroups.objectGroups[1]" 
		"wolf_rigRN.placeHolderList[32]" "wolf_rig:wolf_rig2_blinn1SG.dsm"
		5 4 "wolf_rigRN" "|wolf_rig:Group|wolf_rig:Geometry|wolf_rig:body_mainBase|wolf_rig:body_mainBaseShape.instObjGroups.objectGroups[1].objectGrpColor" 
		"wolf_rigRN.placeHolderList[33]" ""
		5 3 "wolf_rigRN" "|wolf_rig:Group|wolf_rig:Geometry|wolf_rig:mirror_fix_bs|wolf_rig:mirror_fix_bsShape.instObjGroups.objectGroups[0]" 
		"wolf_rigRN.placeHolderList[34]" "wolf_rig:wolf_rig2_blinn4SG.dsm"
		5 4 "wolf_rigRN" "|wolf_rig:Group|wolf_rig:Geometry|wolf_rig:mirror_fix_bs|wolf_rig:mirror_fix_bsShape.instObjGroups.objectGroups[0].objectGrpColor" 
		"wolf_rigRN.placeHolderList[35]" ""
		5 3 "wolf_rigRN" "|wolf_rig:Group|wolf_rig:Geometry|wolf_rig:mirror_fix_bs|wolf_rig:mirror_fix_bsShape.instObjGroups.objectGroups[1]" 
		"wolf_rigRN.placeHolderList[36]" "wolf_rig:wolf_rig2_blinn1SG.dsm"
		5 4 "wolf_rigRN" "|wolf_rig:Group|wolf_rig:Geometry|wolf_rig:mirror_fix_bs|wolf_rig:mirror_fix_bsShape.instObjGroups.objectGroups[1].objectGrpColor" 
		"wolf_rigRN.placeHolderList[37]" ""
		5 3 "wolf_rigRN" "|wolf_rig:Group|wolf_rig:Geometry|wolf_rig:legFurs|wolf_rig:legFursShape.instObjGroups.objectGroups[0]" 
		"wolf_rigRN.placeHolderList[38]" "wolf_rig:wolf_rig2_blinn6SG.dsm"
		5 4 "wolf_rigRN" "|wolf_rig:Group|wolf_rig:Geometry|wolf_rig:legFurs|wolf_rig:legFursShape.instObjGroups.objectGroups[0].objectGrpColor" 
		"wolf_rigRN.placeHolderList[39]" ""
		5 3 "wolf_rigRN" "wolf_rig:groupId7030.message" "wolf_rigRN.placeHolderList[40]" 
		"wolf_rig:wolf_rig2_blinn5SG.gn"
		5 3 "wolf_rigRN" "wolf_rig:groupId7033.message" "wolf_rigRN.placeHolderList[41]" 
		"wolf_rig:wolf_rig2_blinn5SG.gn"
		5 3 "wolf_rigRN" "wolf_rig:groupId7047.message" "wolf_rigRN.placeHolderList[42]" 
		"wolf_rig:wolf_rig2_blinn8SG.gn"
		5 3 "wolf_rigRN" "wolf_rig:groupId7050.message" "wolf_rigRN.placeHolderList[43]" 
		"wolf_rig:wolf_rig2_blinn8SG.gn"
		5 3 "wolf_rigRN" "wolf_rig:groupId7059.message" "wolf_rigRN.placeHolderList[44]" 
		"wolf_rig:wolf_rig2_blinn4SG.gn"
		5 3 "wolf_rigRN" "wolf_rig:groupId7060.message" "wolf_rigRN.placeHolderList[45]" 
		"wolf_rig:wolf_rig2_blinn1SG.gn"
		5 3 "wolf_rigRN" "wolf_rig:groupId7063.message" "wolf_rigRN.placeHolderList[46]" 
		"wolf_rig:wolf_rig2_blinn5SG.gn"
		5 3 "wolf_rigRN" "wolf_rig:groupId7066.message" "wolf_rigRN.placeHolderList[47]" 
		"wolf_rig:wolf_rig2_blinn4SG.gn"
		5 3 "wolf_rigRN" "wolf_rig:groupId7067.message" "wolf_rigRN.placeHolderList[48]" 
		"wolf_rig:wolf_rig2_blinn1SG.gn"
		5 3 "wolf_rigRN" "wolf_rig:groupId7068.message" "wolf_rigRN.placeHolderList[49]" 
		"wolf_rig:wolf_rig2_blinn4SG.gn"
		5 3 "wolf_rigRN" "wolf_rig:groupId7069.message" "wolf_rigRN.placeHolderList[50]" 
		"wolf_rig:wolf_rig2_blinn1SG.gn"
		5 3 "wolf_rigRN" "wolf_rig:groupId7072.message" "wolf_rigRN.placeHolderList[51]" 
		"wolf_rig:wolf_rig2_blinn4SG.gn"
		5 3 "wolf_rigRN" "wolf_rig:groupId7073.message" "wolf_rigRN.placeHolderList[52]" 
		"wolf_rig:wolf_rig2_blinn1SG.gn"
		5 3 "wolf_rigRN" "wolf_rig:groupId7074.message" "wolf_rigRN.placeHolderList[53]" 
		"wolf_rig:wolf_rig2_blinn5SG.gn"
		5 3 "wolf_rigRN" "wolf_rig:groupId7079.message" "wolf_rigRN.placeHolderList[54]" 
		"wolf_rig:wolf_rig2_blinn4SG.gn"
		5 3 "wolf_rigRN" "wolf_rig:groupId7080.message" "wolf_rigRN.placeHolderList[55]" 
		"wolf_rig:wolf_rig2_blinn1SG.gn"
		5 3 "wolf_rigRN" "wolf_rig:groupId7081.message" "wolf_rigRN.placeHolderList[56]" 
		"wolf_rig:wolf_rig2_blinn6SG.gn";
	setAttr ".ptag" -type "string" "";
lockNode -l 1 ;
createNode mentalrayItemsList -s -n "mentalrayItemsList";
	rename -uid "F27240FE-4F1D-C833-E81D-978AA06A575F";
createNode mentalrayGlobals -s -n "mentalrayGlobals";
	rename -uid "0040DABE-4619-FA8A-D8D4-41A79873B935";
createNode mentalrayOptions -s -n "miDefaultOptions";
	rename -uid "4784F8BC-4D9C-B730-D12A-C98599A812E3";
	setAttr ".miSamplesMax" 50;
createNode mentalrayFramebuffer -s -n "miDefaultFramebuffer";
	rename -uid "FFEE18EA-4643-4078-4F22-5EB011A5BFBD";
createNode ilrOptionsNode -s -n "TurtleRenderOptions";
	rename -uid "56EDB6EA-4C02-9A29-15B7-99B113CCFE51";
lockNode -l 1 ;
createNode ilrUIOptionsNode -s -n "TurtleUIOptions";
	rename -uid "03619A23-454C-03A0-A0EE-6AB9CB042784";
lockNode -l 1 ;
createNode ilrBakeLayerManager -s -n "TurtleBakeLayerManager";
	rename -uid "0E3B896F-417E-4E7B-2F16-D287563FCB82";
lockNode -l 1 ;
createNode ilrBakeLayer -s -n "TurtleDefaultBakeLayer";
	rename -uid "6DA9B305-4EB2-3A0B-19F0-7DA57D621A98";
lockNode -l 1 ;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "803E2569-43F0-6FA6-910A-05BAE4EB1ABB";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n"
		+ "            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n"
		+ "            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n"
		+ "            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n"
		+ "            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n"
		+ "            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n"
		+ "            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n"
		+ "            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n"
		+ "            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n"
		+ "            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n"
		+ "            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1119\n            -height 756\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n"
		+ "            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n"
		+ "            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n"
		+ "            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 1\n"
		+ "                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n"
		+ "                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 1\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -showCurveNames 0\n"
		+ "                -showActiveCurveNames 0\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                -valueLinesToggle 1\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n"
		+ "                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 1\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n"
		+ "                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n"
		+ "                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n"
		+ "                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n"
		+ "                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" != $panelName) {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n"
		+ "                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -highlightConnections 0\n                -copyConnectionsOnPaste 0\n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -activeTab -1\n                -editorMode \"default\" \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"Stereo\" (localizedPanelLabel(\"Stereo\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels  $panelName;\nstring $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n"
		+ "                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 32768\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n"
		+ "                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -controllers 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n"
		+ "                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 0\n                -height 0\n                -sceneRenderFilter 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n            stereoCameraView -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n"
		+ "        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1119\\n    -height 756\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1119\\n    -height 756\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "3F9E5A43-4E37-AB37-33B7-1BBA6ADFF53B";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 120 -ast 1 -aet 200 ";
	setAttr ".st" 6;
createNode aiOptions -s -n "defaultArnoldRenderOptions";
	rename -uid "2C2BEDE7-4880-FCA3-73E2-379E5EBF9957";
	setAttr ".version" -type "string" "3.0.1";
createNode aiAOVFilter -s -n "defaultArnoldFilter";
	rename -uid "46577159-4C38-B1A4-D803-378A9909457E";
	setAttr ".ai_translator" -type "string" "gaussian";
createNode aiAOVDriver -s -n "defaultArnoldDriver";
	rename -uid "A5EEE54C-46EB-6673-972D-EFBCF9BE9619";
	setAttr ".ai_translator" -type "string" "exr";
createNode aiAOVDriver -s -n "defaultArnoldDisplayDriver";
	rename -uid "5FD05EB9-4065-1260-C959-7D969FE96C3D";
	setAttr ".output_mode" 0;
	setAttr ".ai_translator" -type "string" "maya";
createNode aiStandardSurface -n "aiBodyHair";
	rename -uid "B1EF81FD-44D6-8442-CDAA-C58629C4E400";
	setAttr ".thin_walled" yes;
createNode shadingEngine -n "aiStandardSurface1SG";
	rename -uid "EA4F9AA9-412C-6125-32DF-1D9A415B1B5F";
	setAttr ".ihi" 0;
	setAttr -s 4 ".dsm";
	setAttr ".ro" yes;
	setAttr -s 4 ".gn";
createNode materialInfo -n "materialInfo1";
	rename -uid "F9193B8B-4E7D-3E8F-0608-21B5D073A073";
createNode file -n "file1";
	rename -uid "94833461-4485-047E-A1ED-DCB09BB9F3FB";
	setAttr ".ftn" -type "string" "D:/EVERYDAY 4/Wolf realistic/Wolf//wolf_a_body_alpha_col_v02.tga";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "place2dTexture1";
	rename -uid "FDA6B574-4518-A170-8F88-1B817368FC49";
createNode file -n "file2";
	rename -uid "0D0D7AD5-476D-43CA-9DC9-F5B35E119BDE";
	setAttr ".ftn" -type "string" "D:/EVERYDAY 4/Wolf realistic/Wolf//bodyFur_alpha.jpg";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "place2dTexture2";
	rename -uid "10918F87-4753-7713-94B7-FCAB47B16A35";
createNode aiPhysicalSky -n "aiPhysicalSky1";
	rename -uid "80F6B070-4B80-363F-70FB-F1A360791E90";
createNode displayLayer -n "layer1";
	rename -uid "9A7D75A0-4566-C62F-431C-4E8366AEF5C0";
	setAttr ".v" no;
	setAttr ".do" 1;
createNode aiStandardSurface -n "aiTailHair";
	rename -uid "9B657FDC-4206-70AC-B5F0-18BC6858A49F";
	setAttr ".thin_walled" yes;
createNode shadingEngine -n "aiStandardSurface2SG";
	rename -uid "3237258B-414C-6FCD-D5F7-CCBF0135CDFA";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo2";
	rename -uid "A283F2A5-4BD9-6FFF-FB35-73AFA3BED978";
createNode file -n "file3";
	rename -uid "9234E152-4EB4-97AB-BBC8-A280594CE82D";
	setAttr ".ftn" -type "string" "D:/EVERYDAY 4/Wolf realistic/Wolf//wolf_a_tail_alpha_col_02.tga";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "place2dTexture3";
	rename -uid "BF5055E2-41DC-1938-E22F-C69E9A23FF07";
createNode file -n "file4";
	rename -uid "B5537CE5-48E1-4513-300A-CABCA734A5C3";
	setAttr ".ftn" -type "string" "D:/EVERYDAY 4/Wolf realistic/Wolf//bodyFur_alpha.jpg";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "place2dTexture4";
	rename -uid "DE12FB23-42A4-F37C-B379-42A81B55F5CA";
createNode aiStandardSurface -n "aiLegHair";
	rename -uid "4C48146B-485A-D309-B742-1D9574ED2364";
	setAttr ".thin_walled" yes;
createNode shadingEngine -n "aiStandardSurface3SG";
	rename -uid "6CCBC4B8-4FC6-AD9B-B99C-88A459248C4A";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo3";
	rename -uid "33A604D0-499F-A221-84A3-76880EFC8F5E";
createNode file -n "file5";
	rename -uid "37ABE168-4B28-306F-9678-73A4C0DFA646";
	setAttr ".ftn" -type "string" "D:/EVERYDAY 4/Wolf realistic/Wolf//wolf_a_leg_alpha_col_v02.tga";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "place2dTexture5";
	rename -uid "AB6BF579-49FE-519D-16E2-50A9930A8CD0";
createNode file -n "file6";
	rename -uid "34E0F354-41C3-9011-FEE5-8B8F021CBF5D";
	setAttr ".ftn" -type "string" "D:/EVERYDAY 4/Wolf realistic/Wolf//legFur_alpha.jpg";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "place2dTexture6";
	rename -uid "C1857731-442C-1F81-1FBE-BD83B5C6BA93";
createNode aiStandardSurface -n "aiBody";
	rename -uid "93C439BC-4746-EF6A-2363-57B8FE1E2DC5";
createNode shadingEngine -n "aiStandardSurface4SG";
	rename -uid "AECACAE2-4253-726D-7A26-6F9CC545F8A7";
	setAttr ".ihi" 0;
	setAttr -s 5 ".dsm";
	setAttr ".ro" yes;
	setAttr -s 5 ".gn";
createNode materialInfo -n "materialInfo4";
	rename -uid "EE8591AA-485C-136F-E32C-37AF3186C56B";
createNode file -n "file7";
	rename -uid "027E7455-441B-E3E4-13D5-BE8DB2AA60C0";
	setAttr ".ail" yes;
	setAttr ".ftn" -type "string" "D:/EVERYDAY 4/Wolf realistic/Wolf//wolf_a_body_a_nml.tga";
	setAttr ".cs" -type "string" "Raw";
createNode place2dTexture -n "place2dTexture7";
	rename -uid "44C699DC-4E25-E4D1-7938-7298D0275F7B";
createNode bump2d -n "bump2d1";
	rename -uid "71608D84-4235-3914-2C53-038DBCFD728A";
	setAttr ".bi" 1;
	setAttr ".vc1" -type "float3" 0 1.9999999e-05 0 ;
	setAttr ".vc2" -type "float3" 9.9999997e-06 9.9999997e-06 0 ;
createNode file -n "file8";
	rename -uid "CC3FB08C-448E-BDE6-DA9C-DBAFCDFEAC51";
	setAttr ".ftn" -type "string" "D:/EVERYDAY 4/Wolf realistic/Wolf//wolf_a_body_col_v2.tga";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "place2dTexture8";
	rename -uid "B95FCB55-443E-1E1E-4700-2CBEC5F656A8";
createNode file -n "file9";
	rename -uid "EF6BA317-411A-40DA-B326-FD836709C52B";
	setAttr ".ftn" -type "string" "D:/EVERYDAY 4/Wolf realistic/Wolf//wolf_a_body_spc.tga";
	setAttr ".cs" -type "string" "Raw";
createNode place2dTexture -n "place2dTexture9";
	rename -uid "B08B6635-4833-4A04-6CBE-B5A8D35F9B55";
createNode aiStandardSurface -n "aiEyes";
	rename -uid "00008ABB-4200-B798-3264-FF8EB146B6FF";
	setAttr ".emission" 0.30000001192092896;
createNode shadingEngine -n "aiStandardSurface5SG";
	rename -uid "8F9C299E-4F5E-EDAA-9AF9-02B7B09A05BA";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo5";
	rename -uid "9D689C02-4518-6F9F-8D34-A989579C33F3";
createNode file -n "file10";
	rename -uid "01F4BD85-4F41-4907-96FC-1F9DB02860D8";
	setAttr ".ftn" -type "string" "D:/EVERYDAY 4/Wolf realistic/Wolf//wolf_a_eye_col_v2.tga";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "place2dTexture10";
	rename -uid "DB1008DB-495F-7E18-B20F-DCB3A2AE724E";
createNode file -n "file11";
	rename -uid "944C4E0E-4608-32B9-50D8-E79B1396C159";
	setAttr ".ftn" -type "string" "D:/EVERYDAY 4/Wolf realistic/Wolf//wolf_a_eye_col_v2.tga";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "place2dTexture11";
	rename -uid "131B74B6-4FD5-F179-B9BA-EA8AFDC39884";
createNode aiStandardSurface -n "aiFace";
	rename -uid "774E3413-4F7C-1508-3A63-EAB4CD962443";
createNode shadingEngine -n "aiStandardSurface6SG";
	rename -uid "37D2D12C-47A6-74A7-3C78-41A14DE3C424";
	setAttr ".ihi" 0;
	setAttr -s 5 ".dsm";
	setAttr ".ro" yes;
	setAttr -s 5 ".gn";
createNode materialInfo -n "materialInfo6";
	rename -uid "403955DD-4D77-8C60-F813-4A8C68EA39D4";
createNode file -n "file12";
	rename -uid "5656DDE8-41AA-1441-6E01-02AE2DE48BD5";
	setAttr ".ail" yes;
	setAttr ".ftn" -type "string" "D:/EVERYDAY 4/Wolf realistic/Wolf//wolf_a_head_nml.tga";
	setAttr ".cs" -type "string" "Raw";
createNode place2dTexture -n "place2dTexture12";
	rename -uid "632DDB29-4EEF-F0DF-72D9-E68685CE9464";
createNode bump2d -n "bump2d2";
	rename -uid "C73ADAFE-4652-B596-DA44-52B6D17FA883";
	setAttr ".bi" 1;
	setAttr ".vc1" -type "float3" 0 1.9999999e-05 0 ;
	setAttr ".vc2" -type "float3" 9.9999997e-06 9.9999997e-06 0 ;
createNode file -n "file13";
	rename -uid "2327CE32-497A-335D-1993-31AFFB7E60F2";
	setAttr ".ftn" -type "string" "D:/EVERYDAY 4/Wolf realistic/Wolf//wolf_a_head_spc.tga";
	setAttr ".cs" -type "string" "Raw";
createNode place2dTexture -n "place2dTexture13";
	rename -uid "F876F9CA-4B89-8188-328A-8DAFDCF132B3";
createNode file -n "file14";
	rename -uid "25F5813E-4BF1-02EB-64D0-E2BCEBB9E712";
	setAttr ".ftn" -type "string" "D:/EVERYDAY 4/Wolf realistic/Wolf//wolf_a_head_col_v2.tga";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "place2dTexture14";
	rename -uid "2FEF26C4-49AD-B42B-2A61-9D80DA7472AC";
createNode aiStandardSurface -n "aiLens";
	rename -uid "61C471FD-458E-651B-0C0E-6795084CECE5";
	setAttr ".base_color" -type "float3" 0 0 0 ;
	setAttr ".transmission" 1;
	setAttr ".thin_walled" yes;
createNode shadingEngine -n "aiStandardSurface7SG";
	rename -uid "89A8B5EB-43B9-85DC-D982-4391D30F6E88";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo7";
	rename -uid "21619309-4ABB-5473-89D1-FD93A49BC55F";
createNode aiStandardSurface -n "aiTeeth";
	rename -uid "C22AA915-4300-37F8-A4FE-B2B3284F8A39";
createNode shadingEngine -n "aiStandardSurface8SG";
	rename -uid "AA6098DC-4A64-2D5C-18C8-8BBB41C47785";
	setAttr ".ihi" 0;
	setAttr -s 3 ".dsm";
	setAttr ".ro" yes;
	setAttr -s 2 ".gn";
createNode materialInfo -n "materialInfo8";
	rename -uid "09DD1D3C-49BB-B44C-817A-D0BCAEC19C85";
createNode file -n "file15";
	rename -uid "39FAB7C0-45CA-D3A8-0432-228956719048";
	setAttr ".ftn" -type "string" "D:/EVERYDAY 4/Wolf realistic/Wolf//wolf_a_teeth_spc.tga";
	setAttr ".cs" -type "string" "Raw";
createNode place2dTexture -n "place2dTexture15";
	rename -uid "45CABE2A-458B-F507-5819-C888364C0853";
createNode file -n "file16";
	rename -uid "C9325A8E-4F5C-FF20-517E-80AAA53D692A";
	setAttr ".ftn" -type "string" "D:/EVERYDAY 4/Wolf realistic/Wolf//wolf_a_teeth_col.tga";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "place2dTexture16";
	rename -uid "E7C11E88-4E2A-399D-98A8-1CB4CD4B3EF5";
createNode file -n "file17";
	rename -uid "18442F4A-4A8E-31D6-6466-31967B2367AB";
	setAttr ".ail" yes;
	setAttr ".ftn" -type "string" "D:/EVERYDAY 4/Wolf realistic/Wolf//wolf_a_teeth_nml.tga";
	setAttr ".cs" -type "string" "Raw";
createNode place2dTexture -n "place2dTexture17";
	rename -uid "14A8F66C-4DFC-9CAF-D672-2FB06DEC40C8";
createNode bump2d -n "bump2d3";
	rename -uid "21D2E9C2-4854-E06A-7FD5-1E99CA00436D";
	setAttr ".bi" 1;
	setAttr ".vc1" -type "float3" 0 1.9999999e-05 0 ;
	setAttr ".vc2" -type "float3" 9.9999997e-06 9.9999997e-06 0 ;
createNode nodeGraphEditorInfo -n "hyperShadePrimaryNodeEditorSavedTabsInfo";
	rename -uid "942C5C77-4787-BA62-EF1B-F28C87C8E157";
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -949.54723599208376 -2663.0474404509514 ;
	setAttr ".tgi[0].vh" -type "double2" 745.59384232960224 -1647.5372278960094 ;
	setAttr -s 9 ".tgi[0].ni";
	setAttr ".tgi[0].ni[0].x" 87.142860412597656;
	setAttr ".tgi[0].ni[0].y" -1878.5714111328125;
	setAttr ".tgi[0].ni[0].nvs" 2387;
	setAttr ".tgi[0].ni[1].x" -220;
	setAttr ".tgi[0].ni[1].y" -2084.28564453125;
	setAttr ".tgi[0].ni[1].nvs" 1923;
	setAttr ".tgi[0].ni[2].x" -834.28570556640625;
	setAttr ".tgi[0].ni[2].y" -2117.142822265625;
	setAttr ".tgi[0].ni[2].nvs" 1923;
	setAttr ".tgi[0].ni[3].x" -527.14288330078125;
	setAttr ".tgi[0].ni[3].y" -2270;
	setAttr ".tgi[0].ni[3].nvs" 1923;
	setAttr ".tgi[0].ni[4].x" -527.14288330078125;
	setAttr ".tgi[0].ni[4].y" -2094.28564453125;
	setAttr ".tgi[0].ni[4].nvs" 1923;
	setAttr ".tgi[0].ni[5].x" -220;
	setAttr ".tgi[0].ni[5].y" -2237.142822265625;
	setAttr ".tgi[0].ni[5].nvs" 1923;
	setAttr ".tgi[0].ni[6].x" -220;
	setAttr ".tgi[0].ni[6].y" -1900;
	setAttr ".tgi[0].ni[6].nvs" 1923;
	setAttr ".tgi[0].ni[7].x" -527.14288330078125;
	setAttr ".tgi[0].ni[7].y" -1921.4285888671875;
	setAttr ".tgi[0].ni[7].nvs" 1923;
	setAttr ".tgi[0].ni[8].x" 435.71429443359375;
	setAttr ".tgi[0].ni[8].y" -1878.5714111328125;
	setAttr ".tgi[0].ni[8].nvs" 1923;
select -ne :time1;
	setAttr ".o" 1;
	setAttr ".unw" 1;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
	setAttr ".fprt" yes;
select -ne :renderPartition;
	setAttr -s 19 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 21 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
	setAttr -s 36 ".u";
select -ne :defaultRenderingList1;
	setAttr -s 3 ".r";
select -ne :lightList1;
select -ne :defaultTextureList1;
	setAttr -s 30 ".tx";
select -ne :initialShadingGroup;
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultRenderGlobals;
	setAttr ".ren" -type "string" "arnold";
	setAttr ".outf" 51;
	setAttr ".imfkey" -type "string" "exr";
select -ne :defaultResolution;
	setAttr ".w" 1280;
	setAttr ".h" 720;
	setAttr ".pa" 1;
	setAttr ".dar" 1.7769999504089355;
select -ne :defaultLightSet;
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
select -ne :ikSystem;
	setAttr -s 7 ".sol";
connectAttr "layer1.di" "wolf_rigRN.phl[1]";
connectAttr "layer1.di" "wolf_rigRN.phl[2]";
connectAttr "wolf_rigRN.phl[3]" "aiStandardSurface1SG.dsm" -na;
connectAttr "aiStandardSurface1SG.mwc" "wolf_rigRN.phl[4]";
connectAttr "wolf_rigRN.phl[5]" "aiStandardSurface1SG.dsm" -na;
connectAttr "aiStandardSurface1SG.mwc" "wolf_rigRN.phl[6]";
connectAttr "wolf_rigRN.phl[7]" "aiStandardSurface1SG.dsm" -na;
connectAttr "aiStandardSurface1SG.mwc" "wolf_rigRN.phl[8]";
connectAttr "wolf_rigRN.phl[9]" "aiStandardSurface1SG.dsm" -na;
connectAttr "aiStandardSurface1SG.mwc" "wolf_rigRN.phl[10]";
connectAttr "wolf_rigRN.phl[11]" "aiStandardSurface2SG.dsm" -na;
connectAttr "wolf_rigRN.phl[12]" "aiStandardSurface8SG.dsm" -na;
connectAttr "wolf_rigRN.phl[13]" "aiStandardSurface7SG.dsm" -na;
connectAttr "wolf_rigRN.phl[14]" "aiStandardSurface8SG.dsm" -na;
connectAttr "aiStandardSurface8SG.mwc" "wolf_rigRN.phl[15]";
connectAttr "wolf_rigRN.phl[16]" "aiStandardSurface8SG.dsm" -na;
connectAttr "aiStandardSurface8SG.mwc" "wolf_rigRN.phl[17]";
connectAttr "wolf_rigRN.phl[18]" "aiStandardSurface6SG.dsm" -na;
connectAttr "aiStandardSurface6SG.mwc" "wolf_rigRN.phl[19]";
connectAttr "wolf_rigRN.phl[20]" "aiStandardSurface4SG.dsm" -na;
connectAttr "aiStandardSurface4SG.mwc" "wolf_rigRN.phl[21]";
connectAttr "wolf_rigRN.phl[22]" "aiStandardSurface6SG.dsm" -na;
connectAttr "aiStandardSurface6SG.mwc" "wolf_rigRN.phl[23]";
connectAttr "wolf_rigRN.phl[24]" "aiStandardSurface4SG.dsm" -na;
connectAttr "aiStandardSurface4SG.mwc" "wolf_rigRN.phl[25]";
connectAttr "wolf_rigRN.phl[26]" "aiStandardSurface6SG.dsm" -na;
connectAttr "aiStandardSurface6SG.mwc" "wolf_rigRN.phl[27]";
connectAttr "wolf_rigRN.phl[28]" "aiStandardSurface4SG.dsm" -na;
connectAttr "aiStandardSurface4SG.mwc" "wolf_rigRN.phl[29]";
connectAttr "wolf_rigRN.phl[30]" "aiStandardSurface6SG.dsm" -na;
connectAttr "aiStandardSurface6SG.mwc" "wolf_rigRN.phl[31]";
connectAttr "wolf_rigRN.phl[32]" "aiStandardSurface4SG.dsm" -na;
connectAttr "aiStandardSurface4SG.mwc" "wolf_rigRN.phl[33]";
connectAttr "wolf_rigRN.phl[34]" "aiStandardSurface6SG.dsm" -na;
connectAttr "aiStandardSurface6SG.mwc" "wolf_rigRN.phl[35]";
connectAttr "wolf_rigRN.phl[36]" "aiStandardSurface4SG.dsm" -na;
connectAttr "aiStandardSurface4SG.mwc" "wolf_rigRN.phl[37]";
connectAttr "wolf_rigRN.phl[38]" "aiStandardSurface3SG.dsm" -na;
connectAttr "aiStandardSurface3SG.mwc" "wolf_rigRN.phl[39]";
connectAttr "wolf_rigRN.phl[40]" "aiStandardSurface1SG.gn" -na;
connectAttr "wolf_rigRN.phl[41]" "aiStandardSurface1SG.gn" -na;
connectAttr "wolf_rigRN.phl[42]" "aiStandardSurface8SG.gn" -na;
connectAttr "wolf_rigRN.phl[43]" "aiStandardSurface8SG.gn" -na;
connectAttr "wolf_rigRN.phl[44]" "aiStandardSurface6SG.gn" -na;
connectAttr "wolf_rigRN.phl[45]" "aiStandardSurface4SG.gn" -na;
connectAttr "wolf_rigRN.phl[46]" "aiStandardSurface1SG.gn" -na;
connectAttr "wolf_rigRN.phl[47]" "aiStandardSurface6SG.gn" -na;
connectAttr "wolf_rigRN.phl[48]" "aiStandardSurface4SG.gn" -na;
connectAttr "wolf_rigRN.phl[49]" "aiStandardSurface6SG.gn" -na;
connectAttr "wolf_rigRN.phl[50]" "aiStandardSurface4SG.gn" -na;
connectAttr "wolf_rigRN.phl[51]" "aiStandardSurface6SG.gn" -na;
connectAttr "wolf_rigRN.phl[52]" "aiStandardSurface4SG.gn" -na;
connectAttr "wolf_rigRN.phl[53]" "aiStandardSurface1SG.gn" -na;
connectAttr "wolf_rigRN.phl[54]" "aiStandardSurface6SG.gn" -na;
connectAttr "wolf_rigRN.phl[55]" "aiStandardSurface4SG.gn" -na;
connectAttr "wolf_rigRN.phl[56]" "aiStandardSurface3SG.gn" -na;
connectAttr "aiPhysicalSky1.out" "aiSkyDomeLightShape1.sc";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "aiStandardSurface1SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "aiStandardSurface2SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "aiStandardSurface3SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "aiStandardSurface4SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "aiStandardSurface5SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "aiStandardSurface6SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "aiStandardSurface7SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "aiStandardSurface8SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "aiStandardSurface1SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "aiStandardSurface2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "aiStandardSurface3SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "aiStandardSurface4SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "aiStandardSurface5SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "aiStandardSurface6SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "aiStandardSurface7SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "aiStandardSurface8SG.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr ":defaultArnoldDisplayDriver.msg" ":defaultArnoldRenderOptions.drivers"
		 -na;
connectAttr ":defaultArnoldFilter.msg" ":defaultArnoldRenderOptions.filt";
connectAttr ":defaultArnoldDriver.msg" ":defaultArnoldRenderOptions.drvr";
connectAttr "file1.oc" "aiBodyHair.base_color";
connectAttr "file2.oc" "aiBodyHair.opacity";
connectAttr "aiBodyHair.out" "aiStandardSurface1SG.ss";
connectAttr "aiStandardSurface1SG.msg" "materialInfo1.sg";
connectAttr "aiBodyHair.msg" "materialInfo1.m";
connectAttr "aiBodyHair.msg" "materialInfo1.t" -na;
connectAttr ":defaultColorMgtGlobals.cme" "file1.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file1.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file1.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file1.ws";
connectAttr "place2dTexture1.c" "file1.c";
connectAttr "place2dTexture1.tf" "file1.tf";
connectAttr "place2dTexture1.rf" "file1.rf";
connectAttr "place2dTexture1.mu" "file1.mu";
connectAttr "place2dTexture1.mv" "file1.mv";
connectAttr "place2dTexture1.s" "file1.s";
connectAttr "place2dTexture1.wu" "file1.wu";
connectAttr "place2dTexture1.wv" "file1.wv";
connectAttr "place2dTexture1.re" "file1.re";
connectAttr "place2dTexture1.of" "file1.of";
connectAttr "place2dTexture1.r" "file1.ro";
connectAttr "place2dTexture1.n" "file1.n";
connectAttr "place2dTexture1.vt1" "file1.vt1";
connectAttr "place2dTexture1.vt2" "file1.vt2";
connectAttr "place2dTexture1.vt3" "file1.vt3";
connectAttr "place2dTexture1.vc1" "file1.vc1";
connectAttr "place2dTexture1.o" "file1.uv";
connectAttr "place2dTexture1.ofs" "file1.fs";
connectAttr ":defaultColorMgtGlobals.cme" "file2.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file2.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file2.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file2.ws";
connectAttr "place2dTexture2.c" "file2.c";
connectAttr "place2dTexture2.tf" "file2.tf";
connectAttr "place2dTexture2.rf" "file2.rf";
connectAttr "place2dTexture2.mu" "file2.mu";
connectAttr "place2dTexture2.mv" "file2.mv";
connectAttr "place2dTexture2.s" "file2.s";
connectAttr "place2dTexture2.wu" "file2.wu";
connectAttr "place2dTexture2.wv" "file2.wv";
connectAttr "place2dTexture2.re" "file2.re";
connectAttr "place2dTexture2.of" "file2.of";
connectAttr "place2dTexture2.r" "file2.ro";
connectAttr "place2dTexture2.n" "file2.n";
connectAttr "place2dTexture2.vt1" "file2.vt1";
connectAttr "place2dTexture2.vt2" "file2.vt2";
connectAttr "place2dTexture2.vt3" "file2.vt3";
connectAttr "place2dTexture2.vc1" "file2.vc1";
connectAttr "place2dTexture2.o" "file2.uv";
connectAttr "place2dTexture2.ofs" "file2.fs";
connectAttr "layerManager.dli[1]" "layer1.id";
connectAttr "file3.oc" "aiTailHair.base_color";
connectAttr "file4.oc" "aiTailHair.opacity";
connectAttr "aiTailHair.out" "aiStandardSurface2SG.ss";
connectAttr "aiStandardSurface2SG.msg" "materialInfo2.sg";
connectAttr "aiTailHair.msg" "materialInfo2.m";
connectAttr "aiTailHair.msg" "materialInfo2.t" -na;
connectAttr ":defaultColorMgtGlobals.cme" "file3.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file3.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file3.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file3.ws";
connectAttr "place2dTexture3.c" "file3.c";
connectAttr "place2dTexture3.tf" "file3.tf";
connectAttr "place2dTexture3.rf" "file3.rf";
connectAttr "place2dTexture3.mu" "file3.mu";
connectAttr "place2dTexture3.mv" "file3.mv";
connectAttr "place2dTexture3.s" "file3.s";
connectAttr "place2dTexture3.wu" "file3.wu";
connectAttr "place2dTexture3.wv" "file3.wv";
connectAttr "place2dTexture3.re" "file3.re";
connectAttr "place2dTexture3.of" "file3.of";
connectAttr "place2dTexture3.r" "file3.ro";
connectAttr "place2dTexture3.n" "file3.n";
connectAttr "place2dTexture3.vt1" "file3.vt1";
connectAttr "place2dTexture3.vt2" "file3.vt2";
connectAttr "place2dTexture3.vt3" "file3.vt3";
connectAttr "place2dTexture3.vc1" "file3.vc1";
connectAttr "place2dTexture3.o" "file3.uv";
connectAttr "place2dTexture3.ofs" "file3.fs";
connectAttr ":defaultColorMgtGlobals.cme" "file4.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file4.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file4.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file4.ws";
connectAttr "place2dTexture4.c" "file4.c";
connectAttr "place2dTexture4.tf" "file4.tf";
connectAttr "place2dTexture4.rf" "file4.rf";
connectAttr "place2dTexture4.mu" "file4.mu";
connectAttr "place2dTexture4.mv" "file4.mv";
connectAttr "place2dTexture4.s" "file4.s";
connectAttr "place2dTexture4.wu" "file4.wu";
connectAttr "place2dTexture4.wv" "file4.wv";
connectAttr "place2dTexture4.re" "file4.re";
connectAttr "place2dTexture4.of" "file4.of";
connectAttr "place2dTexture4.r" "file4.ro";
connectAttr "place2dTexture4.n" "file4.n";
connectAttr "place2dTexture4.vt1" "file4.vt1";
connectAttr "place2dTexture4.vt2" "file4.vt2";
connectAttr "place2dTexture4.vt3" "file4.vt3";
connectAttr "place2dTexture4.vc1" "file4.vc1";
connectAttr "place2dTexture4.o" "file4.uv";
connectAttr "place2dTexture4.ofs" "file4.fs";
connectAttr "file5.oc" "aiLegHair.base_color";
connectAttr "file6.oc" "aiLegHair.opacity";
connectAttr "aiLegHair.out" "aiStandardSurface3SG.ss";
connectAttr "aiStandardSurface3SG.msg" "materialInfo3.sg";
connectAttr "aiLegHair.msg" "materialInfo3.m";
connectAttr "aiLegHair.msg" "materialInfo3.t" -na;
connectAttr ":defaultColorMgtGlobals.cme" "file5.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file5.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file5.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file5.ws";
connectAttr "place2dTexture5.c" "file5.c";
connectAttr "place2dTexture5.tf" "file5.tf";
connectAttr "place2dTexture5.rf" "file5.rf";
connectAttr "place2dTexture5.mu" "file5.mu";
connectAttr "place2dTexture5.mv" "file5.mv";
connectAttr "place2dTexture5.s" "file5.s";
connectAttr "place2dTexture5.wu" "file5.wu";
connectAttr "place2dTexture5.wv" "file5.wv";
connectAttr "place2dTexture5.re" "file5.re";
connectAttr "place2dTexture5.of" "file5.of";
connectAttr "place2dTexture5.r" "file5.ro";
connectAttr "place2dTexture5.n" "file5.n";
connectAttr "place2dTexture5.vt1" "file5.vt1";
connectAttr "place2dTexture5.vt2" "file5.vt2";
connectAttr "place2dTexture5.vt3" "file5.vt3";
connectAttr "place2dTexture5.vc1" "file5.vc1";
connectAttr "place2dTexture5.o" "file5.uv";
connectAttr "place2dTexture5.ofs" "file5.fs";
connectAttr ":defaultColorMgtGlobals.cme" "file6.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file6.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file6.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file6.ws";
connectAttr "place2dTexture6.c" "file6.c";
connectAttr "place2dTexture6.tf" "file6.tf";
connectAttr "place2dTexture6.rf" "file6.rf";
connectAttr "place2dTexture6.mu" "file6.mu";
connectAttr "place2dTexture6.mv" "file6.mv";
connectAttr "place2dTexture6.s" "file6.s";
connectAttr "place2dTexture6.wu" "file6.wu";
connectAttr "place2dTexture6.wv" "file6.wv";
connectAttr "place2dTexture6.re" "file6.re";
connectAttr "place2dTexture6.of" "file6.of";
connectAttr "place2dTexture6.r" "file6.ro";
connectAttr "place2dTexture6.n" "file6.n";
connectAttr "place2dTexture6.vt1" "file6.vt1";
connectAttr "place2dTexture6.vt2" "file6.vt2";
connectAttr "place2dTexture6.vt3" "file6.vt3";
connectAttr "place2dTexture6.vc1" "file6.vc1";
connectAttr "place2dTexture6.o" "file6.uv";
connectAttr "place2dTexture6.ofs" "file6.fs";
connectAttr "bump2d1.o" "aiBody.n";
connectAttr "file8.oc" "aiBody.base_color";
connectAttr "file9.oc" "aiBody.specular_color";
connectAttr "aiBody.out" "aiStandardSurface4SG.ss";
connectAttr "aiStandardSurface4SG.msg" "materialInfo4.sg";
connectAttr "aiBody.msg" "materialInfo4.m";
connectAttr "aiBody.msg" "materialInfo4.t" -na;
connectAttr ":defaultColorMgtGlobals.cme" "file7.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file7.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file7.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file7.ws";
connectAttr "place2dTexture7.c" "file7.c";
connectAttr "place2dTexture7.tf" "file7.tf";
connectAttr "place2dTexture7.rf" "file7.rf";
connectAttr "place2dTexture7.mu" "file7.mu";
connectAttr "place2dTexture7.mv" "file7.mv";
connectAttr "place2dTexture7.s" "file7.s";
connectAttr "place2dTexture7.wu" "file7.wu";
connectAttr "place2dTexture7.wv" "file7.wv";
connectAttr "place2dTexture7.re" "file7.re";
connectAttr "place2dTexture7.of" "file7.of";
connectAttr "place2dTexture7.r" "file7.ro";
connectAttr "place2dTexture7.n" "file7.n";
connectAttr "place2dTexture7.vt1" "file7.vt1";
connectAttr "place2dTexture7.vt2" "file7.vt2";
connectAttr "place2dTexture7.vt3" "file7.vt3";
connectAttr "place2dTexture7.vc1" "file7.vc1";
connectAttr "place2dTexture7.o" "file7.uv";
connectAttr "place2dTexture7.ofs" "file7.fs";
connectAttr "file7.oa" "bump2d1.bv";
connectAttr ":defaultColorMgtGlobals.cme" "file8.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file8.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file8.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file8.ws";
connectAttr "place2dTexture8.c" "file8.c";
connectAttr "place2dTexture8.tf" "file8.tf";
connectAttr "place2dTexture8.rf" "file8.rf";
connectAttr "place2dTexture8.mu" "file8.mu";
connectAttr "place2dTexture8.mv" "file8.mv";
connectAttr "place2dTexture8.s" "file8.s";
connectAttr "place2dTexture8.wu" "file8.wu";
connectAttr "place2dTexture8.wv" "file8.wv";
connectAttr "place2dTexture8.re" "file8.re";
connectAttr "place2dTexture8.of" "file8.of";
connectAttr "place2dTexture8.r" "file8.ro";
connectAttr "place2dTexture8.n" "file8.n";
connectAttr "place2dTexture8.vt1" "file8.vt1";
connectAttr "place2dTexture8.vt2" "file8.vt2";
connectAttr "place2dTexture8.vt3" "file8.vt3";
connectAttr "place2dTexture8.vc1" "file8.vc1";
connectAttr "place2dTexture8.o" "file8.uv";
connectAttr "place2dTexture8.ofs" "file8.fs";
connectAttr ":defaultColorMgtGlobals.cme" "file9.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file9.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file9.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file9.ws";
connectAttr "place2dTexture9.c" "file9.c";
connectAttr "place2dTexture9.tf" "file9.tf";
connectAttr "place2dTexture9.rf" "file9.rf";
connectAttr "place2dTexture9.mu" "file9.mu";
connectAttr "place2dTexture9.mv" "file9.mv";
connectAttr "place2dTexture9.s" "file9.s";
connectAttr "place2dTexture9.wu" "file9.wu";
connectAttr "place2dTexture9.wv" "file9.wv";
connectAttr "place2dTexture9.re" "file9.re";
connectAttr "place2dTexture9.of" "file9.of";
connectAttr "place2dTexture9.r" "file9.ro";
connectAttr "place2dTexture9.n" "file9.n";
connectAttr "place2dTexture9.vt1" "file9.vt1";
connectAttr "place2dTexture9.vt2" "file9.vt2";
connectAttr "place2dTexture9.vt3" "file9.vt3";
connectAttr "place2dTexture9.vc1" "file9.vc1";
connectAttr "place2dTexture9.o" "file9.uv";
connectAttr "place2dTexture9.ofs" "file9.fs";
connectAttr "file10.oc" "aiEyes.base_color";
connectAttr "file11.oc" "aiEyes.emission_color";
connectAttr "aiEyes.out" "aiStandardSurface5SG.ss";
connectAttr "aiStandardSurface5SG.msg" "materialInfo5.sg";
connectAttr "aiEyes.msg" "materialInfo5.m";
connectAttr "aiEyes.msg" "materialInfo5.t" -na;
connectAttr ":defaultColorMgtGlobals.cme" "file10.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file10.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file10.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file10.ws";
connectAttr "place2dTexture10.c" "file10.c";
connectAttr "place2dTexture10.tf" "file10.tf";
connectAttr "place2dTexture10.rf" "file10.rf";
connectAttr "place2dTexture10.mu" "file10.mu";
connectAttr "place2dTexture10.mv" "file10.mv";
connectAttr "place2dTexture10.s" "file10.s";
connectAttr "place2dTexture10.wu" "file10.wu";
connectAttr "place2dTexture10.wv" "file10.wv";
connectAttr "place2dTexture10.re" "file10.re";
connectAttr "place2dTexture10.of" "file10.of";
connectAttr "place2dTexture10.r" "file10.ro";
connectAttr "place2dTexture10.n" "file10.n";
connectAttr "place2dTexture10.vt1" "file10.vt1";
connectAttr "place2dTexture10.vt2" "file10.vt2";
connectAttr "place2dTexture10.vt3" "file10.vt3";
connectAttr "place2dTexture10.vc1" "file10.vc1";
connectAttr "place2dTexture10.o" "file10.uv";
connectAttr "place2dTexture10.ofs" "file10.fs";
connectAttr ":defaultColorMgtGlobals.cme" "file11.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file11.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file11.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file11.ws";
connectAttr "place2dTexture11.c" "file11.c";
connectAttr "place2dTexture11.tf" "file11.tf";
connectAttr "place2dTexture11.rf" "file11.rf";
connectAttr "place2dTexture11.mu" "file11.mu";
connectAttr "place2dTexture11.mv" "file11.mv";
connectAttr "place2dTexture11.s" "file11.s";
connectAttr "place2dTexture11.wu" "file11.wu";
connectAttr "place2dTexture11.wv" "file11.wv";
connectAttr "place2dTexture11.re" "file11.re";
connectAttr "place2dTexture11.of" "file11.of";
connectAttr "place2dTexture11.r" "file11.ro";
connectAttr "place2dTexture11.n" "file11.n";
connectAttr "place2dTexture11.vt1" "file11.vt1";
connectAttr "place2dTexture11.vt2" "file11.vt2";
connectAttr "place2dTexture11.vt3" "file11.vt3";
connectAttr "place2dTexture11.vc1" "file11.vc1";
connectAttr "place2dTexture11.o" "file11.uv";
connectAttr "place2dTexture11.ofs" "file11.fs";
connectAttr "bump2d2.o" "aiFace.n";
connectAttr "file13.oc" "aiFace.specular_color";
connectAttr "file14.oc" "aiFace.base_color";
connectAttr "aiFace.out" "aiStandardSurface6SG.ss";
connectAttr "aiStandardSurface6SG.msg" "materialInfo6.sg";
connectAttr "aiFace.msg" "materialInfo6.m";
connectAttr "aiFace.msg" "materialInfo6.t" -na;
connectAttr ":defaultColorMgtGlobals.cme" "file12.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file12.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file12.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file12.ws";
connectAttr "place2dTexture12.c" "file12.c";
connectAttr "place2dTexture12.tf" "file12.tf";
connectAttr "place2dTexture12.rf" "file12.rf";
connectAttr "place2dTexture12.mu" "file12.mu";
connectAttr "place2dTexture12.mv" "file12.mv";
connectAttr "place2dTexture12.s" "file12.s";
connectAttr "place2dTexture12.wu" "file12.wu";
connectAttr "place2dTexture12.wv" "file12.wv";
connectAttr "place2dTexture12.re" "file12.re";
connectAttr "place2dTexture12.of" "file12.of";
connectAttr "place2dTexture12.r" "file12.ro";
connectAttr "place2dTexture12.n" "file12.n";
connectAttr "place2dTexture12.vt1" "file12.vt1";
connectAttr "place2dTexture12.vt2" "file12.vt2";
connectAttr "place2dTexture12.vt3" "file12.vt3";
connectAttr "place2dTexture12.vc1" "file12.vc1";
connectAttr "place2dTexture12.o" "file12.uv";
connectAttr "place2dTexture12.ofs" "file12.fs";
connectAttr "file12.oa" "bump2d2.bv";
connectAttr ":defaultColorMgtGlobals.cme" "file13.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file13.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file13.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file13.ws";
connectAttr "place2dTexture13.c" "file13.c";
connectAttr "place2dTexture13.tf" "file13.tf";
connectAttr "place2dTexture13.rf" "file13.rf";
connectAttr "place2dTexture13.mu" "file13.mu";
connectAttr "place2dTexture13.mv" "file13.mv";
connectAttr "place2dTexture13.s" "file13.s";
connectAttr "place2dTexture13.wu" "file13.wu";
connectAttr "place2dTexture13.wv" "file13.wv";
connectAttr "place2dTexture13.re" "file13.re";
connectAttr "place2dTexture13.of" "file13.of";
connectAttr "place2dTexture13.r" "file13.ro";
connectAttr "place2dTexture13.n" "file13.n";
connectAttr "place2dTexture13.vt1" "file13.vt1";
connectAttr "place2dTexture13.vt2" "file13.vt2";
connectAttr "place2dTexture13.vt3" "file13.vt3";
connectAttr "place2dTexture13.vc1" "file13.vc1";
connectAttr "place2dTexture13.o" "file13.uv";
connectAttr "place2dTexture13.ofs" "file13.fs";
connectAttr ":defaultColorMgtGlobals.cme" "file14.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file14.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file14.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file14.ws";
connectAttr "place2dTexture14.c" "file14.c";
connectAttr "place2dTexture14.tf" "file14.tf";
connectAttr "place2dTexture14.rf" "file14.rf";
connectAttr "place2dTexture14.mu" "file14.mu";
connectAttr "place2dTexture14.mv" "file14.mv";
connectAttr "place2dTexture14.s" "file14.s";
connectAttr "place2dTexture14.wu" "file14.wu";
connectAttr "place2dTexture14.wv" "file14.wv";
connectAttr "place2dTexture14.re" "file14.re";
connectAttr "place2dTexture14.of" "file14.of";
connectAttr "place2dTexture14.r" "file14.ro";
connectAttr "place2dTexture14.n" "file14.n";
connectAttr "place2dTexture14.vt1" "file14.vt1";
connectAttr "place2dTexture14.vt2" "file14.vt2";
connectAttr "place2dTexture14.vt3" "file14.vt3";
connectAttr "place2dTexture14.vc1" "file14.vc1";
connectAttr "place2dTexture14.o" "file14.uv";
connectAttr "place2dTexture14.ofs" "file14.fs";
connectAttr "aiLens.out" "aiStandardSurface7SG.ss";
connectAttr "aiStandardSurface7SG.msg" "materialInfo7.sg";
connectAttr "aiLens.msg" "materialInfo7.m";
connectAttr "aiLens.msg" "materialInfo7.t" -na;
connectAttr "file15.oc" "aiTeeth.specular_color";
connectAttr "file16.oc" "aiTeeth.base_color";
connectAttr "bump2d3.o" "aiTeeth.n";
connectAttr "aiTeeth.out" "aiStandardSurface8SG.ss";
connectAttr "aiStandardSurface8SG.msg" "materialInfo8.sg";
connectAttr "aiTeeth.msg" "materialInfo8.m";
connectAttr "aiTeeth.msg" "materialInfo8.t" -na;
connectAttr ":defaultColorMgtGlobals.cme" "file15.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file15.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file15.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file15.ws";
connectAttr "place2dTexture15.c" "file15.c";
connectAttr "place2dTexture15.tf" "file15.tf";
connectAttr "place2dTexture15.rf" "file15.rf";
connectAttr "place2dTexture15.mu" "file15.mu";
connectAttr "place2dTexture15.mv" "file15.mv";
connectAttr "place2dTexture15.s" "file15.s";
connectAttr "place2dTexture15.wu" "file15.wu";
connectAttr "place2dTexture15.wv" "file15.wv";
connectAttr "place2dTexture15.re" "file15.re";
connectAttr "place2dTexture15.of" "file15.of";
connectAttr "place2dTexture15.r" "file15.ro";
connectAttr "place2dTexture15.n" "file15.n";
connectAttr "place2dTexture15.vt1" "file15.vt1";
connectAttr "place2dTexture15.vt2" "file15.vt2";
connectAttr "place2dTexture15.vt3" "file15.vt3";
connectAttr "place2dTexture15.vc1" "file15.vc1";
connectAttr "place2dTexture15.o" "file15.uv";
connectAttr "place2dTexture15.ofs" "file15.fs";
connectAttr ":defaultColorMgtGlobals.cme" "file16.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file16.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file16.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file16.ws";
connectAttr "place2dTexture16.c" "file16.c";
connectAttr "place2dTexture16.tf" "file16.tf";
connectAttr "place2dTexture16.rf" "file16.rf";
connectAttr "place2dTexture16.mu" "file16.mu";
connectAttr "place2dTexture16.mv" "file16.mv";
connectAttr "place2dTexture16.s" "file16.s";
connectAttr "place2dTexture16.wu" "file16.wu";
connectAttr "place2dTexture16.wv" "file16.wv";
connectAttr "place2dTexture16.re" "file16.re";
connectAttr "place2dTexture16.of" "file16.of";
connectAttr "place2dTexture16.r" "file16.ro";
connectAttr "place2dTexture16.n" "file16.n";
connectAttr "place2dTexture16.vt1" "file16.vt1";
connectAttr "place2dTexture16.vt2" "file16.vt2";
connectAttr "place2dTexture16.vt3" "file16.vt3";
connectAttr "place2dTexture16.vc1" "file16.vc1";
connectAttr "place2dTexture16.o" "file16.uv";
connectAttr "place2dTexture16.ofs" "file16.fs";
connectAttr ":defaultColorMgtGlobals.cme" "file17.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file17.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file17.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file17.ws";
connectAttr "place2dTexture17.c" "file17.c";
connectAttr "place2dTexture17.tf" "file17.tf";
connectAttr "place2dTexture17.rf" "file17.rf";
connectAttr "place2dTexture17.mu" "file17.mu";
connectAttr "place2dTexture17.mv" "file17.mv";
connectAttr "place2dTexture17.s" "file17.s";
connectAttr "place2dTexture17.wu" "file17.wu";
connectAttr "place2dTexture17.wv" "file17.wv";
connectAttr "place2dTexture17.re" "file17.re";
connectAttr "place2dTexture17.of" "file17.of";
connectAttr "place2dTexture17.r" "file17.ro";
connectAttr "place2dTexture17.n" "file17.n";
connectAttr "place2dTexture17.vt1" "file17.vt1";
connectAttr "place2dTexture17.vt2" "file17.vt2";
connectAttr "place2dTexture17.vt3" "file17.vt3";
connectAttr "place2dTexture17.vc1" "file17.vc1";
connectAttr "place2dTexture17.o" "file17.uv";
connectAttr "place2dTexture17.ofs" "file17.fs";
connectAttr "file17.oa" "bump2d3.bv";
connectAttr "aiTeeth.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[0].dn"
		;
connectAttr "bump2d3.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[1].dn"
		;
connectAttr "place2dTexture17.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[2].dn"
		;
connectAttr "place2dTexture16.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[3].dn"
		;
connectAttr "file17.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[4].dn"
		;
connectAttr "file16.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[5].dn"
		;
connectAttr "file15.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[6].dn"
		;
connectAttr "place2dTexture15.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[7].dn"
		;
connectAttr "aiStandardSurface8SG.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[8].dn"
		;
connectAttr "aiStandardSurface1SG.pa" ":renderPartition.st" -na;
connectAttr "aiStandardSurface2SG.pa" ":renderPartition.st" -na;
connectAttr "aiStandardSurface3SG.pa" ":renderPartition.st" -na;
connectAttr "aiStandardSurface4SG.pa" ":renderPartition.st" -na;
connectAttr "aiStandardSurface5SG.pa" ":renderPartition.st" -na;
connectAttr "aiStandardSurface6SG.pa" ":renderPartition.st" -na;
connectAttr "aiStandardSurface7SG.pa" ":renderPartition.st" -na;
connectAttr "aiStandardSurface8SG.pa" ":renderPartition.st" -na;
connectAttr "aiBodyHair.msg" ":defaultShaderList1.s" -na;
connectAttr "aiTailHair.msg" ":defaultShaderList1.s" -na;
connectAttr "aiLegHair.msg" ":defaultShaderList1.s" -na;
connectAttr "aiBody.msg" ":defaultShaderList1.s" -na;
connectAttr "aiEyes.msg" ":defaultShaderList1.s" -na;
connectAttr "aiFace.msg" ":defaultShaderList1.s" -na;
connectAttr "aiLens.msg" ":defaultShaderList1.s" -na;
connectAttr "aiTeeth.msg" ":defaultShaderList1.s" -na;
connectAttr "place2dTexture1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture2.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture3.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture4.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture5.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture6.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture7.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "bump2d1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture8.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture9.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture10.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture11.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture12.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "bump2d2.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture13.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture14.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture15.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture16.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture17.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "bump2d3.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "aiSkyDomeLightShape1.ltd" ":lightList1.l" -na;
connectAttr "file1.msg" ":defaultTextureList1.tx" -na;
connectAttr "file2.msg" ":defaultTextureList1.tx" -na;
connectAttr "file3.msg" ":defaultTextureList1.tx" -na;
connectAttr "file4.msg" ":defaultTextureList1.tx" -na;
connectAttr "file5.msg" ":defaultTextureList1.tx" -na;
connectAttr "file6.msg" ":defaultTextureList1.tx" -na;
connectAttr "file7.msg" ":defaultTextureList1.tx" -na;
connectAttr "file8.msg" ":defaultTextureList1.tx" -na;
connectAttr "file9.msg" ":defaultTextureList1.tx" -na;
connectAttr "file10.msg" ":defaultTextureList1.tx" -na;
connectAttr "file11.msg" ":defaultTextureList1.tx" -na;
connectAttr "file12.msg" ":defaultTextureList1.tx" -na;
connectAttr "file13.msg" ":defaultTextureList1.tx" -na;
connectAttr "file14.msg" ":defaultTextureList1.tx" -na;
connectAttr "file15.msg" ":defaultTextureList1.tx" -na;
connectAttr "file16.msg" ":defaultTextureList1.tx" -na;
connectAttr "file17.msg" ":defaultTextureList1.tx" -na;
connectAttr "aiSkyDomeLight1.iog" ":defaultLightSet.dsm" -na;
// End of wolf_rig_render_setup_arnold_maya2018.ma
