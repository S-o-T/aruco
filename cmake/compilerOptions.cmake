# ----------------------------------------------------------------------------
#   Program Optimization and debug (Extracted from OpenCV)
# ----------------------------------------------------------------------------

function(set_target_compile_options target)
    if(CMAKE_COMPILER_IS_GNUCXX OR MINGW OR ${CMAKE_CXX_COMPILER_ID} STREQUAL Clang)
        target_compile_options(${target} PRIVATE
                $<$<CONFIG:Release,RelWithDebInfo,MinSizeRel>:-Wall -march=native>
                $<$<CONFIG:Debug>:-g3 -O0 -DDEBUG -D_DEBUG -W -Wextra -Wno-return-type -Wall>
                )
    elseif(MSVC)
        target_compile_options(${target} PRIVATE /wd4251)
    endif()
endfunction()

