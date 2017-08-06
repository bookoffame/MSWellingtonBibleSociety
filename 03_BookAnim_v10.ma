//Maya ASCII 2013 scene
//Name: 03_BookAnim_v10.ma
//Last modified: Tue, Aug 01, 2017 10:56:33 PM
//Codeset: 1252
file -rdi 1 -ns "BookRigged_reference" -rfn "BookRigged_referenceRN" "D:/2017/UniversityOfToronto/00_Wllington_Alex_final/01_BookRigg_V17_bendUVadjustmentv08.mb";
file -r -ns "BookRigged_reference" -dr 1 -rfn "BookRigged_referenceRN" "D:/2017/UniversityOfToronto/00_Wllington_Alex_final/01_BookRigg_V17_bendUVadjustmentv08.mb";
requires maya "2013";
requires "Mayatomr" "2013.0 - 3.10.1.11 ";
requires "stereoCamera" "10.0";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2013";
fileInfo "version" "2013 x64";
fileInfo "cutIdentifier" "201209210409-845513";
fileInfo "osv" "Microsoft Windows 7 Business Edition, 64-bit Windows 7 Service Pack 1 (Build 7601)\n";
createNode transform -s -n "persp";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 6.4047100130331565 49.797217054543147 20.422633617522806 ;
	setAttr ".r" -type "double3" 653.06164726716565 -3.0000000000003393 -1.9905746893448699e-016 ;
createNode camera -s -n "perspShape" -p "persp";
	setAttr -k off ".v" no;
	setAttr ".pze" yes;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 52.481936041473276;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 100.1 0 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
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
	setAttr ".v" no;
	setAttr ".t" -type "double3" 6.8064935192911875 3.9943920383683729 100.1 ;
createNode camera -s -n "frontShape" -p "front";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 38.204626740312754;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 100.1 0 0 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode transform -n "pPlane1";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 -1.27 0 ;
	setAttr ".s" -type "double3" 78.198329558316544 78.198329558316544 78.198329558316544 ;
createNode mesh -n "pPlaneShape1" -p "pPlane1";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode lightLinker -s -n "lightLinker1";
	setAttr -s 35 ".lnk";
	setAttr -s 35 ".slnk";
createNode displayLayerManager -n "layerManager";
createNode displayLayer -n "defaultLayer";
createNode renderLayerManager -n "renderLayerManager";
createNode renderLayer -n "defaultRenderLayer";
	setAttr ".g" yes;
createNode script -n "uiConfigurationScriptNode";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"top\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n"
		+ "                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 32768\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"base_OpenGL_Renderer\" \n"
		+ "                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n"
		+ "                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -shadows 0\n                $editorName;\nmodelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n"
		+ "            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"base_OpenGL_Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n"
		+ "            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 0\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n"
		+ "            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -shadows 0\n            $editorName;\nmodelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"side\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n"
		+ "                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 32768\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"base_OpenGL_Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n"
		+ "                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n"
		+ "                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -shadows 0\n                $editorName;\nmodelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n"
		+ "            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"base_OpenGL_Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n"
		+ "            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 0\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -dimensions 1\n"
		+ "            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -shadows 0\n            $editorName;\nmodelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"front\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n"
		+ "                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 32768\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"base_OpenGL_Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n"
		+ "                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n"
		+ "                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -shadows 0\n                $editorName;\nmodelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n"
		+ "            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"base_OpenGL_Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 0\n"
		+ "            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n"
		+ "            -motionTrails 1\n            -clipGhosts 1\n            -shadows 0\n            $editorName;\nmodelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n"
		+ "                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 1\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 32768\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"hwRender_OpenGL_Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n"
		+ "                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n"
		+ "                -locators 1\n                -manipulators 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -shadows 0\n                $editorName;\nmodelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n"
		+ "            -activeComponentsXray 0\n            -displayTextures 1\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"hwRender_OpenGL_Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n"
		+ "            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -shadows 0\n            $editorName;\n"
		+ "modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `outlinerPanel -unParent -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            outlinerEditor -e \n                -docTag \"isolOutln_fromSeln\" \n                -showShapes 0\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 0\n                -showConnected 0\n                -showAnimCurvesOnly 0\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 1\n                -showAssets 1\n                -showContainedOnly 1\n                -showPublishedAsConnected 0\n                -showContainerContents 1\n"
		+ "                -ignoreDagHierarchy 0\n                -expandConnections 0\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 0\n                -highlightActive 1\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"defaultSetFilter\" \n                -showSetMembers 1\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n"
		+ "                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n"
		+ "            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n"
		+ "            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\tif ($useSceneConfig) {\n\t\toutlinerPanel -e -to $panelName;\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"graphEditor\" -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n"
		+ "                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n"
		+ "                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n"
		+ "                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n"
		+ "                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n"
		+ "                -showPinIcons 1\n                -mapMotionTrails 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dopeSheetPanel\" -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n"
		+ "                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n"
		+ "                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n"
		+ "                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n"
		+ "                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n"
		+ "                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"clipEditorPanel\" -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n"
		+ "                -manageSequencer 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"sequenceEditorPanel\" -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperGraphPanel\" -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n"
		+ "                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showUnderworld 0\n                -showInvisible 0\n"
		+ "                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperShadePanel\" -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\tif ($useSceneConfig) {\n\t\tscriptedPanel -e -to $panelName;\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"visorPanel\" -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n"
		+ "                -allNodes 0\n                -autoSizeNodes 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -ignoreAssets 1\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -island 0\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -syncedSelection 1\n                -extendToShapes 1\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -ignoreAssets 1\n"
		+ "                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -island 0\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -syncedSelection 1\n                -extendToShapes 1\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"createNodePanel\" -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Texture Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"polyTexturePlacementPanel\" -l (localizedPanelLabel(\"UV Texture Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Texture Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\tif ($useSceneConfig) {\n\t\tscriptedPanel -e -to $panelName;\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"renderWindowPanel\" -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"Blend Shape\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\tblendShapePanel -unParent -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels ;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tblendShapePanel -edit -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\tif ($useSceneConfig) {\n\t\tblendShapePanel -e -to $panelName;\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynRelEdPanel\" -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"relationshipPanel\" -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"referenceEditorPanel\" -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\tif ($useSceneConfig) {\n\t\tscriptedPanel -e -to $panelName;\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"componentEditorPanel\" -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynPaintScriptedPanelType\" -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"scriptEditorPanel\" -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"Stereo\" (localizedPanelLabel(\"Stereo\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"Stereo\" -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels `;\nstring $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n"
		+ "                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 32768\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n"
		+ "                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n"
		+ "                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -shadows 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                $editorName;\nstereoCameraView -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "string $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 32768\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n"
		+ "                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n"
		+ "                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -shadows 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                $editorName;\nstereoCameraView -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n"
		+ "\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 1\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"hwRender_OpenGL_Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 1\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"hwRender_OpenGL_Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        setFocus `paneLayout -q -p1 $gMainPane`;\n        sceneUIReplacement -deleteRemaining;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 62 -ast 1 -aet 62 ";
	setAttr ".st" 6;
createNode reference -n "BookRigged_referenceRN";
	setAttr -s 5 ".fn";
	setAttr ".fn[0]" -type "string" "D:/2017/UniversityOfToronto/00_Wllington_Alex_final/01_BookRigg_V17_bendv07.mb";
	setAttr ".fn[1]" -type "string" "D:/2017/UniversityOfToronto/00_Wllington_Alex_final/01_BookRigg_V17_bendv06.mb";
	setAttr ".fn[2]" -type "string" "D:/2017/UniversityOfToronto/00_Wllington_Alex_final/01_BookRigg_V17_bendv05.mb";
	setAttr ".fn[3]" -type "string" "D:/2017/UniversityOfToronto/00_Wllington_Alex_final/01_BookRigg_V17_bend.mb";
	setAttr ".fn[4]" -type "string" "D:/2016/UniversityOfToronto/00_Wllington_Alex_final/00_book14.mb";
	setAttr -s 202 ".phl";
	setAttr ".phl[499]" 0;
	setAttr ".phl[501]" 0;
	setAttr ".phl[502]" 0;
	setAttr ".phl[503]" 0;
	setAttr ".phl[504]" 0;
	setAttr ".phl[505]" 0;
	setAttr ".phl[506]" 0;
	setAttr ".phl[507]" 0;
	setAttr ".phl[508]" 0;
	setAttr ".phl[509]" 0;
	setAttr ".phl[510]" 0;
	setAttr ".phl[511]" 0;
	setAttr ".phl[512]" 0;
	setAttr ".phl[513]" 0;
	setAttr ".phl[514]" 0;
	setAttr ".phl[515]" 0;
	setAttr ".phl[516]" 0;
	setAttr ".phl[517]" 0;
	setAttr ".phl[518]" 0;
	setAttr ".phl[519]" 0;
	setAttr ".phl[520]" 0;
	setAttr ".phl[521]" 0;
	setAttr ".phl[522]" 0;
	setAttr ".phl[523]" 0;
	setAttr ".phl[524]" 0;
	setAttr ".phl[525]" 0;
	setAttr ".phl[526]" 0;
	setAttr ".phl[527]" 0;
	setAttr ".phl[528]" 0;
	setAttr ".phl[529]" 0;
	setAttr ".phl[530]" 0;
	setAttr ".phl[531]" 0;
	setAttr ".phl[532]" 0;
	setAttr ".phl[533]" 0;
	setAttr ".phl[534]" 0;
	setAttr ".phl[535]" 0;
	setAttr ".phl[536]" 0;
	setAttr ".phl[537]" 0;
	setAttr ".phl[538]" 0;
	setAttr ".phl[539]" 0;
	setAttr ".phl[540]" 0;
	setAttr ".phl[541]" 0;
	setAttr ".phl[542]" 0;
	setAttr ".phl[543]" 0;
	setAttr ".phl[544]" 0;
	setAttr ".phl[545]" 0;
	setAttr ".phl[546]" 0;
	setAttr ".phl[547]" 0;
	setAttr ".phl[548]" 0;
	setAttr ".phl[549]" 0;
	setAttr ".phl[550]" 0;
	setAttr ".phl[551]" 0;
	setAttr ".phl[552]" 0;
	setAttr ".phl[553]" 0;
	setAttr ".phl[554]" 0;
	setAttr ".phl[555]" 0;
	setAttr ".phl[556]" 0;
	setAttr ".phl[557]" 0;
	setAttr ".phl[558]" 0;
	setAttr ".phl[559]" 0;
	setAttr ".phl[560]" 0;
	setAttr ".phl[561]" 0;
	setAttr ".phl[562]" 0;
	setAttr ".phl[563]" 0;
	setAttr ".phl[564]" 0;
	setAttr ".phl[565]" 0;
	setAttr ".phl[566]" 0;
	setAttr ".phl[567]" 0;
	setAttr ".phl[568]" 0;
	setAttr ".phl[569]" 0;
	setAttr ".phl[570]" 0;
	setAttr ".phl[571]" 0;
	setAttr ".phl[572]" 0;
	setAttr ".phl[573]" 0;
	setAttr ".phl[574]" 0;
	setAttr ".phl[575]" 0;
	setAttr ".phl[576]" 0;
	setAttr ".phl[577]" 0;
	setAttr ".phl[578]" 0;
	setAttr ".phl[579]" 0;
	setAttr ".phl[580]" 0;
	setAttr ".phl[581]" 0;
	setAttr ".phl[582]" 0;
	setAttr ".phl[583]" 0;
	setAttr ".phl[584]" 0;
	setAttr ".phl[585]" 0;
	setAttr ".phl[586]" 0;
	setAttr ".phl[587]" 0;
	setAttr ".phl[588]" 0;
	setAttr ".phl[589]" 0;
	setAttr ".phl[590]" 0;
	setAttr ".phl[591]" 0;
	setAttr ".phl[592]" 0;
	setAttr ".phl[593]" 0;
	setAttr ".phl[594]" 0;
	setAttr ".phl[595]" 0;
	setAttr ".phl[596]" 0;
	setAttr ".phl[597]" 0;
	setAttr ".phl[598]" 0;
	setAttr ".phl[599]" 0;
	setAttr ".phl[600]" 0;
	setAttr ".phl[601]" 0;
	setAttr ".phl[602]" 0;
	setAttr ".phl[603]" 0;
	setAttr ".phl[604]" 0;
	setAttr ".phl[605]" 0;
	setAttr ".phl[606]" 0;
	setAttr ".phl[607]" 0;
	setAttr ".phl[608]" 0;
	setAttr ".phl[609]" 0;
	setAttr ".phl[610]" 0;
	setAttr ".phl[611]" 0;
	setAttr ".phl[612]" 0;
	setAttr ".phl[613]" 0;
	setAttr ".phl[614]" 0;
	setAttr ".phl[615]" 0;
	setAttr ".phl[616]" 0;
	setAttr ".phl[617]" 0;
	setAttr ".phl[618]" 0;
	setAttr ".phl[619]" 0;
	setAttr ".phl[620]" 0;
	setAttr ".phl[621]" 0;
	setAttr ".phl[622]" 0;
	setAttr ".phl[623]" 0;
	setAttr ".phl[624]" 0;
	setAttr ".phl[625]" 0;
	setAttr ".phl[626]" 0;
	setAttr ".phl[627]" 0;
	setAttr ".phl[628]" 0;
	setAttr ".phl[629]" 0;
	setAttr ".phl[630]" 0;
	setAttr ".phl[631]" 0;
	setAttr ".phl[632]" 0;
	setAttr ".phl[633]" 0;
	setAttr ".phl[634]" 0;
	setAttr ".phl[635]" 0;
	setAttr ".phl[636]" 0;
	setAttr ".phl[637]" 0;
	setAttr ".phl[638]" 0;
	setAttr ".phl[639]" 0;
	setAttr ".phl[640]" 0;
	setAttr ".phl[641]" 0;
	setAttr ".phl[642]" 0;
	setAttr ".phl[643]" 0;
	setAttr ".phl[644]" 0;
	setAttr ".phl[645]" 0;
	setAttr ".phl[646]" 0;
	setAttr ".phl[647]" 0;
	setAttr ".phl[648]" 0;
	setAttr ".phl[649]" 0;
	setAttr ".phl[650]" 0;
	setAttr ".ed" -type "dataReferenceEdits" 
		"BookRigged_referenceRN"
		"BookRigged_referenceRN" 122
		2 "|CTRLgrp|rootCTRL" "translate" " -type \"double3\" 0 0 0"
		2 "|CTRLgrp|rootCTRL" "translateY" " -av"
		2 "|CTRLgrp|rootCTRL" "rotate" " -type \"double3\" 0 0 0"
		2 "|CTRLgrp|rootCTRL" "rotateZ" " -av"
		2 "|CTRLgrp|rootCTRL|tpCTRL" "rotate" " -type \"double3\" 0 0 0"
		2 "|CTRLgrp|rootCTRL|tpCTRL" "rotateZ" " -av"
		2 "|CTRLgrp|rootCTRL|btmCTRL" "rotate" " -type \"double3\" 0 0 0"
		2 "|CTRLgrp|rootCTRL|btmCTRL" "rotateX" " -av"
		2 "|CTRLgrp|rootCTRL|btmCTRL" "rotateY" " -av"
		2 "|CTRLgrp|rootCTRL|btmCTRL" "rotateZ" " -av"
		2 "|Geo|GeoShape" "visibility" " -k 0 1"
		2 "|BookRigged_reference:CTRLgrp|BookRigged_reference:Root|BookRigged_reference:p01" 
		"translate" " -type \"double3\" -0.584144 -0.888977 0"
		2 "|BookRigged_reference:CTRLgrp|BookRigged_reference:Root|BookRigged_reference:p01|BookRigged_reference:p01m" 
		"translate" " -type \"double3\" 6.732263 -0.0181743 0"
		2 "|BookRigged_reference:p02geo|BookRigged_reference:p02geoShape" "dispResolution" 
		" 1"
		2 "|BookRigged_reference:p02geo|BookRigged_reference:p02geoShape" "displaySmoothMesh" 
		" 0"
		2 "|BookRigged_reference:p03geo|BookRigged_reference:p03geoShape" "uvSet[0].uvSetName" 
		" -type \"string\" \"map1\""
		2 "|BookRigged_reference:p03geo|BookRigged_reference:p03geoShape" "dispResolution" 
		" 1"
		2 "|BookRigged_reference:p03geo|BookRigged_reference:p03geoShape" "displaySmoothMesh" 
		" 0"
		2 "|BookRigged_reference:p01geo|BookRigged_reference:p01geoShape" "uvSet[0].uvSetName" 
		" -type \"string\" \"map1\""
		2 "|BookRigged_reference:p01geo|BookRigged_reference:p01geoShape" "dispResolution" 
		" 1"
		2 "|BookRigged_reference:p01geo|BookRigged_reference:p01geoShape" "displaySmoothMesh" 
		" 0"
		2 "|BookRigged_reference:p04geo|BookRigged_reference:p04geoShape" "uvSet[0].uvSetName" 
		" -type \"string\" \"map1\""
		2 "|BookRigged_reference:p04geo|BookRigged_reference:p04geoShape" "dispResolution" 
		" 1"
		2 "|BookRigged_reference:p04geo|BookRigged_reference:p04geoShape" "displaySmoothMesh" 
		" 0"
		2 "|BookRigged_reference:CTRLgrp|BookRigged_reference:Root|BookRigged_reference:p01" 
		"translateX" " -av 0"
		2 "|BookRigged_reference:CTRLgrp|BookRigged_reference:Root|BookRigged_reference:p01" 
		"translateY" " -av -0.0548338"
		2 "|BookRigged_reference:CTRLgrp|BookRigged_reference:Root|BookRigged_reference:p01" 
		"translateZ" " -av 0"
		2 "|BookRigged_reference:CTRLgrp|BookRigged_reference:Root|BookRigged_reference:p01|BookRigged_reference:p01m" 
		"translateX" " -av 6.781"
		2 "|BookRigged_reference:CTRLgrp|BookRigged_reference:Root|BookRigged_reference:p01|BookRigged_reference:p01m" 
		"translateY" " -av -0.0706005"
		2 "|BookRigged_reference:CTRLgrp|BookRigged_reference:Root|BookRigged_reference:p01|BookRigged_reference:p01m" 
		"translateZ" " -av 0"
		2 "|BookRigged_reference:geo|BookRigged_reference:p03geoa|BookRigged_reference:p03geoaShape" 
		"dispResolution" " 3"
		2 "|BookRigged_reference:geo|BookRigged_reference:p03geoa|BookRigged_reference:p03geoaShape" 
		"displaySmoothMesh" " 2"
		2 "|BookRigged_reference:geo|BookRigged_reference:p03geob|BookRigged_reference:p03geobShape" 
		"dispResolution" " 3"
		2 "|BookRigged_reference:geo|BookRigged_reference:p03geob|BookRigged_reference:p03geobShape" 
		"displaySmoothMesh" " 2"
		2 "|BookRigged_reference:geo|BookRigged_reference:p04geoa|BookRigged_reference:p04geoaShape" 
		"dispResolution" " 3"
		2 "|BookRigged_reference:geo|BookRigged_reference:p04geoa|BookRigged_reference:p04geoaShape" 
		"displaySmoothMesh" " 2"
		2 "|BookRigged_reference:geo|BookRigged_reference:p04geob|BookRigged_reference:p04geobShape" 
		"dispResolution" " 3"
		2 "|BookRigged_reference:geo|BookRigged_reference:p04geob|BookRigged_reference:p04geobShape" 
		"displaySmoothMesh" " 2"
		2 "BookRigged_reference:groupParts55" "inputRemoveComponent" " -type \"componentList\" 5 \"f[0:19]\" \"f[24:43]\" \"f[48:67]\" \"f[72:91]\" \"f[96:223]\""
		
		2 "BookRigged_reference:groupParts55" "groupId" " 267"
		2 "BookRigged_reference:groupParts56" "inputRemoveComponent" " -type \"componentList\" 4 \"f[20:23]\" \"f[44:47]\" \"f[68:71]\" \"f[92:95]\""
		
		2 "BookRigged_reference:groupParts56" "groupId" " 268"
		2 "|BookRigged_reference:geo|BookRigged_reference:p01geoa|BookRigged_reference:p01geoaShape" 
		"dispResolution" " 1"
		2 "|BookRigged_reference:geo|BookRigged_reference:p01geoa|BookRigged_reference:p01geoaShape" 
		"displaySmoothMesh" " 0"
		2 "|BookRigged_reference:geo|BookRigged_reference:p02geob" "visibility" " 1"
		
		2 "|BookRigged_reference:geo|BookRigged_reference:p02geob|BookRigged_reference:p02geobShape" 
		"currentUVSet" " -type \"string\" \"map1\""
		2 "|BookRigged_reference:geo|BookRigged_reference:p02geob|BookRigged_reference:p02geobShape" 
		"dispResolution" " 1"
		2 "|BookRigged_reference:geo|BookRigged_reference:p02geob|BookRigged_reference:p02geobShape" 
		"displaySmoothMesh" " 0"
		2 "|BookRigged_reference:geo|BookRigged_reference:p03geoc" "visibility" " 1"
		
		2 "|BookRigged_reference:geo|BookRigged_reference:p03geoc|BookRigged_reference:p03geocShape" 
		"dispResolution" " 1"
		2 "|BookRigged_reference:geo|BookRigged_reference:p03geoc|BookRigged_reference:p03geocShape" 
		"displaySmoothMesh" " 0"
		3 "|CTRLgrp|Root|Root_parentConstraint1.constraintTranslateX" "|CTRLgrp|Root.translateX" 
		""
		3 "|CTRLgrp|Root|Root_parentConstraint1.constraintTranslateY" "|CTRLgrp|Root.translateY" 
		""
		3 "|CTRLgrp|Root|Root_parentConstraint1.constraintTranslateZ" "|CTRLgrp|Root.translateZ" 
		""
		3 "|CTRLgrp|Root|Root_parentConstraint1.constraintRotateX" "|CTRLgrp|Root.rotateX" 
		""
		3 "|CTRLgrp|Root|Root_parentConstraint1.constraintRotateY" "|CTRLgrp|Root.rotateY" 
		""
		3 "|CTRLgrp|Root|Root_parentConstraint1.constraintRotateZ" "|CTRLgrp|Root.rotateZ" 
		""
		3 "|BookRigged_reference:p02geo|BookRigged_reference:p02geoShape.instObjGroups" 
		":initialShadingGroup.dagSetMembers" "-na"
		3 "|BookRigged_reference:p03geo|BookRigged_reference:p03geoShape.instObjGroups" 
		":initialShadingGroup.dagSetMembers" "-na"
		3 "|BookRigged_reference:geo|BookRigged_reference:p01geob|BookRigged_reference:p01geobShape.instObjGroups" 
		":initialShadingGroup.dagSetMembers" "-na"
		3 "BookRigged_reference:groupId45.groupId" "|BookRigged_reference:geo|BookRigged_reference:p02geob|BookRigged_reference:p02geobShape.instObjGroups.objectGroups[4].objectGroupId" 
		""
		3 "BookRigged_reference:phong1SG.memberWireframeColor" "|BookRigged_reference:geo|BookRigged_reference:p02geob|BookRigged_reference:p02geobShape.instObjGroups.objectGroups[4].objectGrpColor" 
		""
		3 "BookRigged_reference:groupId46.groupId" "|BookRigged_reference:geo|BookRigged_reference:p02geob|BookRigged_reference:p02geobShape.instObjGroups.objectGroups[5].objectGroupId" 
		""
		3 "BookRigged_reference:lambert4SG.memberWireframeColor" "|BookRigged_reference:geo|BookRigged_reference:p02geob|BookRigged_reference:p02geobShape.instObjGroups.objectGroups[5].objectGrpColor" 
		""
		3 "|BookRigged_reference:geo|BookRigged_reference:p02geob|BookRigged_reference:p02geobShape.instObjGroups.objectGroups[5]" 
		"BookRigged_reference:lambert4SG.dagSetMembers" "-na"
		3 "|BookRigged_reference:geo|BookRigged_reference:p02geob|BookRigged_reference:p02geobShape.instObjGroups.objectGroups[4]" 
		"BookRigged_reference:phong1SG.dagSetMembers" "-na"
		3 "|BookRigged_reference:geo|BookRigged_reference:p04geoa|BookRigged_reference:p04geoaShape.instObjGroups" 
		"BookRigged_reference:lambert6SG.dagSetMembers" "-na"
		3 "BookRigged_reference:groupId45.message" "BookRigged_reference:phong1SG.groupNodes" 
		"-na"
		3 "BookRigged_reference:groupId46.message" "BookRigged_reference:lambert4SG.groupNodes" 
		"-na"
		3 "BookRigged_reference:groupId45.groupId" "BookRigged_reference:groupParts55.groupId" 
		""
		3 "BookRigged_reference:groupId46.groupId" "BookRigged_reference:groupParts56.groupId" 
		""
		5 4 "BookRigged_referenceRN" "|CTRLgrp|Root.translateX" "BookRigged_referenceRN.placeHolderList[1]" 
		""
		5 4 "BookRigged_referenceRN" "|CTRLgrp|Root.translateY" "BookRigged_referenceRN.placeHolderList[2]" 
		""
		5 4 "BookRigged_referenceRN" "|CTRLgrp|Root.translateZ" "BookRigged_referenceRN.placeHolderList[3]" 
		""
		5 4 "BookRigged_referenceRN" "|CTRLgrp|Root.rotateX" "BookRigged_referenceRN.placeHolderList[4]" 
		""
		5 4 "BookRigged_referenceRN" "|CTRLgrp|Root.rotateY" "BookRigged_referenceRN.placeHolderList[5]" 
		""
		5 4 "BookRigged_referenceRN" "|CTRLgrp|Root.rotateZ" "BookRigged_referenceRN.placeHolderList[6]" 
		""
		5 4 "BookRigged_referenceRN" "|CTRLgrp|Root.scaleX" "BookRigged_referenceRN.placeHolderList[7]" 
		""
		5 4 "BookRigged_referenceRN" "|CTRLgrp|Root.scaleY" "BookRigged_referenceRN.placeHolderList[8]" 
		""
		5 4 "BookRigged_referenceRN" "|CTRLgrp|Root.scaleZ" "BookRigged_referenceRN.placeHolderList[9]" 
		""
		5 4 "BookRigged_referenceRN" "|CTRLgrp|Root.visibility" "BookRigged_referenceRN.placeHolderList[10]" 
		""
		5 4 "BookRigged_referenceRN" "|CTRLgrp|rootCTRL.translateX" "BookRigged_referenceRN.placeHolderList[11]" 
		""
		5 4 "BookRigged_referenceRN" "|CTRLgrp|rootCTRL.translateY" "BookRigged_referenceRN.placeHolderList[12]" 
		""
		5 4 "BookRigged_referenceRN" "|CTRLgrp|rootCTRL.translateZ" "BookRigged_referenceRN.placeHolderList[13]" 
		""
		5 4 "BookRigged_referenceRN" "|CTRLgrp|rootCTRL.rotateX" "BookRigged_referenceRN.placeHolderList[14]" 
		""
		5 4 "BookRigged_referenceRN" "|CTRLgrp|rootCTRL.rotateY" "BookRigged_referenceRN.placeHolderList[15]" 
		""
		5 4 "BookRigged_referenceRN" "|CTRLgrp|rootCTRL.rotateZ" "BookRigged_referenceRN.placeHolderList[16]" 
		""
		5 4 "BookRigged_referenceRN" "|CTRLgrp|rootCTRL.scaleX" "BookRigged_referenceRN.placeHolderList[17]" 
		""
		5 4 "BookRigged_referenceRN" "|CTRLgrp|rootCTRL.scaleY" "BookRigged_referenceRN.placeHolderList[18]" 
		""
		5 4 "BookRigged_referenceRN" "|CTRLgrp|rootCTRL.scaleZ" "BookRigged_referenceRN.placeHolderList[19]" 
		""
		5 4 "BookRigged_referenceRN" "|CTRLgrp|rootCTRL.visibility" "BookRigged_referenceRN.placeHolderList[20]" 
		""
		5 4 "BookRigged_referenceRN" "|CTRLgrp|rootCTRL|tpCTRL.rotateX" "BookRigged_referenceRN.placeHolderList[21]" 
		""
		5 4 "BookRigged_referenceRN" "|CTRLgrp|rootCTRL|tpCTRL.rotateY" "BookRigged_referenceRN.placeHolderList[22]" 
		""
		5 4 "BookRigged_referenceRN" "|CTRLgrp|rootCTRL|tpCTRL.rotateZ" "BookRigged_referenceRN.placeHolderList[23]" 
		""
		5 4 "BookRigged_referenceRN" "|CTRLgrp|rootCTRL|tpCTRL.visibility" "BookRigged_referenceRN.placeHolderList[24]" 
		""
		5 4 "BookRigged_referenceRN" "|CTRLgrp|rootCTRL|tpCTRL.translateX" "BookRigged_referenceRN.placeHolderList[25]" 
		""
		5 4 "BookRigged_referenceRN" "|CTRLgrp|rootCTRL|tpCTRL.translateY" "BookRigged_referenceRN.placeHolderList[26]" 
		""
		5 4 "BookRigged_referenceRN" "|CTRLgrp|rootCTRL|tpCTRL.translateZ" "BookRigged_referenceRN.placeHolderList[27]" 
		""
		5 4 "BookRigged_referenceRN" "|CTRLgrp|rootCTRL|tpCTRL.scaleX" "BookRigged_referenceRN.placeHolderList[28]" 
		""
		5 4 "BookRigged_referenceRN" "|CTRLgrp|rootCTRL|tpCTRL.scaleY" "BookRigged_referenceRN.placeHolderList[29]" 
		""
		5 4 "BookRigged_referenceRN" "|CTRLgrp|rootCTRL|tpCTRL.scaleZ" "BookRigged_referenceRN.placeHolderList[30]" 
		""
		5 4 "BookRigged_referenceRN" "|CTRLgrp|rootCTRL|btmCTRL.rotateX" "BookRigged_referenceRN.placeHolderList[31]" 
		""
		5 4 "BookRigged_referenceRN" "|CTRLgrp|rootCTRL|btmCTRL.rotateY" "BookRigged_referenceRN.placeHolderList[32]" 
		""
		5 4 "BookRigged_referenceRN" "|CTRLgrp|rootCTRL|btmCTRL.rotateZ" "BookRigged_referenceRN.placeHolderList[33]" 
		""
		5 4 "BookRigged_referenceRN" "|CTRLgrp|rootCTRL|btmCTRL.visibility" 
		"BookRigged_referenceRN.placeHolderList[34]" ""
		5 4 "BookRigged_referenceRN" "|CTRLgrp|rootCTRL|btmCTRL.translateX" 
		"BookRigged_referenceRN.placeHolderList[35]" ""
		5 4 "BookRigged_referenceRN" "|CTRLgrp|rootCTRL|btmCTRL.translateY" 
		"BookRigged_referenceRN.placeHolderList[36]" ""
		5 4 "BookRigged_referenceRN" "|CTRLgrp|rootCTRL|btmCTRL.translateZ" 
		"BookRigged_referenceRN.placeHolderList[37]" ""
		5 4 "BookRigged_referenceRN" "|CTRLgrp|rootCTRL|btmCTRL.scaleX" "BookRigged_referenceRN.placeHolderList[38]" 
		""
		5 4 "BookRigged_referenceRN" "|CTRLgrp|rootCTRL|btmCTRL.scaleY" "BookRigged_referenceRN.placeHolderList[39]" 
		""
		5 4 "BookRigged_referenceRN" "|CTRLgrp|rootCTRL|btmCTRL.scaleZ" "BookRigged_referenceRN.placeHolderList[40]" 
		""
		5 4 "BookRigged_referenceRN" "|BookRigged_reference:CTRLgrp|BookRigged_reference:Root|BookRigged_reference:p01.translateX" 
		"BookRigged_referenceRN.placeHolderList[44]" ""
		5 4 "BookRigged_referenceRN" "|BookRigged_reference:CTRLgrp|BookRigged_reference:Root|BookRigged_reference:p01.translateY" 
		"BookRigged_referenceRN.placeHolderList[45]" ""
		5 4 "BookRigged_referenceRN" "|BookRigged_reference:CTRLgrp|BookRigged_reference:Root|BookRigged_reference:p01.translateZ" 
		"BookRigged_referenceRN.placeHolderList[46]" ""
		5 4 "BookRigged_referenceRN" "|BookRigged_reference:CTRLgrp|BookRigged_reference:Root|BookRigged_reference:p01|BookRigged_reference:p01m.translateX" 
		"BookRigged_referenceRN.placeHolderList[54]" ""
		5 4 "BookRigged_referenceRN" "|BookRigged_reference:CTRLgrp|BookRigged_reference:Root|BookRigged_reference:p01|BookRigged_reference:p01m.translateY" 
		"BookRigged_referenceRN.placeHolderList[55]" ""
		5 4 "BookRigged_referenceRN" "|BookRigged_reference:CTRLgrp|BookRigged_reference:Root|BookRigged_reference:p01|BookRigged_reference:p01m.translateZ" 
		"BookRigged_referenceRN.placeHolderList[56]" ""
		5 3 "BookRigged_referenceRN" "|BookRigged_reference:p02geo|BookRigged_reference:p02geoShape.instObjGroups" 
		"BookRigged_referenceRN.placeHolderList[201]" ""
		5 3 "BookRigged_referenceRN" "|BookRigged_reference:p03geo|BookRigged_reference:p03geoShape.instObjGroups" 
		"BookRigged_referenceRN.placeHolderList[202]" ":initialShadingGroup.dsm"
		5 3 "BookRigged_referenceRN" "|BookRigged_reference:geo|BookRigged_reference:p01geob|BookRigged_reference:p01geobShape.instObjGroups" 
		"BookRigged_referenceRN.placeHolderList[357]" ":initialShadingGroup.dsm"
		5 3 "BookRigged_referenceRN" "|BookRigged_reference:geo|BookRigged_reference:p04geoa|BookRigged_reference:p04geoaShape.instObjGroups" 
		"BookRigged_referenceRN.placeHolderList[359]" "BookRigged_reference:lambert6SG.dsm"
		
		5 0 "BookRigged_referenceRN" "|BookRigged_reference:geo|BookRigged_reference:p02geob|BookRigged_reference:p02geobShape.instObjGroups" 
		"BookRigged_reference:pasted__lambert10SG.dagSetMembers" "BookRigged_referenceRN.placeHolderList[499]" 
		"BookRigged_referenceRN.placeHolderList[500]" ""
		"BookRigged_referenceRN" 264
		2 "|BookRigged_reference:CTRLgrp|BookRigged_reference:Root|BookRigged_reference:tp_01" 
		"rotate" " -type \"double3\" -0.320455 -0.320455 91"
		2 "|BookRigged_reference:CTRLgrp|BookRigged_reference:Root|BookRigged_reference:tp_01" 
		"rotateX" " -av"
		2 "|BookRigged_reference:CTRLgrp|BookRigged_reference:Root|BookRigged_reference:tp_01" 
		"rotateY" " -av"
		2 "|BookRigged_reference:CTRLgrp|BookRigged_reference:Root|BookRigged_reference:tp_01" 
		"rotateZ" " -av"
		2 "|BookRigged_reference:CTRLgrp|BookRigged_reference:Root|BookRigged_reference:tp_01" 
		"jointOrient" " -type \"double3\" 0 0 90"
		2 "|BookRigged_reference:CTRLgrp|BookRigged_reference:Root|BookRigged_reference:p01" 
		"rotate" " -type \"double3\" 0 0 -53.187395"
		2 "|BookRigged_reference:CTRLgrp|BookRigged_reference:Root|BookRigged_reference:p01" 
		"rotateX" " -av"
		2 "|BookRigged_reference:CTRLgrp|BookRigged_reference:Root|BookRigged_reference:p01" 
		"rotateY" " -av"
		2 "|BookRigged_reference:CTRLgrp|BookRigged_reference:Root|BookRigged_reference:p01" 
		"rotateZ" " -av"
		2 "|BookRigged_reference:CTRLgrp|BookRigged_reference:Root|BookRigged_reference:p01" 
		"jointOrient" " -type \"double3\" 180 0 -90"
		2 "|BookRigged_reference:CTRLgrp|BookRigged_reference:Root|BookRigged_reference:p01|BookRigged_reference:p01m" 
		"rotate" " -type \"double3\" 0 0 -0.85928"
		2 "|BookRigged_reference:CTRLgrp|BookRigged_reference:Root|BookRigged_reference:p01|BookRigged_reference:p01m" 
		"rotateX" " -av"
		2 "|BookRigged_reference:CTRLgrp|BookRigged_reference:Root|BookRigged_reference:p01|BookRigged_reference:p01m" 
		"rotateY" " -av"
		2 "|BookRigged_reference:CTRLgrp|BookRigged_reference:Root|BookRigged_reference:p01|BookRigged_reference:p01m" 
		"rotateZ" " -av"
		2 "|BookRigged_reference:CTRLgrp|BookRigged_reference:Root|BookRigged_reference:p01|BookRigged_reference:p01m" 
		"segmentScaleCompensate" " 1"
		2 "|BookRigged_reference:CTRLgrp|BookRigged_reference:Root|BookRigged_reference:p02" 
		"visibility" " -av 1"
		2 "|BookRigged_reference:CTRLgrp|BookRigged_reference:Root|BookRigged_reference:p02" 
		"translate" " -type \"double3\" -0.484753 0 0"
		2 "|BookRigged_reference:CTRLgrp|BookRigged_reference:Root|BookRigged_reference:p02" 
		"translateX" " -av"
		2 "|BookRigged_reference:CTRLgrp|BookRigged_reference:Root|BookRigged_reference:p02" 
		"translateY" " -av"
		2 "|BookRigged_reference:CTRLgrp|BookRigged_reference:Root|BookRigged_reference:p02" 
		"rotate" " -type \"double3\" 0.0654995 0.110848 45.84654"
		2 "|BookRigged_reference:CTRLgrp|BookRigged_reference:Root|BookRigged_reference:p02" 
		"rotateX" " -av"
		2 "|BookRigged_reference:CTRLgrp|BookRigged_reference:Root|BookRigged_reference:p02" 
		"rotateY" " -av"
		2 "|BookRigged_reference:CTRLgrp|BookRigged_reference:Root|BookRigged_reference:p02" 
		"rotateZ" " -av"
		2 "|BookRigged_reference:CTRLgrp|BookRigged_reference:Root|BookRigged_reference:p02" 
		"jointOrient" " -type \"double3\" 180 0 -90"
		2 "|BookRigged_reference:CTRLgrp|BookRigged_reference:Root|BookRigged_reference:p02" 
		"segmentScaleCompensate" " 1"
		2 "|BookRigged_reference:CTRLgrp|BookRigged_reference:Root|BookRigged_reference:p02|BookRigged_reference:p02m" 
		"translate" " -type \"double3\" 7.107754 -0.0837969 -0.00377328"
		2 "|BookRigged_reference:CTRLgrp|BookRigged_reference:Root|BookRigged_reference:p02|BookRigged_reference:p02m" 
		"translateX" " -av"
		2 "|BookRigged_reference:CTRLgrp|BookRigged_reference:Root|BookRigged_reference:p02|BookRigged_reference:p02m" 
		"translateY" " -av"
		2 "|BookRigged_reference:CTRLgrp|BookRigged_reference:Root|BookRigged_reference:p02|BookRigged_reference:p02m" 
		"translateZ" " -av"
		2 "|BookRigged_reference:CTRLgrp|BookRigged_reference:Root|BookRigged_reference:p02|BookRigged_reference:p02m" 
		"rotate" " -type \"double3\" 0.800232 -0.322991 8.73164"
		2 "|BookRigged_reference:CTRLgrp|BookRigged_reference:Root|BookRigged_reference:p02|BookRigged_reference:p02m" 
		"rotateX" " -av"
		2 "|BookRigged_reference:CTRLgrp|BookRigged_reference:Root|BookRigged_reference:p02|BookRigged_reference:p02m" 
		"rotateY" " -av"
		2 "|BookRigged_reference:CTRLgrp|BookRigged_reference:Root|BookRigged_reference:p02|BookRigged_reference:p02m" 
		"rotateZ" " -av"
		2 "|BookRigged_reference:CTRLgrp|BookRigged_reference:Root|BookRigged_reference:p03" 
		"translate" " -type \"double3\" -0.174869 -0.0383548 0"
		2 "|BookRigged_reference:CTRLgrp|BookRigged_reference:Root|BookRigged_reference:p03" 
		"translateX" " -av"
		2 "|BookRigged_reference:CTRLgrp|BookRigged_reference:Root|BookRigged_reference:p03" 
		"translateY" " -av"
		2 "|BookRigged_reference:CTRLgrp|BookRigged_reference:Root|BookRigged_reference:p03" 
		"translateZ" " -av"
		2 "|BookRigged_reference:CTRLgrp|BookRigged_reference:Root|BookRigged_reference:p03" 
		"rotate" " -type \"double3\" 0 0 59.805048"
		2 "|BookRigged_reference:CTRLgrp|BookRigged_reference:Root|BookRigged_reference:p03" 
		"rotateX" " -av"
		2 "|BookRigged_reference:CTRLgrp|BookRigged_reference:Root|BookRigged_reference:p03" 
		"rotateY" " -av"
		2 "|BookRigged_reference:CTRLgrp|BookRigged_reference:Root|BookRigged_reference:p03" 
		"rotateZ" " -av"
		2 "|BookRigged_reference:CTRLgrp|BookRigged_reference:Root|BookRigged_reference:p03" 
		"jointOrient" " -type \"double3\" 180 0 -90"
		2 "|BookRigged_reference:CTRLgrp|BookRigged_reference:Root|BookRigged_reference:p03|BookRigged_reference:p03m" 
		"translate" " -type \"double3\" 7.295834 0.0395701 0"
		2 "|BookRigged_reference:CTRLgrp|BookRigged_reference:Root|BookRigged_reference:p03|BookRigged_reference:p03m" 
		"translateX" " -av"
		2 "|BookRigged_reference:CTRLgrp|BookRigged_reference:Root|BookRigged_reference:p03|BookRigged_reference:p03m" 
		"translateY" " -av"
		2 "|BookRigged_reference:CTRLgrp|BookRigged_reference:Root|BookRigged_reference:p03|BookRigged_reference:p03m" 
		"translateZ" " -av"
		2 "|BookRigged_reference:CTRLgrp|BookRigged_reference:Root|BookRigged_reference:p03|BookRigged_reference:p03m" 
		"rotate" " -type \"double3\" 0 0 6.435163"
		2 "|BookRigged_reference:CTRLgrp|BookRigged_reference:Root|BookRigged_reference:p03|BookRigged_reference:p03m" 
		"rotateX" " -av"
		2 "|BookRigged_reference:CTRLgrp|BookRigged_reference:Root|BookRigged_reference:p03|BookRigged_reference:p03m" 
		"rotateY" " -av"
		2 "|BookRigged_reference:CTRLgrp|BookRigged_reference:Root|BookRigged_reference:p03|BookRigged_reference:p03m" 
		"rotateZ" " -av"
		2 "|BookRigged_reference:CTRLgrp|BookRigged_reference:Root|BookRigged_reference:p04" 
		"visibility" " 1"
		2 "|BookRigged_reference:CTRLgrp|BookRigged_reference:Root|BookRigged_reference:p04" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|BookRigged_reference:CTRLgrp|BookRigged_reference:Root|BookRigged_reference:p04" 
		"translateX" " -av"
		2 "|BookRigged_reference:CTRLgrp|BookRigged_reference:Root|BookRigged_reference:p04" 
		"translateY" " -av"
		2 "|BookRigged_reference:CTRLgrp|BookRigged_reference:Root|BookRigged_reference:p04" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|BookRigged_reference:CTRLgrp|BookRigged_reference:Root|BookRigged_reference:p04" 
		"rotateX" " -av"
		2 "|BookRigged_reference:CTRLgrp|BookRigged_reference:Root|BookRigged_reference:p04" 
		"rotateY" " -av"
		2 "|BookRigged_reference:CTRLgrp|BookRigged_reference:Root|BookRigged_reference:p04" 
		"rotateZ" " -av"
		2 "|BookRigged_reference:CTRLgrp|BookRigged_reference:Root|BookRigged_reference:p04" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|BookRigged_reference:CTRLgrp|BookRigged_reference:Root|BookRigged_reference:p04" 
		"jointOrient" " -type \"double3\" 180 0 -90"
		2 "|BookRigged_reference:CTRLgrp|BookRigged_reference:Root|BookRigged_reference:p04|BookRigged_reference:p04m" 
		"visibility" " 1"
		2 "|BookRigged_reference:CTRLgrp|BookRigged_reference:Root|BookRigged_reference:p04|BookRigged_reference:p04m" 
		"translate" " -type \"double3\" 6.781 0 0"
		2 "|BookRigged_reference:CTRLgrp|BookRigged_reference:Root|BookRigged_reference:p04|BookRigged_reference:p04m" 
		"translateX" " -av"
		2 "|BookRigged_reference:CTRLgrp|BookRigged_reference:Root|BookRigged_reference:p04|BookRigged_reference:p04m" 
		"translateY" " -av"
		2 "|BookRigged_reference:CTRLgrp|BookRigged_reference:Root|BookRigged_reference:p04|BookRigged_reference:p04m" 
		"translateZ" " -av"
		2 "|BookRigged_reference:CTRLgrp|BookRigged_reference:Root|BookRigged_reference:p04|BookRigged_reference:p04m" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|BookRigged_reference:CTRLgrp|BookRigged_reference:Root|BookRigged_reference:p04|BookRigged_reference:p04m" 
		"rotateX" " -av"
		2 "|BookRigged_reference:CTRLgrp|BookRigged_reference:Root|BookRigged_reference:p04|BookRigged_reference:p04m" 
		"rotateY" " -av"
		2 "|BookRigged_reference:CTRLgrp|BookRigged_reference:Root|BookRigged_reference:p04|BookRigged_reference:p04m" 
		"rotateZ" " -av"
		2 "|BookRigged_reference:CTRLgrp|BookRigged_reference:Root|BookRigged_reference:p04|BookRigged_reference:p04m" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|BookRigged_reference:CTRLgrp|BookRigged_reference:rootCTRL|BookRigged_reference:turnbook" 
		"translate" " -type \"double3\" 0 0.305027 0"
		2 "|BookRigged_reference:CTRLgrp|BookRigged_reference:rootCTRL|BookRigged_reference:turnbook" 
		"translateX" " -av"
		2 "|BookRigged_reference:CTRLgrp|BookRigged_reference:rootCTRL|BookRigged_reference:turnbook" 
		"translateY" " -av"
		2 "|BookRigged_reference:CTRLgrp|BookRigged_reference:rootCTRL|BookRigged_reference:turnbook" 
		"rotate" " -type \"double3\" 0 0 -90"
		2 "|BookRigged_reference:CTRLgrp|BookRigged_reference:rootCTRL|BookRigged_reference:turnbook" 
		"rotateX" " -av"
		2 "|BookRigged_reference:CTRLgrp|BookRigged_reference:rootCTRL|BookRigged_reference:turnbook" 
		"rotateY" " -av"
		2 "|BookRigged_reference:CTRLgrp|BookRigged_reference:rootCTRL|BookRigged_reference:turnbook" 
		"rotateZ" " -av"
		2 "|BookRigged_reference:CTRLgrp|BookRigged_reference:rootCTRL|BookRigged_reference:turnbook|BookRigged_reference:tpCTRL" 
		"rotate" " -type \"double3\" -0.320455 -0.320455 91"
		2 "|BookRigged_reference:CTRLgrp|BookRigged_reference:rootCTRL|BookRigged_reference:turnbook|BookRigged_reference:tpCTRL" 
		"rotateZ" " -av"
		2 "|BookRigged_reference:CTRLgrp|BookRigged_reference:rootCTRL|BookRigged_reference:turnbook|BookRigged_reference:tpCTRL" 
		"rotatePivot" " -type \"double3\" 6.89721 -0.845621 0"
		2 "|BookRigged_reference:CTRLgrp|BookRigged_reference:rootCTRL|BookRigged_reference:turnbook|BookRigged_reference:tpCTRL" 
		"scalePivot" " -type \"double3\" 6.89721 -0.845621 0"
		2 "|BookRigged_reference:CTRLgrp|BookRigged_reference:rootCTRL|BookRigged_reference:turnbook|BookRigged_reference:btmCTRL" 
		"rotate" " -type \"double3\" 0 0 -91"
		2 "|BookRigged_reference:CTRLgrp|BookRigged_reference:rootCTRL|BookRigged_reference:turnbook|BookRigged_reference:btmCTRL" 
		"rotateZ" " -av"
		2 "|BookRigged_reference:CTRLgrp|BookRigged_reference:rootCTRL|BookRigged_reference:turnbook|BookRigged_reference:btmCTRL" 
		"rotatePivot" " -type \"double3\" 6.89721 0.845621 0"
		2 "|BookRigged_reference:CTRLgrp|BookRigged_reference:rootCTRL|BookRigged_reference:turnbook|BookRigged_reference:btmCTRL" 
		"scalePivot" " -type \"double3\" 6.89721 0.845621 0"
		2 "|BookRigged_reference:GEO|BookRigged_reference:Geo|BookRigged_reference:GeoShape" 
		"dispResolution" " 1"
		2 "|BookRigged_reference:GEO|BookRigged_reference:Geo|BookRigged_reference:GeoShape" 
		"displaySmoothMesh" " 0"
		2 "|BookRigged_reference:GEO|BookRigged_reference:paper_geo|BookRigged_reference:page_02" 
		"translate" " -type \"double3\" -0.038 0 0"
		2 "|BookRigged_reference:GEO|BookRigged_reference:paper_geo|BookRigged_reference:page_02|BookRigged_reference:page_02Shape" 
		"dispResolution" " 1"
		2 "|BookRigged_reference:GEO|BookRigged_reference:paper_geo|BookRigged_reference:page_02|BookRigged_reference:page_02Shape" 
		"displaySmoothMesh" " 0"
		2 "|BookRigged_reference:GEO|BookRigged_reference:paper_geo|BookRigged_reference:page_03" 
		"translate" " -type \"double3\" -0.035 0 0"
		2 "BookRigged_reference:Bookbroken" "displayType" " 0"
		2 "BookRigged_reference:Bookbroken" "visibility" " 1"
		2 "BookRigged_reference:pasted__Bookbroken" "visibility" " 1"
		2 "BookRigged_reference:pasted__lambert10" "transparency" " -type \"float3\" 1 1 1"
		
		2 "BookRigged_reference:pasted__lambert10" "transparencyR" " -av"
		2 "BookRigged_reference:pasted__lambert10" "transparencyG" " -av"
		2 "BookRigged_reference:pasted__lambert10" "transparencyB" " -av"
		2 "BookRigged_reference:pasted__Bookbroken1" "visibility" " 1"
		2 "BookRigged_reference:flip" "weight[0]" " 0.5"
		2 "BookRigged_reference:flip" "weight[0]" " -av"
		2 "BookRigged_reference:strait" "weight[0]" " 0"
		2 "BookRigged_reference:strait" "weight[0]" " -av"
		2 "BookRigged_reference:flip02" "weight[0]" " 0.5"
		2 "BookRigged_reference:flip02" "weight[0]" " -av"
		2 "BookRigged_reference:strait02" "weight[0]" " 0"
		2 "BookRigged_reference:strait02" "weight[0]" " -av"
		2 "BookRigged_reference:flip03" "weight[0]" " 0"
		2 "BookRigged_reference:flip03" "weight[0]" " -av"
		2 "BookRigged_reference:strait03" "weight[0]" " 0"
		2 "BookRigged_reference:strait03" "weight[0]" " -av"
		3 "BookRigged_reference:checker9.message" "BookRigged_reference:materialInfo13.texture" 
		"-na"
		3 "BookRigged_reference:file1.message" "BookRigged_reference:materialInfo8.texture" 
		"-na"
		3 "BookRigged_reference:checker9.outColor" "BookRigged_reference:lambert11.color" 
		""
		5 4 "BookRigged_referenceRN" "|BookRigged_reference:CTRLgrp|BookRigged_reference:Root|BookRigged_reference:p01.scaleX" 
		"BookRigged_referenceRN.placeHolderList[501]" ""
		5 4 "BookRigged_referenceRN" "|BookRigged_reference:CTRLgrp|BookRigged_reference:Root|BookRigged_reference:p01.scaleY" 
		"BookRigged_referenceRN.placeHolderList[502]" ""
		5 4 "BookRigged_referenceRN" "|BookRigged_reference:CTRLgrp|BookRigged_reference:Root|BookRigged_reference:p01.scaleZ" 
		"BookRigged_referenceRN.placeHolderList[503]" ""
		5 4 "BookRigged_referenceRN" "|BookRigged_reference:CTRLgrp|BookRigged_reference:Root|BookRigged_reference:p01.rotateX" 
		"BookRigged_referenceRN.placeHolderList[504]" ""
		5 4 "BookRigged_referenceRN" "|BookRigged_reference:CTRLgrp|BookRigged_reference:Root|BookRigged_reference:p01.rotateY" 
		"BookRigged_referenceRN.placeHolderList[505]" ""
		5 4 "BookRigged_referenceRN" "|BookRigged_reference:CTRLgrp|BookRigged_reference:Root|BookRigged_reference:p01.rotateZ" 
		"BookRigged_referenceRN.placeHolderList[506]" ""
		5 4 "BookRigged_referenceRN" "|BookRigged_reference:CTRLgrp|BookRigged_reference:Root|BookRigged_reference:p01.visibility" 
		"BookRigged_referenceRN.placeHolderList[507]" ""
		5 4 "BookRigged_referenceRN" "|BookRigged_reference:CTRLgrp|BookRigged_reference:Root|BookRigged_reference:p01|BookRigged_reference:p01m.scaleX" 
		"BookRigged_referenceRN.placeHolderList[508]" ""
		5 4 "BookRigged_referenceRN" "|BookRigged_reference:CTRLgrp|BookRigged_reference:Root|BookRigged_reference:p01|BookRigged_reference:p01m.scaleY" 
		"BookRigged_referenceRN.placeHolderList[509]" ""
		5 4 "BookRigged_referenceRN" "|BookRigged_reference:CTRLgrp|BookRigged_reference:Root|BookRigged_reference:p01|BookRigged_reference:p01m.scaleZ" 
		"BookRigged_referenceRN.placeHolderList[510]" ""
		5 4 "BookRigged_referenceRN" "|BookRigged_reference:CTRLgrp|BookRigged_reference:Root|BookRigged_reference:p01|BookRigged_reference:p01m.rotateX" 
		"BookRigged_referenceRN.placeHolderList[511]" ""
		5 4 "BookRigged_referenceRN" "|BookRigged_reference:CTRLgrp|BookRigged_reference:Root|BookRigged_reference:p01|BookRigged_reference:p01m.rotateY" 
		"BookRigged_referenceRN.placeHolderList[512]" ""
		5 4 "BookRigged_referenceRN" "|BookRigged_reference:CTRLgrp|BookRigged_reference:Root|BookRigged_reference:p01|BookRigged_reference:p01m.rotateZ" 
		"BookRigged_referenceRN.placeHolderList[513]" ""
		5 4 "BookRigged_referenceRN" "|BookRigged_reference:CTRLgrp|BookRigged_reference:Root|BookRigged_reference:p01|BookRigged_reference:p01m.visibility" 
		"BookRigged_referenceRN.placeHolderList[514]" ""
		5 4 "BookRigged_referenceRN" "|BookRigged_reference:CTRLgrp|BookRigged_reference:Root|BookRigged_reference:p01|BookRigged_reference:p01m|BookRigged_reference:p01ed.visibility" 
		"BookRigged_referenceRN.placeHolderList[515]" ""
		5 4 "BookRigged_referenceRN" "|BookRigged_reference:CTRLgrp|BookRigged_reference:Root|BookRigged_reference:p01|BookRigged_reference:p01m|BookRigged_reference:p01ed.rotateX" 
		"BookRigged_referenceRN.placeHolderList[516]" ""
		5 4 "BookRigged_referenceRN" "|BookRigged_reference:CTRLgrp|BookRigged_reference:Root|BookRigged_reference:p01|BookRigged_reference:p01m|BookRigged_reference:p01ed.rotateY" 
		"BookRigged_referenceRN.placeHolderList[517]" ""
		5 4 "BookRigged_referenceRN" "|BookRigged_reference:CTRLgrp|BookRigged_reference:Root|BookRigged_reference:p01|BookRigged_reference:p01m|BookRigged_reference:p01ed.rotateZ" 
		"BookRigged_referenceRN.placeHolderList[518]" ""
		5 4 "BookRigged_referenceRN" "|BookRigged_reference:CTRLgrp|BookRigged_reference:Root|BookRigged_reference:p01|BookRigged_reference:p01m|BookRigged_reference:p01ed.translateX" 
		"BookRigged_referenceRN.placeHolderList[519]" ""
		5 4 "BookRigged_referenceRN" "|BookRigged_reference:CTRLgrp|BookRigged_reference:Root|BookRigged_reference:p01|BookRigged_reference:p01m|BookRigged_reference:p01ed.translateY" 
		"BookRigged_referenceRN.placeHolderList[520]" ""
		5 4 "BookRigged_referenceRN" "|BookRigged_reference:CTRLgrp|BookRigged_reference:Root|BookRigged_reference:p01|BookRigged_reference:p01m|BookRigged_reference:p01ed.translateZ" 
		"BookRigged_referenceRN.placeHolderList[521]" ""
		5 4 "BookRigged_referenceRN" "|BookRigged_reference:CTRLgrp|BookRigged_reference:Root|BookRigged_reference:p01|BookRigged_reference:p01m|BookRigged_reference:p01ed.scaleX" 
		"BookRigged_referenceRN.placeHolderList[522]" ""
		5 4 "BookRigged_referenceRN" "|BookRigged_reference:CTRLgrp|BookRigged_reference:Root|BookRigged_reference:p01|BookRigged_reference:p01m|BookRigged_reference:p01ed.scaleY" 
		"BookRigged_referenceRN.placeHolderList[523]" ""
		5 4 "BookRigged_referenceRN" "|BookRigged_reference:CTRLgrp|BookRigged_reference:Root|BookRigged_reference:p01|BookRigged_reference:p01m|BookRigged_reference:p01ed.scaleZ" 
		"BookRigged_referenceRN.placeHolderList[524]" ""
		5 4 "BookRigged_referenceRN" "|BookRigged_reference:CTRLgrp|BookRigged_reference:Root|BookRigged_reference:p02.scaleX" 
		"BookRigged_referenceRN.placeHolderList[525]" ""
		5 4 "BookRigged_referenceRN" "|BookRigged_reference:CTRLgrp|BookRigged_reference:Root|BookRigged_reference:p02.scaleY" 
		"BookRigged_referenceRN.placeHolderList[526]" ""
		5 4 "BookRigged_referenceRN" "|BookRigged_reference:CTRLgrp|BookRigged_reference:Root|BookRigged_reference:p02.scaleZ" 
		"BookRigged_referenceRN.placeHolderList[527]" ""
		5 4 "BookRigged_referenceRN" "|BookRigged_reference:CTRLgrp|BookRigged_reference:Root|BookRigged_reference:p02.visibility" 
		"BookRigged_referenceRN.placeHolderList[528]" ""
		5 4 "BookRigged_referenceRN" "|BookRigged_reference:CTRLgrp|BookRigged_reference:Root|BookRigged_reference:p02.translateX" 
		"BookRigged_referenceRN.placeHolderList[529]" ""
		5 4 "BookRigged_referenceRN" "|BookRigged_reference:CTRLgrp|BookRigged_reference:Root|BookRigged_reference:p02.translateY" 
		"BookRigged_referenceRN.placeHolderList[530]" ""
		5 4 "BookRigged_referenceRN" "|BookRigged_reference:CTRLgrp|BookRigged_reference:Root|BookRigged_reference:p02.translateZ" 
		"BookRigged_referenceRN.placeHolderList[531]" ""
		5 4 "BookRigged_referenceRN" "|BookRigged_reference:CTRLgrp|BookRigged_reference:Root|BookRigged_reference:p02.rotateX" 
		"BookRigged_referenceRN.placeHolderList[532]" ""
		5 4 "BookRigged_referenceRN" "|BookRigged_reference:CTRLgrp|BookRigged_reference:Root|BookRigged_reference:p02.rotateY" 
		"BookRigged_referenceRN.placeHolderList[533]" ""
		5 4 "BookRigged_referenceRN" "|BookRigged_reference:CTRLgrp|BookRigged_reference:Root|BookRigged_reference:p02.rotateZ" 
		"BookRigged_referenceRN.placeHolderList[534]" ""
		5 4 "BookRigged_referenceRN" "|BookRigged_reference:CTRLgrp|BookRigged_reference:Root|BookRigged_reference:p02|BookRigged_reference:p02m.scaleX" 
		"BookRigged_referenceRN.placeHolderList[535]" ""
		5 4 "BookRigged_referenceRN" "|BookRigged_reference:CTRLgrp|BookRigged_reference:Root|BookRigged_reference:p02|BookRigged_reference:p02m.scaleY" 
		"BookRigged_referenceRN.placeHolderList[536]" ""
		5 4 "BookRigged_referenceRN" "|BookRigged_reference:CTRLgrp|BookRigged_reference:Root|BookRigged_reference:p02|BookRigged_reference:p02m.scaleZ" 
		"BookRigged_referenceRN.placeHolderList[537]" ""
		5 4 "BookRigged_referenceRN" "|BookRigged_reference:CTRLgrp|BookRigged_reference:Root|BookRigged_reference:p02|BookRigged_reference:p02m.translateX" 
		"BookRigged_referenceRN.placeHolderList[538]" ""
		5 4 "BookRigged_referenceRN" "|BookRigged_reference:CTRLgrp|BookRigged_reference:Root|BookRigged_reference:p02|BookRigged_reference:p02m.translateY" 
		"BookRigged_referenceRN.placeHolderList[539]" ""
		5 4 "BookRigged_referenceRN" "|BookRigged_reference:CTRLgrp|BookRigged_reference:Root|BookRigged_reference:p02|BookRigged_reference:p02m.translateZ" 
		"BookRigged_referenceRN.placeHolderList[540]" ""
		5 4 "BookRigged_referenceRN" "|BookRigged_reference:CTRLgrp|BookRigged_reference:Root|BookRigged_reference:p02|BookRigged_reference:p02m.rotateX" 
		"BookRigged_referenceRN.placeHolderList[541]" ""
		5 4 "BookRigged_referenceRN" "|BookRigged_reference:CTRLgrp|BookRigged_reference:Root|BookRigged_reference:p02|BookRigged_reference:p02m.rotateY" 
		"BookRigged_referenceRN.placeHolderList[542]" ""
		5 4 "BookRigged_referenceRN" "|BookRigged_reference:CTRLgrp|BookRigged_reference:Root|BookRigged_reference:p02|BookRigged_reference:p02m.rotateZ" 
		"BookRigged_referenceRN.placeHolderList[543]" ""
		5 4 "BookRigged_referenceRN" "|BookRigged_reference:CTRLgrp|BookRigged_reference:Root|BookRigged_reference:p02|BookRigged_reference:p02m.visibility" 
		"BookRigged_referenceRN.placeHolderList[544]" ""
		5 4 "BookRigged_referenceRN" "|BookRigged_reference:CTRLgrp|BookRigged_reference:Root|BookRigged_reference:p02|BookRigged_reference:p02m|BookRigged_reference:p02ed.rotateX" 
		"BookRigged_referenceRN.placeHolderList[545]" ""
		5 4 "BookRigged_referenceRN" "|BookRigged_reference:CTRLgrp|BookRigged_reference:Root|BookRigged_reference:p02|BookRigged_reference:p02m|BookRigged_reference:p02ed.rotateY" 
		"BookRigged_referenceRN.placeHolderList[546]" ""
		5 4 "BookRigged_referenceRN" "|BookRigged_reference:CTRLgrp|BookRigged_reference:Root|BookRigged_reference:p02|BookRigged_reference:p02m|BookRigged_reference:p02ed.rotateZ" 
		"BookRigged_referenceRN.placeHolderList[547]" ""
		5 4 "BookRigged_referenceRN" "|BookRigged_reference:CTRLgrp|BookRigged_reference:Root|BookRigged_reference:p02|BookRigged_reference:p02m|BookRigged_reference:p02ed.visibility" 
		"BookRigged_referenceRN.placeHolderList[548]" ""
		5 4 "BookRigged_referenceRN" "|BookRigged_reference:CTRLgrp|BookRigged_reference:Root|BookRigged_reference:p02|BookRigged_reference:p02m|BookRigged_reference:p02ed.translateX" 
		"BookRigged_referenceRN.placeHolderList[549]" ""
		5 4 "BookRigged_referenceRN" "|BookRigged_reference:CTRLgrp|BookRigged_reference:Root|BookRigged_reference:p02|BookRigged_reference:p02m|BookRigged_reference:p02ed.translateY" 
		"BookRigged_referenceRN.placeHolderList[550]" ""
		5 4 "BookRigged_referenceRN" "|BookRigged_reference:CTRLgrp|BookRigged_reference:Root|BookRigged_reference:p02|BookRigged_reference:p02m|BookRigged_reference:p02ed.translateZ" 
		"BookRigged_referenceRN.placeHolderList[551]" ""
		5 4 "BookRigged_referenceRN" "|BookRigged_reference:CTRLgrp|BookRigged_reference:Root|BookRigged_reference:p02|BookRigged_reference:p02m|BookRigged_reference:p02ed.scaleX" 
		"BookRigged_referenceRN.placeHolderList[552]" ""
		5 4 "BookRigged_referenceRN" "|BookRigged_reference:CTRLgrp|BookRigged_reference:Root|BookRigged_reference:p02|BookRigged_reference:p02m|BookRigged_reference:p02ed.scaleY" 
		"BookRigged_referenceRN.placeHolderList[553]" ""
		5 4 "BookRigged_referenceRN" "|BookRigged_reference:CTRLgrp|BookRigged_reference:Root|BookRigged_reference:p02|BookRigged_reference:p02m|BookRigged_reference:p02ed.scaleZ" 
		"BookRigged_referenceRN.placeHolderList[554]" ""
		5 4 "BookRigged_referenceRN" "|BookRigged_reference:CTRLgrp|BookRigged_reference:Root|BookRigged_reference:p03.scaleX" 
		"BookRigged_referenceRN.placeHolderList[555]" ""
		5 4 "BookRigged_referenceRN" "|BookRigged_reference:CTRLgrp|BookRigged_reference:Root|BookRigged_reference:p03.scaleY" 
		"BookRigged_referenceRN.placeHolderList[556]" ""
		5 4 "BookRigged_referenceRN" "|BookRigged_reference:CTRLgrp|BookRigged_reference:Root|BookRigged_reference:p03.scaleZ" 
		"BookRigged_referenceRN.placeHolderList[557]" ""
		5 4 "BookRigged_referenceRN" "|BookRigged_reference:CTRLgrp|BookRigged_reference:Root|BookRigged_reference:p03.translateX" 
		"BookRigged_referenceRN.placeHolderList[558]" ""
		5 4 "BookRigged_referenceRN" "|BookRigged_reference:CTRLgrp|BookRigged_reference:Root|BookRigged_reference:p03.translateY" 
		"BookRigged_referenceRN.placeHolderList[559]" ""
		5 4 "BookRigged_referenceRN" "|BookRigged_reference:CTRLgrp|BookRigged_reference:Root|BookRigged_reference:p03.translateZ" 
		"BookRigged_referenceRN.placeHolderList[560]" ""
		5 4 "BookRigged_referenceRN" "|BookRigged_reference:CTRLgrp|BookRigged_reference:Root|BookRigged_reference:p03.rotateX" 
		"BookRigged_referenceRN.placeHolderList[561]" ""
		5 4 "BookRigged_referenceRN" "|BookRigged_reference:CTRLgrp|BookRigged_reference:Root|BookRigged_reference:p03.rotateY" 
		"BookRigged_referenceRN.placeHolderList[562]" ""
		5 4 "BookRigged_referenceRN" "|BookRigged_reference:CTRLgrp|BookRigged_reference:Root|BookRigged_reference:p03.rotateZ" 
		"BookRigged_referenceRN.placeHolderList[563]" ""
		5 4 "BookRigged_referenceRN" "|BookRigged_reference:CTRLgrp|BookRigged_reference:Root|BookRigged_reference:p03.visibility" 
		"BookRigged_referenceRN.placeHolderList[564]" ""
		5 4 "BookRigged_referenceRN" "|BookRigged_reference:CTRLgrp|BookRigged_reference:Root|BookRigged_reference:p03|BookRigged_reference:p03m.scaleX" 
		"BookRigged_referenceRN.placeHolderList[565]" ""
		5 4 "BookRigged_referenceRN" "|BookRigged_reference:CTRLgrp|BookRigged_reference:Root|BookRigged_reference:p03|BookRigged_reference:p03m.scaleY" 
		"BookRigged_referenceRN.placeHolderList[566]" ""
		5 4 "BookRigged_referenceRN" "|BookRigged_reference:CTRLgrp|BookRigged_reference:Root|BookRigged_reference:p03|BookRigged_reference:p03m.scaleZ" 
		"BookRigged_referenceRN.placeHolderList[567]" ""
		5 4 "BookRigged_referenceRN" "|BookRigged_reference:CTRLgrp|BookRigged_reference:Root|BookRigged_reference:p03|BookRigged_reference:p03m.translateX" 
		"BookRigged_referenceRN.placeHolderList[568]" ""
		5 4 "BookRigged_referenceRN" "|BookRigged_reference:CTRLgrp|BookRigged_reference:Root|BookRigged_reference:p03|BookRigged_reference:p03m.translateY" 
		"BookRigged_referenceRN.placeHolderList[569]" ""
		5 4 "BookRigged_referenceRN" "|BookRigged_reference:CTRLgrp|BookRigged_reference:Root|BookRigged_reference:p03|BookRigged_reference:p03m.translateZ" 
		"BookRigged_referenceRN.placeHolderList[570]" ""
		5 4 "BookRigged_referenceRN" "|BookRigged_reference:CTRLgrp|BookRigged_reference:Root|BookRigged_reference:p03|BookRigged_reference:p03m.rotateX" 
		"BookRigged_referenceRN.placeHolderList[571]" ""
		5 4 "BookRigged_referenceRN" "|BookRigged_reference:CTRLgrp|BookRigged_reference:Root|BookRigged_reference:p03|BookRigged_reference:p03m.rotateY" 
		"BookRigged_referenceRN.placeHolderList[572]" ""
		5 4 "BookRigged_referenceRN" "|BookRigged_reference:CTRLgrp|BookRigged_reference:Root|BookRigged_reference:p03|BookRigged_reference:p03m.rotateZ" 
		"BookRigged_referenceRN.placeHolderList[573]" ""
		5 4 "BookRigged_referenceRN" "|BookRigged_reference:CTRLgrp|BookRigged_reference:Root|BookRigged_reference:p03|BookRigged_reference:p03m.visibility" 
		"BookRigged_referenceRN.placeHolderList[574]" ""
		5 4 "BookRigged_referenceRN" "|BookRigged_reference:CTRLgrp|BookRigged_reference:Root|BookRigged_reference:p03|BookRigged_reference:p03m|BookRigged_reference:p03ed.translateX" 
		"BookRigged_referenceRN.placeHolderList[575]" ""
		5 4 "BookRigged_referenceRN" "|BookRigged_reference:CTRLgrp|BookRigged_reference:Root|BookRigged_reference:p03|BookRigged_reference:p03m|BookRigged_reference:p03ed.translateY" 
		"BookRigged_referenceRN.placeHolderList[576]" ""
		5 4 "BookRigged_referenceRN" "|BookRigged_reference:CTRLgrp|BookRigged_reference:Root|BookRigged_reference:p03|BookRigged_reference:p03m|BookRigged_reference:p03ed.translateZ" 
		"BookRigged_referenceRN.placeHolderList[577]" ""
		5 4 "BookRigged_referenceRN" "|BookRigged_reference:CTRLgrp|BookRigged_reference:Root|BookRigged_reference:p03|BookRigged_reference:p03m|BookRigged_reference:p03ed.rotateX" 
		"BookRigged_referenceRN.placeHolderList[578]" ""
		5 4 "BookRigged_referenceRN" "|BookRigged_reference:CTRLgrp|BookRigged_reference:Root|BookRigged_reference:p03|BookRigged_reference:p03m|BookRigged_reference:p03ed.rotateY" 
		"BookRigged_referenceRN.placeHolderList[579]" ""
		5 4 "BookRigged_referenceRN" "|BookRigged_reference:CTRLgrp|BookRigged_reference:Root|BookRigged_reference:p03|BookRigged_reference:p03m|BookRigged_reference:p03ed.rotateZ" 
		"BookRigged_referenceRN.placeHolderList[580]" ""
		5 4 "BookRigged_referenceRN" "|BookRigged_reference:CTRLgrp|BookRigged_reference:Root|BookRigged_reference:p03|BookRigged_reference:p03m|BookRigged_reference:p03ed.visibility" 
		"BookRigged_referenceRN.placeHolderList[581]" ""
		5 4 "BookRigged_referenceRN" "|BookRigged_reference:CTRLgrp|BookRigged_reference:Root|BookRigged_reference:p03|BookRigged_reference:p03m|BookRigged_reference:p03ed.scaleX" 
		"BookRigged_referenceRN.placeHolderList[582]" ""
		5 4 "BookRigged_referenceRN" "|BookRigged_reference:CTRLgrp|BookRigged_reference:Root|BookRigged_reference:p03|BookRigged_reference:p03m|BookRigged_reference:p03ed.scaleY" 
		"BookRigged_referenceRN.placeHolderList[583]" ""
		5 4 "BookRigged_referenceRN" "|BookRigged_reference:CTRLgrp|BookRigged_reference:Root|BookRigged_reference:p03|BookRigged_reference:p03m|BookRigged_reference:p03ed.scaleZ" 
		"BookRigged_referenceRN.placeHolderList[584]" ""
		5 4 "BookRigged_referenceRN" "|BookRigged_reference:CTRLgrp|BookRigged_reference:Root|BookRigged_reference:p04|BookRigged_reference:p04m|BookRigged_reference:p04ed.scaleX" 
		"BookRigged_referenceRN.placeHolderList[585]" ""
		5 4 "BookRigged_referenceRN" "|BookRigged_reference:CTRLgrp|BookRigged_reference:Root|BookRigged_reference:p04|BookRigged_reference:p04m|BookRigged_reference:p04ed.scaleY" 
		"BookRigged_referenceRN.placeHolderList[586]" ""
		5 4 "BookRigged_referenceRN" "|BookRigged_reference:CTRLgrp|BookRigged_reference:Root|BookRigged_reference:p04|BookRigged_reference:p04m|BookRigged_reference:p04ed.scaleZ" 
		"BookRigged_referenceRN.placeHolderList[587]" ""
		5 4 "BookRigged_referenceRN" "|BookRigged_reference:CTRLgrp|BookRigged_reference:Root|BookRigged_reference:p04|BookRigged_reference:p04m|BookRigged_reference:p04ed.rotateX" 
		"BookRigged_referenceRN.placeHolderList[588]" ""
		5 4 "BookRigged_referenceRN" "|BookRigged_reference:CTRLgrp|BookRigged_reference:Root|BookRigged_reference:p04|BookRigged_reference:p04m|BookRigged_reference:p04ed.rotateY" 
		"BookRigged_referenceRN.placeHolderList[589]" ""
		5 4 "BookRigged_referenceRN" "|BookRigged_reference:CTRLgrp|BookRigged_reference:Root|BookRigged_reference:p04|BookRigged_reference:p04m|BookRigged_reference:p04ed.rotateZ" 
		"BookRigged_referenceRN.placeHolderList[590]" ""
		5 4 "BookRigged_referenceRN" "|BookRigged_reference:CTRLgrp|BookRigged_reference:Root|BookRigged_reference:p04|BookRigged_reference:p04m|BookRigged_reference:p04ed.visibility" 
		"BookRigged_referenceRN.placeHolderList[591]" ""
		5 4 "BookRigged_referenceRN" "|BookRigged_reference:CTRLgrp|BookRigged_reference:Root|BookRigged_reference:p04|BookRigged_reference:p04m|BookRigged_reference:p04ed.translateX" 
		"BookRigged_referenceRN.placeHolderList[592]" ""
		5 4 "BookRigged_referenceRN" "|BookRigged_reference:CTRLgrp|BookRigged_reference:Root|BookRigged_reference:p04|BookRigged_reference:p04m|BookRigged_reference:p04ed.translateY" 
		"BookRigged_referenceRN.placeHolderList[593]" ""
		5 4 "BookRigged_referenceRN" "|BookRigged_reference:CTRLgrp|BookRigged_reference:Root|BookRigged_reference:p04|BookRigged_reference:p04m|BookRigged_reference:p04ed.translateZ" 
		"BookRigged_referenceRN.placeHolderList[594]" ""
		5 4 "BookRigged_referenceRN" "|BookRigged_reference:CTRLgrp|BookRigged_reference:rootCTRL.visibility" 
		"BookRigged_referenceRN.placeHolderList[595]" ""
		5 4 "BookRigged_referenceRN" "|BookRigged_reference:CTRLgrp|BookRigged_reference:rootCTRL.translateX" 
		"BookRigged_referenceRN.placeHolderList[596]" ""
		5 4 "BookRigged_referenceRN" "|BookRigged_reference:CTRLgrp|BookRigged_reference:rootCTRL.translateY" 
		"BookRigged_referenceRN.placeHolderList[597]" ""
		5 4 "BookRigged_referenceRN" "|BookRigged_reference:CTRLgrp|BookRigged_reference:rootCTRL.translateZ" 
		"BookRigged_referenceRN.placeHolderList[598]" ""
		5 4 "BookRigged_referenceRN" "|BookRigged_reference:CTRLgrp|BookRigged_reference:rootCTRL.rotateX" 
		"BookRigged_referenceRN.placeHolderList[599]" ""
		5 4 "BookRigged_referenceRN" "|BookRigged_reference:CTRLgrp|BookRigged_reference:rootCTRL.rotateY" 
		"BookRigged_referenceRN.placeHolderList[600]" ""
		5 4 "BookRigged_referenceRN" "|BookRigged_reference:CTRLgrp|BookRigged_reference:rootCTRL.rotateZ" 
		"BookRigged_referenceRN.placeHolderList[601]" ""
		5 4 "BookRigged_referenceRN" "|BookRigged_reference:CTRLgrp|BookRigged_reference:rootCTRL.scaleX" 
		"BookRigged_referenceRN.placeHolderList[602]" ""
		5 4 "BookRigged_referenceRN" "|BookRigged_reference:CTRLgrp|BookRigged_reference:rootCTRL.scaleY" 
		"BookRigged_referenceRN.placeHolderList[603]" ""
		5 4 "BookRigged_referenceRN" "|BookRigged_reference:CTRLgrp|BookRigged_reference:rootCTRL.scaleZ" 
		"BookRigged_referenceRN.placeHolderList[604]" ""
		5 4 "BookRigged_referenceRN" "|BookRigged_reference:CTRLgrp|BookRigged_reference:rootCTRL|BookRigged_reference:turnbook.translateX" 
		"BookRigged_referenceRN.placeHolderList[605]" ""
		5 4 "BookRigged_referenceRN" "|BookRigged_reference:CTRLgrp|BookRigged_reference:rootCTRL|BookRigged_reference:turnbook.translateY" 
		"BookRigged_referenceRN.placeHolderList[606]" ""
		5 4 "BookRigged_referenceRN" "|BookRigged_reference:CTRLgrp|BookRigged_reference:rootCTRL|BookRigged_reference:turnbook.translateZ" 
		"BookRigged_referenceRN.placeHolderList[607]" ""
		5 4 "BookRigged_referenceRN" "|BookRigged_reference:CTRLgrp|BookRigged_reference:rootCTRL|BookRigged_reference:turnbook.rotateX" 
		"BookRigged_referenceRN.placeHolderList[608]" ""
		5 4 "BookRigged_referenceRN" "|BookRigged_reference:CTRLgrp|BookRigged_reference:rootCTRL|BookRigged_reference:turnbook.rotateY" 
		"BookRigged_referenceRN.placeHolderList[609]" ""
		5 4 "BookRigged_referenceRN" "|BookRigged_reference:CTRLgrp|BookRigged_reference:rootCTRL|BookRigged_reference:turnbook.rotateZ" 
		"BookRigged_referenceRN.placeHolderList[610]" ""
		5 4 "BookRigged_referenceRN" "|BookRigged_reference:CTRLgrp|BookRigged_reference:rootCTRL|BookRigged_reference:turnbook.scaleX" 
		"BookRigged_referenceRN.placeHolderList[611]" ""
		5 4 "BookRigged_referenceRN" "|BookRigged_reference:CTRLgrp|BookRigged_reference:rootCTRL|BookRigged_reference:turnbook.scaleY" 
		"BookRigged_referenceRN.placeHolderList[612]" ""
		5 4 "BookRigged_referenceRN" "|BookRigged_reference:CTRLgrp|BookRigged_reference:rootCTRL|BookRigged_reference:turnbook.scaleZ" 
		"BookRigged_referenceRN.placeHolderList[613]" ""
		5 4 "BookRigged_referenceRN" "|BookRigged_reference:CTRLgrp|BookRigged_reference:rootCTRL|BookRigged_reference:turnbook.visibility" 
		"BookRigged_referenceRN.placeHolderList[614]" ""
		5 4 "BookRigged_referenceRN" "|BookRigged_reference:CTRLgrp|BookRigged_reference:rootCTRL|BookRigged_reference:turnbook|BookRigged_reference:tpCTRL.rotateX" 
		"BookRigged_referenceRN.placeHolderList[615]" ""
		5 4 "BookRigged_referenceRN" "|BookRigged_reference:CTRLgrp|BookRigged_reference:rootCTRL|BookRigged_reference:turnbook|BookRigged_reference:tpCTRL.rotateY" 
		"BookRigged_referenceRN.placeHolderList[616]" ""
		5 4 "BookRigged_referenceRN" "|BookRigged_reference:CTRLgrp|BookRigged_reference:rootCTRL|BookRigged_reference:turnbook|BookRigged_reference:tpCTRL.rotateZ" 
		"BookRigged_referenceRN.placeHolderList[617]" ""
		5 4 "BookRigged_referenceRN" "|BookRigged_reference:CTRLgrp|BookRigged_reference:rootCTRL|BookRigged_reference:turnbook|BookRigged_reference:tpCTRL.visibility" 
		"BookRigged_referenceRN.placeHolderList[618]" ""
		5 4 "BookRigged_referenceRN" "|BookRigged_reference:CTRLgrp|BookRigged_reference:rootCTRL|BookRigged_reference:turnbook|BookRigged_reference:tpCTRL.translateX" 
		"BookRigged_referenceRN.placeHolderList[619]" ""
		5 4 "BookRigged_referenceRN" "|BookRigged_reference:CTRLgrp|BookRigged_reference:rootCTRL|BookRigged_reference:turnbook|BookRigged_reference:tpCTRL.translateY" 
		"BookRigged_referenceRN.placeHolderList[620]" ""
		5 4 "BookRigged_referenceRN" "|BookRigged_reference:CTRLgrp|BookRigged_reference:rootCTRL|BookRigged_reference:turnbook|BookRigged_reference:tpCTRL.translateZ" 
		"BookRigged_referenceRN.placeHolderList[621]" ""
		5 4 "BookRigged_referenceRN" "|BookRigged_reference:CTRLgrp|BookRigged_reference:rootCTRL|BookRigged_reference:turnbook|BookRigged_reference:tpCTRL.scaleX" 
		"BookRigged_referenceRN.placeHolderList[622]" ""
		5 4 "BookRigged_referenceRN" "|BookRigged_reference:CTRLgrp|BookRigged_reference:rootCTRL|BookRigged_reference:turnbook|BookRigged_reference:tpCTRL.scaleY" 
		"BookRigged_referenceRN.placeHolderList[623]" ""
		5 4 "BookRigged_referenceRN" "|BookRigged_reference:CTRLgrp|BookRigged_reference:rootCTRL|BookRigged_reference:turnbook|BookRigged_reference:tpCTRL.scaleZ" 
		"BookRigged_referenceRN.placeHolderList[624]" ""
		5 4 "BookRigged_referenceRN" "|BookRigged_reference:CTRLgrp|BookRigged_reference:rootCTRL|BookRigged_reference:turnbook|BookRigged_reference:btmCTRL.rotateX" 
		"BookRigged_referenceRN.placeHolderList[625]" ""
		5 4 "BookRigged_referenceRN" "|BookRigged_reference:CTRLgrp|BookRigged_reference:rootCTRL|BookRigged_reference:turnbook|BookRigged_reference:btmCTRL.rotateY" 
		"BookRigged_referenceRN.placeHolderList[626]" ""
		5 4 "BookRigged_referenceRN" "|BookRigged_reference:CTRLgrp|BookRigged_reference:rootCTRL|BookRigged_reference:turnbook|BookRigged_reference:btmCTRL.rotateZ" 
		"BookRigged_referenceRN.placeHolderList[627]" ""
		5 4 "BookRigged_referenceRN" "|BookRigged_reference:CTRLgrp|BookRigged_reference:rootCTRL|BookRigged_reference:turnbook|BookRigged_reference:btmCTRL.visibility" 
		"BookRigged_referenceRN.placeHolderList[628]" ""
		5 4 "BookRigged_referenceRN" "|BookRigged_reference:CTRLgrp|BookRigged_reference:rootCTRL|BookRigged_reference:turnbook|BookRigged_reference:btmCTRL.translateX" 
		"BookRigged_referenceRN.placeHolderList[629]" ""
		5 4 "BookRigged_referenceRN" "|BookRigged_reference:CTRLgrp|BookRigged_reference:rootCTRL|BookRigged_reference:turnbook|BookRigged_reference:btmCTRL.translateY" 
		"BookRigged_referenceRN.placeHolderList[630]" ""
		5 4 "BookRigged_referenceRN" "|BookRigged_reference:CTRLgrp|BookRigged_reference:rootCTRL|BookRigged_reference:turnbook|BookRigged_reference:btmCTRL.translateZ" 
		"BookRigged_referenceRN.placeHolderList[631]" ""
		5 4 "BookRigged_referenceRN" "|BookRigged_reference:CTRLgrp|BookRigged_reference:rootCTRL|BookRigged_reference:turnbook|BookRigged_reference:btmCTRL.scaleX" 
		"BookRigged_referenceRN.placeHolderList[632]" ""
		5 4 "BookRigged_referenceRN" "|BookRigged_reference:CTRLgrp|BookRigged_reference:rootCTRL|BookRigged_reference:turnbook|BookRigged_reference:btmCTRL.scaleY" 
		"BookRigged_referenceRN.placeHolderList[633]" ""
		5 4 "BookRigged_referenceRN" "|BookRigged_reference:CTRLgrp|BookRigged_reference:rootCTRL|BookRigged_reference:turnbook|BookRigged_reference:btmCTRL.scaleZ" 
		"BookRigged_referenceRN.placeHolderList[634]" ""
		5 4 "BookRigged_referenceRN" "BookRigged_reference:lambert4.color" "BookRigged_referenceRN.placeHolderList[635]" 
		""
		5 4 "BookRigged_referenceRN" "BookRigged_reference:materialInfo6.texture" 
		"BookRigged_referenceRN.placeHolderList[636]" ""
		5 4 "BookRigged_referenceRN" "BookRigged_reference:lambert6.color" "BookRigged_referenceRN.placeHolderList[637]" 
		""
		5 4 "BookRigged_referenceRN" "BookRigged_reference:lambert6.transparency" 
		"BookRigged_referenceRN.placeHolderList[638]" ""
		5 4 "BookRigged_referenceRN" "BookRigged_reference:materialInfo8.texture" 
		"BookRigged_referenceRN.placeHolderList[639]" ""
		5 4 "BookRigged_referenceRN" "BookRigged_reference:pasted__lambert10.transparencyR" 
		"BookRigged_referenceRN.placeHolderList[640]" ""
		5 4 "BookRigged_referenceRN" "BookRigged_reference:pasted__lambert10.transparencyG" 
		"BookRigged_referenceRN.placeHolderList[641]" ""
		5 4 "BookRigged_referenceRN" "BookRigged_reference:pasted__lambert10.transparencyB" 
		"BookRigged_referenceRN.placeHolderList[642]" ""
		5 4 "BookRigged_referenceRN" "BookRigged_reference:flip.weight[0]" "BookRigged_referenceRN.placeHolderList[643]" 
		""
		5 4 "BookRigged_referenceRN" "BookRigged_reference:strait.weight[0]" 
		"BookRigged_referenceRN.placeHolderList[644]" ""
		5 4 "BookRigged_referenceRN" "BookRigged_reference:flip02.weight[0]" 
		"BookRigged_referenceRN.placeHolderList[645]" ""
		5 4 "BookRigged_referenceRN" "BookRigged_reference:strait02.weight[0]" 
		"BookRigged_referenceRN.placeHolderList[646]" ""
		5 4 "BookRigged_referenceRN" "BookRigged_reference:flip03.weight[0]" 
		"BookRigged_referenceRN.placeHolderList[647]" ""
		5 4 "BookRigged_referenceRN" "BookRigged_reference:strait03.weight[0]" 
		"BookRigged_referenceRN.placeHolderList[648]" ""
		5 4 "BookRigged_referenceRN" "BookRigged_reference:lambert11.color" 
		"BookRigged_referenceRN.placeHolderList[649]" ""
		5 4 "BookRigged_referenceRN" "BookRigged_reference:materialInfo13.texture" 
		"BookRigged_referenceRN.placeHolderList[650]" "";
	setAttr ".ptag" -type "string" "";
lockNode -l 1 ;
createNode mentalrayItemsList -s -n "mentalrayItemsList";
createNode mentalrayGlobals -s -n "mentalrayGlobals";
	setAttr ".rvb" 3;
	setAttr ".ivb" no;
createNode mentalrayOptions -s -n "miDefaultOptions";
	addAttr -ci true -m -sn "stringOptions" -ln "stringOptions" -at "compound" -nc 
		3;
	addAttr -ci true -sn "name" -ln "name" -dt "string" -p "stringOptions";
	addAttr -ci true -sn "value" -ln "value" -dt "string" -p "stringOptions";
	addAttr -ci true -sn "type" -ln "type" -dt "string" -p "stringOptions";
	setAttr ".maxr" 2;
	setAttr -s 28 ".stringOptions";
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
createNode mentalrayFramebuffer -s -n "miDefaultFramebuffer";
createNode animCurveTU -n "btmCTRL_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "btmCTRL_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTL -n "btmCTRL_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTL -n "btmCTRL_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "btmCTRL_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "btmCTRL_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "btmCTRL_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 12 -90;
createNode animCurveTU -n "btmCTRL_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "btmCTRL_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "btmCTRL_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTA -n "rootCTRL_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "rootCTRL_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "rootCTRL_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 12 -90;
createNode animCurveTU -n "rootCTRL_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "rootCTRL_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTL -n "rootCTRL_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 12 7.5;
createNode animCurveTL -n "rootCTRL_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTU -n "rootCTRL_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "rootCTRL_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "rootCTRL_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTA -n "tpCTRL_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "tpCTRL_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "tpCTRL_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 12 90;
createNode animCurveTU -n "tpCTRL_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "tpCTRL_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTL -n "tpCTRL_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTL -n "tpCTRL_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTU -n "tpCTRL_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "tpCTRL_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "tpCTRL_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "Root_visibility";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 24 ".ktv[0:23]"  1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1 10 1
		 11 1 12 1 13 1 14 1 15 1 16 1 17 1 18 1 19 1 20 1 21 1 22 1 23 1 24 1;
createNode animCurveTL -n "Root_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 24 ".ktv[0:23]"  1 6.8354552816923002 2 6.8308812823796758
		 3 6.7715026123183941 4 6.5562939934429139 5 6.0878696364884819 6 5.3211037569943072
		 7 4.2906067539471699 8 3.108261817522993 9 1.933509139967585 10 0.93284602763816515
		 11 0.25001949759328979 12 1.5177759675060854e-015 13 1.5177759675060854e-015 14 1.5177759675060854e-015
		 15 1.5177759675060854e-015 16 1.5177759675060854e-015 17 1.5177759675060854e-015
		 18 1.5177759675060854e-015 19 1.5177759675060854e-015 20 1.5177759675060854e-015
		 21 1.5177759675060854e-015 22 1.5177759675060854e-015 23 1.5177759675060854e-015
		 24 1.5177759675060854e-015;
createNode animCurveTL -n "Root_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 24 ".ktv[0:23]"  1 0 2 -0.075338925128329487 3 -0.27920193419699069
		 4 -0.56423793579986192 5 -0.85431765353846645 6 -1.0505613883613141 7 -1.0611488469742101
		 8 -0.84181387885033565 9 -0.42556525405916457 10 0.074853394397455197 11 0.49443810135350574
		 12 0.66454471830769979 13 0.66454471830769979 14 0.66454471830769979 15 0.66454471830769979
		 16 0.66454471830769979 17 0.66454471830769979 18 0.66454471830769979 19 0.66454471830769979
		 20 0.66454471830769979 21 0.66454471830769979 22 0.66454471830769979 23 0.66454471830769979
		 24 0.66454471830769979;
createNode animCurveTL -n "Root_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 24 ".ktv[0:23]"  1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0
		 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0;
createNode animCurveTA -n "Root_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 24 ".ktv[0:23]"  1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0
		 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0;
createNode animCurveTA -n "Root_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 24 ".ktv[0:23]"  1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0
		 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0;
createNode animCurveTA -n "Root_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 24 ".ktv[0:23]"  1 0 2 -2.09616842641831 3 -7.8437263433435538
		 4 -16.431255645418467 5 -27.04733126281219 6 -38.880540748802275 7 -51.119455986600691
		 8 -62.952669752840201 9 -73.568745225140745 10 -82.156271697898163 11 -87.903832661780598
		 12 -90 13 -90 14 -90 15 -90 16 -90 17 -90 18 -90 19 -90 20 -90 21 -90 22 -90 23 -90
		 24 -90;
createNode animCurveTU -n "Root_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 24 ".ktv[0:23]"  1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1 10 1
		 11 1 12 1 13 1 14 1 15 1 16 1 17 1 18 1 19 1 20 1 21 1 22 1 23 1 24 1;
createNode animCurveTU -n "Root_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 24 ".ktv[0:23]"  1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1 10 1
		 11 1 12 1 13 1 14 1 15 1 16 1 17 1 18 1 19 1 20 1 21 1 22 1 23 1 24 1;
createNode animCurveTU -n "Root_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 24 ".ktv[0:23]"  1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1 10 1
		 11 1 12 1 13 1 14 1 15 1 16 1 17 1 18 1 19 1 20 1 21 1 22 1 23 1 24 1;
createNode reference -n "sharedReferenceNode";
	setAttr ".ed" -type "dataReferenceEdits" 
		"sharedReferenceNode";
createNode polyPlane -n "polyPlane1";
	setAttr ".cuv" 2;
createNode animCurveTL -n "BookRigged_reference:turnbook_translateX";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 0 12 0 50 0 61 0 93 0 105 0;
createNode animCurveTL -n "BookRigged_reference:turnbook_translateY";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 5 0.047275738556230615 8 0.17915557211912353
		 12 0.30502696000249729 50 0.30502696000249729 61 0.30502696000249729 93 0.30502696000249729
		 105 0;
createNode animCurveTL -n "BookRigged_reference:turnbook_translateZ";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 50 0 61 0 93 0 105 0;
createNode animCurveTU -n "BookRigged_reference:turnbook_visibility";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 1 50 1 61 1 93 1 105 1;
createNode animCurveTA -n "BookRigged_reference:turnbook_rotateX";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 50 0 61 0 93 0 105 0;
createNode animCurveTA -n "BookRigged_reference:turnbook_rotateY";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 50 0 61 0 93 0 105 0;
createNode animCurveTA -n "BookRigged_reference:turnbook_rotateZ";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 0 12 -90 50 -90 61 -90 93 -90 105 0;
createNode animCurveTU -n "BookRigged_reference:turnbook_scaleX";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 1 50 1 61 1 93 1 105 1;
createNode animCurveTU -n "BookRigged_reference:turnbook_scaleY";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 1 50 1 61 1 93 1 105 1;
createNode animCurveTU -n "BookRigged_reference:turnbook_scaleZ";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 1 50 1 61 1 93 1 105 1;
createNode animCurveTA -n "BookRigged_reference:tpCTRL_rotateZ";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 12 91 50 91 57 0;
createNode animCurveTA -n "BookRigged_reference:btmCTRL_rotateZ";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 0 7 -42.392610199923574 9 -91 12 -91 50 -91
		 57 0;
createNode animCurveTA -n "BookRigged_reference:btmCTRL_rotateX";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  8 0 12 0 50 0;
createNode animCurveTA -n "BookRigged_reference:btmCTRL_rotateY";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  8 0 12 0 50 0;
createNode animCurveTU -n "BookRigged_reference:btmCTRL_visibility";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  8 1 12 1 50 1;
createNode animCurveTL -n "BookRigged_reference:btmCTRL_translateX";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  8 0 12 0 50 0;
createNode animCurveTL -n "BookRigged_reference:btmCTRL_translateY";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  8 0 12 0 50 0;
createNode animCurveTL -n "BookRigged_reference:btmCTRL_translateZ";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  8 0 12 0 50 0;
createNode animCurveTU -n "BookRigged_reference:btmCTRL_scaleX";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  8 1 12 1 50 1;
createNode animCurveTU -n "BookRigged_reference:btmCTRL_scaleY";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  8 1 12 1 50 1;
createNode animCurveTU -n "BookRigged_reference:btmCTRL_scaleZ";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  8 1 12 1 50 1;
createNode animCurveTL -n "BookRigged_reference:p03_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 -0.24999999999999997 12 -0.24999999999999997
		 46 -0.24999999999999997 57 0;
	setAttr -s 4 ".kit[2:3]"  1 18;
	setAttr -s 4 ".kot[2:3]"  1 18;
	setAttr -s 4 ".kix[2:3]"  1 1;
	setAttr -s 4 ".kiy[2:3]"  0 0;
	setAttr -s 4 ".kox[2:3]"  1 1;
	setAttr -s 4 ".koy[2:3]"  0 0;
createNode animCurveTL -n "BookRigged_reference:p03_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 -0.054833753066812818 12 -0.054833753066812818
		 46 -0.054833753066812818 57 0;
	setAttr -s 4 ".kit[2:3]"  1 18;
	setAttr -s 4 ".kot[2:3]"  1 18;
	setAttr -s 4 ".kix[2:3]"  1 1;
	setAttr -s 4 ".kiy[2:3]"  0 0;
	setAttr -s 4 ".kox[2:3]"  1 1;
	setAttr -s 4 ".koy[2:3]"  0 0;
createNode animCurveTL -n "BookRigged_reference:p03_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 12 0 46 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTU -n "BookRigged_reference:p03_visibility";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 1 12 1 46 1;
	setAttr -s 3 ".kit[0:2]"  9 9 1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
createNode animCurveTA -n "BookRigged_reference:p03_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 12 0 46 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTA -n "BookRigged_reference:p03_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 12 0 46 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTA -n "BookRigged_reference:p03_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 0 5 9.9060616529405792 7 38.806957668146339
		 12 85.5 46 85.5 57 0;
	setAttr -s 6 ".kit[4:5]"  1 18;
	setAttr -s 6 ".kot[4:5]"  1 18;
	setAttr -s 6 ".kix[4:5]"  1 1;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[4:5]"  1 1;
	setAttr -s 6 ".koy[4:5]"  0 0;
createNode animCurveTU -n "BookRigged_reference:p03_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 1 12 1 46 1;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTU -n "BookRigged_reference:p03_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 1 12 1 46 1;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTU -n "BookRigged_reference:p03_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 1 12 1 46 1;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTA -n "BookRigged_reference:p03m_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  12 0 46 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  1;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
	setAttr -s 2 ".kox[1]"  1;
	setAttr -s 2 ".koy[1]"  0;
createNode animCurveTA -n "BookRigged_reference:p03m_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  12 0 46 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  1;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
	setAttr -s 2 ".kox[1]"  1;
	setAttr -s 2 ".koy[1]"  0;
createNode animCurveTA -n "BookRigged_reference:p03m_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 0 5 -11.540517414865 9 -29.889138093231139
		 12 9.2000000000000011 46 9.2000000000000011 57 0;
	setAttr -s 6 ".kit[4:5]"  1 18;
	setAttr -s 6 ".kot[4:5]"  1 18;
	setAttr -s 6 ".kix[4:5]"  1 1;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[4:5]"  1 1;
	setAttr -s 6 ".koy[4:5]"  0 0;
createNode animCurveTU -n "BookRigged_reference:p03m_visibility";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  12 1 46 1;
	setAttr -s 2 ".kit[0:1]"  9 1;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTL -n "BookRigged_reference:p03m_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 6.8345273286317543 12 7.3429620256894204
		 46 7.3429620256894204 57 7.1861449797932488;
	setAttr -s 4 ".kit[2:3]"  1 18;
	setAttr -s 4 ".kot[2:3]"  1 18;
	setAttr -s 4 ".kix[2:3]"  1 1;
	setAttr -s 4 ".kiy[2:3]"  0 0;
	setAttr -s 4 ".kox[2:3]"  1 1;
	setAttr -s 4 ".koy[2:3]"  0 0;
createNode animCurveTL -n "BookRigged_reference:p03m_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  12 0.039570137804817919 46 0.039570137804817919;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  1;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
	setAttr -s 2 ".kox[1]"  1;
	setAttr -s 2 ".koy[1]"  0;
createNode animCurveTL -n "BookRigged_reference:p03m_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  12 -8.3038664512608382e-016 46 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  1;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
	setAttr -s 2 ".kox[1]"  1;
	setAttr -s 2 ".koy[1]"  0;
createNode animCurveTU -n "BookRigged_reference:p03m_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  12 1 46 1;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  1;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
	setAttr -s 2 ".kox[1]"  1;
	setAttr -s 2 ".koy[1]"  0;
createNode animCurveTU -n "BookRigged_reference:p03m_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  12 1 46 1;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  1;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
	setAttr -s 2 ".kox[1]"  1;
	setAttr -s 2 ".koy[1]"  0;
createNode animCurveTU -n "BookRigged_reference:p03m_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  12 1 46 1;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  1;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
	setAttr -s 2 ".kox[1]"  1;
	setAttr -s 2 ".koy[1]"  0;
createNode animCurveTA -n "BookRigged_reference:p01m_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 12 0 46 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTA -n "BookRigged_reference:p01m_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 12 0 46 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTA -n "BookRigged_reference:p01m_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  1 0 12 -7 32 -7 46 -6.0000000000000009 48 -4.6935653931201644
		 51 0.11577732731374718 53 -2.4473204566909543 55 1.2264875784794269 57 0;
	setAttr -s 9 ".kit[1:8]"  3 18 1 18 18 18 18 18;
	setAttr -s 9 ".kot[1:8]"  3 18 1 18 18 18 18 18;
	setAttr -s 9 ".kix[3:8]"  1 0.88998597860336304 1 1 1 1;
	setAttr -s 9 ".kiy[3:8]"  0 0.45598793029785156 0 0 0 0;
	setAttr -s 9 ".kox[3:8]"  1 0.88998597860336304 1 1 1 1;
	setAttr -s 9 ".koy[3:8]"  0 0.45598793029785156 0 0 0 0;
createNode animCurveTU -n "BookRigged_reference:p01m_visibility";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 1 12 1 46 1;
	setAttr -s 3 ".kit[0:2]"  9 9 1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
createNode animCurveTL -n "BookRigged_reference:p01m_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 6.7806215286254892 12 7.2456490495867021
		 48 7.2456490495867021 80 7.2456490495867021 88 6.5103983111770463 89 6.3897989660127497
		 90 6.3232874323512336 92 6.260728808836971;
createNode animCurveTL -n "BookRigged_reference:p01m_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  1 0 12 -0.033267180508094157 48 -0.033267180508094157
		 80 -0.033267180508094157 88 0.0025084867243359218 89 0.25704409190367117 90 0.21835672726464697;
createNode animCurveTL -n "BookRigged_reference:p01m_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -8.3038664512608382e-016 48 0 80 0;
createNode animCurveTU -n "BookRigged_reference:p01m_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 1 12 1 46 1;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTU -n "BookRigged_reference:p01m_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 1 12 1 46 1;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTU -n "BookRigged_reference:p01m_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 1 12 1 46 1;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTA -n "BookRigged_reference:p01_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 12 0 46 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTA -n "BookRigged_reference:p01_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 12 0 46 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTA -n "BookRigged_reference:p01_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  1 0 12 -85 32 -85 46 -85.6 48 -70.900194471267454
		 51 -43.605898739376165 52 -31.555925840361198 53 -22.347701588227256 54 -13.983178030949112
		 57 0;
	setAttr -s 10 ".kit[3:9]"  1 18 18 18 18 18 18;
	setAttr -s 10 ".kot[3:9]"  1 18 18 18 18 18 18;
	setAttr -s 10 ".kix[3:9]"  1 0.27341446280479431 0.23586355149745941 
		0.21914300322532654 0.26220116019248962 0.39293581247329712 1;
	setAttr -s 10 ".kiy[3:9]"  0 0.96189635992050171 0.97178614139556885 
		0.9756927490234375 0.96501326560974121 0.91956591606140137 0;
	setAttr -s 10 ".kox[3:9]"  1 0.27341446280479431 0.23586355149745941 
		0.21914301812648773 0.26220113039016724 0.39293581247329712 1;
	setAttr -s 10 ".koy[3:9]"  0 0.96189630031585693 0.97178620100021362 
		0.97569280862808228 0.96501320600509644 0.91956597566604614 0;
createNode animCurveTU -n "BookRigged_reference:p01_visibility";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 1 12 1 46 1;
	setAttr -s 3 ".kit[0:2]"  9 9 1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
createNode animCurveTL -n "BookRigged_reference:p01_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0.25 48 0.25 80 0.25 86 -0.58414367481614782
		 92 0.077272686541013907;
createNode animCurveTL -n "BookRigged_reference:p01_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 -0.054833800000000002 48 -0.054833800000000002
		 80 -0.054833800000000002 86 -0.88897747481614731;
createNode animCurveTL -n "BookRigged_reference:p01_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 48 0 80 0;
createNode animCurveTU -n "BookRigged_reference:p01_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 1 12 1 46 1;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTU -n "BookRigged_reference:p01_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 1 12 1 46 1;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTU -n "BookRigged_reference:p01_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 1 12 1 46 1;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTA -n "BookRigged_reference:tpCTRL_rotateX";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  50 -0.3204545018064664;
createNode animCurveTA -n "BookRigged_reference:tpCTRL_rotateY";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  50 -0.3204545018064664;
createNode animCurveTU -n "BookRigged_reference:tpCTRL_visibility";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  50 0.6795454981935336;
createNode animCurveTL -n "BookRigged_reference:tpCTRL_translateX";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  50 -0.3204545018064664;
createNode animCurveTL -n "BookRigged_reference:tpCTRL_translateY";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  50 -0.3204545018064664;
createNode animCurveTL -n "BookRigged_reference:tpCTRL_translateZ";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  50 -0.3204545018064664;
createNode animCurveTU -n "BookRigged_reference:tpCTRL_scaleX";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  50 0.6795454981935336;
createNode animCurveTU -n "BookRigged_reference:tpCTRL_scaleY";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  50 0.6795454981935336;
createNode animCurveTU -n "BookRigged_reference:tpCTRL_scaleZ";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  50 0.6795454981935336;
createNode lambert -n "lambert2";
	setAttr ".c" -type "float3" 1 0 0 ;
createNode shadingEngine -n "lambert2SG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo1";
createNode animCurveTL -n "BookRigged_reference:p02_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 -1.217553903627698e-017 13 -0.4847526168273309
		 32 0.023034114240321198 46 -0.4847526168273309;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  1;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  1;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTL -n "BookRigged_reference:p02_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 -0.054833753066812818 13 0 32 0 46 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  1;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  1;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTL -n "BookRigged_reference:p02_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 13 0 32 0 46 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  1;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  1;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTU -n "BookRigged_reference:p02_visibility";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 1 13 1 32 1 46 1;
	setAttr -s 4 ".kit[0:3]"  9 9 9 1;
	setAttr -s 4 ".kix[3]"  1;
	setAttr -s 4 ".kiy[3]"  0;
createNode animCurveTA -n "BookRigged_reference:p02_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  1 -0.41174247130877001 5 -0.17269990000127433
		 13 0.15517335213717895 15 -0.11550955793257678 32 0.56898611879092342 35 0.26091499879899838
		 46 0.15517335213717895 54 -0.024174414476835951 57 0;
	setAttr -s 9 ".kit[6:8]"  1 18 18;
	setAttr -s 9 ".kot[6:8]"  1 18 18;
	setAttr -s 9 ".kix[6:8]"  1 1 1;
	setAttr -s 9 ".kiy[6:8]"  0 0 0;
	setAttr -s 9 ".kox[6:8]"  1 1 1;
	setAttr -s 9 ".koy[6:8]"  0 0 0;
createNode animCurveTA -n "BookRigged_reference:p02_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  1 -0.69761917608198609 5 -0.62462062084951531
		 13 0.3134277103033673 15 0.2652608287539559 32 -0.62926193076675241 35 -0.68609363031926462
		 46 0.3134277103033673 54 -0.091732854279289414 57 0;
	setAttr -s 9 ".kit[6:8]"  1 18 18;
	setAttr -s 9 ".kot[6:8]"  1 18 18;
	setAttr -s 9 ".kix[6:8]"  1 1 1;
	setAttr -s 9 ".kiy[6:8]"  0 0 0;
	setAttr -s 9 ".kox[6:8]"  1 1 1;
	setAttr -s 9 ".koy[6:8]"  0 0 0;
createNode animCurveTA -n "BookRigged_reference:p02_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  1 0 5 -17.834668984865107 13 82.471538445871943
		 15 49.452462559993705 32 -82.025721788546704 35 -38.303453819129629 46 82.471538445871943
		 54 3.4208300699593974 57 0.52049465731121713;
	setAttr -s 9 ".kit[6:8]"  1 18 18;
	setAttr -s 9 ".kot[6:8]"  1 18 18;
	setAttr -s 9 ".kix[6:8]"  1 0.63551890850067139 1;
	setAttr -s 9 ".kiy[6:8]"  0 -0.77208530902862549 0;
	setAttr -s 9 ".kox[6:8]"  1 0.63551890850067139 1;
	setAttr -s 9 ".koy[6:8]"  0 -0.77208530902862549 0;
createNode animCurveTU -n "BookRigged_reference:p02_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 1 13 1 32 1 46 1;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  1;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  1;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTU -n "BookRigged_reference:p02_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 1 13 1 32 1 46 1;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  1;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  1;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTU -n "BookRigged_reference:p02_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 1 13 1 32 1 46 1;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  1;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  1;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTL -n "BookRigged_reference:p02m_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 6.7806215286254892 13 7.107753638813965
		 15 7.3313370540253295 22 7.2668266571007667 32 6.7359872303030635 35 7.272049988758253
		 37 7.3113577457460908 46 7.107753638813965;
	setAttr -s 8 ".kit[2:7]"  1 18 18 18 18 1;
	setAttr -s 8 ".kot[2:7]"  1 18 18 18 18 1;
	setAttr -s 8 ".kix[2:7]"  1 0.83325254917144775 1 0.57711440324783325 
		1 0.72714406251907349;
	setAttr -s 8 ".kiy[2:7]"  0 -0.55289256572723389 0 0.81666332483291626 
		0 0.6864849328994751;
	setAttr -s 8 ".kox[2:7]"  1 0.83325248956680298 1 0.57711434364318848 
		1 0.72714400291442871;
	setAttr -s 8 ".koy[2:7]"  0 -0.55289262533187866 0 0.81666332483291626 
		0 0.68648487329483032;
createNode animCurveTL -n "BookRigged_reference:p02m_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 13 -0.083796912633549159 15 -0.054244954387511958
		 22 -0.062486368936950629 32 -0.042306002136773747 35 -0.063048865818144298 37 -0.059405082235829104
		 46 -0.083796912633549159;
	setAttr -s 8 ".kit[2:7]"  1 18 18 18 18 1;
	setAttr -s 8 ".kot[2:7]"  1 18 18 18 18 1;
	setAttr -s 8 ".kix[2:7]"  1 1 1 1 1 1;
	setAttr -s 8 ".kiy[2:7]"  0 0 0 0 0 0;
	setAttr -s 8 ".kox[2:7]"  1 1 1 1 1 1;
	setAttr -s 8 ".koy[2:7]"  0 0 0 0 0 0;
createNode animCurveTL -n "BookRigged_reference:p02m_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 -8.3038664512608382e-016 13 -0.0037732821111313222
		 15 -0.0026302222411113112 22 -0.00309758666750478 32 -0.15803021639564852 35 -0.0036135965405268786
		 37 -0.0039493776638688267 46 -0.0037732821111313222;
	setAttr -s 8 ".kit[2:7]"  1 18 18 18 18 1;
	setAttr -s 8 ".kot[2:7]"  1 18 18 18 18 1;
	setAttr -s 8 ".kix[2:7]"  1 0.99998843669891357 1 1 1 1;
	setAttr -s 8 ".kiy[2:7]"  0 -0.0048071211203932762 0 0 0 0;
	setAttr -s 8 ".kox[2:7]"  1 0.99998843669891357 1 1 1 1;
	setAttr -s 8 ".koy[2:7]"  0 -0.0048071206547319889 0 0 0 0;
createNode animCurveTU -n "BookRigged_reference:p02m_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 1 22 1 32 1 35 1 37 1 46 1;
	setAttr -s 6 ".kot[0:5]"  5 5 5 5 5 5;
createNode animCurveTA -n "BookRigged_reference:p02m_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 22 0 32 -0.49997574430372282 35 0 37 0
		 46 0 54 1.6395951878522472 57 1.6591603094846197;
createNode animCurveTA -n "BookRigged_reference:p02m_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 22 0 32 0.0049250100109636055 35 0 37 0
		 46 0 54 -0.64598234218520745 57 -0.59391693278783853;
createNode animCurveTA -n "BookRigged_reference:p02m_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  1 0 5 -12.279065314044171 13 14.11361680410285
		 15 28.87862497049905 22 54.750547063638749 32 -11.435640623829451 35 -46.824193699427937
		 37 -62.498295568026322 46 14.11361680410285 54 0.45479913632992841 57 -1.8080946638877289;
	setAttr -s 11 ".kit[3:10]"  1 18 18 18 18 1 18 18;
	setAttr -s 11 ".kot[3:10]"  1 18 18 18 18 1 18 18;
	setAttr -s 11 ".kix[3:10]"  1 1 0.29220551252365112 0.22762741148471832 
		1 1 0.85510814189910889 1;
	setAttr -s 11 ".kiy[3:10]"  0 0 -0.9563555121421814 -0.97374832630157471 
		0 0 -0.51844978332519531 0;
	setAttr -s 11 ".kox[3:10]"  1 1 0.29220551252365112 0.22762739658355713 
		1 1 0.85510808229446411 1;
	setAttr -s 11 ".koy[3:10]"  0 0 -0.95635557174682617 -0.97374826669692993 
		0 0 -0.51844972372055054 0;
createNode animCurveTU -n "BookRigged_reference:p02m_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 1 22 1 32 1 35 1 37 1 46 1;
createNode animCurveTU -n "BookRigged_reference:p02m_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 1 22 1 32 1 35 1 37 1 46 1;
createNode animCurveTU -n "BookRigged_reference:p02m_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 1 22 1 32 1 35 1 37 1 46 1;
createNode animCurveTA -n "BookRigged_reference:p01ed_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  80 0;
createNode animCurveTA -n "BookRigged_reference:p01ed_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  80 0;
createNode animCurveTA -n "BookRigged_reference:p01ed_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  80 0;
createNode animCurveTA -n "BookRigged_reference:p02ed_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  80 0;
createNode animCurveTA -n "BookRigged_reference:p02ed_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  80 0;
createNode animCurveTA -n "BookRigged_reference:p02ed_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  80 0;
createNode animCurveTA -n "BookRigged_reference:p03ed_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  80 0;
createNode animCurveTA -n "BookRigged_reference:p03ed_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  80 0;
createNode animCurveTA -n "BookRigged_reference:p03ed_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  80 0;
createNode animCurveTA -n "BookRigged_reference:p04ed_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  80 0;
createNode animCurveTA -n "BookRigged_reference:p04ed_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  80 0;
createNode animCurveTA -n "BookRigged_reference:p04ed_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  80 0;
createNode animCurveTA -n "BookRigged_reference:rootCTRL_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  46 0 93 0;
createNode animCurveTA -n "BookRigged_reference:rootCTRL_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  46 0 93 0;
createNode animCurveTA -n "BookRigged_reference:rootCTRL_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  46 0 93 0;
createNode animCurveTU -n "BookRigged_reference:p04ed_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  80 1;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "BookRigged_reference:p04ed_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  80 6.7449998855590811;
createNode animCurveTL -n "BookRigged_reference:p04ed_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  80 0;
createNode animCurveTL -n "BookRigged_reference:p04ed_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  80 -8.2602425200991916e-016;
createNode animCurveTU -n "BookRigged_reference:p04ed_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  80 1;
createNode animCurveTU -n "BookRigged_reference:p04ed_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  80 1;
createNode animCurveTU -n "BookRigged_reference:p04ed_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  80 1;
createNode animCurveTU -n "BookRigged_reference:p03ed_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  80 1;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "BookRigged_reference:p03ed_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  80 6.7449998855590811;
createNode animCurveTL -n "BookRigged_reference:p03ed_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  80 0;
createNode animCurveTL -n "BookRigged_reference:p03ed_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  80 -8.2602425200991916e-016;
createNode animCurveTU -n "BookRigged_reference:p03ed_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  80 1;
createNode animCurveTU -n "BookRigged_reference:p03ed_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  80 1;
createNode animCurveTU -n "BookRigged_reference:p03ed_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  80 1;
createNode animCurveTU -n "BookRigged_reference:p02ed_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  80 1;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "BookRigged_reference:p02ed_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  80 6.7449998855590811;
createNode animCurveTL -n "BookRigged_reference:p02ed_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  80 0;
createNode animCurveTL -n "BookRigged_reference:p02ed_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  80 -8.2602425200991916e-016;
createNode animCurveTU -n "BookRigged_reference:p02ed_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  80 1;
createNode animCurveTU -n "BookRigged_reference:p02ed_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  80 1;
createNode animCurveTU -n "BookRigged_reference:p02ed_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  80 1;
createNode animCurveTU -n "BookRigged_reference:p01ed_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  80 1;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "BookRigged_reference:p01ed_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  80 6.7449998855590811;
createNode animCurveTL -n "BookRigged_reference:p01ed_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  80 0;
createNode animCurveTL -n "BookRigged_reference:p01ed_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  80 -8.2602425200991916e-016;
createNode animCurveTU -n "BookRigged_reference:p01ed_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  80 1;
createNode animCurveTU -n "BookRigged_reference:p01ed_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  80 1;
createNode animCurveTU -n "BookRigged_reference:p01ed_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  80 1;
createNode animCurveTU -n "BookRigged_reference:rootCTRL_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  46 1 93 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "BookRigged_reference:rootCTRL_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  46 0 93 0;
createNode animCurveTL -n "BookRigged_reference:rootCTRL_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  46 0.22877 93 0.22877;
createNode animCurveTL -n "BookRigged_reference:rootCTRL_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  46 0 93 0;
createNode animCurveTU -n "BookRigged_reference:rootCTRL_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  46 1 93 1;
createNode animCurveTU -n "BookRigged_reference:rootCTRL_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  46 1 93 1;
createNode animCurveTU -n "BookRigged_reference:rootCTRL_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  46 1 93 1;
createNode lambert -n "lambert3";
	setAttr ".c" -type "float3" 0.34850001 0.36211732 0.5 ;
createNode shadingEngine -n "lambert3SG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo2";
createNode file -n "file1";
	setAttr ".ftn" -type "string" "C:/Users/Jaron/Desktop/472142_moawling_dbgirl-portraits.png";
createNode place2dTexture -n "place2dTexture1";
createNode file -n "file2";
	setAttr ".ftn" -type "string" "C:/Users/Jaron/Desktop/443613_fushark_decap-bulma.png";
createNode place2dTexture -n "place2dTexture2";
createNode lambert -n "lambert4";
createNode shadingEngine -n "lambert4SG";
	setAttr ".ihi" 0;
	setAttr -s 2 ".dsm";
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo3";
createNode file -n "file3";
	setAttr ".ftn" -type "string" "C:/Users/Jaron/Desktop/443613_fushark_decap-bulma.png";
createNode place2dTexture -n "place2dTexture3";
createNode animCurveTU -n "BookRigged_reference:pasted__lambert10_transparencyR";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  13 1 14 0 31 0 32 1;
createNode animCurveTU -n "BookRigged_reference:pasted__lambert10_transparencyG";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  13 1 14 0 31 0 32 1;
createNode animCurveTU -n "BookRigged_reference:pasted__lambert10_transparencyB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  13 1 14 0 31 0 32 1;
createNode animCurveTU -n "BookRigged_reference:strait_p01geoa_warp11_strait";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  1 0.94495415687561035 2 0.51376146078109741
		 3 0.58715593814849854 6 0.41284403204917902 12 0 50 0 51 0.027522936463356015 53 0.24770642817020416
		 54 0.41284403204917902 55 0.59633028507232666 56 0.77981650829315186 57 0.98165136575698853;
createNode animCurveTU -n "BookRigged_reference:strait03_p01geoa_warp11_strait";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  1 0.93577980995178223 2 0.79816514253616333
		 5 0 50 0 55 0.37615787982940674 57 1 62 1;
	setAttr -s 7 ".kit[0:6]"  2 2 2 18 18 18 18;
	setAttr -s 7 ".kot[0:6]"  2 2 2 18 18 18 18;
createNode animCurveTU -n "BookRigged_reference:flip_p01geoa_warp9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  2 0.23853211104869845 3 0.29357796907424927
		 5 0.24770642817020416 6 0.32110092043876648 7 0.28499999642372131 12 0.5 49 0.5 50 0.5
		 51 0.60000002384185791 52 0.65137612819671631;
createNode animCurveTU -n "BookRigged_reference:flip03_p01geoa_warp9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  1 0.82568806409835804 2 0.85321098566055298
		 3 0.80733942985534668 5 0.82568806409835804 6 0.84403669834136963 10 0.87000000476837147
		 13 1 49 1 50 0 51 0.045871559530496597 52 0.082568809390068054 53 0.1192660555243492
		 55 0.14678898453712463 56 0.12844036519527435;
	setAttr -s 14 ".kit[5:13]"  2 2 18 18 18 18 18 18 
		18;
	setAttr -s 14 ".kot[5:13]"  2 2 18 18 18 18 18 18 
		18;
createNode animCurveTU -n "BookRigged_reference:strait02_p01geoa_warp11_strait";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  6 1 7 0.8623853325843811 8 0.91743117570877075
		 11 0.036697249859571457 12 0 50 0 57 1;
createNode animCurveTU -n "BookRigged_reference:flip02_p01geoa_warp9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  7 0.51376146078109741 9 0.33027523756027222
		 12 0.5 32 1 33 0 50 0.5 52 0.67889910936355591;
createNode file -n "file4";
	setAttr ".ftn" -type "string" "C:/Users/Jaron/Desktop/8b81b1386a364945bd4cbcaaf0affa2c.jpg";
createNode place2dTexture -n "place2dTexture4";
select -ne :time1;
	setAttr ".o" 50;
	setAttr ".unw" 50;
select -ne :renderPartition;
	setAttr -s 20 ".st";
select -ne :initialShadingGroup;
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultShaderList1;
	setAttr -s 20 ".s";
select -ne :defaultTextureList1;
	setAttr -s 27 ".tx";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
	setAttr -s 30 ".u";
select -ne :defaultRenderingList1;
	setAttr -s 2 ".r";
select -ne :renderGlobalsList1;
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
select -ne :defaultHardwareRenderGlobals;
	setAttr ".fn" -type "string" "im";
	setAttr ".res" -type "string" "ntsc_4d 646 485 1.333";
connectAttr "BookRigged_reference:p01_scaleX.o" "BookRigged_referenceRN.phl[501]"
		;
connectAttr "BookRigged_reference:p01_scaleY.o" "BookRigged_referenceRN.phl[502]"
		;
connectAttr "BookRigged_reference:p01_scaleZ.o" "BookRigged_referenceRN.phl[503]"
		;
connectAttr "BookRigged_reference:p01_rotateX.o" "BookRigged_referenceRN.phl[504]"
		;
connectAttr "BookRigged_reference:p01_rotateY.o" "BookRigged_referenceRN.phl[505]"
		;
connectAttr "BookRigged_reference:p01_rotateZ.o" "BookRigged_referenceRN.phl[506]"
		;
connectAttr "BookRigged_reference:p01_visibility.o" "BookRigged_referenceRN.phl[507]"
		;
connectAttr "BookRigged_reference:p01m_scaleX.o" "BookRigged_referenceRN.phl[508]"
		;
connectAttr "BookRigged_reference:p01m_scaleY.o" "BookRigged_referenceRN.phl[509]"
		;
connectAttr "BookRigged_reference:p01m_scaleZ.o" "BookRigged_referenceRN.phl[510]"
		;
connectAttr "BookRigged_reference:p01m_rotateX.o" "BookRigged_referenceRN.phl[511]"
		;
connectAttr "BookRigged_reference:p01m_rotateY.o" "BookRigged_referenceRN.phl[512]"
		;
connectAttr "BookRigged_reference:p01m_rotateZ.o" "BookRigged_referenceRN.phl[513]"
		;
connectAttr "BookRigged_reference:p01m_visibility.o" "BookRigged_referenceRN.phl[514]"
		;
connectAttr "BookRigged_reference:p01ed_visibility.o" "BookRigged_referenceRN.phl[515]"
		;
connectAttr "BookRigged_reference:p01ed_rotateX.o" "BookRigged_referenceRN.phl[516]"
		;
connectAttr "BookRigged_reference:p01ed_rotateY.o" "BookRigged_referenceRN.phl[517]"
		;
connectAttr "BookRigged_reference:p01ed_rotateZ.o" "BookRigged_referenceRN.phl[518]"
		;
connectAttr "BookRigged_reference:p01ed_translateX.o" "BookRigged_referenceRN.phl[519]"
		;
connectAttr "BookRigged_reference:p01ed_translateY.o" "BookRigged_referenceRN.phl[520]"
		;
connectAttr "BookRigged_reference:p01ed_translateZ.o" "BookRigged_referenceRN.phl[521]"
		;
connectAttr "BookRigged_reference:p01ed_scaleX.o" "BookRigged_referenceRN.phl[522]"
		;
connectAttr "BookRigged_reference:p01ed_scaleY.o" "BookRigged_referenceRN.phl[523]"
		;
connectAttr "BookRigged_reference:p01ed_scaleZ.o" "BookRigged_referenceRN.phl[524]"
		;
connectAttr "BookRigged_reference:p02_scaleX.o" "BookRigged_referenceRN.phl[525]"
		;
connectAttr "BookRigged_reference:p02_scaleY.o" "BookRigged_referenceRN.phl[526]"
		;
connectAttr "BookRigged_reference:p02_scaleZ.o" "BookRigged_referenceRN.phl[527]"
		;
connectAttr "BookRigged_reference:p02_visibility.o" "BookRigged_referenceRN.phl[528]"
		;
connectAttr "BookRigged_reference:p02_translateX.o" "BookRigged_referenceRN.phl[529]"
		;
connectAttr "BookRigged_reference:p02_translateY.o" "BookRigged_referenceRN.phl[530]"
		;
connectAttr "BookRigged_reference:p02_translateZ.o" "BookRigged_referenceRN.phl[531]"
		;
connectAttr "BookRigged_reference:p02_rotateX.o" "BookRigged_referenceRN.phl[532]"
		;
connectAttr "BookRigged_reference:p02_rotateY.o" "BookRigged_referenceRN.phl[533]"
		;
connectAttr "BookRigged_reference:p02_rotateZ.o" "BookRigged_referenceRN.phl[534]"
		;
connectAttr "BookRigged_reference:p02m_scaleX.o" "BookRigged_referenceRN.phl[535]"
		;
connectAttr "BookRigged_reference:p02m_scaleY.o" "BookRigged_referenceRN.phl[536]"
		;
connectAttr "BookRigged_reference:p02m_scaleZ.o" "BookRigged_referenceRN.phl[537]"
		;
connectAttr "BookRigged_reference:p02m_translateX.o" "BookRigged_referenceRN.phl[538]"
		;
connectAttr "BookRigged_reference:p02m_translateY.o" "BookRigged_referenceRN.phl[539]"
		;
connectAttr "BookRigged_reference:p02m_translateZ.o" "BookRigged_referenceRN.phl[540]"
		;
connectAttr "BookRigged_reference:p02m_rotateX.o" "BookRigged_referenceRN.phl[541]"
		;
connectAttr "BookRigged_reference:p02m_rotateY.o" "BookRigged_referenceRN.phl[542]"
		;
connectAttr "BookRigged_reference:p02m_rotateZ.o" "BookRigged_referenceRN.phl[543]"
		;
connectAttr "BookRigged_reference:p02m_visibility.o" "BookRigged_referenceRN.phl[544]"
		;
connectAttr "BookRigged_reference:p02ed_rotateX.o" "BookRigged_referenceRN.phl[545]"
		;
connectAttr "BookRigged_reference:p02ed_rotateY.o" "BookRigged_referenceRN.phl[546]"
		;
connectAttr "BookRigged_reference:p02ed_rotateZ.o" "BookRigged_referenceRN.phl[547]"
		;
connectAttr "BookRigged_reference:p02ed_visibility.o" "BookRigged_referenceRN.phl[548]"
		;
connectAttr "BookRigged_reference:p02ed_translateX.o" "BookRigged_referenceRN.phl[549]"
		;
connectAttr "BookRigged_reference:p02ed_translateY.o" "BookRigged_referenceRN.phl[550]"
		;
connectAttr "BookRigged_reference:p02ed_translateZ.o" "BookRigged_referenceRN.phl[551]"
		;
connectAttr "BookRigged_reference:p02ed_scaleX.o" "BookRigged_referenceRN.phl[552]"
		;
connectAttr "BookRigged_reference:p02ed_scaleY.o" "BookRigged_referenceRN.phl[553]"
		;
connectAttr "BookRigged_reference:p02ed_scaleZ.o" "BookRigged_referenceRN.phl[554]"
		;
connectAttr "BookRigged_reference:p03_scaleX.o" "BookRigged_referenceRN.phl[555]"
		;
connectAttr "BookRigged_reference:p03_scaleY.o" "BookRigged_referenceRN.phl[556]"
		;
connectAttr "BookRigged_reference:p03_scaleZ.o" "BookRigged_referenceRN.phl[557]"
		;
connectAttr "BookRigged_reference:p03_translateX.o" "BookRigged_referenceRN.phl[558]"
		;
connectAttr "BookRigged_reference:p03_translateY.o" "BookRigged_referenceRN.phl[559]"
		;
connectAttr "BookRigged_reference:p03_translateZ.o" "BookRigged_referenceRN.phl[560]"
		;
connectAttr "BookRigged_reference:p03_rotateX.o" "BookRigged_referenceRN.phl[561]"
		;
connectAttr "BookRigged_reference:p03_rotateY.o" "BookRigged_referenceRN.phl[562]"
		;
connectAttr "BookRigged_reference:p03_rotateZ.o" "BookRigged_referenceRN.phl[563]"
		;
connectAttr "BookRigged_reference:p03_visibility.o" "BookRigged_referenceRN.phl[564]"
		;
connectAttr "BookRigged_reference:p03m_scaleX.o" "BookRigged_referenceRN.phl[565]"
		;
connectAttr "BookRigged_reference:p03m_scaleY.o" "BookRigged_referenceRN.phl[566]"
		;
connectAttr "BookRigged_reference:p03m_scaleZ.o" "BookRigged_referenceRN.phl[567]"
		;
connectAttr "BookRigged_reference:p03m_translateX.o" "BookRigged_referenceRN.phl[568]"
		;
connectAttr "BookRigged_reference:p03m_translateY.o" "BookRigged_referenceRN.phl[569]"
		;
connectAttr "BookRigged_reference:p03m_translateZ.o" "BookRigged_referenceRN.phl[570]"
		;
connectAttr "BookRigged_reference:p03m_rotateX.o" "BookRigged_referenceRN.phl[571]"
		;
connectAttr "BookRigged_reference:p03m_rotateY.o" "BookRigged_referenceRN.phl[572]"
		;
connectAttr "BookRigged_reference:p03m_rotateZ.o" "BookRigged_referenceRN.phl[573]"
		;
connectAttr "BookRigged_reference:p03m_visibility.o" "BookRigged_referenceRN.phl[574]"
		;
connectAttr "BookRigged_reference:p03ed_translateX.o" "BookRigged_referenceRN.phl[575]"
		;
connectAttr "BookRigged_reference:p03ed_translateY.o" "BookRigged_referenceRN.phl[576]"
		;
connectAttr "BookRigged_reference:p03ed_translateZ.o" "BookRigged_referenceRN.phl[577]"
		;
connectAttr "BookRigged_reference:p03ed_rotateX.o" "BookRigged_referenceRN.phl[578]"
		;
connectAttr "BookRigged_reference:p03ed_rotateY.o" "BookRigged_referenceRN.phl[579]"
		;
connectAttr "BookRigged_reference:p03ed_rotateZ.o" "BookRigged_referenceRN.phl[580]"
		;
connectAttr "BookRigged_reference:p03ed_visibility.o" "BookRigged_referenceRN.phl[581]"
		;
connectAttr "BookRigged_reference:p03ed_scaleX.o" "BookRigged_referenceRN.phl[582]"
		;
connectAttr "BookRigged_reference:p03ed_scaleY.o" "BookRigged_referenceRN.phl[583]"
		;
connectAttr "BookRigged_reference:p03ed_scaleZ.o" "BookRigged_referenceRN.phl[584]"
		;
connectAttr "BookRigged_reference:p04ed_scaleX.o" "BookRigged_referenceRN.phl[585]"
		;
connectAttr "BookRigged_reference:p04ed_scaleY.o" "BookRigged_referenceRN.phl[586]"
		;
connectAttr "BookRigged_reference:p04ed_scaleZ.o" "BookRigged_referenceRN.phl[587]"
		;
connectAttr "BookRigged_reference:p04ed_rotateX.o" "BookRigged_referenceRN.phl[588]"
		;
connectAttr "BookRigged_reference:p04ed_rotateY.o" "BookRigged_referenceRN.phl[589]"
		;
connectAttr "BookRigged_reference:p04ed_rotateZ.o" "BookRigged_referenceRN.phl[590]"
		;
connectAttr "BookRigged_reference:p04ed_visibility.o" "BookRigged_referenceRN.phl[591]"
		;
connectAttr "BookRigged_reference:p04ed_translateX.o" "BookRigged_referenceRN.phl[592]"
		;
connectAttr "BookRigged_reference:p04ed_translateY.o" "BookRigged_referenceRN.phl[593]"
		;
connectAttr "BookRigged_reference:p04ed_translateZ.o" "BookRigged_referenceRN.phl[594]"
		;
connectAttr "BookRigged_reference:rootCTRL_visibility.o" "BookRigged_referenceRN.phl[595]"
		;
connectAttr "BookRigged_reference:rootCTRL_translateX.o" "BookRigged_referenceRN.phl[596]"
		;
connectAttr "BookRigged_reference:rootCTRL_translateY.o" "BookRigged_referenceRN.phl[597]"
		;
connectAttr "BookRigged_reference:rootCTRL_translateZ.o" "BookRigged_referenceRN.phl[598]"
		;
connectAttr "BookRigged_reference:rootCTRL_rotateX.o" "BookRigged_referenceRN.phl[599]"
		;
connectAttr "BookRigged_reference:rootCTRL_rotateY.o" "BookRigged_referenceRN.phl[600]"
		;
connectAttr "BookRigged_reference:rootCTRL_rotateZ.o" "BookRigged_referenceRN.phl[601]"
		;
connectAttr "BookRigged_reference:rootCTRL_scaleX.o" "BookRigged_referenceRN.phl[602]"
		;
connectAttr "BookRigged_reference:rootCTRL_scaleY.o" "BookRigged_referenceRN.phl[603]"
		;
connectAttr "BookRigged_reference:rootCTRL_scaleZ.o" "BookRigged_referenceRN.phl[604]"
		;
connectAttr "BookRigged_reference:turnbook_translateX.o" "BookRigged_referenceRN.phl[605]"
		;
connectAttr "BookRigged_reference:turnbook_translateY.o" "BookRigged_referenceRN.phl[606]"
		;
connectAttr "BookRigged_reference:turnbook_translateZ.o" "BookRigged_referenceRN.phl[607]"
		;
connectAttr "BookRigged_reference:turnbook_rotateX.o" "BookRigged_referenceRN.phl[608]"
		;
connectAttr "BookRigged_reference:turnbook_rotateY.o" "BookRigged_referenceRN.phl[609]"
		;
connectAttr "BookRigged_reference:turnbook_rotateZ.o" "BookRigged_referenceRN.phl[610]"
		;
connectAttr "BookRigged_reference:turnbook_scaleX.o" "BookRigged_referenceRN.phl[611]"
		;
connectAttr "BookRigged_reference:turnbook_scaleY.o" "BookRigged_referenceRN.phl[612]"
		;
connectAttr "BookRigged_reference:turnbook_scaleZ.o" "BookRigged_referenceRN.phl[613]"
		;
connectAttr "BookRigged_reference:turnbook_visibility.o" "BookRigged_referenceRN.phl[614]"
		;
connectAttr "BookRigged_reference:tpCTRL_rotateX.o" "BookRigged_referenceRN.phl[615]"
		;
connectAttr "BookRigged_reference:tpCTRL_rotateY.o" "BookRigged_referenceRN.phl[616]"
		;
connectAttr "BookRigged_reference:tpCTRL_rotateZ.o" "BookRigged_referenceRN.phl[617]"
		;
connectAttr "BookRigged_reference:tpCTRL_visibility.o" "BookRigged_referenceRN.phl[618]"
		;
connectAttr "BookRigged_reference:tpCTRL_translateX.o" "BookRigged_referenceRN.phl[619]"
		;
connectAttr "BookRigged_reference:tpCTRL_translateY.o" "BookRigged_referenceRN.phl[620]"
		;
connectAttr "BookRigged_reference:tpCTRL_translateZ.o" "BookRigged_referenceRN.phl[621]"
		;
connectAttr "BookRigged_reference:tpCTRL_scaleX.o" "BookRigged_referenceRN.phl[622]"
		;
connectAttr "BookRigged_reference:tpCTRL_scaleY.o" "BookRigged_referenceRN.phl[623]"
		;
connectAttr "BookRigged_reference:tpCTRL_scaleZ.o" "BookRigged_referenceRN.phl[624]"
		;
connectAttr "BookRigged_reference:btmCTRL_rotateX.o" "BookRigged_referenceRN.phl[625]"
		;
connectAttr "BookRigged_reference:btmCTRL_rotateY.o" "BookRigged_referenceRN.phl[626]"
		;
connectAttr "BookRigged_reference:btmCTRL_rotateZ.o" "BookRigged_referenceRN.phl[627]"
		;
connectAttr "BookRigged_reference:btmCTRL_visibility.o" "BookRigged_referenceRN.phl[628]"
		;
connectAttr "BookRigged_reference:btmCTRL_translateX.o" "BookRigged_referenceRN.phl[629]"
		;
connectAttr "BookRigged_reference:btmCTRL_translateY.o" "BookRigged_referenceRN.phl[630]"
		;
connectAttr "BookRigged_reference:btmCTRL_translateZ.o" "BookRigged_referenceRN.phl[631]"
		;
connectAttr "BookRigged_reference:btmCTRL_scaleX.o" "BookRigged_referenceRN.phl[632]"
		;
connectAttr "BookRigged_reference:btmCTRL_scaleY.o" "BookRigged_referenceRN.phl[633]"
		;
connectAttr "BookRigged_reference:btmCTRL_scaleZ.o" "BookRigged_referenceRN.phl[634]"
		;
connectAttr "file2.oc" "BookRigged_referenceRN.phl[635]";
connectAttr "file2.msg" "BookRigged_referenceRN.phl[636]";
connectAttr "file1.oc" "BookRigged_referenceRN.phl[637]";
connectAttr "file1.ot" "BookRigged_referenceRN.phl[638]";
connectAttr "file1.msg" "BookRigged_referenceRN.phl[639]";
connectAttr "BookRigged_reference:pasted__lambert10_transparencyR.o" "BookRigged_referenceRN.phl[640]"
		;
connectAttr "BookRigged_reference:pasted__lambert10_transparencyG.o" "BookRigged_referenceRN.phl[641]"
		;
connectAttr "BookRigged_reference:pasted__lambert10_transparencyB.o" "BookRigged_referenceRN.phl[642]"
		;
connectAttr "BookRigged_reference:flip_p01geoa_warp9.o" "BookRigged_referenceRN.phl[643]"
		;
connectAttr "BookRigged_reference:strait_p01geoa_warp11_strait.o" "BookRigged_referenceRN.phl[644]"
		;
connectAttr "BookRigged_reference:flip02_p01geoa_warp9.o" "BookRigged_referenceRN.phl[645]"
		;
connectAttr "BookRigged_reference:strait02_p01geoa_warp11_strait.o" "BookRigged_referenceRN.phl[646]"
		;
connectAttr "BookRigged_reference:flip03_p01geoa_warp9.o" "BookRigged_referenceRN.phl[647]"
		;
connectAttr "BookRigged_reference:strait03_p01geoa_warp11_strait.o" "BookRigged_referenceRN.phl[648]"
		;
connectAttr "file4.oc" "BookRigged_referenceRN.phl[649]";
connectAttr "file4.msg" "BookRigged_referenceRN.phl[650]";
connectAttr "polyPlane1.out" "pPlaneShape1.i";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert2SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert3SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert4SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert3SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert4SG.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "Root_translateX.o" "BookRigged_referenceRN.phl[1]";
connectAttr "Root_translateY.o" "BookRigged_referenceRN.phl[2]";
connectAttr "Root_translateZ.o" "BookRigged_referenceRN.phl[3]";
connectAttr "Root_rotateX.o" "BookRigged_referenceRN.phl[4]";
connectAttr "Root_rotateY.o" "BookRigged_referenceRN.phl[5]";
connectAttr "Root_rotateZ.o" "BookRigged_referenceRN.phl[6]";
connectAttr "Root_scaleX.o" "BookRigged_referenceRN.phl[7]";
connectAttr "Root_scaleY.o" "BookRigged_referenceRN.phl[8]";
connectAttr "Root_scaleZ.o" "BookRigged_referenceRN.phl[9]";
connectAttr "Root_visibility.o" "BookRigged_referenceRN.phl[10]";
connectAttr "rootCTRL_translateX.o" "BookRigged_referenceRN.phl[11]";
connectAttr "rootCTRL_translateY.o" "BookRigged_referenceRN.phl[12]";
connectAttr "rootCTRL_translateZ.o" "BookRigged_referenceRN.phl[13]";
connectAttr "rootCTRL_rotateX.o" "BookRigged_referenceRN.phl[14]";
connectAttr "rootCTRL_rotateY.o" "BookRigged_referenceRN.phl[15]";
connectAttr "rootCTRL_rotateZ.o" "BookRigged_referenceRN.phl[16]";
connectAttr "rootCTRL_scaleX.o" "BookRigged_referenceRN.phl[17]";
connectAttr "rootCTRL_scaleY.o" "BookRigged_referenceRN.phl[18]";
connectAttr "rootCTRL_scaleZ.o" "BookRigged_referenceRN.phl[19]";
connectAttr "rootCTRL_visibility.o" "BookRigged_referenceRN.phl[20]";
connectAttr "tpCTRL_rotateX.o" "BookRigged_referenceRN.phl[21]";
connectAttr "tpCTRL_rotateY.o" "BookRigged_referenceRN.phl[22]";
connectAttr "tpCTRL_rotateZ.o" "BookRigged_referenceRN.phl[23]";
connectAttr "tpCTRL_visibility.o" "BookRigged_referenceRN.phl[24]";
connectAttr "tpCTRL_translateX.o" "BookRigged_referenceRN.phl[25]";
connectAttr "tpCTRL_translateY.o" "BookRigged_referenceRN.phl[26]";
connectAttr "tpCTRL_translateZ.o" "BookRigged_referenceRN.phl[27]";
connectAttr "tpCTRL_scaleX.o" "BookRigged_referenceRN.phl[28]";
connectAttr "tpCTRL_scaleY.o" "BookRigged_referenceRN.phl[29]";
connectAttr "tpCTRL_scaleZ.o" "BookRigged_referenceRN.phl[30]";
connectAttr "btmCTRL_rotateX.o" "BookRigged_referenceRN.phl[31]";
connectAttr "btmCTRL_rotateY.o" "BookRigged_referenceRN.phl[32]";
connectAttr "btmCTRL_rotateZ.o" "BookRigged_referenceRN.phl[33]";
connectAttr "btmCTRL_visibility.o" "BookRigged_referenceRN.phl[34]";
connectAttr "btmCTRL_translateX.o" "BookRigged_referenceRN.phl[35]";
connectAttr "btmCTRL_translateY.o" "BookRigged_referenceRN.phl[36]";
connectAttr "btmCTRL_translateZ.o" "BookRigged_referenceRN.phl[37]";
connectAttr "btmCTRL_scaleX.o" "BookRigged_referenceRN.phl[38]";
connectAttr "btmCTRL_scaleY.o" "BookRigged_referenceRN.phl[39]";
connectAttr "btmCTRL_scaleZ.o" "BookRigged_referenceRN.phl[40]";
connectAttr "BookRigged_reference:p01_translateX.o" "BookRigged_referenceRN.phl[44]"
		;
connectAttr "BookRigged_reference:p01_translateY.o" "BookRigged_referenceRN.phl[45]"
		;
connectAttr "BookRigged_reference:p01_translateZ.o" "BookRigged_referenceRN.phl[46]"
		;
connectAttr "BookRigged_reference:p01m_translateX.o" "BookRigged_referenceRN.phl[54]"
		;
connectAttr "BookRigged_reference:p01m_translateY.o" "BookRigged_referenceRN.phl[55]"
		;
connectAttr "BookRigged_reference:p01m_translateZ.o" "BookRigged_referenceRN.phl[56]"
		;
connectAttr "BookRigged_referenceRN.phl[499]" "BookRigged_referenceRN.phl[500]";
connectAttr "sharedReferenceNode.sr" "BookRigged_referenceRN.sr";
connectAttr "BookRigged_referenceRN.phl[201]" "lambert2SG.dsm" -na;
connectAttr "lambert2.oc" "lambert2SG.ss";
connectAttr "lambert2SG.msg" "materialInfo1.sg";
connectAttr "lambert2.msg" "materialInfo1.m";
connectAttr "BookRigged_referenceRN.phl[202]" "lambert3SG.dsm" -na;
connectAttr "lambert3.oc" "lambert3SG.ss";
connectAttr "lambert3SG.msg" "materialInfo2.sg";
connectAttr "lambert3.msg" "materialInfo2.m";
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
connectAttr "file3.oc" "lambert4.c";
connectAttr "BookRigged_referenceRN.phl[357]" "lambert4SG.dsm" -na;
connectAttr "BookRigged_referenceRN.phl[359]" "lambert4SG.dsm" -na;
connectAttr "lambert4.oc" "lambert4SG.ss";
connectAttr "lambert4SG.msg" "materialInfo3.sg";
connectAttr "lambert4.msg" "materialInfo3.m";
connectAttr "file3.msg" "materialInfo3.t" -na;
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
connectAttr "lambert2SG.pa" ":renderPartition.st" -na;
connectAttr "lambert3SG.pa" ":renderPartition.st" -na;
connectAttr "lambert4SG.pa" ":renderPartition.st" -na;
connectAttr "pPlaneShape1.iog" ":initialShadingGroup.dsm" -na;
connectAttr "lambert2.msg" ":defaultShaderList1.s" -na;
connectAttr "lambert3.msg" ":defaultShaderList1.s" -na;
connectAttr "lambert4.msg" ":defaultShaderList1.s" -na;
connectAttr "file1.msg" ":defaultTextureList1.tx" -na;
connectAttr "file2.msg" ":defaultTextureList1.tx" -na;
connectAttr "file3.msg" ":defaultTextureList1.tx" -na;
connectAttr "file4.msg" ":defaultTextureList1.tx" -na;
connectAttr "place2dTexture1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture2.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture3.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture4.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
// End of 03_BookAnim_v10.ma
