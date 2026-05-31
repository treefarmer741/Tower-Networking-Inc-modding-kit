# Fetch godot-sandbox repository (add_subdirectory is implicitly called)
include(FetchContent)
FetchContent_Declare(
	godot-sandbox
	GIT_REPOSITORY https://github.com/libriscv/godot-sandbox.git
	GIT_TAG        main
	GIT_PROGRESS   TRUE
	GIT_SHALLOW    TRUE
	GIT_SUBMODULES ""
	SOURCE_SUBDIR  "program/cpp/cmake"
)
FetchContent_MakeAvailable(godot-sandbox)

function (add_ci_program name)
	add_sandbox_program(${name} ${ARGN})
	target_include_directories(${name} PUBLIC "${CMAKE_SOURCE_DIR}/include/tni")
	set_target_properties(${name} PROPERTIES RUNTIME_OUTPUT_DIRECTORY ${CMAKE_SOURCE_DIR}/mods/${PROJECT_NAME})
	set_target_properties(${name} PROPERTIES RUNTIME_OUTPUT_NAME entry.elf)
endfunction()

# Build the trivial examples
add_subdirectory(cpp-template)
add_subdirectory(luajit-support)
