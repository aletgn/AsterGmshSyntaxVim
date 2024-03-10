" Vim syntax file
" Language: GMSH (alias: g)
" Current Maintainer: ale.tgn
" Previous Maintainer: -
" Last Change: 2024 Mar 10

if exists("b:current_syntax")
  finish
endif

" INHERIT C++ SYNTAX 
runtime! syntax/cpp.vim
unlet b:current_syntax

" GENERAL
syn keyword gGeneral Include Printf DefineConstant, Physical
syn keyword gLogic For EndFor If ElseIf Else EndIf
syn keyword gBool BooleanIntersection BooleanUnion BooleanDifference
syn keyword gBool BooleanFragments BooleanIntersection BooleanDifference

" MATH
syn keyword gMath Acos Asin Atan Atan2 Ceil Cos Cosh Exp Fabs Fmod
syn keyword gMath Floor Hypot Log Log10 Max Min Modulo Rand Round Sqrt
syn keyword gMath Sin Sinh Tan Tanh

" GEOMETRY
syn keyword gPoint Point newp
syn keyword gLine Line Bezier BSpline Spline Circle Ellipse BSpline nuwc newl
syn keyword gLine Curve Loop Wire
syn keyword gSurface Plane Surface Surface BSpline Surface Bezier Surface Disk
syn keyword gSurface Rectangle Surface Loop news newsl
syn keyword gVolume Volume Sphere Box Cylinder Torus Cone Wedge
syn keyword gVolume ThruSections Ruled Chamfer Fillet newv

" TRANSFORMATION
syn keyword gTransform Translate Rotate Duplicata Extrude

" MESH AND TOPOLOGY
syn keyword gMesh Characteristic Length Transfinite Recombine Mesh 

hi gGeneral cterm=italic ctermfg=White
hi gLogic cterm=italic ctermfg=White
hi gMath ctermfg=LightRed
hi gPoint cterm=bold ctermfg=White
hi gLine cterm=bold ctermfg=Yellow
hi gSurface cterm=bold ctermfg=Green
hi gVolume cterm=bold ctermfg=Red
hi gMesh cterm=bold ctermfg=Brown
hi gTransform cterm=bold ctermfg=LightBlue

let b:current_syntax = "gmsh"
