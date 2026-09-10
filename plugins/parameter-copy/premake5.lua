project "ParameterCopy"
    kind "SharedLib"
    language "C++"

    targetextension ".aux2"

    files {"./**.h","./**.cpp"}

    targetdir "out/%{cfg.buildcfg}"
    objdir "build/obj/%{cfg.buildcfg}"
