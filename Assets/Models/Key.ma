//Maya ASCII 2017 scene
//Name: Key.ma
//Last modified: Tue, Feb 28, 2017 11:08:59 AM
//Codeset: 1252
requires maya "2017";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2017";
fileInfo "version" "2017";
fileInfo "cutIdentifier" "201606150345-997974";
fileInfo "osv" "Microsoft Windows 8 Home Premium Edition, 64-bit  (Build 9200)\n";
fileInfo "license" "student";
createNode transform -s -n "persp";
	rename -uid "EF354751-4B79-2FA0-32C2-38B0CC9688F4";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1.1723556472059318 9.6548332074119525 4.197459452627923 ;
	setAttr ".r" -type "double3" -65.738352729570778 -13.80000000000021 0 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "AB382F00-4309-60E1-C603-6E8311C40806";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 10.623485757984469;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".hc" -type "string" "viewSet -p %camera";
	setAttr ".ai_translator" -type "string" "perspective";
createNode transform -s -n "top";
	rename -uid "19E12656-496E-63AA-E53D-969B267D3140";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1 0 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "926CDB3B-4351-5896-D9D1-9CBF2D0BC29A";
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
	rename -uid "EF3FF096-4656-6E91-3924-09B77A763DED";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "FBD8FF76-4DE0-DD08-B19D-D4B1CB945D90";
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
	rename -uid "9F66EA30-4118-48D2-7399-5FAA39037513";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 0 0 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "5327DD56-42AC-BB47-5A9C-08B4F4F21D66";
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
createNode transform -n "pCylinder1";
	rename -uid "B67C17FF-4427-5B6E-D924-248B050ED6AF";
	setAttr ".t" -type "double3" -0.79307751843516827 0 0.031526549725930463 ;
createNode mesh -n "pCylinderShape1" -p "pCylinder1";
	rename -uid "A2BF600F-494A-BA75-A5B2-D785B1EEC3A2";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 1 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "pCube1";
	rename -uid "2BA05622-4A68-8DF0-BCE8-0CBEF5CFC030";
	setAttr ".t" -type "double3" 2.3124494704860554 0 0.012970620256867904 ;
	setAttr ".s" -type "double3" 0.93954193644044981 0.43515298155586174 0.81710881158645743 ;
createNode mesh -n "pCubeShape1" -p "pCube1";
	rename -uid "8B2935D2-49DE-01D6-0435-20A21CB311BC";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.41666668653488159 0.125 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 48 ".pt";
	setAttr ".pt[2]" -type "float3" 0 0 0.53282648 ;
	setAttr ".pt[5]" -type "float3" 0 0 0.83329463 ;
	setAttr ".pt[7]" -type "float3" 0 0 0.39230251 ;
	setAttr ".pt[10]" -type "float3" 0 0 0.55328774 ;
	setAttr ".pt[15]" -type "float3" 0 0 0.53282648 ;
	setAttr ".pt[18]" -type "float3" 0 0 0.83329463 ;
	setAttr ".pt[20]" -type "float3" 0 0 0.39230251 ;
	setAttr ".pt[23]" -type "float3" 0 0 0.55328774 ;
	setAttr ".pt[28]" -type "float3" 0 0 0.53282648 ;
	setAttr ".pt[31]" -type "float3" 0 0 0.83329463 ;
	setAttr ".pt[33]" -type "float3" 0 0 0.39230251 ;
	setAttr ".pt[36]" -type "float3" 0 0 0.55328774 ;
	setAttr ".pt[41]" -type "float3" 0 0 0.53282648 ;
	setAttr ".pt[44]" -type "float3" 0 0 0.83329463 ;
	setAttr ".pt[46]" -type "float3" 0 0 0.39230251 ;
	setAttr ".pt[49]" -type "float3" 0 0 0.55328774 ;
	setAttr ".pt[64]" -type "float3" 0.59441561 0 -4.9360096e-008 ;
	setAttr ".pt[77]" -type "float3" 1.12941 0 -0.052428134 ;
	setAttr ".pt[90]" -type "float3" 1.9120469 0 -0.052428134 ;
	setAttr ".pt[103]" -type "float3" 1.9120469 0 -0.052428037 ;
	setAttr ".pt[116]" -type "float3" 1.9120474 0 -0.052428037 ;
	setAttr ".pt[129]" -type "float3" 1.1489153 0 -0.098427452 ;
	setAttr ".pt[142]" -type "float3" -0.01950543 0 0.045999423 ;
	setAttr ".pt[155]" -type "float3" -0.01950543 0 0.045999423 ;
	setAttr ".pt[168]" -type "float3" -0.01950543 0 0.045999423 ;
	setAttr ".pt[181]" -type "float3" -0.01950543 0 0.045999423 ;
	setAttr ".pt[194]" -type "float3" 1.1489153 0 -0.098427452 ;
	setAttr ".pt[207]" -type "float3" 1.9120474 0 -0.052428037 ;
	setAttr ".pt[220]" -type "float3" 1.9120469 0 -0.052428037 ;
	setAttr ".pt[233]" -type "float3" 1.9120469 0 -0.052428134 ;
	setAttr ".pt[246]" -type "float3" 1.12941 0 -0.052428134 ;
	setAttr ".pt[259]" -type "float3" 0.59441561 0 -4.9360096e-008 ;
	setAttr ".pt[260]" -type "float3" 1.1489153 0 -0.098427422 ;
	setAttr ".pt[261]" -type "float3" 1.9120474 0 -0.052428037 ;
	setAttr ".pt[262]" -type "float3" 1.9120469 0 -0.052428037 ;
	setAttr ".pt[263]" -type "float3" 1.9120469 0 -0.052428134 ;
	setAttr ".pt[264]" -type "float3" 1.12941 0 -0.052428134 ;
	setAttr ".pt[265]" -type "float3" 0.59441561 0 -4.9360096e-008 ;
	setAttr ".pt[266]" -type "float3" 1.1489153 0 -0.098427422 ;
	setAttr ".pt[267]" -type "float3" 1.9120474 0 -0.052428037 ;
	setAttr ".pt[268]" -type "float3" 1.9120469 0 -0.052428037 ;
	setAttr ".pt[269]" -type "float3" 1.9120469 0 -0.052428134 ;
	setAttr ".pt[270]" -type "float3" 1.12941 0 -0.052428134 ;
	setAttr ".pt[271]" -type "float3" 0.59441561 0 -4.9360096e-008 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode lightLinker -s -n "lightLinker1";
	rename -uid "41DF8F1C-4387-21E0-F4AD-A8B898AF9073";
	setAttr -s 2 ".lnk";
	setAttr -s 2 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "4E0502FA-4A89-A847-A913-0792E5253F9A";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "0B90CED1-4EC1-923A-2D8F-9588169ABF4A";
createNode displayLayerManager -n "layerManager";
	rename -uid "1D1947D8-49C0-8F4A-4BD9-D48B00486D6C";
createNode displayLayer -n "defaultLayer";
	rename -uid "D3D068AC-4B0C-FBF4-0785-5EBC2FD47884";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "3347F6B4-49BD-C438-3BC0-D19E7FF3C5B3";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "57EE3539-4DF4-16DA-8A5E-65A4349D2A3E";
	setAttr ".g" yes;
createNode polyCylinder -n "polyCylinder1";
	rename -uid "C5027CB1-45E8-F4D2-8928-21B21BCB700F";
	setAttr ".r" 1.2349270620571251;
	setAttr ".h" 0.19028827100828849;
	setAttr ".sc" 4;
	setAttr ".cuv" 3;
createNode deleteComponent -n "deleteComponent1";
	rename -uid "C19C9D7E-4B02-164B-219E-078D41BC9C6D";
	setAttr ".dc" -type "componentList" 1 "f[140:179]";
createNode polyBevel3 -n "polyBevel1";
	rename -uid "2F787CBF-4697-4280-60C4-A8B99C3027D9";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "e[4]" "e[144]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -0.79307751843516827 0.094601085504144242 0.031526549725930463 1;
	setAttr ".ws" yes;
	setAttr ".oaf" yes;
	setAttr ".at" 180;
	setAttr ".sn" yes;
	setAttr ".mv" yes;
	setAttr ".mvt" 0.0001;
	setAttr ".sa" 30;
createNode polyExtrudeEdge -n "polyExtrudeEdge1";
	rename -uid "EDFA28FE-42E8-5689-AD6D-F88E5B65B763";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[144]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -0.79307751843516827 0.094601085504144242 0.031526549725930463 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -0.84077924 0.18974522 -0.26965016 ;
	setAttr ".rs" 34296;
	setAttr ".lt" -type "double3" -3.2454046638226457e-017 -1.2569614819360432e-017 
		-0.19031356704858157 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.88848095128123761 0.18974521579369885 -0.27720536384065891 ;
	setAttr ".cbx" -type "double3" -0.79307751843516827 0.18974521579369885 -0.26209493073900486 ;
createNode polyTweakUV -n "polyTweakUV1";
	rename -uid "000F917D-4AC0-761B-75A3-92BECB27DE96";
	setAttr ".uopa" yes;
	setAttr -s 5 ".uvtk";
	setAttr ".uvtk[4]" -type "float2" -7.4178073e-009 -9.9108129e-006 ;
	setAttr ".uvtk[5]" -type "float2" -3.0603369e-006 -1.1883472e-005 ;
	setAttr ".uvtk[204]" -type "float2" -0.0039662477 0.0013398484 ;
	setAttr ".uvtk[205]" -type "float2" 0.0053021479 0.0016889314 ;
createNode polyMergeVert -n "polyMergeVert1";
	rename -uid "83331102-4CD2-377F-A24C-24A87149F5C8";
	setAttr ".ics" -type "componentList" 2 "vtx[4:5]" "vtx[160:161]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -0.79307751843516827 0.094601085504144242 0.031526549725930463 1;
	setAttr ".d" 1e-006;
createNode polyTweak -n "polyTweak1";
	rename -uid "D2D8AC2E-4819-B1F2-2C2C-D5B9386FC530";
	setAttr ".uopa" yes;
	setAttr -s 7 ".tk";
	setAttr ".tk[4]" -type "float3" 2.220446e-016 0 0 ;
	setAttr ".tk[160]" -type "float3" 2.220446e-016 2.5307585e-005 0 ;
	setAttr ".tk[161]" -type "float3" 0 2.5307585e-005 0 ;
createNode polyExtrudeEdge -n "polyExtrudeEdge2";
	rename -uid "DFE559CC-44E9-F095-4152-3886437DBD3F";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[143]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -0.79307751843516827 0.094601085504144242 0.031526549725930463 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -0.74537581 0.18974522 -0.26965019 ;
	setAttr ".rs" 54855;
	setAttr ".lt" -type "double3" -1.3013961216542757e-016 2.3600678267672754e-017 -0.18450500234889244 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.79307751843516827 0.18974521579369885 -0.27720536384065891 ;
	setAttr ".cbx" -type "double3" -0.69767408558909894 0.18974521579369885 -0.26209499034364964 ;
createNode polyTweakUV -n "polyTweakUV2";
	rename -uid "4FFC927B-4B01-3C60-597B-2E9EE22FA261";
	setAttr ".uopa" yes;
	setAttr -s 6 ".uvtk";
	setAttr ".uvtk[3]" -type "float2" 3.0757969e-006 -1.1889878e-005 ;
	setAttr ".uvtk[4]" -type "float2" -1.9401702e-012 -1.061471e-005 ;
	setAttr ".uvtk[205]" -type "float2" 0.0029595522 -0.0014673474 ;
	setAttr ".uvtk[208]" -type "float2" -0.0039694482 0.029420309 ;
	setAttr ".uvtk[209]" -type "float2" 0.0053021493 0.029788416 ;
createNode polyMergeVert -n "polyMergeVert2";
	rename -uid "EDCDAC6E-499C-FC5B-7BC8-06BA38842782";
	setAttr ".ics" -type "componentList" 2 "vtx[3:4]" "vtx[160:161]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -0.79307751843516827 0.094601085504144242 0.031526549725930463 1;
	setAttr ".d" 1e-006;
createNode polyTweak -n "polyTweak2";
	rename -uid "EB5DE0FD-451B-083F-0071-10B8EA4761C6";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk";
	setAttr ".tk[4]" -type "float3" 2.220446e-016 0 0 ;
	setAttr ".tk[160]" -type "float3" 0 -0.0057832524 0 ;
	setAttr ".tk[161]" -type "float3" 2.220446e-016 -0.0057832524 0 ;
createNode polyExtrudeEdge -n "polyExtrudeEdge3";
	rename -uid "3A34E9A4-45EF-3BCC-5B51-1583F09D76F5";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "e[142]" "e[145]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -0.79307751843516827 0.094601085504144242 0.031526549725930463 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -0.79307753 0.18974522 -0.2401689 ;
	setAttr ".rs" 58925;
	setAttr ".lt" -type "double3" -1.3120464066012142e-017 1.642358505020429e-017 -0.18534105260107331 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.97454558798854352 0.18974521579369885 -0.26209499034364964 ;
	setAttr ".cbx" -type "double3" -0.61160944888179303 0.18974521579369885 -0.21824279519994996 ;
createNode polyTweakUV -n "polyTweakUV3";
	rename -uid "8EE0E5A1-4F41-9F4F-30C4-738404291077";
	setAttr ".uopa" yes;
	setAttr -s 11 ".uvtk";
	setAttr ".uvtk[2]" -type "float2" 6.5969166e-006 -1.097326e-005 ;
	setAttr ".uvtk[3]" -type "float2" 3.0918627e-006 -1.1008121e-005 ;
	setAttr ".uvtk[5]" -type "float2" -1.4457388e-006 -8.2747129e-006 ;
	setAttr ".uvtk[6]" -type "float2" -6.9559724e-006 -1.3036167e-005 ;
	setAttr ".uvtk[204]" -type "float2" -0.0022156953 -0.0016606306 ;
	setAttr ".uvtk[209]" -type "float2" 0.0029587569 -0.0015108173 ;
	setAttr ".uvtk[212]" -type "float2" -0.0039685708 0.024798622 ;
	setAttr ".uvtk[213]" -type "float2" 0.0053022048 0.025163652 ;
	setAttr ".uvtk[216]" -type "float2" -0.0039685853 0.024798715 ;
	setAttr ".uvtk[217]" -type "float2" 0.0053021531 0.025163734 ;
createNode polyMergeVert -n "polyMergeVert3";
	rename -uid "7407C18C-4614-88CF-7EA7-8481E62F6A74";
	setAttr ".ics" -type "componentList" 3 "vtx[2:3]" "vtx[5:6]" "vtx[160:163]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -0.79307751843516827 0.094601085504144242 0.031526549725930463 1;
	setAttr ".d" 1e-006;
createNode polyTweak -n "polyTweak3";
	rename -uid "BF0F54B6-4E4C-B720-BF42-019FA209EFEB";
	setAttr ".uopa" yes;
	setAttr -s 8 ".tk";
	setAttr ".tk[160]" -type "float3" 0 -0.0049472079 -1.4901161e-008 ;
	setAttr ".tk[161]" -type "float3" 0 -0.0049472079 0 ;
	setAttr ".tk[162]" -type "float3" 0 -0.0049472228 0 ;
	setAttr ".tk[163]" -type "float3" 0 -0.0049472228 0 ;
createNode polyExtrudeEdge -n "polyExtrudeEdge4";
	rename -uid "25DFA2E1-4BD8-16EB-830A-28ABF2AD8D41";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "e[141]" "e[146]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -0.79307751843516827 0.094601085504144242 0.031526549725930463 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -0.79307747 0.18974522 -0.18409216 ;
	setAttr ".rs" 61006;
	setAttr ".lt" -type "double3" -1.6661423449803418e-018 -1.3149857205521155e-016 
		-0.18567643066150991 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1.0428467888552428 0.18974521579369885 -0.21824283990343354 ;
	setAttr ".cbx" -type "double3" -0.54330812880580426 0.18974521579369885 -0.14994147512396119 ;
createNode polyTweakUV -n "polyTweakUV4";
	rename -uid "2BCCABA2-43F4-3D2D-0416-EAA8436C8B3F";
	setAttr ".uopa" yes;
	setAttr -s 11 ".uvtk";
	setAttr ".uvtk[1]" -type "float2" 9.6530539e-006 -8.553101e-006 ;
	setAttr ".uvtk[2]" -type "float2" 6.2909339e-006 -1.0067394e-005 ;
	setAttr ".uvtk[6]" -type "float2" -3.3035317e-006 -6.1780433e-006 ;
	setAttr ".uvtk[7]" -type "float2" -1.0559806e-005 -1.060611e-005 ;
	setAttr ".uvtk[213]" -type "float2" 0.0029589562 -0.0015036679 ;
	setAttr ".uvtk[216]" -type "float2" -0.0029608062 -0.0013192233 ;
	setAttr ".uvtk[220]" -type "float2" -0.0039682733 0.022956252 ;
	setAttr ".uvtk[221]" -type "float2" 0.0053021489 0.023320042 ;
	setAttr ".uvtk[224]" -type "float2" -0.0039682793 0.022956252 ;
	setAttr ".uvtk[225]" -type "float2" 0.0053021568 0.023320042 ;
createNode polyMergeVert -n "polyMergeVert4";
	rename -uid "F7C744D1-4A60-3D76-3DE7-C8B221645D24";
	setAttr ".ics" -type "componentList" 3 "vtx[1:2]" "vtx[6:7]" "vtx[160:163]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -0.79307751843516827 0.094601085504144242 0.031526549725930463 1;
	setAttr ".d" 1e-006;
createNode polyTweak -n "polyTweak4";
	rename -uid "B3C2563F-433D-CC25-231C-668355280811";
	setAttr ".uopa" yes;
	setAttr -s 8 ".tk";
	setAttr ".tk[160]" -type "float3" 0 -0.0046118274 0 ;
	setAttr ".tk[161]" -type "float3" 0 -0.0046118274 0 ;
	setAttr ".tk[162]" -type "float3" 0 -0.0046118274 0 ;
	setAttr ".tk[163]" -type "float3" 0 -0.0046118274 0 ;
createNode polyExtrudeEdge -n "polyExtrudeEdge5";
	rename -uid "46D406FD-477E-0C47-0158-DB87628AA5FB";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "e[140]" "e[147]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -0.79307751843516827 0.094601085504144242 0.031526549725930463 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -0.79307747 0.18974522 -0.10690919 ;
	setAttr ".rs" 34739;
	setAttr ".lt" -type "double3" -6.9631911349890854e-017 -4.9137862337108739e-017 
		-0.18748230246399417 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1.0866989989001037 0.18974521579369885 -0.14994153472860597 ;
	setAttr ".cbx" -type "double3" -0.49945597836558819 0.18974521579369885 -0.063876830966074688 ;
createNode polyTweakUV -n "polyTweakUV5";
	rename -uid "A5C4A9BD-402B-8311-36A1-6AAE52F8123D";
	setAttr ".uopa" yes;
	setAttr -s 10 ".uvtk";
	setAttr ".uvtk[0]" -type "float2" 1.1824053e-005 -5.1911252e-006 ;
	setAttr ".uvtk[1]" -type "float2" 9.0830181e-006 -7.8492822e-006 ;
	setAttr ".uvtk[7]" -type "float2" -5.0106059e-006 -5.0255585e-006 ;
	setAttr ".uvtk[8]" -type "float2" -1.3297154e-005 -6.9481675e-006 ;
	setAttr ".uvtk[221]" -type "float2" 0.0029590421 -0.0015008289 ;
	setAttr ".uvtk[224]" -type "float2" -0.0029608849 -0.0013169864 ;
	setAttr ".uvtk[228]" -type "float2" -0.0039669857 0.013148402 ;
	setAttr ".uvtk[229]" -type "float2" 0.0053021493 0.013505595 ;
	setAttr ".uvtk[232]" -type "float2" -0.0039669853 0.013148402 ;
	setAttr ".uvtk[233]" -type "float2" 0.0053021484 0.013505595 ;
createNode polyMergeVert -n "polyMergeVert5";
	rename -uid "1C27E5A2-4790-3593-8756-BEADD5F8E4D5";
	setAttr ".ics" -type "componentList" 3 "vtx[0:1]" "vtx[7:8]" "vtx[160:163]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -0.79307751843516827 0.094601085504144242 0.031526549725930463 1;
	setAttr ".d" 1e-006;
createNode polyTweak -n "polyTweak5";
	rename -uid "3C56E967-4D12-FA79-6249-BDA0B35FD8D2";
	setAttr ".uopa" yes;
	setAttr -s 8 ".tk";
	setAttr ".tk[160]" -type "float3" 0 -0.0028059557 0 ;
	setAttr ".tk[161]" -type "float3" 0 -0.0028059557 0 ;
	setAttr ".tk[162]" -type "float3" 0 -0.0028059557 0 ;
	setAttr ".tk[163]" -type "float3" 0 -0.0028059557 0 ;
createNode polyExtrudeEdge -n "polyExtrudeEdge6";
	rename -uid "3104E6B2-4925-2C1D-2B52-39AA6A33C571";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "e[148]" "e[159]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -0.79307751843516827 0.094601085504144242 0.031526549725930463 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -0.79307759 0.18974522 -0.016175158 ;
	setAttr ".rs" 56002;
	setAttr ".lt" -type "double3" 3.9358041383107725e-017 -1.0700694415899923e-016 -0.18470573321598324 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1.101809372397113 0.18974521579369885 -0.063876868218977673 ;
	setAttr ".cbx" -type "double3" -0.48434575388019085 0.18974521579369885 0.031526549725930463 ;
createNode polyTweakUV -n "polyTweakUV6";
	rename -uid "233A564A-43DB-D928-D8E3-85A4D8E6EAF0";
	setAttr ".uopa" yes;
	setAttr -s 10 ".uvtk";
	setAttr ".uvtk[0]" -type "float2" 1.1059774e-005 -4.7365379e-006 ;
	setAttr ".uvtk[8]" -type "float2" -6.305786e-006 -3.2957269e-006 ;
	setAttr ".uvtk[9]" -type "float2" -1.4788421e-005 -2.5476113e-006 ;
	setAttr ".uvtk[19]" -type "float2" 1.2842356e-005 -1.288523e-006 ;
	setAttr ".uvtk[229]" -type "float2" 0.0029593727 -0.0014856318 ;
	setAttr ".uvtk[232]" -type "float2" -0.0029612109 -0.0013051627 ;
	setAttr ".uvtk[236]" -type "float2" -0.0039692316 0.028306777 ;
	setAttr ".uvtk[237]" -type "float2" 0.0053021549 0.028674141 ;
	setAttr ".uvtk[240]" -type "float2" -0.0039692307 0.02830687 ;
	setAttr ".uvtk[241]" -type "float2" 0.0053021531 0.028674223 ;
createNode polyMergeVert -n "polyMergeVert6";
	rename -uid "C520E41C-4967-5B11-1881-308472340E4C";
	setAttr ".ics" -type "componentList" 4 "vtx[0]" "vtx[8:9]" "vtx[19]" "vtx[160:163]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -0.79307751843516827 0.094601085504144242 0.031526549725930463 1;
	setAttr ".d" 1e-006;
createNode polyTweak -n "polyTweak6";
	rename -uid "9DCFB1E0-4319-F302-D5F0-77A7ADB50EE4";
	setAttr ".uopa" yes;
	setAttr -s 8 ".tk";
	setAttr ".tk[9]" -type "float3" 0 0 -4.6490589e-016 ;
	setAttr ".tk[19]" -type "float3" 0 0 -4.6490589e-016 ;
	setAttr ".tk[160]" -type "float3" 0 -0.005582504 0 ;
	setAttr ".tk[161]" -type "float3" 0 -0.005582504 -4.6490589e-016 ;
	setAttr ".tk[162]" -type "float3" 0 -0.0055825189 -4.6490589e-016 ;
	setAttr ".tk[163]" -type "float3" 0 -0.0055825189 0 ;
createNode polyExtrudeEdge -n "polyExtrudeEdge7";
	rename -uid "B8CFB7A6-41D8-F40F-A653-1B9EA3A5EF28";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[149:158]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -0.79307751843516827 0.094601085504144242 0.031526549725930463 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -0.79307759 0.18974522 0.18589245 ;
	setAttr ".rs" 64997;
	setAttr ".lt" -type "double3" -3.5034853747065648e-017 -4.4810093743168835e-016 
		-0.185506278021146 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1.101809372397113 0.18974521579369885 0.031526549725930463 ;
	setAttr ".cbx" -type "double3" -0.48434575388019085 0.18974521579369885 0.34025834408323025 ;
createNode polyTweakUV -n "polyTweakUV7";
	rename -uid "7232D9DF-4736-78FC-17D2-88B3AB13899E";
	setAttr ".uopa" yes;
	setAttr -s 10 ".uvtk";
	setAttr ".uvtk[13]" -type "float2" -3.0584622e-006 1.1885452e-005 ;
	setAttr ".uvtk[14]" -type "float2" -7.1308874e-009 2.0531281e-005 ;
	setAttr ".uvtk[15]" -type "float2" 3.0759409e-006 1.1885452e-005 ;
	setAttr ".uvtk[256]" -type "float2" -0.0053021559 0.024254495 ;
	setAttr ".uvtk[260]" -type "float2" -0.0082611712 0.022752229 ;
	setAttr ".uvtk[261]" -type "float2" 0.0039684377 0.023890058 ;
	setAttr ".uvtk[264]" -type "float2" -0.0039684316 0.023890028 ;
	setAttr ".uvtk[265]" -type "float2" 0.0082611702 0.022752218 ;
	setAttr ".uvtk[269]" -type "float2" 0.0053021619 0.024254454 ;
createNode polyMergeVert -n "polyMergeVert7";
	rename -uid "A6B257CC-4B09-2990-657E-03A63958EBDD";
	setAttr ".ics" -type "componentList" 2 "vtx[13:15]" "vtx[164:166]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -0.79307751843516827 0.094601085504144242 0.031526549725930463 1;
	setAttr ".d" 1e-006;
createNode polyTweak -n "polyTweak7";
	rename -uid "302C5A91-4544-417F-8428-969A2F449F87";
	setAttr ".uopa" yes;
	setAttr -s 6 ".tk";
	setAttr ".tk[14]" -type "float3" 2.220446e-016 0 0 ;
	setAttr ".tk[164]" -type "float3" 0 -0.0047819689 0 ;
	setAttr ".tk[165]" -type "float3" 2.220446e-016 -0.0047819689 0 ;
	setAttr ".tk[166]" -type "float3" 0 -0.0047819614 0 ;
createNode polyTweakUV -n "polyTweakUV8";
	rename -uid "06C96AD6-4337-A7FC-8183-3DA4ADBC6409";
	setAttr ".uopa" yes;
	setAttr -s 13 ".uvtk";
	setAttr ".uvtk[12]" -type "float2" -6.590501e-006 1.0974657e-005 ;
	setAttr ".uvtk[13]" -type "float2" -3.082788e-006 1.1003697e-005 ;
	setAttr ".uvtk[15]" -type "float2" 1.4456673e-006 8.2746292e-006 ;
	setAttr ".uvtk[16]" -type "float2" 6.9355165e-006 1.3033192e-005 ;
	setAttr ".uvtk[252]" -type "float2" -0.0053021559 0.024254484 ;
	setAttr ".uvtk[256]" -type "float2" -0.0029590181 -0.0015022657 ;
	setAttr ".uvtk[257]" -type "float2" 0.0039684391 0.023890058 ;
	setAttr ".uvtk[261]" -type "float2" 0.002215293 -0.0016966092 ;
	setAttr ".uvtk[264]" -type "float2" -0.0022152916 -0.0016966392 ;
	setAttr ".uvtk[268]" -type "float2" -0.0029295217 0.023606148 ;
	setAttr ".uvtk[269]" -type "float2" 0.0039246813 -0.0010723651 ;
	setAttr ".uvtk[273]" -type "float2" 0.0053021498 0.024254464 ;
createNode polyMergeVert -n "polyMergeVert8";
	rename -uid "1CD72F96-437B-63EE-5716-42B1A838EBB8";
	setAttr ".ics" -type "componentList" 3 "vtx[12:13]" "vtx[15:16]" "vtx[163:164]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -0.79307751843516827 0.094601085504144242 0.031526549725930463 1;
	setAttr ".d" 1e-006;
createNode polyTweak -n "polyTweak8";
	rename -uid "F42E7D7A-4058-D2A0-8013-8DBBFE2BE035";
	setAttr ".uopa" yes;
	setAttr -s 6 ".tk";
	setAttr ".tk[163]" -type "float3" 0 -0.0047819689 0 ;
	setAttr ".tk[164]" -type "float3" 0 -0.0047819614 0 ;
createNode polyTweakUV -n "polyTweakUV9";
	rename -uid "7EF01EA1-45D4-DD9C-9AF2-1F84A38BC64B";
	setAttr ".uopa" yes;
	setAttr -s 13 ".uvtk";
	setAttr ".uvtk[11]" -type "float2" -9.6498025e-006 8.5546872e-006 ;
	setAttr ".uvtk[12]" -type "float2" -6.292777e-006 1.0070855e-005 ;
	setAttr ".uvtk[16]" -type "float2" 3.2987521e-006 6.1750693e-006 ;
	setAttr ".uvtk[17]" -type "float2" 1.0561305e-005 1.0605141e-005 ;
	setAttr ".uvtk[248]" -type "float2" -0.0053021507 0.024254454 ;
	setAttr ".uvtk[252]" -type "float2" -0.0029590181 -0.0015022657 ;
	setAttr ".uvtk[253]" -type "float2" 0.0039684391 0.023890028 ;
	setAttr ".uvtk[257]" -type "float2" 0.0022152942 -0.0016966392 ;
	setAttr ".uvtk[268]" -type "float2" -0.0022351821 -0.0015164212 ;
	setAttr ".uvtk[272]" -type "float2" -0.0029295154 0.023606177 ;
	setAttr ".uvtk[273]" -type "float2" 0.003924673 -0.0010723551 ;
	setAttr ".uvtk[277]" -type "float2" 0.0053021554 0.024254495 ;
createNode polyMergeVert -n "polyMergeVert9";
	rename -uid "531FD15B-4661-D430-3F2F-D0AF17CF55D2";
	setAttr ".ics" -type "componentList" 3 "vtx[11:12]" "vtx[16:17]" "vtx[162:163]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -0.79307751843516827 0.094601085504144242 0.031526549725930463 1;
	setAttr ".d" 1e-006;
createNode polyTweak -n "polyTweak9";
	rename -uid "2708F2E3-4F83-DB47-D7BB-A095347F8E12";
	setAttr ".uopa" yes;
	setAttr -s 6 ".tk";
	setAttr ".tk[162]" -type "float3" 0 -0.0047819614 0 ;
	setAttr ".tk[163]" -type "float3" 0 -0.0047819689 0 ;
createNode polyTweakUV -n "polyTweakUV10";
	rename -uid "9071105F-471D-967E-F6AF-4AA4B79B4B01";
	setAttr ".uopa" yes;
	setAttr -s 13 ".uvtk";
	setAttr ".uvtk[10]" -type "float2" -1.5507105e-005 4.5537836e-006 ;
	setAttr ".uvtk[11]" -type "float2" -9.9919289e-006 7.6969882e-006 ;
	setAttr ".uvtk[17]" -type "float2" 5.0121039e-006 5.0245885e-006 ;
	setAttr ".uvtk[18]" -type "float2" 1.648951e-005 6.6288412e-006 ;
	setAttr ".uvtk[244]" -type "float2" -0.005302154 0.024254464 ;
	setAttr ".uvtk[248]" -type "float2" -0.0029590141 -0.0015022657 ;
	setAttr ".uvtk[249]" -type "float2" 0.0039684339 0.023890028 ;
	setAttr ".uvtk[253]" -type "float2" 0.0022152942 -0.0016966392 ;
	setAttr ".uvtk[272]" -type "float2" -0.0022351756 -0.0015164212 ;
	setAttr ".uvtk[276]" -type "float2" -0.002929518 0.023606177 ;
	setAttr ".uvtk[277]" -type "float2" 0.0039246767 -0.0010723551 ;
	setAttr ".uvtk[281]" -type "float2" 0.0053021568 0.024254495 ;
createNode polyMergeVert -n "polyMergeVert10";
	rename -uid "3C8C9639-4770-5F58-BE61-A693DAEF1821";
	setAttr ".ics" -type "componentList" 3 "vtx[10:11]" "vtx[17:18]" "vtx[161:162]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -0.79307751843516827 0.094601085504144242 0.031526549725930463 1;
	setAttr ".d" 1e-006;
createNode polyTweak -n "polyTweak10";
	rename -uid "DE38A8F2-471A-90DB-F082-1988ED514CEB";
	setAttr ".uopa" yes;
	setAttr -s 6 ".tk";
	setAttr ".tk[161]" -type "float3" 0 -0.0047819614 0 ;
	setAttr ".tk[162]" -type "float3" 0 -0.0047819689 0 ;
createNode polyTweakUV -n "polyTweakUV11";
	rename -uid "82F5C2B1-4809-725A-D1FD-5088B9A5A09D";
	setAttr ".uopa" yes;
	setAttr -s 13 ".uvtk";
	setAttr ".uvtk[9]" -type "float2" -1.0869561e-005 -7.2698825e-008 ;
	setAttr ".uvtk[10]" -type "float2" -1.2546895e-005 4.0538816e-006 ;
	setAttr ".uvtk[18]" -type "float2" 7.8051689e-006 3.1409963e-006 ;
	setAttr ".uvtk[19]" -type "float2" 1.4911946e-005 6.388272e-007 ;
	setAttr ".uvtk[236]" -type "float2" -0.0029606414 -0.0013234532 ;
	setAttr ".uvtk[241]" -type "float2" 0.0029588051 -0.0015091029 ;
	setAttr ".uvtk[244]" -type "float2" -0.0029590167 -0.0015022657 ;
	setAttr ".uvtk[245]" -type "float2" 0.0039684367 0.023890058 ;
	setAttr ".uvtk[249]" -type "float2" 0.0022152904 -0.0016966392 ;
	setAttr ".uvtk[276]" -type "float2" -0.0022351784 -0.0015164212 ;
	setAttr ".uvtk[280]" -type "float2" -0.0029295189 0.023606177 ;
	setAttr ".uvtk[281]" -type "float2" 0.0039246776 -0.0010723551 ;
createNode polyMergeVert -n "polyMergeVert11";
	rename -uid "0C7A3EF2-4387-32C8-5E38-28B48BA9C2C3";
	setAttr ".ics" -type "componentList" 3 "vtx[9:10]" "vtx[18:19]" "vtx[160:161]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -0.79307751843516827 0.094601085504144242 0.031526549725930463 1;
	setAttr ".d" 1e-006;
createNode polyTweak -n "polyTweak11";
	rename -uid "3D038A4D-4D8B-F237-2011-499AE1ECEC89";
	setAttr ".uopa" yes;
	setAttr -s 6 ".tk";
	setAttr ".tk[9]" -type "float3" 0 0 -4.6490589e-016 ;
	setAttr ".tk[19]" -type "float3" 0 0 -4.6490589e-016 ;
	setAttr ".tk[160]" -type "float3" 0 -0.0047819689 -4.6490589e-016 ;
	setAttr ".tk[161]" -type "float3" 0 -0.0047819689 -4.6490589e-016 ;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "45047B51-44C4-AF21-E7F4-5B893DF60356";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"top\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n"
		+ "                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n"
		+ "                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n"
		+ "                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 1\n                -height 1\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n"
		+ "                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n"
		+ "            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n"
		+ "            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n"
		+ "        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"side\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n"
		+ "                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n"
		+ "                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n"
		+ "                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 1\n                -height 1\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n"
		+ "            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n"
		+ "            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n"
		+ "            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"front\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n"
		+ "                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n"
		+ "                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n"
		+ "                -width 1\n                -height 1\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n"
		+ "            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n"
		+ "            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n"
		+ "            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n"
		+ "                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n"
		+ "                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n"
		+ "                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 1604\n                -height 585\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n"
		+ "            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n"
		+ "            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1604\n            -height 585\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n"
		+ "            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `outlinerPanel -unParent -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            outlinerEditor -e \n                -showShapes 0\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 0\n                -showConnected 0\n                -showAnimCurvesOnly 0\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 1\n                -showAssets 1\n                -showContainedOnly 1\n                -showPublishedAsConnected 0\n"
		+ "                -showContainerContents 1\n                -ignoreDagHierarchy 0\n                -expandConnections 0\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 0\n                -highlightActive 1\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 1\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -isSet 0\n                -isSetMember 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n"
		+ "                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 0\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                -renderFilterIndex 0\n                -selectionOrder \"chronological\" \n                -expandAttribute 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n"
		+ "            -showMuteInfo 0\n            -organizeByLayer 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"0\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n"
		+ "            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `outlinerPanel -unParent -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            outlinerEditor -e \n"
		+ "                -showShapes 0\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 0\n                -showConnected 0\n                -showAnimCurvesOnly 0\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 1\n                -showAssets 1\n                -showContainedOnly 1\n                -showPublishedAsConnected 0\n                -showContainerContents 1\n                -ignoreDagHierarchy 0\n                -expandConnections 0\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 0\n                -highlightActive 1\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n"
		+ "                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 1\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 0\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n"
		+ "            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"0\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"graphEditor\" -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n"
		+ "                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n"
		+ "                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 1\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -showCurveNames 0\n                -showActiveCurveNames 0\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n"
		+ "                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                -valueLinesToggle 1\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n"
		+ "                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n"
		+ "                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 1\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -showCurveNames 0\n"
		+ "                -showActiveCurveNames 0\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                -valueLinesToggle 1\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dopeSheetPanel\" -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n"
		+ "                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n"
		+ "                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n"
		+ "                -displayValues 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n"
		+ "                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n"
		+ "                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n"
		+ "                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"timeEditorPanel\" -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"clipEditorPanel\" -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels `;\n"
		+ "\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n"
		+ "                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"sequenceEditorPanel\" -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperGraphPanel\" -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n"
		+ "            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n"
		+ "                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n"
		+ "                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperShadePanel\" -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"visorPanel\" -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n"
		+ "                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -activeTab -1\n                -editorMode \"default\" \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n"
		+ "                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -activeTab -1\n                -editorMode \"default\" \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"createNodePanel\" -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"polyTexturePlacementPanel\" -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"renderWindowPanel\" -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\tshapePanel -unParent -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels ;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\tposePanel -unParent -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels ;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynRelEdPanel\" -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"relationshipPanel\" -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"referenceEditorPanel\" -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"componentEditorPanel\" -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynPaintScriptedPanelType\" -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"scriptEditorPanel\" -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"profilerPanel\" -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"contentBrowserPanel\" -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1604\\n    -height 585\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1604\\n    -height 585\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        setFocus `paneLayout -q -p1 $gMainPane`;\n        sceneUIReplacement -deleteRemaining;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "A5BE289A-4820-D0A4-10D2-4588BD4457DB";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 120 -ast 1 -aet 200 ";
	setAttr ".st" 6;
createNode polyCube -n "polyCube1";
	rename -uid "2FA86478-4670-8705-EBC2-9C84F623C6FE";
	setAttr ".w" 4.8848871754614702;
	setAttr ".h" 0.26215121237528488;
	setAttr ".d" 1.2597806075968068;
	setAttr ".sw" 12;
	setAttr ".sh" 3;
	setAttr ".sd" 7;
	setAttr ".cuv" 4;
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
	setAttr -s 2 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 4 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderingList1;
select -ne :initialShadingGroup;
	setAttr -s 2 ".dsm";
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultRenderGlobals;
	setAttr ".ren" -type "string" "arnold";
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
select -ne :ikSystem;
	setAttr -s 4 ".sol";
connectAttr "polyMergeVert11.out" "pCylinderShape1.i";
connectAttr "polyTweakUV11.uvtk[0]" "pCylinderShape1.uvst[0].uvtw";
connectAttr "polyCube1.out" "pCubeShape1.i";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "polyCylinder1.out" "deleteComponent1.ig";
connectAttr "deleteComponent1.og" "polyBevel1.ip";
connectAttr "pCylinderShape1.wm" "polyBevel1.mp";
connectAttr "polyBevel1.out" "polyExtrudeEdge1.ip";
connectAttr "pCylinderShape1.wm" "polyExtrudeEdge1.mp";
connectAttr "polyExtrudeEdge1.out" "polyTweakUV1.ip";
connectAttr "polyTweak1.out" "polyMergeVert1.ip";
connectAttr "pCylinderShape1.wm" "polyMergeVert1.mp";
connectAttr "polyTweakUV1.out" "polyTweak1.ip";
connectAttr "polyMergeVert1.out" "polyExtrudeEdge2.ip";
connectAttr "pCylinderShape1.wm" "polyExtrudeEdge2.mp";
connectAttr "polyExtrudeEdge2.out" "polyTweakUV2.ip";
connectAttr "polyTweak2.out" "polyMergeVert2.ip";
connectAttr "pCylinderShape1.wm" "polyMergeVert2.mp";
connectAttr "polyTweakUV2.out" "polyTweak2.ip";
connectAttr "polyMergeVert2.out" "polyExtrudeEdge3.ip";
connectAttr "pCylinderShape1.wm" "polyExtrudeEdge3.mp";
connectAttr "polyExtrudeEdge3.out" "polyTweakUV3.ip";
connectAttr "polyTweak3.out" "polyMergeVert3.ip";
connectAttr "pCylinderShape1.wm" "polyMergeVert3.mp";
connectAttr "polyTweakUV3.out" "polyTweak3.ip";
connectAttr "polyMergeVert3.out" "polyExtrudeEdge4.ip";
connectAttr "pCylinderShape1.wm" "polyExtrudeEdge4.mp";
connectAttr "polyExtrudeEdge4.out" "polyTweakUV4.ip";
connectAttr "polyTweak4.out" "polyMergeVert4.ip";
connectAttr "pCylinderShape1.wm" "polyMergeVert4.mp";
connectAttr "polyTweakUV4.out" "polyTweak4.ip";
connectAttr "polyMergeVert4.out" "polyExtrudeEdge5.ip";
connectAttr "pCylinderShape1.wm" "polyExtrudeEdge5.mp";
connectAttr "polyExtrudeEdge5.out" "polyTweakUV5.ip";
connectAttr "polyTweak5.out" "polyMergeVert5.ip";
connectAttr "pCylinderShape1.wm" "polyMergeVert5.mp";
connectAttr "polyTweakUV5.out" "polyTweak5.ip";
connectAttr "polyMergeVert5.out" "polyExtrudeEdge6.ip";
connectAttr "pCylinderShape1.wm" "polyExtrudeEdge6.mp";
connectAttr "polyExtrudeEdge6.out" "polyTweakUV6.ip";
connectAttr "polyTweak6.out" "polyMergeVert6.ip";
connectAttr "pCylinderShape1.wm" "polyMergeVert6.mp";
connectAttr "polyTweakUV6.out" "polyTweak6.ip";
connectAttr "polyMergeVert6.out" "polyExtrudeEdge7.ip";
connectAttr "pCylinderShape1.wm" "polyExtrudeEdge7.mp";
connectAttr "polyExtrudeEdge7.out" "polyTweakUV7.ip";
connectAttr "polyTweak7.out" "polyMergeVert7.ip";
connectAttr "pCylinderShape1.wm" "polyMergeVert7.mp";
connectAttr "polyTweakUV7.out" "polyTweak7.ip";
connectAttr "polyMergeVert7.out" "polyTweakUV8.ip";
connectAttr "polyTweak8.out" "polyMergeVert8.ip";
connectAttr "pCylinderShape1.wm" "polyMergeVert8.mp";
connectAttr "polyTweakUV8.out" "polyTweak8.ip";
connectAttr "polyMergeVert8.out" "polyTweakUV9.ip";
connectAttr "polyTweak9.out" "polyMergeVert9.ip";
connectAttr "pCylinderShape1.wm" "polyMergeVert9.mp";
connectAttr "polyTweakUV9.out" "polyTweak9.ip";
connectAttr "polyMergeVert9.out" "polyTweakUV10.ip";
connectAttr "polyTweak10.out" "polyMergeVert10.ip";
connectAttr "pCylinderShape1.wm" "polyMergeVert10.mp";
connectAttr "polyTweakUV10.out" "polyTweak10.ip";
connectAttr "polyMergeVert10.out" "polyTweakUV11.ip";
connectAttr "polyTweak11.out" "polyMergeVert11.ip";
connectAttr "pCylinderShape1.wm" "polyMergeVert11.mp";
connectAttr "polyTweakUV11.out" "polyTweak11.ip";
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "pCylinderShape1.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape1.iog" ":initialShadingGroup.dsm" -na;
// End of Key.ma
