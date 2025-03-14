project "Core"
    kind "StaticLib"
    staticruntime "on"

    targetdir ("%{wks.location}/bin/%{cfg.buildcfg}/%{prj.name}")
    objdir ("%{wks.location}/bin-int/%{cfg.buildcfg}/%{prj.name}")

    files { "src/**.h", "src/**.cpp" }

