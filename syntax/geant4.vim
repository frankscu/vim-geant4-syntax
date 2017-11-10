" Vim syntax file
" Language:    Geant4 Simulation Framework (C++)
" Maintainer:  Liejian <chenljscu@gmail.com>
" Version:     0.0.1
" Last Change: 2017-11-10
" Remark:      To be used with filetype cpp
" Remark:      Place file:  $VIMRUNTIME/syntax/geant4-syntax.vim
" Remark:      Geant4 website: http://geant4.cern.ch/

if v:version < 600
    finish
elseif exists("b:current_syntax")

    " Is language C++
    if b:current_syntax ==? "c" || b:current_syntax ==? "cpp" || b:current_syntax ==? "cc"

        " Ensure C++ syntax is loaded, rather than C
        setfiletype cpp

        let b:cpp = 1
    
    elseif b:current_syntax ==? "python"
        let b:cpp = 0
    else 
        finish

    endif
endif

if !empty(b:cpp)

    " Primitive Typedefs
    syntax keyword geant4Typedef
                \ G4double G4int G4string 
                \ G4ThreeVector
                \ G4cout G4cin G4endl
                \ G4cerr

endif

syntax keyword geant4UnitConstant
            \ mm 
            \ ns
            \ MeV keV
            \ eplus
            \ kelvin
            \ mole
            \ candela
            \ radian
            \ steradian


hi link geant4Typedef Typedef
hi link geant4UnitConstant Constant

if empty(b:cpp)
    let b:current_syntax = "PyGEANT4"
else
    let b:current_syntax = "C++/GEANT4"
endif

unlet b:cpp
