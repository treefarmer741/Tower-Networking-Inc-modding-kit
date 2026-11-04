cmake_minimum_required(VERSION 3.10)
project(luajit-support)

add_ci_program(luajit-support
	gdarray.cpp gdarray.hpp
	gdcallable.cpp gdcallable.hpp
	gddictionary.cpp gddictionary.hpp
	gdobject.cpp gdobject.hpp
	gdvector2.cpp gdvector2.hpp
	gdpropertyproxy.cpp gdpropertyproxy.hpp
	
	utils.cpp utils.hpp
	luamodpackage.cpp luamodpackage.hpp
	entry.cpp
)

if (ZIG_COMPILER)
	target_link_libraries(luajit-support PRIVATE ${CMAKE_CURRENT_SOURCE_DIR}/zig-libluajit.a)
else()
	target_link_libraries(luajit-support PRIVATE ${CMAKE_CURRENT_SOURCE_DIR}/libluajit.a)
endif()

target_include_directories(luajit-support PRIVATE
	${CMAKE_CURRENT_SOURCE_DIR}
	${CMAKE_SOURCE_DIR}/ext/LuaJIT/src
)

target_compile_features(luajit-support PRIVATE cxx_std_20)
