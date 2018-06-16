set( USE_GRAPHICAL_BENCHMARK OFF CACHE BOOL "Use Graphical Benchmark" FORCE )
set( BUILD_SHARED_LIBS OFF CACHE BOOL "Use shared libraries" FORCE )
set( BUILD_CPU_DEMOS OFF CACHE BOOL "Build original Bullet CPU examples" FORCE )
set( BUILD_BULLET3 ON CACHE BOOL "Set when you want to build Bullet 3" FORCE )
set( BUILD_PYBULLET OFF CACHE BOOL "Set when you want to build pybullet (experimental Python bindings for Bullet)" FORCE )
set( BUILD_OPENGL3_DEMOS OFF CACHE BOOL "Set when you want to build the OpenGL3+ demos" FORCE )
set( BUILD_EXTRAS OFF CACHE BOOL "Set when you want to build the extras" FORCE )
set( INSTALL_LIBS OFF CACHE BOOL "Set when you want to install libraries" FORCE )
set( BUILD_UNIT_TESTS OFF CACHE BOOL "Build Unit Tests" FORCE )
set( BUILD_BULLET2_DEMOS OFF CACHE BOOL "Set when you want to build the Bullet 2 demos" FORCE )

add_subdirectory(bullet)

install(DIRECTORY  ${PROJECT_SOURCE_DIR}/bullet/src/
        DESTINATION include/ FILES_MATCHING PATTERN "*.h" 
        PATTERN ".svn" EXCLUDE 
        PATTERN "CMakeFiles" EXCLUDE
)
