newaction {
    trigger     = "clean",
    description = "remove all built project files and binaries",
    execute     = function() 
        print("Removing Built Project Files")
        os.rmdir("./Project")
        print("Done")
    end
}

workspace "MyApp"
    architecture "x64"
    configurations { "Debug", "Release" }
    startproject "App"
    language "C++"
    cppdialect "C++20"

    -- Set project files location
    location "Project"


    filter "configurations:Debug"
        symbols "On"

    filter "configurations:Release"
        optimize "On"

    -- Include subprojects
    include "Core"
    include "App"