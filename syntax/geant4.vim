" Vim syntax file
" Language:    Geant4 Simulation Framework (C++)
" Maintainer:  Liejian <chenljscu@gmail.com>
" Version:     0.0.1
" Last Change: 2017-11-10
" Remark:      To be used with filetype cpp
" Remark:      Place file:  $VIMRUNTIME/syntax/geant4-syntax.vim
" Remark:      Geant4 website: http://geant4.cern.ch/

if !exists("b:c_no_cern_geant4")
    syn keyword	cType	 G4double G4int G4string G4ThreeVector
    syn keyword	cType    G4cout G4cin G4endl G4cerr
    syn keyword	cConstant	mm ns MeV keV radian degree
endif

