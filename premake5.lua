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

    -- Global Include Directories --
    includedirs {

    }

    -- Library Directories --
    libdirs {

    }

    -- Debug Configuration --
    filter "configurations:Debug"
        symbols "On"

        -- Debug Specific Library Directories --
        libdirs {

        }

        -- Debug Specific Libraries --
        links {

        }

    -- Release Configuration --
    filter "configurations:Release"
        optimize "On"

        -- Release Specific Library Directories --
        libdirs {

        }

        -- Release Specific Libraries --
        links {
            
        }

    -- Global Libraries --
    links {
    
    }

    -- Include subprojects
    include "Core"
    include "App"