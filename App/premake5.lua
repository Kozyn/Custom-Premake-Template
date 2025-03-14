project "App"
    kind "ConsoleApp"
    staticruntime "on"

    targetdir ("%{wks.location}/bin/%{cfg.buildcfg}/%{prj.name}")
    objdir ("%{wks.location}/bin-int/%{cfg.buildcfg}/%{prj.name}")

    files { "src/**.h", "src/**.cpp" }

    includedirs { "../Core/src" }
    links { "Core" }

    
