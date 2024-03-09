" Vim syntax file
" Language: GMSH (alias: g)
" Current Maintainer: ale.tgn
" Previous Maintainer: -
" Last Change: 2021 Jul 21
"
" quit when a syntax file was already loaded
if exists("b:current_syntax")
  finish
endif
"
" Read the C syntax to start with
"runtime! syntax/c.vim
"unlet b:current_syntax
runtime! syntax/cpp.vim
unlet b:current_syntax
"
" GMSH customization
syn keyword gCommands 	Include Printf DefineConstant
syn keyword gTransform 	Translate Rotate Duplicata Extrude
syn keyword gMesh 		Recombine Characteristic Length
syn keyword gMath 		Cos Sin Hypot Sqrt
syn keyword gEntity 	Point Line Surface Volume Plane Curve Loop Layers
syn keyword gEntity 	newp newl 
syn keyword gOCC 		Rectangle Circle Box
syn keyword gGroups 	Physical
"
hi gCommands 	cterm=italic 	ctermfg=White
hi gTransform	cterm=bold 		ctermfg=White
hi gMath 						ctermfg=Magenta
hi gMesh 		cterm=Bold 		ctermfg=Green
hi gEntity 						ctermfg=Yellow
hi gGroups 		cterm=bold 		ctermfg=Red
"
let b:current_syntax = "gmsh"
