//Maya ASCII 2018 scene
//Name: wolf_rig_render_setup_redshift3d_maya2018.ma
//Last modified: Thu, Apr 11, 2019 06:27:19 PM
//Codeset: 1252
file -rdi 1 -ns "wolf_rig" -rfn "wolf_rigRN" -typ "mayaAscii" "D:/EVERYDAY 4/Wolf realistic//Wolf//wolf_rig.ma";
file -r -ns "wolf_rig" -dr 1 -rfn "wolf_rigRN" -typ "mayaAscii" "D:/EVERYDAY 4/Wolf realistic//Wolf//wolf_rig.ma";
requires maya "2018";
requires -nodeType "RedshiftOptions" -nodeType "RedshiftDomeLight" -nodeType "RedshiftNormalMap"
		 -nodeType "RedshiftSprite" -nodeType "RedshiftMaterial" "redshift4maya" "2.5.46";
requires "stereoCamera" "10.0";
requires -nodeType "ilrOptionsNode" -nodeType "ilrUIOptionsNode" -nodeType "ilrBakeLayerManager"
		 -nodeType "ilrBakeLayer" "Turtle" "2018.0.0";
requires -nodeType "mentalrayFramebuffer" -nodeType "mentalrayOutputPass" -nodeType "mentalrayRenderPass"
		 -nodeType "mentalrayUserBuffer" -nodeType "mentalraySubdivApprox" -nodeType "mentalrayCurveApprox"
		 -nodeType "mentalraySurfaceApprox" -nodeType "mentalrayDisplaceApprox" -nodeType "mentalrayOptions"
		 -nodeType "mentalrayGlobals" -nodeType "mentalrayItemsList" -nodeType "mentalrayShader"
		 -nodeType "mentalrayUserData" -nodeType "mentalrayText" -nodeType "mentalrayTessellation"
		 -nodeType "mentalrayPhenomenon" -nodeType "mentalrayLightProfile" -nodeType "mentalrayVertexColors"
		 -nodeType "mentalrayIblShape" -nodeType "mapVizShape" -nodeType "mentalrayCCMeshProxy"
		 -nodeType "cylindricalLightLocator" -nodeType "discLightLocator" -nodeType "rectangularLightLocator"
		 -nodeType "sphericalLightLocator" -nodeType "abcimport" -nodeType "mia_physicalsun"
		 -nodeType "mia_physicalsky" -nodeType "mia_material" -nodeType "mia_material_x" -nodeType "mia_roundcorners"
		 -nodeType "mia_exposure_simple" -nodeType "mia_portal_light" -nodeType "mia_light_surface"
		 -nodeType "mia_exposure_photographic" -nodeType "mia_exposure_photographic_rev" -nodeType "mia_lens_bokeh"
		 -nodeType "mia_envblur" -nodeType "mia_ciesky" -nodeType "mia_photometric_light"
		 -nodeType "mib_texture_vector" -nodeType "mib_texture_remap" -nodeType "mib_texture_rotate"
		 -nodeType "mib_bump_basis" -nodeType "mib_bump_map" -nodeType "mib_passthrough_bump_map"
		 -nodeType "mib_bump_map2" -nodeType "mib_lookup_spherical" -nodeType "mib_lookup_cube1"
		 -nodeType "mib_lookup_cube6" -nodeType "mib_lookup_background" -nodeType "mib_lookup_cylindrical"
		 -nodeType "mib_texture_lookup" -nodeType "mib_texture_lookup2" -nodeType "mib_texture_filter_lookup"
		 -nodeType "mib_texture_checkerboard" -nodeType "mib_texture_polkadot" -nodeType "mib_texture_polkasphere"
		 -nodeType "mib_texture_turbulence" -nodeType "mib_texture_wave" -nodeType "mib_reflect"
		 -nodeType "mib_refract" -nodeType "mib_transparency" -nodeType "mib_continue" -nodeType "mib_opacity"
		 -nodeType "mib_twosided" -nodeType "mib_refraction_index" -nodeType "mib_dielectric"
		 -nodeType "mib_ray_marcher" -nodeType "mib_illum_lambert" -nodeType "mib_illum_phong"
		 -nodeType "mib_illum_ward" -nodeType "mib_illum_ward_deriv" -nodeType "mib_illum_blinn"
		 -nodeType "mib_illum_cooktorr" -nodeType "mib_illum_hair" -nodeType "mib_volume"
		 -nodeType "mib_color_alpha" -nodeType "mib_color_average" -nodeType "mib_color_intensity"
		 -nodeType "mib_color_interpolate" -nodeType "mib_color_mix" -nodeType "mib_color_spread"
		 -nodeType "mib_geo_cube" -nodeType "mib_geo_torus" -nodeType "mib_geo_sphere" -nodeType "mib_geo_cone"
		 -nodeType "mib_geo_cylinder" -nodeType "mib_geo_square" -nodeType "mib_geo_instance"
		 -nodeType "mib_geo_instance_mlist" -nodeType "mib_geo_add_uv_texsurf" -nodeType "mib_photon_basic"
		 -nodeType "mib_light_infinite" -nodeType "mib_light_point" -nodeType "mib_light_spot"
		 -nodeType "mib_light_photometric" -nodeType "mib_cie_d" -nodeType "mib_blackbody"
		 -nodeType "mib_shadow_transparency" -nodeType "mib_lens_stencil" -nodeType "mib_lens_clamp"
		 -nodeType "mib_lightmap_write" -nodeType "mib_lightmap_sample" -nodeType "mib_amb_occlusion"
		 -nodeType "mib_fast_occlusion" -nodeType "mib_map_get_scalar" -nodeType "mib_map_get_integer"
		 -nodeType "mib_map_get_vector" -nodeType "mib_map_get_color" -nodeType "mib_map_get_transform"
		 -nodeType "mib_map_get_scalar_array" -nodeType "mib_map_get_integer_array" -nodeType "mib_fg_occlusion"
		 -nodeType "mib_bent_normal_env" -nodeType "mib_glossy_reflection" -nodeType "mib_glossy_refraction"
		 -nodeType "builtin_bsdf_architectural" -nodeType "builtin_bsdf_architectural_comp"
		 -nodeType "builtin_bsdf_carpaint" -nodeType "builtin_bsdf_ashikhmin" -nodeType "builtin_bsdf_lambert"
		 -nodeType "builtin_bsdf_mirror" -nodeType "builtin_bsdf_phong" -nodeType "contour_store_function"
		 -nodeType "contour_store_function_simple" -nodeType "contour_contrast_function_levels"
		 -nodeType "contour_contrast_function_simple" -nodeType "contour_shader_simple" -nodeType "contour_shader_silhouette"
		 -nodeType "contour_shader_maxcolor" -nodeType "contour_shader_curvature" -nodeType "contour_shader_factorcolor"
		 -nodeType "contour_shader_depthfade" -nodeType "contour_shader_framefade" -nodeType "contour_shader_layerthinner"
		 -nodeType "contour_shader_widthfromcolor" -nodeType "contour_shader_widthfromlightdir"
		 -nodeType "contour_shader_widthfromlight" -nodeType "contour_shader_combi" -nodeType "contour_only"
		 -nodeType "contour_composite" -nodeType "contour_ps" -nodeType "mi_metallic_paint"
		 -nodeType "mi_metallic_paint_x" -nodeType "mi_bump_flakes" -nodeType "mi_car_paint_phen"
		 -nodeType "mi_metallic_paint_output_mixer" -nodeType "mi_car_paint_phen_x" -nodeType "physical_lens_dof"
		 -nodeType "physical_light" -nodeType "dgs_material" -nodeType "dgs_material_photon"
		 -nodeType "dielectric_material" -nodeType "dielectric_material_photon" -nodeType "oversampling_lens"
		 -nodeType "path_material" -nodeType "parti_volume" -nodeType "parti_volume_photon"
		 -nodeType "transmat" -nodeType "transmat_photon" -nodeType "mip_rayswitch" -nodeType "mip_rayswitch_advanced"
		 -nodeType "mip_rayswitch_environment" -nodeType "mip_card_opacity" -nodeType "mip_motionblur"
		 -nodeType "mip_motion_vector" -nodeType "mip_matteshadow" -nodeType "mip_cameramap"
		 -nodeType "mip_mirrorball" -nodeType "mip_grayball" -nodeType "mip_gamma_gain" -nodeType "mip_render_subset"
		 -nodeType "mip_matteshadow_mtl" -nodeType "mip_binaryproxy" -nodeType "mip_rayswitch_stage"
		 -nodeType "mip_fgshooter" -nodeType "mib_ptex_lookup" -nodeType "misss_physical"
		 -nodeType "misss_physical_phen" -nodeType "misss_fast_shader" -nodeType "misss_fast_shader_x"
		 -nodeType "misss_fast_shader2" -nodeType "misss_fast_shader2_x" -nodeType "misss_skin_specular"
		 -nodeType "misss_lightmap_write" -nodeType "misss_lambert_gamma" -nodeType "misss_call_shader"
		 -nodeType "misss_set_normal" -nodeType "misss_fast_lmap_maya" -nodeType "misss_fast_simple_maya"
		 -nodeType "misss_fast_skin_maya" -nodeType "misss_fast_skin_phen" -nodeType "misss_fast_skin_phen_d"
		 -nodeType "misss_mia_skin2_phen" -nodeType "misss_mia_skin2_phen_d" -nodeType "misss_lightmap_phen"
		 -nodeType "misss_mia_skin2_surface_phen" -nodeType "surfaceSampler" -nodeType "mib_data_bool"
		 -nodeType "mib_data_int" -nodeType "mib_data_scalar" -nodeType "mib_data_vector"
		 -nodeType "mib_data_color" -nodeType "mib_data_string" -nodeType "mib_data_texture"
		 -nodeType "mib_data_shader" -nodeType "mib_data_bool_array" -nodeType "mib_data_int_array"
		 -nodeType "mib_data_scalar_array" -nodeType "mib_data_vector_array" -nodeType "mib_data_color_array"
		 -nodeType "mib_data_string_array" -nodeType "mib_data_texture_array" -nodeType "mib_data_shader_array"
		 -nodeType "mib_data_get_bool" -nodeType "mib_data_get_int" -nodeType "mib_data_get_scalar"
		 -nodeType "mib_data_get_vector" -nodeType "mib_data_get_color" -nodeType "mib_data_get_string"
		 -nodeType "mib_data_get_texture" -nodeType "mib_data_get_shader" -nodeType "mib_data_get_shader_bool"
		 -nodeType "mib_data_get_shader_int" -nodeType "mib_data_get_shader_scalar" -nodeType "mib_data_get_shader_vector"
		 -nodeType "mib_data_get_shader_color" -nodeType "user_ibl_env" -nodeType "user_ibl_rect"
		 -nodeType "mia_material_x_passes" -nodeType "mi_metallic_paint_x_passes" -nodeType "mi_car_paint_phen_x_passes"
		 -nodeType "misss_fast_shader_x_passes" -dataType "byteArray" "Mayatomr" "2014.0 - 3.11.1.4 ";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2018";
fileInfo "version" "2018";
fileInfo "cutIdentifier" "201706261615-f9658c4cfc";
fileInfo "osv" "Microsoft Windows 8 Business Edition, 64-bit  (Build 9200)\n";
createNode transform -s -n "persp";
	rename -uid "46776D03-4F29-96CF-9340-AFA6211574A3";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -436.67535533292062 860.36275327952706 -408.37235703805914 ;
	setAttr ".r" -type "double3" -50.138352729601266 -128.599999999998 0 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "779A6FB2-448E-11C2-D5C1-338447FDFC68";
	setAttr -k off ".v" no;
	setAttr ".ff" 2;
	setAttr ".ovr" 1.3;
	setAttr ".fl" 55;
	setAttr ".coi" 923.41043055297519;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" 0.17996692657470703 218.40948486328125 155.4219970703125 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
	setAttr ".dr" yes;
createNode transform -s -n "top";
	rename -uid "38F6E48F-4240-08D9-A7B4-4DB5BF450FCD";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 100.1 0 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "279C7593-4F59-E5DC-EE81-0682FEF95249";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
createNode transform -s -n "front";
	rename -uid "2465D3C0-4497-3FC7-6080-E2955F39C8F0";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 100.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "4F4A6E6A-4D1D-02DB-5726-B19F1725AAEA";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	rename -uid "041D657C-489B-FD29-709C-9E973B05F60D";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 100.1 0 0 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "849CBA5B-4DC2-52E9-FC45-76A201ACE86D";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode transform -n "rsDomeLight1";
	rename -uid "381E5994-4CD9-5906-09FA-26B402DE4D9A";
	setAttr ".r" -type "double3" 23.945384868383027 -45.454486033159398 -18.71051056310651 ;
createNode RedshiftDomeLight -n "rsDomeLightShape1" -p "rsDomeLight1";
	rename -uid "066A0C10-4534-D1BF-04B0-F09B3F2C3A7A";
	setAttr -k off ".v";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".viewportResolution" 1024;
	setAttr ".tex0" -type "string" "D:/EVERYDAY 4/Wolf realistic/Wolf//hdr.hdr";
	setAttr ".background_enable" no;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "A571286A-4114-CEE6-6029-81941432AC5D";
	setAttr -s 22 ".lnk";
	setAttr -s 22 ".slnk";
createNode displayLayerManager -n "layerManager";
	rename -uid "86881A65-4651-DED6-85D6-F1BB1322D88F";
	setAttr ".dli[1]"  1;
	setAttr -s 2 ".dli";
createNode displayLayer -n "defaultLayer";
	rename -uid "1A07857D-477C-9E5E-A907-CE90BD46C3B8";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "03DFD99E-4CD8-075A-43CA-3C8B5AE5DFCB";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "1BC0935B-40EF-330F-2096-E7829AE4CC0F";
	setAttr ".g" yes;
createNode ilrOptionsNode -s -n "TurtleRenderOptions";
	rename -uid "352ECF1E-424F-7A8F-F73D-56BBB7AA3574";
lockNode -l 1 ;
createNode ilrUIOptionsNode -s -n "TurtleUIOptions";
	rename -uid "C09A83D2-4D9E-CA99-0D5C-3AA102CD469F";
lockNode -l 1 ;
createNode ilrBakeLayerManager -s -n "TurtleBakeLayerManager";
	rename -uid "6A19A9BA-4368-9412-E887-E69AE79C7ABF";
lockNode -l 1 ;
createNode ilrBakeLayer -s -n "TurtleDefaultBakeLayer";
	rename -uid "43C7FBF4-447B-13CD-526E-A58DE856E095";
lockNode -l 1 ;
createNode reference -n "wolf_rigRN";
	rename -uid "121BE305-4673-9995-330E-31B7FA9C23CE";
	setAttr -s 62 ".phl";
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
	setAttr ".phl[57]" 0;
	setAttr ".phl[58]" 0;
	setAttr ".phl[59]" 0;
	setAttr ".phl[60]" 0;
	setAttr ".phl[61]" 0;
	setAttr ".phl[62]" 0;
	setAttr ".ed" -type "dataReferenceEdits" 
		"wolf_rigRN"
		"wolf_rigRN" 0
		"wolf_rigRN" 114
		2 "|wolf_rig:Group|wolf_rig:Main|wolf_rig:MotionSystem|wolf_rig:FKSystem|wolf_rig:FKParentConstraintToHead_M|wolf_rig:FKOffsetJaw_M|wolf_rig:FKExtraJaw_M|wolf_rig:FKJaw_M" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|wolf_rig:Group|wolf_rig:Main|wolf_rig:MotionSystem|wolf_rig:IKSystem|wolf_rig:IKHandle|wolf_rig:IKSplineNHandle_M" 
		"translate" " -type \"double3\" -3.1232647878589979e-10 216.82121761656969738 123.20546273690841588"
		
		2 "|wolf_rig:Group|wolf_rig:Main|wolf_rig:MotionSystem|wolf_rig:IKSystem|wolf_rig:IKHandle|wolf_rig:IKSplineNHandle_M" 
		"rotate" " -type \"double3\" 89.99999878909541451 -55.07479628766856905 90.00000000059523586"
		
		2 "|wolf_rig:Group|wolf_rig:Main|wolf_rig:MotionSystem|wolf_rig:IKSystem|wolf_rig:IKHandle|wolf_rig:IKSpineHandle_M" 
		"rotate" " -type \"double3\" -89.99999822420120665 -86.11187090107695496 -90.00000056125527692"
		
		2 "|wolf_rig:Group|wolf_rig:Geometry|wolf_rig:bodyFur4|wolf_rig:bodyFurShape4" 
		"instObjGroups.objectGroups" " -s 6"
		2 "|wolf_rig:Group|wolf_rig:Geometry|wolf_rig:bodyFur3|wolf_rig:bodyFurShape3" 
		"instObjGroups.objectGroups" " -s 6"
		2 "|wolf_rig:Group|wolf_rig:Geometry|wolf_rig:bodyFur2|wolf_rig:bodyFurShape2" 
		"instObjGroups.objectGroups" " -s 6"
		2 "|wolf_rig:Group|wolf_rig:Geometry|wolf_rig:bodyFur1|wolf_rig:bodyFurShape1" 
		"instObjGroups.objectGroups" " -s 6"
		2 "|wolf_rig:Group|wolf_rig:Geometry|wolf_rig:bodyFur|wolf_rig:bodyFurShape" 
		"instObjGroups.objectGroups" " -s 6"
		2 "|wolf_rig:Group|wolf_rig:Geometry|wolf_rig:eye_l|wolf_rig:eye_lShape" 
		"instObjGroups.objectGroups" " -s 6"
		2 "|wolf_rig:Group|wolf_rig:Geometry|wolf_rig:eye_r|wolf_rig:eye_rShape" 
		"instObjGroups.objectGroups" " -s 6"
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
		2 "wolf_rig:geo" "displayType" " 0"
		2 "wolf_rig:wolf_rig2_file7" "fileTextureName" " -type \"string\" \"D:/EVERYDAY 4/Wolf realistic/Wolf//wolf_a_head_nml.tga\""
		
		2 "wolf_rig:wolf_rig2_file8" "fileTextureName" " -type \"string\" \"D:/EVERYDAY 4/Wolf realistic/Wolf//wolf_a_body_alpha_col_v02.tga\""
		
		3 "|wolf_rig:Group|wolf_rig:Geometry|wolf_rig:bodyTailFur|wolf_rig:bodyTailFurShape.instObjGroups" 
		"wolf_rig:wolf_rig2_blinn7SG.dagSetMembers" "-na"
		3 "wolf_rig:wolf_rig2_blinn5SG.memberWireframeColor" "|wolf_rig:Group|wolf_rig:Geometry|wolf_rig:bodyFur1|wolf_rig:bodyFurShape1.instObjGroups.objectGroups[0].objectGrpColor" 
		""
		3 "|wolf_rig:Group|wolf_rig:Geometry|wolf_rig:eye_blink_l|wolf_rig:eye_blink_lShape.instObjGroups.objectGroups[0]" 
		"wolf_rig:wolf_rig2_blinn4SG.dagSetMembers" "-na"
		3 "|wolf_rig:Group|wolf_rig:Geometry|wolf_rig:eye_blink_r|wolf_rig:eye_blink_rShape.instObjGroups.objectGroups[0]" 
		"wolf_rig:wolf_rig2_blinn4SG.dagSetMembers" "-na"
		3 "|wolf_rig:Group|wolf_rig:Geometry|wolf_rig:body_main|wolf_rig:body_mainShape.instObjGroups.objectGroups[0]" 
		"wolf_rig:wolf_rig2_blinn4SG.dagSetMembers" "-na"
		3 "|wolf_rig:Group|wolf_rig:Geometry|wolf_rig:teethLower|wolf_rig:teethLowerShape.instObjGroups.objectGroups[0]" 
		"wolf_rig:wolf_rig2_blinn8SG.dagSetMembers" "-na"
		3 "|wolf_rig:Group|wolf_rig:Geometry|wolf_rig:tongue|wolf_rig:tongueShape.instObjGroups.objectGroups[1]" 
		"wolf_rig:wolf_rig2_blinn8SG.dagSetMembers" "-na"
		3 "|wolf_rig:Group|wolf_rig:Geometry|wolf_rig:wolf_rig2_upperTeeth|wolf_rig:wolf_rig2_upperTeethShape.instObjGroups" 
		"wolf_rig:wolf_rig2_blinn8SG.dagSetMembers" "-na"
		3 "wolf_rig:wolf_rig2_blinn2SG.memberWireframeColor" "|wolf_rig:Group|wolf_rig:Geometry|wolf_rig:eye_l|wolf_rig:eye_lShape.instObjGroups.objectGroups[0].objectGrpColor" 
		""
		3 "wolf_rig:wolf_rig2_blinn5SG.memberWireframeColor" "|wolf_rig:Group|wolf_rig:Geometry|wolf_rig:bodyFur2|wolf_rig:bodyFurShape2.instObjGroups.objectGroups[0].objectGrpColor" 
		""
		3 "wolf_rig:wolf_rig2_blinn1SG.memberWireframeColor" "|wolf_rig:Group|wolf_rig:Geometry|wolf_rig:body_main|wolf_rig:body_mainShape.instObjGroups.objectGroups[1].objectGrpColor" 
		""
		3 "wolf_rig:wolf_rig2_blinn4SG.memberWireframeColor" "|wolf_rig:Group|wolf_rig:Geometry|wolf_rig:body_main|wolf_rig:body_mainShape.instObjGroups.objectGroups[0].objectGrpColor" 
		""
		3 "wolf_rig:wolf_rig2_blinn5SG.memberWireframeColor" "|wolf_rig:Group|wolf_rig:Geometry|wolf_rig:bodyFur3|wolf_rig:bodyFurShape3.instObjGroups.objectGroups[0].objectGrpColor" 
		""
		3 "|wolf_rig:Group|wolf_rig:Geometry|wolf_rig:wolf_rig2_lens|wolf_rig:wolf_rig2_lensShape.instObjGroups" 
		"wolf_rig:wolf_rig2_blinn3SG.dagSetMembers" "-na"
		3 "|wolf_rig:Group|wolf_rig:Geometry|wolf_rig:bodyFur1|wolf_rig:bodyFurShape1.instObjGroups.objectGroups[0]" 
		"wolf_rig:wolf_rig2_blinn5SG.dagSetMembers" "-na"
		3 "|wolf_rig:Group|wolf_rig:Geometry|wolf_rig:bodyFur2|wolf_rig:bodyFurShape2.instObjGroups.objectGroups[0]" 
		"wolf_rig:wolf_rig2_blinn5SG.dagSetMembers" "-na"
		3 "|wolf_rig:Group|wolf_rig:Geometry|wolf_rig:bodyFur4|wolf_rig:bodyFurShape4.instObjGroups.objectGroups[0]" 
		"wolf_rig:wolf_rig2_blinn5SG.dagSetMembers" "-na"
		3 "|wolf_rig:Group|wolf_rig:Geometry|wolf_rig:bodyFur3|wolf_rig:bodyFurShape3.instObjGroups.objectGroups[0]" 
		"wolf_rig:wolf_rig2_blinn5SG.dagSetMembers" "-na"
		3 "|wolf_rig:Group|wolf_rig:Geometry|wolf_rig:eye_r|wolf_rig:eye_rShape.instObjGroups.objectGroups[0]" 
		"wolf_rig:wolf_rig2_blinn2SG.dagSetMembers" "-na"
		3 "|wolf_rig:Group|wolf_rig:Geometry|wolf_rig:eye_l|wolf_rig:eye_lShape.instObjGroups.objectGroups[0]" 
		"wolf_rig:wolf_rig2_blinn2SG.dagSetMembers" "-na"
		3 "wolf_rig:wolf_rig2_blinn8SG.memberWireframeColor" "|wolf_rig:Group|wolf_rig:Geometry|wolf_rig:tongue|wolf_rig:tongueShape.instObjGroups.objectGroups[1].objectGrpColor" 
		""
		3 "|wolf_rig:Group|wolf_rig:Geometry|wolf_rig:bodyFur|wolf_rig:bodyFurShape.instObjGroups.objectGroups[0]" 
		"wolf_rig:wolf_rig2_blinn6SG.dagSetMembers" "-na"
		3 "wolf_rig:wolf_rig2_blinn8SG.memberWireframeColor" "|wolf_rig:Group|wolf_rig:Geometry|wolf_rig:teethLower|wolf_rig:teethLowerShape.instObjGroups.objectGroups[0].objectGrpColor" 
		""
		3 "|wolf_rig:Group|wolf_rig:Geometry|wolf_rig:eye_blink_l|wolf_rig:eye_blink_lShape.instObjGroups.objectGroups[1]" 
		"wolf_rig:wolf_rig2_blinn1SG.dagSetMembers" "-na"
		3 "|wolf_rig:Group|wolf_rig:Geometry|wolf_rig:eye_blink_r|wolf_rig:eye_blink_rShape.instObjGroups.objectGroups[1]" 
		"wolf_rig:wolf_rig2_blinn1SG.dagSetMembers" "-na"
		3 "|wolf_rig:Group|wolf_rig:Geometry|wolf_rig:body_main|wolf_rig:body_mainShape.instObjGroups.objectGroups[1]" 
		"wolf_rig:wolf_rig2_blinn1SG.dagSetMembers" "-na"
		3 "wolf_rig:wolf_rig2_blinn1SG.memberWireframeColor" "|wolf_rig:Group|wolf_rig:Geometry|wolf_rig:eye_blink_r|wolf_rig:eye_blink_rShape.instObjGroups.objectGroups[1].objectGrpColor" 
		""
		3 "wolf_rig:wolf_rig2_blinn4SG.memberWireframeColor" "|wolf_rig:Group|wolf_rig:Geometry|wolf_rig:eye_blink_r|wolf_rig:eye_blink_rShape.instObjGroups.objectGroups[0].objectGrpColor" 
		""
		3 "wolf_rig:wolf_rig2_blinn5SG.memberWireframeColor" "|wolf_rig:Group|wolf_rig:Geometry|wolf_rig:bodyFur4|wolf_rig:bodyFurShape4.instObjGroups.objectGroups[0].objectGrpColor" 
		""
		3 "wolf_rig:wolf_rig2_blinn6SG.memberWireframeColor" "|wolf_rig:Group|wolf_rig:Geometry|wolf_rig:bodyFur|wolf_rig:bodyFurShape.instObjGroups.objectGroups[0].objectGrpColor" 
		""
		3 "wolf_rig:wolf_rig2_blinn1SG.memberWireframeColor" "|wolf_rig:Group|wolf_rig:Geometry|wolf_rig:eye_blink_l|wolf_rig:eye_blink_lShape.instObjGroups.objectGroups[1].objectGrpColor" 
		""
		3 "wolf_rig:wolf_rig2_blinn4SG.memberWireframeColor" "|wolf_rig:Group|wolf_rig:Geometry|wolf_rig:eye_blink_l|wolf_rig:eye_blink_lShape.instObjGroups.objectGroups[0].objectGrpColor" 
		""
		3 "wolf_rig:wolf_rig2_blinn2SG.memberWireframeColor" "|wolf_rig:Group|wolf_rig:Geometry|wolf_rig:eye_r|wolf_rig:eye_rShape.instObjGroups.objectGroups[0].objectGrpColor" 
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
		5 3 "wolf_rigRN" "|wolf_rig:Group|wolf_rig:Geometry|wolf_rig:bodyFur1|wolf_rig:bodyFurShape1.instObjGroups.objectGroups[0]" 
		"wolf_rigRN.placeHolderList[9]" "wolf_rig:wolf_rig2_blinn5SG.dsm"
		5 4 "wolf_rigRN" "|wolf_rig:Group|wolf_rig:Geometry|wolf_rig:bodyFur1|wolf_rig:bodyFurShape1.instObjGroups.objectGroups[0].objectGrpColor" 
		"wolf_rigRN.placeHolderList[10]" ""
		5 3 "wolf_rigRN" "|wolf_rig:Group|wolf_rig:Geometry|wolf_rig:bodyFur|wolf_rig:bodyFurShape.instObjGroups.objectGroups[0]" 
		"wolf_rigRN.placeHolderList[11]" "wolf_rig:wolf_rig2_blinn6SG.dsm"
		5 4 "wolf_rigRN" "|wolf_rig:Group|wolf_rig:Geometry|wolf_rig:bodyFur|wolf_rig:bodyFurShape.instObjGroups.objectGroups[0].objectGrpColor" 
		"wolf_rigRN.placeHolderList[12]" ""
		5 3 "wolf_rigRN" "|wolf_rig:Group|wolf_rig:Geometry|wolf_rig:bodyTailFur|wolf_rig:bodyTailFurShape.instObjGroups" 
		"wolf_rigRN.placeHolderList[13]" "wolf_rig:wolf_rig2_blinn7SG.dsm"
		5 3 "wolf_rigRN" "|wolf_rig:Group|wolf_rig:Geometry|wolf_rig:eye_l|wolf_rig:eye_lShape.instObjGroups.objectGroups[0]" 
		"wolf_rigRN.placeHolderList[14]" "wolf_rig:wolf_rig2_blinn2SG.dsm"
		5 4 "wolf_rigRN" "|wolf_rig:Group|wolf_rig:Geometry|wolf_rig:eye_l|wolf_rig:eye_lShape.instObjGroups.objectGroups[0].objectGrpColor" 
		"wolf_rigRN.placeHolderList[15]" ""
		5 3 "wolf_rigRN" "|wolf_rig:Group|wolf_rig:Geometry|wolf_rig:eye_r|wolf_rig:eye_rShape.instObjGroups.objectGroups[0]" 
		"wolf_rigRN.placeHolderList[16]" "wolf_rig:wolf_rig2_blinn2SG.dsm"
		5 4 "wolf_rigRN" "|wolf_rig:Group|wolf_rig:Geometry|wolf_rig:eye_r|wolf_rig:eye_rShape.instObjGroups.objectGroups[0].objectGrpColor" 
		"wolf_rigRN.placeHolderList[17]" ""
		5 3 "wolf_rigRN" "|wolf_rig:Group|wolf_rig:Geometry|wolf_rig:wolf_rig2_upperTeeth|wolf_rig:wolf_rig2_upperTeethShape.instObjGroups" 
		"wolf_rigRN.placeHolderList[18]" "wolf_rig:wolf_rig2_blinn8SG.dsm"
		5 3 "wolf_rigRN" "|wolf_rig:Group|wolf_rig:Geometry|wolf_rig:wolf_rig2_lens|wolf_rig:wolf_rig2_lensShape.instObjGroups" 
		"wolf_rigRN.placeHolderList[19]" "wolf_rig:wolf_rig2_blinn3SG.dsm"
		5 3 "wolf_rigRN" "|wolf_rig:Group|wolf_rig:Geometry|wolf_rig:teethLower|wolf_rig:teethLowerShape.instObjGroups.objectGroups[0]" 
		"wolf_rigRN.placeHolderList[20]" "wolf_rig:wolf_rig2_blinn8SG.dsm"
		5 4 "wolf_rigRN" "|wolf_rig:Group|wolf_rig:Geometry|wolf_rig:teethLower|wolf_rig:teethLowerShape.instObjGroups.objectGroups[0].objectGrpColor" 
		"wolf_rigRN.placeHolderList[21]" ""
		5 3 "wolf_rigRN" "|wolf_rig:Group|wolf_rig:Geometry|wolf_rig:tongue|wolf_rig:tongueShape.instObjGroups.objectGroups[1]" 
		"wolf_rigRN.placeHolderList[22]" "wolf_rig:wolf_rig2_blinn8SG.dsm"
		5 4 "wolf_rigRN" "|wolf_rig:Group|wolf_rig:Geometry|wolf_rig:tongue|wolf_rig:tongueShape.instObjGroups.objectGroups[1].objectGrpColor" 
		"wolf_rigRN.placeHolderList[23]" ""
		5 3 "wolf_rigRN" "|wolf_rig:Group|wolf_rig:Geometry|wolf_rig:body_main|wolf_rig:body_mainShape.instObjGroups.objectGroups[0]" 
		"wolf_rigRN.placeHolderList[24]" "wolf_rig:wolf_rig2_blinn4SG.dsm"
		5 4 "wolf_rigRN" "|wolf_rig:Group|wolf_rig:Geometry|wolf_rig:body_main|wolf_rig:body_mainShape.instObjGroups.objectGroups[0].objectGrpColor" 
		"wolf_rigRN.placeHolderList[25]" ""
		5 3 "wolf_rigRN" "|wolf_rig:Group|wolf_rig:Geometry|wolf_rig:body_main|wolf_rig:body_mainShape.instObjGroups.objectGroups[1]" 
		"wolf_rigRN.placeHolderList[26]" "wolf_rig:wolf_rig2_blinn1SG.dsm"
		5 4 "wolf_rigRN" "|wolf_rig:Group|wolf_rig:Geometry|wolf_rig:body_main|wolf_rig:body_mainShape.instObjGroups.objectGroups[1].objectGrpColor" 
		"wolf_rigRN.placeHolderList[27]" ""
		5 3 "wolf_rigRN" "|wolf_rig:Group|wolf_rig:Geometry|wolf_rig:eye_blink_r|wolf_rig:eye_blink_rShape.instObjGroups.objectGroups[0]" 
		"wolf_rigRN.placeHolderList[28]" "wolf_rig:wolf_rig2_blinn4SG.dsm"
		5 4 "wolf_rigRN" "|wolf_rig:Group|wolf_rig:Geometry|wolf_rig:eye_blink_r|wolf_rig:eye_blink_rShape.instObjGroups.objectGroups[0].objectGrpColor" 
		"wolf_rigRN.placeHolderList[29]" ""
		5 3 "wolf_rigRN" "|wolf_rig:Group|wolf_rig:Geometry|wolf_rig:eye_blink_r|wolf_rig:eye_blink_rShape.instObjGroups.objectGroups[1]" 
		"wolf_rigRN.placeHolderList[30]" "wolf_rig:wolf_rig2_blinn1SG.dsm"
		5 4 "wolf_rigRN" "|wolf_rig:Group|wolf_rig:Geometry|wolf_rig:eye_blink_r|wolf_rig:eye_blink_rShape.instObjGroups.objectGroups[1].objectGrpColor" 
		"wolf_rigRN.placeHolderList[31]" ""
		5 3 "wolf_rigRN" "|wolf_rig:Group|wolf_rig:Geometry|wolf_rig:eye_blink_l|wolf_rig:eye_blink_lShape.instObjGroups.objectGroups[0]" 
		"wolf_rigRN.placeHolderList[32]" "wolf_rig:wolf_rig2_blinn4SG.dsm"
		5 4 "wolf_rigRN" "|wolf_rig:Group|wolf_rig:Geometry|wolf_rig:eye_blink_l|wolf_rig:eye_blink_lShape.instObjGroups.objectGroups[0].objectGrpColor" 
		"wolf_rigRN.placeHolderList[33]" ""
		5 3 "wolf_rigRN" "|wolf_rig:Group|wolf_rig:Geometry|wolf_rig:eye_blink_l|wolf_rig:eye_blink_lShape.instObjGroups.objectGroups[1]" 
		"wolf_rigRN.placeHolderList[34]" "wolf_rig:wolf_rig2_blinn1SG.dsm"
		5 4 "wolf_rigRN" "|wolf_rig:Group|wolf_rig:Geometry|wolf_rig:eye_blink_l|wolf_rig:eye_blink_lShape.instObjGroups.objectGroups[1].objectGrpColor" 
		"wolf_rigRN.placeHolderList[35]" ""
		5 3 "wolf_rigRN" "wolf_rig:wolf_rig2_file1.outColor" "wolf_rigRN.placeHolderList[36]" 
		""
		5 3 "wolf_rigRN" "wolf_rig:wolf_rig2_file1.message" "wolf_rigRN.placeHolderList[37]" 
		""
		5 3 "wolf_rigRN" "wolf_rig:wolf_rig2_file3.outColor" "wolf_rigRN.placeHolderList[38]" 
		""
		5 3 "wolf_rigRN" "wolf_rig:wolf_rig2_file3.message" "wolf_rigRN.placeHolderList[39]" 
		""
		5 3 "wolf_rigRN" "wolf_rig:wolf_rig2_file4.outColor" "wolf_rigRN.placeHolderList[40]" 
		""
		5 3 "wolf_rigRN" "wolf_rig:wolf_rig2_file4.outColor" "wolf_rigRN.placeHolderList[41]" 
		""
		5 3 "wolf_rigRN" "wolf_rig:wolf_rig2_file4.message" "wolf_rigRN.placeHolderList[42]" 
		""
		5 3 "wolf_rigRN" "wolf_rig:wolf_rig2_file4.message" "wolf_rigRN.placeHolderList[43]" 
		""
		5 3 "wolf_rigRN" "wolf_rig:wolf_rig2_file5.outColor" "wolf_rigRN.placeHolderList[44]" 
		""
		5 3 "wolf_rigRN" "wolf_rig:wolf_rig2_file5.message" "wolf_rigRN.placeHolderList[45]" 
		""
		5 3 "wolf_rigRN" "wolf_rig:wolf_rig2_file6.outColor" "wolf_rigRN.placeHolderList[46]" 
		""
		5 3 "wolf_rigRN" "wolf_rig:wolf_rig2_file6.message" "wolf_rigRN.placeHolderList[47]" 
		""
		5 3 "wolf_rigRN" "wolf_rig:wolf_rig2_file8.outColor" "wolf_rigRN.placeHolderList[48]" 
		""
		5 3 "wolf_rigRN" "wolf_rig:wolf_rig2_file8.outColor" "wolf_rigRN.placeHolderList[49]" 
		""
		5 3 "wolf_rigRN" "wolf_rig:wolf_rig2_file8.message" "wolf_rigRN.placeHolderList[50]" 
		""
		5 3 "wolf_rigRN" "wolf_rig:wolf_rig2_file10.outColor" "wolf_rigRN.placeHolderList[51]" 
		""
		5 3 "wolf_rigRN" "wolf_rig:wolf_rig2_file10.outColor" "wolf_rigRN.placeHolderList[52]" 
		""
		5 3 "wolf_rigRN" "wolf_rig:wolf_rig2_file10.message" "wolf_rigRN.placeHolderList[53]" 
		""
		5 3 "wolf_rigRN" "wolf_rig:wolf_rig2_file10.message" "wolf_rigRN.placeHolderList[54]" 
		""
		5 3 "wolf_rigRN" "wolf_rig:wolf_rig2_file11.outColor" "wolf_rigRN.placeHolderList[55]" 
		""
		5 3 "wolf_rigRN" "wolf_rig:wolf_rig2_file11.outColor" "wolf_rigRN.placeHolderList[56]" 
		""
		5 3 "wolf_rigRN" "wolf_rig:wolf_rig2_file11.message" "wolf_rigRN.placeHolderList[57]" 
		""
		5 3 "wolf_rigRN" "wolf_rig:wolf_rig2_file11.message" "wolf_rigRN.placeHolderList[58]" 
		""
		5 3 "wolf_rigRN" "wolf_rig:wolf_rig2_file12.outColor" "wolf_rigRN.placeHolderList[59]" 
		""
		5 3 "wolf_rigRN" "wolf_rig:wolf_rig2_file12.message" "wolf_rigRN.placeHolderList[60]" 
		""
		5 3 "wolf_rigRN" "wolf_rig:wolf_rig2_file14.outColor" "wolf_rigRN.placeHolderList[61]" 
		""
		5 3 "wolf_rigRN" "wolf_rig:wolf_rig2_file14.message" "wolf_rigRN.placeHolderList[62]" 
		"";
	setAttr ".ptag" -type "string" "";
lockNode -l 1 ;
createNode mentalrayItemsList -s -n "mentalrayItemsList";
	rename -uid "33897DBA-4011-8DE4-57C3-458CFA7E0BC9";
createNode mentalrayGlobals -s -n "mentalrayGlobals";
	rename -uid "ECAA8F6D-4418-AB95-62C8-4EBBB86A05C4";
	addAttr -s false -ci true -h true -sn "sunAndSkyShader" -ln "sunAndSkyShader" -at "message";
	setAttr ".rvb" 3;
	setAttr ".ivb" 0;
createNode mentalrayOptions -s -n "miDefaultOptions";
	rename -uid "91268445-4F95-BEC7-7F74-A985D4D4EACF";
	addAttr -ci true -m -sn "stringOptions" -ln "stringOptions" -at "compound" -nc 
		3;
	addAttr -ci true -sn "name" -ln "name" -dt "string" -p "stringOptions";
	addAttr -ci true -sn "value" -ln "value" -dt "string" -p "stringOptions";
	addAttr -ci true -sn "type" -ln "type" -dt "string" -p "stringOptions";
	addAttr -ci true -sn "miSamplesQualityR" -ln "miSamplesQualityR" -dv 0.25 -min 0.01 
		-max 9999999.9000000004 -smn 0.1 -smx 2 -at "double";
	addAttr -ci true -sn "miSamplesQualityG" -ln "miSamplesQualityG" -dv 0.25 -min 0.01 
		-max 9999999.9000000004 -smn 0.1 -smx 2 -at "double";
	addAttr -ci true -sn "miSamplesQualityB" -ln "miSamplesQualityB" -dv 0.25 -min 0.01 
		-max 9999999.9000000004 -smn 0.1 -smx 2 -at "double";
	addAttr -ci true -sn "miSamplesQualityA" -ln "miSamplesQualityA" -dv 0.25 -min 0.01 
		-max 9999999.9000000004 -smn 0.1 -smx 2 -at "double";
	addAttr -ci true -sn "miSamplesMin" -ln "miSamplesMin" -dv 1 -min 0.1 -at "double";
	addAttr -ci true -sn "miSamplesMax" -ln "miSamplesMax" -dv 100 -min 0.1 -at "double";
	addAttr -ci true -sn "miSamplesErrorCutoffR" -ln "miSamplesErrorCutoffR" -min 0 
		-max 1 -at "double";
	addAttr -ci true -sn "miSamplesErrorCutoffG" -ln "miSamplesErrorCutoffG" -min 0 
		-max 1 -at "double";
	addAttr -ci true -sn "miSamplesErrorCutoffB" -ln "miSamplesErrorCutoffB" -min 0 
		-max 1 -at "double";
	addAttr -ci true -sn "miSamplesErrorCutoffA" -ln "miSamplesErrorCutoffA" -min 0 
		-max 1 -at "double";
	addAttr -ci true -sn "miSamplesPerObject" -ln "miSamplesPerObject" -min 0 -max 1 
		-at "bool";
	addAttr -ci true -sn "miRastShadingSamples" -ln "miRastShadingSamples" -dv 1 -min 
		0.25 -at "double";
	addAttr -ci true -sn "miRastSamples" -ln "miRastSamples" -dv 3 -min 1 -at "long";
	addAttr -ci true -sn "miContrastAsColor" -ln "miContrastAsColor" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "miProgMaxTime" -ln "miProgMaxTime" -min 0 -at "long";
	addAttr -ci true -sn "miProgSubsampleSize" -ln "miProgSubsampleSize" -dv 4 -min 
		1 -at "long";
	addAttr -ci true -sn "miTraceCameraMotionVectors" -ln "miTraceCameraMotionVectors" 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -sn "miTraceCameraClip" -ln "miTraceCameraClip" -min 0 -max 1 -at "bool";
	setAttr -s 45 ".stringOptions";
	setAttr ".stringOptions[0].name" -type "string" "rast motion factor";
	setAttr ".stringOptions[0].value" -type "string" "1.0";
	setAttr ".stringOptions[0].type" -type "string" "scalar";
	setAttr ".stringOptions[1].name" -type "string" "rast transparency depth";
	setAttr ".stringOptions[1].value" -type "string" "8";
	setAttr ".stringOptions[1].type" -type "string" "integer";
	setAttr ".stringOptions[2].name" -type "string" "rast useopacity";
	setAttr ".stringOptions[2].value" -type "string" "true";
	setAttr ".stringOptions[2].type" -type "string" "boolean";
	setAttr ".stringOptions[3].name" -type "string" "importon";
	setAttr ".stringOptions[3].value" -type "string" "false";
	setAttr ".stringOptions[3].type" -type "string" "boolean";
	setAttr ".stringOptions[4].name" -type "string" "importon density";
	setAttr ".stringOptions[4].value" -type "string" "1.0";
	setAttr ".stringOptions[4].type" -type "string" "scalar";
	setAttr ".stringOptions[5].name" -type "string" "importon merge";
	setAttr ".stringOptions[5].value" -type "string" "0.0";
	setAttr ".stringOptions[5].type" -type "string" "scalar";
	setAttr ".stringOptions[6].name" -type "string" "importon trace depth";
	setAttr ".stringOptions[6].value" -type "string" "0";
	setAttr ".stringOptions[6].type" -type "string" "integer";
	setAttr ".stringOptions[7].name" -type "string" "importon traverse";
	setAttr ".stringOptions[7].value" -type "string" "true";
	setAttr ".stringOptions[7].type" -type "string" "boolean";
	setAttr ".stringOptions[8].name" -type "string" "shadowmap pixel samples";
	setAttr ".stringOptions[8].value" -type "string" "3";
	setAttr ".stringOptions[8].type" -type "string" "integer";
	setAttr ".stringOptions[9].name" -type "string" "ambient occlusion";
	setAttr ".stringOptions[9].value" -type "string" "false";
	setAttr ".stringOptions[9].type" -type "string" "boolean";
	setAttr ".stringOptions[10].name" -type "string" "ambient occlusion rays";
	setAttr ".stringOptions[10].value" -type "string" "256";
	setAttr ".stringOptions[10].type" -type "string" "integer";
	setAttr ".stringOptions[11].name" -type "string" "ambient occlusion cache";
	setAttr ".stringOptions[11].value" -type "string" "false";
	setAttr ".stringOptions[11].type" -type "string" "boolean";
	setAttr ".stringOptions[12].name" -type "string" "ambient occlusion cache density";
	setAttr ".stringOptions[12].value" -type "string" "1.0";
	setAttr ".stringOptions[12].type" -type "string" "scalar";
	setAttr ".stringOptions[13].name" -type "string" "ambient occlusion cache points";
	setAttr ".stringOptions[13].value" -type "string" "64";
	setAttr ".stringOptions[13].type" -type "string" "integer";
	setAttr ".stringOptions[14].name" -type "string" "irradiance particles";
	setAttr ".stringOptions[14].value" -type "string" "false";
	setAttr ".stringOptions[14].type" -type "string" "boolean";
	setAttr ".stringOptions[15].name" -type "string" "irradiance particles rays";
	setAttr ".stringOptions[15].value" -type "string" "256";
	setAttr ".stringOptions[15].type" -type "string" "integer";
	setAttr ".stringOptions[16].name" -type "string" "irradiance particles interpolate";
	setAttr ".stringOptions[16].value" -type "string" "1";
	setAttr ".stringOptions[16].type" -type "string" "integer";
	setAttr ".stringOptions[17].name" -type "string" "irradiance particles interppoints";
	setAttr ".stringOptions[17].value" -type "string" "64";
	setAttr ".stringOptions[17].type" -type "string" "integer";
	setAttr ".stringOptions[18].name" -type "string" "irradiance particles indirect passes";
	setAttr ".stringOptions[18].value" -type "string" "0";
	setAttr ".stringOptions[18].type" -type "string" "integer";
	setAttr ".stringOptions[19].name" -type "string" "irradiance particles scale";
	setAttr ".stringOptions[19].value" -type "string" "1.0";
	setAttr ".stringOptions[19].type" -type "string" "scalar";
	setAttr ".stringOptions[20].name" -type "string" "irradiance particles env";
	setAttr ".stringOptions[20].value" -type "string" "true";
	setAttr ".stringOptions[20].type" -type "string" "boolean";
	setAttr ".stringOptions[21].name" -type "string" "irradiance particles env rays";
	setAttr ".stringOptions[21].value" -type "string" "256";
	setAttr ".stringOptions[21].type" -type "string" "integer";
	setAttr ".stringOptions[22].name" -type "string" "irradiance particles env scale";
	setAttr ".stringOptions[22].value" -type "string" "1";
	setAttr ".stringOptions[22].type" -type "string" "integer";
	setAttr ".stringOptions[23].name" -type "string" "irradiance particles rebuild";
	setAttr ".stringOptions[23].value" -type "string" "true";
	setAttr ".stringOptions[23].type" -type "string" "boolean";
	setAttr ".stringOptions[24].name" -type "string" "irradiance particles file";
	setAttr ".stringOptions[24].value" -type "string" "";
	setAttr ".stringOptions[24].type" -type "string" "string";
	setAttr ".stringOptions[25].name" -type "string" "geom displace motion factor";
	setAttr ".stringOptions[25].value" -type "string" "1.0";
	setAttr ".stringOptions[25].type" -type "string" "scalar";
	setAttr ".stringOptions[26].name" -type "string" "contrast all buffers";
	setAttr ".stringOptions[26].value" -type "string" "true";
	setAttr ".stringOptions[26].type" -type "string" "boolean";
	setAttr ".stringOptions[27].name" -type "string" "finalgather normal tolerance";
	setAttr ".stringOptions[27].value" -type "string" "25.842";
	setAttr ".stringOptions[27].type" -type "string" "scalar";
	setAttr ".stringOptions[28].name" -type "string" "trace camera clip";
	setAttr ".stringOptions[28].value" -type "string" "false";
	setAttr ".stringOptions[28].type" -type "string" "boolean";
	setAttr ".stringOptions[29].name" -type "string" "unified sampling";
	setAttr ".stringOptions[29].value" -type "string" "true";
	setAttr ".stringOptions[29].type" -type "string" "boolean";
	setAttr ".stringOptions[30].name" -type "string" "samples quality";
	setAttr ".stringOptions[30].value" -type "string" "0.5 0.5 0.5 0.5";
	setAttr ".stringOptions[30].type" -type "string" "color";
	setAttr ".stringOptions[31].name" -type "string" "samples min";
	setAttr ".stringOptions[31].value" -type "string" "1.0";
	setAttr ".stringOptions[31].type" -type "string" "scalar";
	setAttr ".stringOptions[32].name" -type "string" "samples max";
	setAttr ".stringOptions[32].value" -type "string" "100.0";
	setAttr ".stringOptions[32].type" -type "string" "scalar";
	setAttr ".stringOptions[33].name" -type "string" "samples error cutoff";
	setAttr ".stringOptions[33].value" -type "string" "0.0 0.0 0.0 0.0";
	setAttr ".stringOptions[33].type" -type "string" "color";
	setAttr ".stringOptions[34].name" -type "string" "samples per object";
	setAttr ".stringOptions[34].value" -type "string" "false";
	setAttr ".stringOptions[34].type" -type "string" "boolean";
	setAttr ".stringOptions[35].name" -type "string" "progressive";
	setAttr ".stringOptions[35].value" -type "string" "false";
	setAttr ".stringOptions[35].type" -type "string" "boolean";
	setAttr ".stringOptions[36].name" -type "string" "progressive max time";
	setAttr ".stringOptions[36].value" -type "string" "0";
	setAttr ".stringOptions[36].type" -type "string" "integer";
	setAttr ".stringOptions[37].name" -type "string" "progressive subsampling size";
	setAttr ".stringOptions[37].value" -type "string" "1";
	setAttr ".stringOptions[37].type" -type "string" "integer";
	setAttr ".stringOptions[38].name" -type "string" "iray";
	setAttr ".stringOptions[38].value" -type "string" "false";
	setAttr ".stringOptions[38].type" -type "string" "boolean";
	setAttr ".stringOptions[39].name" -type "string" "light relative scale";
	setAttr ".stringOptions[39].value" -type "string" "0.31831";
	setAttr ".stringOptions[39].type" -type "string" "scalar";
	setAttr ".stringOptions[40].name" -type "string" "trace camera motion vectors";
	setAttr ".stringOptions[40].value" -type "string" "false";
	setAttr ".stringOptions[40].type" -type "string" "boolean";
	setAttr ".stringOptions[41].name" -type "string" "ray differentials";
	setAttr ".stringOptions[41].value" -type "string" "true";
	setAttr ".stringOptions[41].type" -type "string" "boolean";
	setAttr ".stringOptions[42].name" -type "string" "environment lighting mode";
	setAttr ".stringOptions[42].value" -type "string" "off";
	setAttr ".stringOptions[42].type" -type "string" "string";
	setAttr ".stringOptions[43].name" -type "string" "environment lighting quality";
	setAttr ".stringOptions[43].value" -type "string" "0.167";
	setAttr ".stringOptions[43].type" -type "string" "scalar";
	setAttr ".stringOptions[44].name" -type "string" "environment lighting shadow";
	setAttr ".stringOptions[44].value" -type "string" "transparent";
	setAttr ".stringOptions[44].type" -type "string" "string";
	setAttr ".splck" 1;
	setAttr ".minsp" -1;
	setAttr ".maxsp" 1;
	setAttr ".fil" 1;
	setAttr ".filw" 1;
	setAttr ".filh" 1;
	setAttr ".rflr" 2;
	setAttr ".rfrr" 2;
	setAttr ".maxr" 4;
	setAttr ".shrd" 2;
	setAttr ".fg" 1;
createNode mentalrayFramebuffer -s -n "miDefaultFramebuffer";
	rename -uid "CE9A03E4-4108-0DA6-1EBC-BD9544DF78C0";
	setAttr ".dat" 2;
createNode mentalrayOptions -s -n "miContourPreset";
	rename -uid "F860D39D-4846-9E00-43AA-5B9E6F825BA1";
	setAttr ".splck" 1;
	setAttr ".fil" 0;
	setAttr ".filw" 1;
	setAttr ".filh" 1;
	setAttr ".rflr" 1;
	setAttr ".rfrr" 1;
	setAttr ".maxr" 1;
	setAttr ".shrd" 2;
createNode mentalrayOptions -s -n "Draft";
	rename -uid "978CBB2F-4903-0534-2E00-1BA5DFACDBE0";
	setAttr ".splck" 1;
	setAttr ".fil" 0;
	setAttr ".filw" 1;
	setAttr ".filh" 1;
	setAttr ".rflr" 1;
	setAttr ".rfrr" 1;
	setAttr ".maxr" 2;
	setAttr ".shrd" 2;
createNode mentalrayOptions -s -n "DraftMotionBlur";
	rename -uid "B8DE9721-4582-FD78-6DE2-109F9A16D2BA";
	setAttr ".splck" 1;
	setAttr ".fil" 0;
	setAttr ".filw" 1;
	setAttr ".filh" 1;
	setAttr ".rflr" 1;
	setAttr ".rfrr" 1;
	setAttr ".maxr" 2;
	setAttr ".shrd" 2;
	setAttr ".mb" 1;
	setAttr ".tconr" 1;
	setAttr ".tcong" 1;
	setAttr ".tconb" 1;
	setAttr ".tcona" 1;
createNode mentalrayOptions -s -n "DraftRapidMotion";
	rename -uid "6C23245B-4C56-CD12-57B0-979FA720225D";
	setAttr ".splck" 1;
	setAttr ".fil" 0;
	setAttr ".filw" 1;
	setAttr ".filh" 1;
	setAttr ".scan" 3;
	setAttr ".rapc" 1;
	setAttr ".raps" 0.25;
	setAttr ".rflr" 1;
	setAttr ".rfrr" 1;
	setAttr ".maxr" 2;
	setAttr ".shrd" 2;
	setAttr ".mb" 1;
	setAttr ".tconr" 1;
	setAttr ".tcong" 1;
	setAttr ".tconb" 1;
	setAttr ".tcona" 1;
createNode mentalrayOptions -s -n "Preview";
	rename -uid "75EF8D9E-4EBC-16B4-3A4E-C0A1D4E03083";
	setAttr ".splck" 1;
	setAttr ".minsp" -1;
	setAttr ".maxsp" 1;
	setAttr ".fil" 1;
	setAttr ".filw" 1;
	setAttr ".filh" 1;
	setAttr ".rflr" 2;
	setAttr ".rfrr" 2;
	setAttr ".maxr" 4;
	setAttr ".shrd" 2;
createNode mentalrayOptions -s -n "PreviewMotionblur";
	rename -uid "8A50B11B-4F71-414C-14F4-A5A8521F8B81";
	setAttr ".splck" 1;
	setAttr ".minsp" -1;
	setAttr ".maxsp" 1;
	setAttr ".fil" 1;
	setAttr ".filw" 1;
	setAttr ".filh" 1;
	setAttr ".rflr" 2;
	setAttr ".rfrr" 2;
	setAttr ".maxr" 4;
	setAttr ".shrd" 2;
	setAttr ".mb" 1;
	setAttr ".tconr" 0.5;
	setAttr ".tcong" 0.5;
	setAttr ".tconb" 0.5;
	setAttr ".tcona" 0.5;
createNode mentalrayOptions -s -n "PreviewRapidMotion";
	rename -uid "95DA0D63-440F-6B0F-6149-80BA2C9C9109";
	setAttr ".splck" 1;
	setAttr ".minsp" -1;
	setAttr ".maxsp" 1;
	setAttr ".fil" 1;
	setAttr ".filw" 1;
	setAttr ".filh" 1;
	setAttr ".scan" 3;
	setAttr ".rapc" 3;
	setAttr ".rflr" 2;
	setAttr ".rfrr" 2;
	setAttr ".maxr" 4;
	setAttr ".shrd" 2;
	setAttr ".mb" 1;
	setAttr ".tconr" 0.5;
	setAttr ".tcong" 0.5;
	setAttr ".tconb" 0.5;
	setAttr ".tcona" 0.5;
createNode mentalrayOptions -s -n "PreviewCaustics";
	rename -uid "F6B9BF28-4890-5177-B541-86B7DFBAA464";
	setAttr ".splck" 1;
	setAttr ".minsp" -1;
	setAttr ".maxsp" 1;
	setAttr ".fil" 1;
	setAttr ".filw" 1;
	setAttr ".filh" 1;
	setAttr ".rflr" 2;
	setAttr ".rfrr" 2;
	setAttr ".maxr" 4;
	setAttr ".shrd" 2;
	setAttr ".ca" 1;
	setAttr ".cc" 1;
	setAttr ".cr" 1;
createNode mentalrayOptions -s -n "PreviewGlobalIllum";
	rename -uid "2B44DC66-41BB-2128-4446-54812E288B5E";
	setAttr ".splck" 1;
	setAttr ".minsp" -1;
	setAttr ".maxsp" 1;
	setAttr ".fil" 1;
	setAttr ".filw" 1;
	setAttr ".filh" 1;
	setAttr ".rflr" 2;
	setAttr ".rfrr" 2;
	setAttr ".maxr" 4;
	setAttr ".shrd" 2;
	setAttr ".gi" 1;
	setAttr ".gc" 1;
	setAttr ".gr" 1;
createNode mentalrayOptions -s -n "PreviewFinalGather";
	rename -uid "D35D4781-4062-BAAE-EBC0-1D80F448A5DA";
	setAttr ".splck" 1;
	setAttr ".minsp" -1;
	setAttr ".maxsp" 1;
	setAttr ".fil" 1;
	setAttr ".filw" 1;
	setAttr ".filh" 1;
	setAttr ".rflr" 2;
	setAttr ".rfrr" 2;
	setAttr ".maxr" 4;
	setAttr ".shrd" 2;
	setAttr ".fg" 1;
createNode mentalrayOptions -s -n "Production";
	rename -uid "5755ABED-4736-E03D-FCDD-7AB9590269AD";
	setAttr ".splck" 1;
	setAttr ".minsp" 0;
	setAttr ".maxsp" 2;
	setAttr ".filw" 1;
	setAttr ".filh" 1;
	setAttr ".rflr" 10;
	setAttr ".rfrr" 10;
	setAttr ".maxr" 20;
	setAttr ".shrd" 2;
createNode mentalrayOptions -s -n "ProductionMotionblur";
	rename -uid "7F717964-496A-A3E5-C470-FBB7AB9E5BEB";
	setAttr ".splck" 1;
	setAttr ".minsp" 0;
	setAttr ".maxsp" 2;
	setAttr ".filw" 1;
	setAttr ".filh" 1;
	setAttr ".rflr" 10;
	setAttr ".rfrr" 10;
	setAttr ".maxr" 20;
	setAttr ".shrd" 2;
	setAttr ".mb" 2;
createNode mentalrayOptions -s -n "ProductionRapidMotion";
	rename -uid "79B18B80-4F29-75B3-AE1E-A1989E9C0ED4";
	setAttr ".splck" 1;
	setAttr ".minsp" 0;
	setAttr ".maxsp" 2;
	setAttr ".filw" 1;
	setAttr ".filh" 1;
	setAttr ".scan" 3;
	setAttr ".rapc" 8;
	setAttr ".raps" 2;
	setAttr ".rflr" 10;
	setAttr ".rfrr" 10;
	setAttr ".maxr" 20;
	setAttr ".shrd" 2;
	setAttr ".mb" 2;
createNode mentalrayOptions -s -n "ProductionFineTrace";
	rename -uid "4D154B40-4151-F7CA-2B67-C681F6FAAA2B";
	setAttr ".conr" 0.019999999552965164;
	setAttr ".cong" 0.019999999552965164;
	setAttr ".conb" 0.019999999552965164;
	setAttr ".splck" 1;
	setAttr ".minsp" 1;
	setAttr ".maxsp" 2;
	setAttr ".fil" 1;
	setAttr ".filw" 0.75;
	setAttr ".filh" 0.75;
	setAttr ".jit" 1;
	setAttr ".rflr" 1;
	setAttr ".rfrr" 1;
	setAttr ".maxr" 1;
	setAttr ".shrd" 2;
createNode mentalrayOptions -s -n "ProductionRapidFur";
	rename -uid "87B4B55C-4BA0-A75F-52CC-378189992D10";
	setAttr ".conr" 0.039999999105930328;
	setAttr ".cong" 0.029999999329447746;
	setAttr ".conb" 0.070000000298023224;
	setAttr ".splck" 1;
	setAttr ".minsp" 0;
	setAttr ".maxsp" 2;
	setAttr ".fil" 1;
	setAttr ".filw" 1.1449999809265137;
	setAttr ".filh" 1.1449999809265137;
	setAttr ".jit" 1;
	setAttr ".scan" 3;
	setAttr ".rapc" 3;
	setAttr ".raps" 0.25;
	setAttr ".ray" 0;
	setAttr ".rflr" 1;
	setAttr ".rfrr" 1;
	setAttr ".maxr" 1;
	setAttr ".shrd" 2;
	setAttr ".shmth" 3;
	setAttr ".shmap" 3;
	setAttr ".mbsm" 0;
	setAttr ".bism" 0.019999999552965164;
createNode mentalrayOptions -s -n "ProductionRapidHair";
	rename -uid "1EB14155-4BCD-B67D-D6C8-D2AFABAC37D1";
	setAttr ".conr" 0.039999999105930328;
	setAttr ".cong" 0.029999999329447746;
	setAttr ".conb" 0.070000000298023224;
	setAttr ".splck" 1;
	setAttr ".minsp" 0;
	setAttr ".maxsp" 2;
	setAttr ".fil" 1;
	setAttr ".filw" 1.1449999809265137;
	setAttr ".filh" 1.1449999809265137;
	setAttr ".jit" 1;
	setAttr ".scan" 3;
	setAttr ".rapc" 6;
	setAttr ".ray" 0;
	setAttr ".rflr" 1;
	setAttr ".rfrr" 1;
	setAttr ".maxr" 1;
	setAttr ".shrd" 2;
	setAttr ".shmth" 3;
	setAttr ".shmap" 3;
	setAttr ".mbsm" 0;
	setAttr ".bism" 0.019999999552965164;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "E8D0763C-491A-E7C9-F5A3-C6B55DDEECA8";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -docTag \"RADRENDER\" \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n"
		+ "            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n"
		+ "            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n"
		+ "            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 384\n            -height 335\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -editorChanged \"CgAbBlastPanelOptChangeCallback\" \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n"
		+ "            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 0\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n"
		+ "            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 383\n            -height 335\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -editorChanged \"CgAbBlastPanelOptChangeCallback\" \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n"
		+ "            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n"
		+ "            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n"
		+ "            -shadows 0\n            -captureSequenceNumber -1\n            -width 384\n            -height 335\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -docTag \"RADRENDER\" \n            -editorChanged \"CgAbBlastPanelOptChangeCallback\" \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n"
		+ "            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n"
		+ "            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 0\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n"
		+ "            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 843\n            -height 714\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner2\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner2\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n"
		+ "        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n"
		+ "            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n"
		+ "            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 1\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n"
		+ "            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 1\n"
		+ "            -niceNames 0\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n"
		+ "                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 1\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n"
		+ "                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n"
		+ "                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -showCurveNames 0\n                -showActiveCurveNames 0\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                -valueLinesToggle 1\n                -outliner \"graphEditor1OutlineEd\" \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 1\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n"
		+ "                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n"
		+ "                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n"
		+ "                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"Stereo\" (localizedPanelLabel(\"Stereo\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels  $panelName;\nstring $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n"
		+ "                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 32768\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n"
		+ "                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -controllers 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n"
		+ "                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 0\n                -height 0\n                -sceneRenderFilter 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n            stereoCameraView -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n"
		+ "            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n"
		+ "            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Picker View face\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Picker View face\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"flatShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 1\n            -headsUpDisplay 0\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n"
		+ "            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 4 4 \n            -bumpResolution 4 4 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 0\n            -occlusionCulling 0\n            -shadingModel 0\n"
		+ "            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 0\n            -nurbsCurves 0\n            -nurbsSurfaces 0\n            -polymeshes 1\n            -subdivSurfaces 0\n            -planes 0\n            -lights 0\n            -cameras 0\n            -controlVertices 0\n            -hulls 0\n            -grid 0\n            -imagePlane 0\n            -joints 0\n            -ikHandles 0\n            -deformers 0\n            -dynamics 0\n            -particleInstancers 0\n            -fluids 0\n            -hairSystems 0\n            -follicles 0\n            -nCloths 0\n            -nParticles 0\n            -nRigids 0\n            -dynamicConstraints 0\n            -locators 0\n            -manipulators 0\n            -pluginShapes 0\n            -dimensions 0\n            -handles 0\n            -pivots 0\n            -textures 0\n"
		+ "            -strokes 0\n            -motionTrails 0\n            -clipGhosts 0\n            -greasePencils 0\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 0\n            -height 0\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 0 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n"
		+ "                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -highlightConnections 0\n                -copyConnectionsOnPaste 0\n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -activeTab -1\n                -editorMode \"default\" \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n"
		+ "        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -docTag \\\"RADRENDER\\\" \\n    -editorChanged \\\"CgAbBlastPanelOptChangeCallback\\\" \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 1\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 0\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 843\\n    -height 714\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -docTag \\\"RADRENDER\\\" \\n    -editorChanged \\\"CgAbBlastPanelOptChangeCallback\\\" \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 1\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 0\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 843\\n    -height 714\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "D1A4FD6D-4DB0-1B49-8999-5AA0EF146699";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 24 -ast 1 -aet 48 ";
	setAttr ".st" 6;
createNode RedshiftOptions -s -n "redshiftOptions";
	rename -uid "70C92857-4EFA-490D-1F59-669ACC0FEED0";
	addAttr -s false -ci true -h true -sn "physicalSky" -ln "physicalSky" -at "message";
	setAttr ".imageFilePrefix" -type "string" "";
	setAttr ".unifiedMinSamples" 16;
	setAttr ".unifiedMaxSamples" 270;
	setAttr ".primaryGIEngine" 4;
createNode RedshiftMaterial -n "rsLens";
	rename -uid "58F3854C-41A0-A4CE-FD63-8B8AB6B79651";
	setAttr ".v" 1;
	setAttr ".preset" 1;
	setAttr ".diffuse_weight" 0;
	setAttr ".refl_reflectivity" -type "float3" 0.020059001 0.020059001 0.020059001 ;
	setAttr ".refl_ior3" -type "float3" 1.33 1.33 1.33 ;
	setAttr ".refl_ior" 1.3300000429153442;
	setAttr ".refr_weight" 1;
	setAttr ".refr_abbe" 64.169998168945313;
createNode shadingEngine -n "rsMaterial1SG";
	rename -uid "8DA52867-41E3-7BE5-396B-5FBC4F327F0C";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo1";
	rename -uid "A03CC157-4296-BD69-1998-1A86ECEF4472";
createNode RedshiftMaterial -n "rsBodyHair";
	rename -uid "15463051-4175-EDAC-D744-9990434F4137";
	setAttr ".v" 1;
	setAttr ".refl_weight" 0;
createNode shadingEngine -n "rsMaterial2SG";
	rename -uid "DFB7323A-4E6D-CFFD-2D7C-D68B1612390C";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo2";
	rename -uid "245B6613-425F-A070-1B19-E08129607DA1";
createNode place2dTexture -n "place2dTexture1";
	rename -uid "27C9339A-465A-70B6-946E-788D6CD191AC";
createNode RedshiftMaterial -n "rsBody";
	rename -uid "E42118F5-4272-CCFC-6C59-B29D3E65CD3C";
	setAttr ".v" 1;
	setAttr ".refl_weight" 0.16334661841392517;
	setAttr ".refl_roughness" 0.12749004364013672;
	setAttr ".ms_amount" 0.59362548589706421;
	setAttr ".ms_color0" -type "float3" 1 0.852 0.55599999 ;
	setAttr ".ms_color1" -type "float3" 0 0.382 0 ;
	setAttr ".ms_color2" -type "float3" 0.118 0 0 ;
createNode shadingEngine -n "rsMaterial3SG";
	rename -uid "960E25CF-46F5-B89E-7282-409EBECB49E0";
	setAttr ".ihi" 0;
	setAttr -s 3 ".dsm";
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo3";
	rename -uid "9F26C9AB-4317-C786-A3AA-709E67EA1A24";
	setAttr -s 2 ".t";
createNode RedshiftNormalMap -n "rsNormalMap1";
	rename -uid "8A3CCBA4-42CE-024A-EE69-3480007BD791";
	setAttr ".tex0" -type "string" "D:/EVERYDAY 4/Wolf realistic/Wolf//wolf_a_body_a_nml.tga";
createNode RedshiftMaterial -n "rsEyes";
	rename -uid "0370E798-4D44-F71B-20A0-FC849B62977C";
	setAttr ".v" 1;
	setAttr ".refl_weight" 0.091633468866348267;
	setAttr ".emission_weight" 0.30000001192092896;
createNode shadingEngine -n "rsMaterial4SG";
	rename -uid "01366895-44B6-9F62-869A-9CA99BAD011C";
	setAttr ".ihi" 0;
	setAttr -s 2 ".dsm";
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo4";
	rename -uid "BD337C8B-4C0D-A71F-9E87-6B803A4BC5AD";
	setAttr -s 2 ".t";
createNode RedshiftMaterial -n "rsFace";
	rename -uid "E5F80606-432B-376A-E285-E38135306687";
	setAttr ".v" 1;
	setAttr ".refl_weight" 0.48605576157569885;
	setAttr ".refl_roughness" 0.16334661841392517;
	setAttr ".ms_amount" 1;
	setAttr ".ms_radius_scale" 5;
	setAttr ".ms_color1" -type "float3" 0 0.382 0 ;
	setAttr ".ms_weight1" 0.13944223523139954;
	setAttr ".ms_color2" -type "float3" 0.18000001 0 0 ;
	setAttr ".ms_weight2" 0.29880478978157043;
createNode shadingEngine -n "rsMaterial5SG";
	rename -uid "1F07F80D-46FD-E767-685A-26905DCB9B89";
	setAttr ".ihi" 0;
	setAttr -s 3 ".dsm";
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo5";
	rename -uid "981871FF-4E48-C133-712B-20AE5552889B";
	setAttr -s 2 ".t";
createNode RedshiftNormalMap -n "rsNormalMap2";
	rename -uid "1CCB0FBB-4BAB-EA6B-2987-AB9C4A3FDEF1";
	setAttr ".tex0" -type "string" "D:/EVERYDAY 4/Wolf realistic/Wolf//wolf_a_head_nml.tga";
createNode RedshiftMaterial -n "rshairLeg";
	rename -uid "8B1EF9F5-4CEC-0315-E169-449CFB6519CA";
	setAttr ".v" 1;
createNode shadingEngine -n "rsMaterial6SG";
	rename -uid "8D5E99DC-4A2D-0CDD-62A4-2BA14C83ECB8";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo6";
	rename -uid "13525060-40DC-C67D-AE0C-498C0EDD1BE6";
	setAttr -s 2 ".t";
createNode RedshiftMaterial -n "rsHairTail";
	rename -uid "1D22FDC2-4427-C2E9-B2E0-BA9971545300";
	setAttr ".v" 1;
	setAttr ".refl_weight" 0;
createNode shadingEngine -n "rsMaterial7SG";
	rename -uid "C47677A5-4A27-3023-7CFB-5E99D3C3A74C";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo7";
	rename -uid "B45F91EF-4003-01EA-2982-B1A34AD49F38";
	setAttr -s 2 ".t";
createNode RedshiftMaterial -n "rsTeeth";
	rename -uid "7B9F9CB1-43F4-C785-FFE9-3F9BE069CF8E";
	setAttr ".v" 1;
	setAttr ".ms_amount" 1;
	setAttr ".ms_radius_scale" 5;
	setAttr ".ms_color0" -type "float3" 1 0.77078497 0.69999999 ;
	setAttr ".ms_color1" -type "float3" 0.82352942 0.36269641 0.27450979 ;
	setAttr ".ms_color2" -type "float3" 0.18000001 0 0 ;
createNode shadingEngine -n "rsMaterial8SG";
	rename -uid "39D79BD8-455F-5CE4-CA17-C6A1A98BF38B";
	setAttr ".ihi" 0;
	setAttr -s 3 ".dsm";
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo8";
	rename -uid "1CCF21E8-49DA-B7BC-3BF3-0CA7192CF461";
	setAttr -s 2 ".t";
createNode RedshiftNormalMap -n "rsNormalMap3";
	rename -uid "C0449297-4F2F-AB89-DE73-37B5E3729E61";
	setAttr ".tex0" -type "string" "D:/EVERYDAY 4/Wolf realistic/Wolf//wolf_a_teeth_nml.tga";
createNode RedshiftSprite -n "rsSprite1";
	rename -uid "CD6973F0-4F8A-B3D7-CDDB-5DB0862DEED3";
	setAttr ".tex0" -type "string" "D:/EVERYDAY 4/Wolf realistic/Wolf//bodyFur_alpha.jpg";
	setAttr ".mode" 1;
createNode shadingEngine -n "rsSprite1SG";
	rename -uid "F3C3EC80-45C4-B883-9E83-3C896BD031E5";
	setAttr ".ihi" 0;
	setAttr -s 4 ".dsm";
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo9";
	rename -uid "2C6058A2-4E42-6146-7DA2-D4904F17D2F0";
createNode RedshiftSprite -n "rsSpriteLeg";
	rename -uid "60471BB5-49CB-41C8-D20E-B7A1A185FD12";
	setAttr ".tex0" -type "string" "D:/EVERYDAY 4/Wolf realistic/Wolf//legFur_alpha.jpg";
	setAttr ".mode" 1;
createNode shadingEngine -n "rsSprite2SG";
	rename -uid "2F7FBA33-4460-2CFE-5D79-109B0D714A81";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo10";
	rename -uid "F1240C71-4A86-EF5A-CC1F-398EFC52D705";
createNode RedshiftSprite -n "rsSpriteTail";
	rename -uid "61271F51-42E9-A5D2-D3B8-2DB587B0FF88";
	setAttr ".tex0" -type "string" "D:/EVERYDAY 4/Wolf realistic/Wolf//bodyFur_alpha.jpg";
	setAttr ".mode" 1;
createNode shadingEngine -n "rsSprite3SG";
	rename -uid "4DFC26B4-416C-1720-3B05-17AB22827D33";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo11";
	rename -uid "AE291B65-4BEC-9CBA-4421-19B50D74D8BD";
createNode file -n "file1";
	rename -uid "4CCFF1FB-451A-9938-3FE7-F9AFA8D4FB46";
	setAttr ".ftn" -type "string" "D:/EVERYDAY 4/Wolf realistic/Wolf//wolf_a_eye_col_v2.tga";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "place2dTexture2";
	rename -uid "2756FDD1-4ED8-6287-6944-9A9AA9BF2C0E";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "1DF52A5A-4941-3D72-A9E6-B197EFD6375F";
	setAttr ".bsdt[0].bscd" -type "Int32Array" 2 0 1 ;
	setAttr -s 2 ".bspr";
	setAttr -s 2 ".obsv";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "C6742F8E-4210-3A30-4FAC-A08C42B7F9FE";
createNode displayLayer -n "layer1";
	rename -uid "3C3E7FD7-4049-ED19-2FE1-2F85FF4B9453";
	setAttr ".v" no;
	setAttr ".do" 1;
select -ne :time1;
	setAttr -av -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -k on ".o" 1;
	setAttr -av ".unw" 1;
	setAttr -av ".tms";
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 18 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surfaces" "Particles" "Fluids" "Image Planes" "UI:" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 18 0 1 1 1 1 1
		 1 0 0 0 0 0 0 0 0 0 0 0 ;
	setAttr ".etmr" no;
	setAttr ".tmr" 4096;
select -ne :renderPartition;
	setAttr -cb on ".cch";
	setAttr -cb on ".ihi";
	setAttr -cb on ".nds";
	setAttr -cb on ".bnm";
	setAttr -s 22 ".st";
	setAttr -cb on ".an";
	setAttr -cb on ".pt";
select -ne :renderGlobalsList1;
	setAttr -cb on ".cch";
	setAttr -cb on ".ihi";
	setAttr -cb on ".nds";
	setAttr -cb on ".bnm";
select -ne :defaultShaderList1;
	setAttr -cb on ".cch";
	setAttr -cb on ".ihi";
	setAttr -cb on ".nds";
	setAttr -cb on ".bnm";
	setAttr -s 24 ".s";
select -ne :postProcessList1;
	setAttr -cb on ".cch";
	setAttr -cb on ".ihi";
	setAttr -cb on ".nds";
	setAttr -cb on ".bnm";
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -s 21 ".u";
select -ne :defaultRenderingList1;
	setAttr -s 3 ".r";
select -ne :lightList1;
select -ne :defaultTextureList1;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -s 14 ".tx";
select -ne :initialShadingGroup;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -k on ".mwc";
	setAttr -cb on ".an";
	setAttr -cb on ".il";
	setAttr -cb on ".vo";
	setAttr -cb on ".eo";
	setAttr -cb on ".fo";
	setAttr -cb on ".epo";
	setAttr -k on ".ro" yes;
lockNode -l 1 ;
select -ne :initialParticleSE;
	setAttr -av -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -cb on ".mwc";
	setAttr -cb on ".an";
	setAttr -cb on ".il";
	setAttr -cb on ".vo";
	setAttr -cb on ".eo";
	setAttr -cb on ".fo";
	setAttr -cb on ".epo";
	setAttr -k on ".ro" yes;
select -ne :defaultRenderGlobals;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -cb on ".macc";
	setAttr -cb on ".macd";
	setAttr -cb on ".macq";
	setAttr -k on ".mcfr";
	setAttr -cb on ".ifg";
	setAttr -k on ".clip";
	setAttr -k on ".edm";
	setAttr -k on ".edl";
	setAttr ".ren" -type "string" "redshift";
	setAttr -av -k on ".esr";
	setAttr -k on ".ors";
	setAttr -cb on ".sdf";
	setAttr -av -k on ".outf" 51;
	setAttr -cb on ".imfkey" -type "string" "iff";
	setAttr -k on ".gama";
	setAttr -cb on ".an";
	setAttr -cb on ".ar";
	setAttr -k on ".fs";
	setAttr -k on ".ef";
	setAttr -av -k on ".bfs";
	setAttr -cb on ".me";
	setAttr -cb on ".se";
	setAttr -k on ".be";
	setAttr -cb on ".ep";
	setAttr -k on ".fec";
	setAttr -k on ".ofc";
	setAttr -cb on ".ofe";
	setAttr -cb on ".efe";
	setAttr -cb on ".oft";
	setAttr -cb on ".umfn";
	setAttr -cb on ".ufe";
	setAttr -cb on ".pff" yes;
	setAttr -cb on ".peie";
	setAttr -cb on ".ifp";
	setAttr -k on ".comp";
	setAttr -k on ".cth";
	setAttr -k on ".soll";
	setAttr -k on ".rd";
	setAttr -k on ".lp";
	setAttr -av -k on ".sp";
	setAttr -k on ".shs";
	setAttr -k on ".lpr";
	setAttr -cb on ".gv";
	setAttr -cb on ".sv";
	setAttr -k on ".mm";
	setAttr -k on ".npu";
	setAttr -k on ".itf";
	setAttr -k on ".shp";
	setAttr -cb on ".isp";
	setAttr -k on ".uf";
	setAttr -k on ".oi";
	setAttr -k on ".rut";
	setAttr -k on ".mb";
	setAttr -av -k on ".mbf";
	setAttr -k on ".afp";
	setAttr -k on ".pfb";
	setAttr -k on ".pram";
	setAttr -k on ".poam";
	setAttr -k on ".prlm";
	setAttr -k on ".polm";
	setAttr -cb on ".prm";
	setAttr -cb on ".pom";
	setAttr -cb on ".pfrm";
	setAttr -cb on ".pfom";
	setAttr -av -k on ".bll";
	setAttr -k on ".bls";
	setAttr -k on ".smv";
	setAttr -k on ".ubc";
	setAttr -k on ".mbc";
	setAttr -cb on ".mbt";
	setAttr -k on ".udbx";
	setAttr -k on ".smc";
	setAttr -k on ".kmv";
	setAttr -cb on ".isl";
	setAttr -cb on ".ism";
	setAttr -cb on ".imb";
	setAttr -k on ".rlen";
	setAttr -av -k on ".frts";
	setAttr -k on ".tlwd";
	setAttr -k on ".tlht";
	setAttr -k on ".jfc";
	setAttr -cb on ".rsb";
	setAttr -cb on ".ope";
	setAttr -cb on ".oppf";
	setAttr -cb on ".hbl";
select -ne :defaultResolution;
	setAttr -av -k on ".cch";
	setAttr -k on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -k on ".bnm";
	setAttr -av -k on ".w" 1280;
	setAttr -av -k on ".h" 1280;
	setAttr -av -k on ".pa" 1;
	setAttr -av -k on ".al";
	setAttr -av -k on ".dar" 1;
	setAttr -av -k on ".ldar";
	setAttr -k on ".dpi";
	setAttr -av -k on ".off";
	setAttr -av -k on ".fld";
	setAttr -av -k on ".zsl";
	setAttr -k on ".isu";
	setAttr -k on ".pdu";
select -ne :defaultLightSet;
	setAttr -k on ".cch";
	setAttr -k on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -k on ".bnm";
	setAttr -k on ".mwc";
	setAttr -k on ".an";
	setAttr -k on ".il";
	setAttr -k on ".vo";
	setAttr -k on ".eo";
	setAttr -k on ".fo";
	setAttr -k on ".epo";
	setAttr -k on ".ro" yes;
select -ne :defaultObjectSet;
	setAttr -k on ".cch";
	setAttr -k on ".ihi";
	setAttr -k on ".nds";
	setAttr -k on ".bnm";
	setAttr -k on ".mwc";
	setAttr -k on ".an";
	setAttr -k on ".il";
	setAttr -k on ".vo";
	setAttr -k on ".eo";
	setAttr -k on ".fo";
	setAttr -k on ".epo";
	setAttr ".ro" yes;
select -ne :defaultColorMgtGlobals;
	setAttr ".cme" no;
select -ne :hardwareRenderGlobals;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -k off ".ctrs" 256;
	setAttr -av -k off ".btrs" 512;
	setAttr -k off ".fbfm";
	setAttr -k off -cb on ".ehql";
	setAttr -k off -cb on ".eams";
	setAttr -k off -cb on ".eeaa";
	setAttr -k off -cb on ".engm";
	setAttr -k off -cb on ".mes";
	setAttr -k off -cb on ".emb";
	setAttr -av -k off -cb on ".mbbf";
	setAttr -k off -cb on ".mbs";
	setAttr -k off -cb on ".trm";
	setAttr -k off -cb on ".tshc";
	setAttr -k off ".enpt";
	setAttr -k off -cb on ".clmt";
	setAttr -k off -cb on ".tcov";
	setAttr -k off -cb on ".lith";
	setAttr -k off -cb on ".sobc";
	setAttr -k off -cb on ".cuth";
	setAttr -k off -cb on ".hgcd";
	setAttr -k off -cb on ".hgci";
	setAttr -k off -cb on ".mgcs";
	setAttr -k off -cb on ".twa";
	setAttr -k off -cb on ".twz";
	setAttr -k on ".hwcc";
	setAttr -k on ".hwdp";
	setAttr -k on ".hwql";
	setAttr -k on ".hwfr";
	setAttr -k on ".soll";
	setAttr -k on ".sosl";
	setAttr -k on ".bswa";
	setAttr -k on ".shml";
	setAttr -k on ".hwel";
select -ne :ikSystem;
	setAttr -k on ".cch";
	setAttr -k on ".ihi";
	setAttr -k on ".nds";
	setAttr -k on ".bnm";
	setAttr -av -k on ".gsn";
	setAttr -k on ".gsv";
	setAttr -s 3 ".sol";
connectAttr "layer1.di" "wolf_rigRN.phl[1]";
connectAttr "layer1.di" "wolf_rigRN.phl[2]";
connectAttr "wolf_rigRN.phl[3]" "rsSprite1SG.dsm" -na;
connectAttr "rsSprite1SG.mwc" "wolf_rigRN.phl[4]";
connectAttr "wolf_rigRN.phl[5]" "rsSprite1SG.dsm" -na;
connectAttr "rsSprite1SG.mwc" "wolf_rigRN.phl[6]";
connectAttr "wolf_rigRN.phl[7]" "rsSprite1SG.dsm" -na;
connectAttr "rsSprite1SG.mwc" "wolf_rigRN.phl[8]";
connectAttr "wolf_rigRN.phl[9]" "rsSprite1SG.dsm" -na;
connectAttr "rsSprite1SG.mwc" "wolf_rigRN.phl[10]";
connectAttr "wolf_rigRN.phl[11]" "rsSprite2SG.dsm" -na;
connectAttr "rsSprite2SG.mwc" "wolf_rigRN.phl[12]";
connectAttr "wolf_rigRN.phl[13]" "rsSprite3SG.dsm" -na;
connectAttr "wolf_rigRN.phl[14]" "rsMaterial4SG.dsm" -na;
connectAttr "rsMaterial4SG.mwc" "wolf_rigRN.phl[15]";
connectAttr "wolf_rigRN.phl[16]" "rsMaterial4SG.dsm" -na;
connectAttr "rsMaterial4SG.mwc" "wolf_rigRN.phl[17]";
connectAttr "wolf_rigRN.phl[18]" "rsMaterial8SG.dsm" -na;
connectAttr "wolf_rigRN.phl[19]" "rsMaterial1SG.dsm" -na;
connectAttr "wolf_rigRN.phl[20]" "rsMaterial8SG.dsm" -na;
connectAttr "rsMaterial8SG.mwc" "wolf_rigRN.phl[21]";
connectAttr "wolf_rigRN.phl[22]" "rsMaterial8SG.dsm" -na;
connectAttr "rsMaterial8SG.mwc" "wolf_rigRN.phl[23]";
connectAttr "wolf_rigRN.phl[24]" "rsMaterial5SG.dsm" -na;
connectAttr "rsMaterial5SG.mwc" "wolf_rigRN.phl[25]";
connectAttr "wolf_rigRN.phl[26]" "rsMaterial3SG.dsm" -na;
connectAttr "rsMaterial3SG.mwc" "wolf_rigRN.phl[27]";
connectAttr "wolf_rigRN.phl[28]" "rsMaterial5SG.dsm" -na;
connectAttr "rsMaterial5SG.mwc" "wolf_rigRN.phl[29]";
connectAttr "wolf_rigRN.phl[30]" "rsMaterial3SG.dsm" -na;
connectAttr "rsMaterial3SG.mwc" "wolf_rigRN.phl[31]";
connectAttr "wolf_rigRN.phl[32]" "rsMaterial5SG.dsm" -na;
connectAttr "rsMaterial5SG.mwc" "wolf_rigRN.phl[33]";
connectAttr "wolf_rigRN.phl[34]" "rsMaterial3SG.dsm" -na;
connectAttr "rsMaterial3SG.mwc" "wolf_rigRN.phl[35]";
connectAttr "wolf_rigRN.phl[36]" "rsBody.diffuse_color";
connectAttr "wolf_rigRN.phl[37]" "materialInfo3.t" -na;
connectAttr "wolf_rigRN.phl[38]" "rsBody.refl_color";
connectAttr "wolf_rigRN.phl[39]" "materialInfo3.t" -na;
connectAttr "wolf_rigRN.phl[40]" "rsEyes.refr_color";
connectAttr "wolf_rigRN.phl[41]" "rsEyes.emission_color";
connectAttr "wolf_rigRN.phl[42]" "materialInfo4.t" -na;
connectAttr "wolf_rigRN.phl[43]" "materialInfo4.t" -na;
connectAttr "wolf_rigRN.phl[44]" "rsFace.diffuse_color";
connectAttr "wolf_rigRN.phl[45]" "materialInfo5.t" -na;
connectAttr "wolf_rigRN.phl[46]" "rsFace.refl_color";
connectAttr "wolf_rigRN.phl[47]" "materialInfo5.t" -na;
connectAttr "wolf_rigRN.phl[48]" "rsBodyHair.diffuse_color";
connectAttr "wolf_rigRN.phl[49]" "rsBodyHair.opacity_color";
connectAttr "wolf_rigRN.phl[50]" "materialInfo2.t" -na;
connectAttr "wolf_rigRN.phl[51]" "rshairLeg.diffuse_color";
connectAttr "wolf_rigRN.phl[52]" "rshairLeg.opacity_color";
connectAttr "wolf_rigRN.phl[53]" "materialInfo6.t" -na;
connectAttr "wolf_rigRN.phl[54]" "materialInfo6.t" -na;
connectAttr "wolf_rigRN.phl[55]" "rsHairTail.diffuse_color";
connectAttr "wolf_rigRN.phl[56]" "rsHairTail.opacity_color";
connectAttr "wolf_rigRN.phl[57]" "materialInfo7.t" -na;
connectAttr "wolf_rigRN.phl[58]" "materialInfo7.t" -na;
connectAttr "wolf_rigRN.phl[59]" "rsTeeth.diffuse_color";
connectAttr "wolf_rigRN.phl[60]" "materialInfo8.t" -na;
connectAttr "wolf_rigRN.phl[61]" "rsTeeth.refl_color";
connectAttr "wolf_rigRN.phl[62]" "materialInfo8.t" -na;
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "rsMaterial1SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "rsMaterial2SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "rsMaterial3SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "rsMaterial4SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "rsMaterial5SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "rsMaterial6SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "rsMaterial7SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "rsMaterial8SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "rsSprite1SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "rsSprite2SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "rsSprite3SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "rsMaterial1SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "rsMaterial2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "rsMaterial3SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "rsMaterial4SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "rsMaterial5SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "rsMaterial6SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "rsMaterial7SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "rsMaterial8SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "rsSprite1SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "rsSprite2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "rsSprite3SG.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr ":TurtleDefaultBakeLayer.idx" ":TurtleBakeLayerManager.bli[0]";
connectAttr ":TurtleRenderOptions.msg" ":TurtleDefaultBakeLayer.rset";
connectAttr "rsLens.oc" "rsMaterial1SG.ss";
connectAttr "rsMaterial1SG.msg" "materialInfo1.sg";
connectAttr "rsLens.msg" "materialInfo1.m";
connectAttr "rsBodyHair.oc" "rsMaterial2SG.ss";
connectAttr "rsMaterial2SG.msg" "materialInfo2.sg";
connectAttr "rsBodyHair.msg" "materialInfo2.m";
connectAttr "rsNormalMap1.oc" "rsBody.bump_input";
connectAttr "rsBody.oc" "rsMaterial3SG.ss";
connectAttr "rsMaterial3SG.msg" "materialInfo3.sg";
connectAttr "rsBody.msg" "materialInfo3.m";
connectAttr "file1.oc" "rsEyes.diffuse_color";
connectAttr "rsEyes.oc" "rsMaterial4SG.ss";
connectAttr "rsMaterial4SG.msg" "materialInfo4.sg";
connectAttr "rsEyes.msg" "materialInfo4.m";
connectAttr "rsNormalMap2.oc" "rsFace.bump_input";
connectAttr "rsFace.oc" "rsMaterial5SG.ss";
connectAttr "rsMaterial5SG.msg" "materialInfo5.sg";
connectAttr "rsFace.msg" "materialInfo5.m";
connectAttr "rshairLeg.oc" "rsMaterial6SG.ss";
connectAttr "rsMaterial6SG.msg" "materialInfo6.sg";
connectAttr "rshairLeg.msg" "materialInfo6.m";
connectAttr "rsHairTail.oc" "rsMaterial7SG.ss";
connectAttr "rsMaterial7SG.msg" "materialInfo7.sg";
connectAttr "rsHairTail.msg" "materialInfo7.m";
connectAttr "rsNormalMap3.oc" "rsTeeth.bump_input";
connectAttr "rsTeeth.oc" "rsMaterial8SG.ss";
connectAttr "rsMaterial8SG.msg" "materialInfo8.sg";
connectAttr "rsTeeth.msg" "materialInfo8.m";
connectAttr "rsBodyHair.oc" "rsSprite1.input";
connectAttr "rsSprite1.oc" "rsSprite1SG.ss";
connectAttr "rsSprite1SG.msg" "materialInfo9.sg";
connectAttr "rsSprite1.msg" "materialInfo9.m";
connectAttr "rsSprite1.msg" "materialInfo9.t" -na;
connectAttr "rshairLeg.oc" "rsSpriteLeg.input";
connectAttr "rsSpriteLeg.oc" "rsSprite2SG.ss";
connectAttr "rsSprite2SG.msg" "materialInfo10.sg";
connectAttr "rsSpriteLeg.msg" "materialInfo10.m";
connectAttr "rsSpriteLeg.msg" "materialInfo10.t" -na;
connectAttr "rsHairTail.oc" "rsSpriteTail.input";
connectAttr "rsSpriteTail.oc" "rsSprite3SG.ss";
connectAttr "rsSprite3SG.msg" "materialInfo11.sg";
connectAttr "rsSpriteTail.msg" "materialInfo11.m";
connectAttr "rsSpriteTail.msg" "materialInfo11.t" -na;
connectAttr "place2dTexture2.c" "file1.c";
connectAttr "place2dTexture2.tf" "file1.tf";
connectAttr "place2dTexture2.rf" "file1.rf";
connectAttr "place2dTexture2.mu" "file1.mu";
connectAttr "place2dTexture2.mv" "file1.mv";
connectAttr "place2dTexture2.s" "file1.s";
connectAttr "place2dTexture2.wu" "file1.wu";
connectAttr "place2dTexture2.wv" "file1.wv";
connectAttr "place2dTexture2.re" "file1.re";
connectAttr "place2dTexture2.of" "file1.of";
connectAttr "place2dTexture2.r" "file1.ro";
connectAttr "place2dTexture2.n" "file1.n";
connectAttr "place2dTexture2.vt1" "file1.vt1";
connectAttr "place2dTexture2.vt2" "file1.vt2";
connectAttr "place2dTexture2.vt3" "file1.vt3";
connectAttr "place2dTexture2.vc1" "file1.vc1";
connectAttr "place2dTexture2.o" "file1.uv";
connectAttr "place2dTexture2.ofs" "file1.fs";
connectAttr ":defaultColorMgtGlobals.cme" "file1.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file1.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file1.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file1.ws";
connectAttr "layerManager.dli[1]" "layer1.id";
connectAttr "rsMaterial1SG.pa" ":renderPartition.st" -na;
connectAttr "rsMaterial2SG.pa" ":renderPartition.st" -na;
connectAttr "rsMaterial3SG.pa" ":renderPartition.st" -na;
connectAttr "rsMaterial4SG.pa" ":renderPartition.st" -na;
connectAttr "rsMaterial5SG.pa" ":renderPartition.st" -na;
connectAttr "rsMaterial6SG.pa" ":renderPartition.st" -na;
connectAttr "rsMaterial7SG.pa" ":renderPartition.st" -na;
connectAttr "rsMaterial8SG.pa" ":renderPartition.st" -na;
connectAttr "rsSprite1SG.pa" ":renderPartition.st" -na;
connectAttr "rsSprite2SG.pa" ":renderPartition.st" -na;
connectAttr "rsSprite3SG.pa" ":renderPartition.st" -na;
connectAttr "rsLens.msg" ":defaultShaderList1.s" -na;
connectAttr "rsBodyHair.msg" ":defaultShaderList1.s" -na;
connectAttr "rsBody.msg" ":defaultShaderList1.s" -na;
connectAttr "rsEyes.msg" ":defaultShaderList1.s" -na;
connectAttr "rsFace.msg" ":defaultShaderList1.s" -na;
connectAttr "rshairLeg.msg" ":defaultShaderList1.s" -na;
connectAttr "rsHairTail.msg" ":defaultShaderList1.s" -na;
connectAttr "rsTeeth.msg" ":defaultShaderList1.s" -na;
connectAttr "rsSprite1.msg" ":defaultShaderList1.s" -na;
connectAttr "rsSpriteLeg.msg" ":defaultShaderList1.s" -na;
connectAttr "rsSpriteTail.msg" ":defaultShaderList1.s" -na;
connectAttr "place2dTexture1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "rsNormalMap1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "rsNormalMap2.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "rsNormalMap3.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture2.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "rsDomeLightShape1.ltd" ":lightList1.l" -na;
connectAttr "file1.msg" ":defaultTextureList1.tx" -na;
connectAttr "rsDomeLight1.iog" ":defaultLightSet.dsm" -na;
// End of wolf_rig_render_setup_redshift3d_maya2018.ma
