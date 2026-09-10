-- プロジェクトルート
local _root = path.getdirectory(_SCRIPT)

-- ワークスペース
workspace "Aviutl2Plugins"
    -- 全プラグイン共通
    architecture "x86_64"
    cppdialect "C++17"
    configurations { "Debug", "Release" }

    targetdir "out/%{cfg.buildcfg}/AnotherPlugin"
    objdir "build/obj/%{cfg.buildcfg}/AnotherPlugin"

    includedirs {
        "external/aviutl2_sdk/include/aviutl2_sdk",
        "shared/include"
    }

    defines {
        "UNICODE",
        "_UNICODE"
    }

    filter "system:windows"
        systemversion "latest"
        characterset "Unicode"
        buildoptions { "/utf-8" }

group "Plugins"
    dofile(path.join(_root, "plugins/parameter-copy/premake5.lua"))
