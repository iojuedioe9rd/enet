project "enet"
    kind "StaticLib"
    language "C"
    files { "*.c" }
    includedirs { "include/" }

    filter "configurations:Debug"
        defines { "DEBUG" }
        symbols "On"
        targetsuffix "64d"

    filter "configurations:Release"
        defines { "NDEBUG" }
        optimize "On"
        targetsuffix "64"

    filter "configurations:Dist"
        defines { "DIST" }
        optimize "Full"
        symbols "Off"
        targetsuffix "64dist"
