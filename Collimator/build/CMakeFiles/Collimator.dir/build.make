# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.10

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/local/Cellar/cmake/3.10.2/bin/cmake

# The command to remove a file.
RM = /usr/local/Cellar/cmake/3.10.2/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/schoi/Documents/myCollimator/Collimator/Collimator

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/schoi/Documents/myCollimator/Collimator/Collimator/build

# Include any dependencies generated for this target.
include CMakeFiles/Collimator.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/Collimator.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/Collimator.dir/flags.make

CMakeFiles/Collimator.dir/Collimator.cc.o: CMakeFiles/Collimator.dir/flags.make
CMakeFiles/Collimator.dir/Collimator.cc.o: ../Collimator.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/schoi/Documents/myCollimator/Collimator/Collimator/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/Collimator.dir/Collimator.cc.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Collimator.dir/Collimator.cc.o -c /Users/schoi/Documents/myCollimator/Collimator/Collimator/Collimator.cc

CMakeFiles/Collimator.dir/Collimator.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Collimator.dir/Collimator.cc.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/schoi/Documents/myCollimator/Collimator/Collimator/Collimator.cc > CMakeFiles/Collimator.dir/Collimator.cc.i

CMakeFiles/Collimator.dir/Collimator.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Collimator.dir/Collimator.cc.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/schoi/Documents/myCollimator/Collimator/Collimator/Collimator.cc -o CMakeFiles/Collimator.dir/Collimator.cc.s

CMakeFiles/Collimator.dir/Collimator.cc.o.requires:

.PHONY : CMakeFiles/Collimator.dir/Collimator.cc.o.requires

CMakeFiles/Collimator.dir/Collimator.cc.o.provides: CMakeFiles/Collimator.dir/Collimator.cc.o.requires
	$(MAKE) -f CMakeFiles/Collimator.dir/build.make CMakeFiles/Collimator.dir/Collimator.cc.o.provides.build
.PHONY : CMakeFiles/Collimator.dir/Collimator.cc.o.provides

CMakeFiles/Collimator.dir/Collimator.cc.o.provides.build: CMakeFiles/Collimator.dir/Collimator.cc.o


CMakeFiles/Collimator.dir/src/OPDetectorConstruction.cc.o: CMakeFiles/Collimator.dir/flags.make
CMakeFiles/Collimator.dir/src/OPDetectorConstruction.cc.o: ../src/OPDetectorConstruction.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/schoi/Documents/myCollimator/Collimator/Collimator/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/Collimator.dir/src/OPDetectorConstruction.cc.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Collimator.dir/src/OPDetectorConstruction.cc.o -c /Users/schoi/Documents/myCollimator/Collimator/Collimator/src/OPDetectorConstruction.cc

CMakeFiles/Collimator.dir/src/OPDetectorConstruction.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Collimator.dir/src/OPDetectorConstruction.cc.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/schoi/Documents/myCollimator/Collimator/Collimator/src/OPDetectorConstruction.cc > CMakeFiles/Collimator.dir/src/OPDetectorConstruction.cc.i

CMakeFiles/Collimator.dir/src/OPDetectorConstruction.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Collimator.dir/src/OPDetectorConstruction.cc.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/schoi/Documents/myCollimator/Collimator/Collimator/src/OPDetectorConstruction.cc -o CMakeFiles/Collimator.dir/src/OPDetectorConstruction.cc.s

CMakeFiles/Collimator.dir/src/OPDetectorConstruction.cc.o.requires:

.PHONY : CMakeFiles/Collimator.dir/src/OPDetectorConstruction.cc.o.requires

CMakeFiles/Collimator.dir/src/OPDetectorConstruction.cc.o.provides: CMakeFiles/Collimator.dir/src/OPDetectorConstruction.cc.o.requires
	$(MAKE) -f CMakeFiles/Collimator.dir/build.make CMakeFiles/Collimator.dir/src/OPDetectorConstruction.cc.o.provides.build
.PHONY : CMakeFiles/Collimator.dir/src/OPDetectorConstruction.cc.o.provides

CMakeFiles/Collimator.dir/src/OPDetectorConstruction.cc.o.provides.build: CMakeFiles/Collimator.dir/src/OPDetectorConstruction.cc.o


CMakeFiles/Collimator.dir/src/OPPrimaryGeneratorAction.cc.o: CMakeFiles/Collimator.dir/flags.make
CMakeFiles/Collimator.dir/src/OPPrimaryGeneratorAction.cc.o: ../src/OPPrimaryGeneratorAction.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/schoi/Documents/myCollimator/Collimator/Collimator/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/Collimator.dir/src/OPPrimaryGeneratorAction.cc.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Collimator.dir/src/OPPrimaryGeneratorAction.cc.o -c /Users/schoi/Documents/myCollimator/Collimator/Collimator/src/OPPrimaryGeneratorAction.cc

CMakeFiles/Collimator.dir/src/OPPrimaryGeneratorAction.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Collimator.dir/src/OPPrimaryGeneratorAction.cc.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/schoi/Documents/myCollimator/Collimator/Collimator/src/OPPrimaryGeneratorAction.cc > CMakeFiles/Collimator.dir/src/OPPrimaryGeneratorAction.cc.i

CMakeFiles/Collimator.dir/src/OPPrimaryGeneratorAction.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Collimator.dir/src/OPPrimaryGeneratorAction.cc.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/schoi/Documents/myCollimator/Collimator/Collimator/src/OPPrimaryGeneratorAction.cc -o CMakeFiles/Collimator.dir/src/OPPrimaryGeneratorAction.cc.s

CMakeFiles/Collimator.dir/src/OPPrimaryGeneratorAction.cc.o.requires:

.PHONY : CMakeFiles/Collimator.dir/src/OPPrimaryGeneratorAction.cc.o.requires

CMakeFiles/Collimator.dir/src/OPPrimaryGeneratorAction.cc.o.provides: CMakeFiles/Collimator.dir/src/OPPrimaryGeneratorAction.cc.o.requires
	$(MAKE) -f CMakeFiles/Collimator.dir/build.make CMakeFiles/Collimator.dir/src/OPPrimaryGeneratorAction.cc.o.provides.build
.PHONY : CMakeFiles/Collimator.dir/src/OPPrimaryGeneratorAction.cc.o.provides

CMakeFiles/Collimator.dir/src/OPPrimaryGeneratorAction.cc.o.provides.build: CMakeFiles/Collimator.dir/src/OPPrimaryGeneratorAction.cc.o


CMakeFiles/Collimator.dir/src/OPRunAction.cc.o: CMakeFiles/Collimator.dir/flags.make
CMakeFiles/Collimator.dir/src/OPRunAction.cc.o: ../src/OPRunAction.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/schoi/Documents/myCollimator/Collimator/Collimator/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/Collimator.dir/src/OPRunAction.cc.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Collimator.dir/src/OPRunAction.cc.o -c /Users/schoi/Documents/myCollimator/Collimator/Collimator/src/OPRunAction.cc

CMakeFiles/Collimator.dir/src/OPRunAction.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Collimator.dir/src/OPRunAction.cc.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/schoi/Documents/myCollimator/Collimator/Collimator/src/OPRunAction.cc > CMakeFiles/Collimator.dir/src/OPRunAction.cc.i

CMakeFiles/Collimator.dir/src/OPRunAction.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Collimator.dir/src/OPRunAction.cc.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/schoi/Documents/myCollimator/Collimator/Collimator/src/OPRunAction.cc -o CMakeFiles/Collimator.dir/src/OPRunAction.cc.s

CMakeFiles/Collimator.dir/src/OPRunAction.cc.o.requires:

.PHONY : CMakeFiles/Collimator.dir/src/OPRunAction.cc.o.requires

CMakeFiles/Collimator.dir/src/OPRunAction.cc.o.provides: CMakeFiles/Collimator.dir/src/OPRunAction.cc.o.requires
	$(MAKE) -f CMakeFiles/Collimator.dir/build.make CMakeFiles/Collimator.dir/src/OPRunAction.cc.o.provides.build
.PHONY : CMakeFiles/Collimator.dir/src/OPRunAction.cc.o.provides

CMakeFiles/Collimator.dir/src/OPRunAction.cc.o.provides.build: CMakeFiles/Collimator.dir/src/OPRunAction.cc.o


CMakeFiles/Collimator.dir/src/OPSteppingAction.cc.o: CMakeFiles/Collimator.dir/flags.make
CMakeFiles/Collimator.dir/src/OPSteppingAction.cc.o: ../src/OPSteppingAction.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/schoi/Documents/myCollimator/Collimator/Collimator/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/Collimator.dir/src/OPSteppingAction.cc.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Collimator.dir/src/OPSteppingAction.cc.o -c /Users/schoi/Documents/myCollimator/Collimator/Collimator/src/OPSteppingAction.cc

CMakeFiles/Collimator.dir/src/OPSteppingAction.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Collimator.dir/src/OPSteppingAction.cc.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/schoi/Documents/myCollimator/Collimator/Collimator/src/OPSteppingAction.cc > CMakeFiles/Collimator.dir/src/OPSteppingAction.cc.i

CMakeFiles/Collimator.dir/src/OPSteppingAction.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Collimator.dir/src/OPSteppingAction.cc.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/schoi/Documents/myCollimator/Collimator/Collimator/src/OPSteppingAction.cc -o CMakeFiles/Collimator.dir/src/OPSteppingAction.cc.s

CMakeFiles/Collimator.dir/src/OPSteppingAction.cc.o.requires:

.PHONY : CMakeFiles/Collimator.dir/src/OPSteppingAction.cc.o.requires

CMakeFiles/Collimator.dir/src/OPSteppingAction.cc.o.provides: CMakeFiles/Collimator.dir/src/OPSteppingAction.cc.o.requires
	$(MAKE) -f CMakeFiles/Collimator.dir/build.make CMakeFiles/Collimator.dir/src/OPSteppingAction.cc.o.provides.build
.PHONY : CMakeFiles/Collimator.dir/src/OPSteppingAction.cc.o.provides

CMakeFiles/Collimator.dir/src/OPSteppingAction.cc.o.provides.build: CMakeFiles/Collimator.dir/src/OPSteppingAction.cc.o


# Object files for target Collimator
Collimator_OBJECTS = \
"CMakeFiles/Collimator.dir/Collimator.cc.o" \
"CMakeFiles/Collimator.dir/src/OPDetectorConstruction.cc.o" \
"CMakeFiles/Collimator.dir/src/OPPrimaryGeneratorAction.cc.o" \
"CMakeFiles/Collimator.dir/src/OPRunAction.cc.o" \
"CMakeFiles/Collimator.dir/src/OPSteppingAction.cc.o"

# External object files for target Collimator
Collimator_EXTERNAL_OBJECTS =

Collimator: CMakeFiles/Collimator.dir/Collimator.cc.o
Collimator: CMakeFiles/Collimator.dir/src/OPDetectorConstruction.cc.o
Collimator: CMakeFiles/Collimator.dir/src/OPPrimaryGeneratorAction.cc.o
Collimator: CMakeFiles/Collimator.dir/src/OPRunAction.cc.o
Collimator: CMakeFiles/Collimator.dir/src/OPSteppingAction.cc.o
Collimator: CMakeFiles/Collimator.dir/build.make
Collimator: /Users/Shared/opt/geant4/geant4.10.04.p01-install/lib/libG4Tree.dylib
Collimator: /Users/Shared/opt/geant4/geant4.10.04.p01-install/lib/libG4GMocren.dylib
Collimator: /Users/Shared/opt/geant4/geant4.10.04.p01-install/lib/libG4visHepRep.dylib
Collimator: /Users/Shared/opt/geant4/geant4.10.04.p01-install/lib/libG4RayTracer.dylib
Collimator: /Users/Shared/opt/geant4/geant4.10.04.p01-install/lib/libG4VRML.dylib
Collimator: /Users/Shared/opt/geant4/geant4.10.04.p01-install/lib/libG4OpenGL.dylib
Collimator: /Users/Shared/opt/geant4/geant4.10.04.p01-install/lib/libG4gl2ps.dylib
Collimator: /Users/Shared/opt/geant4/geant4.10.04.p01-install/lib/libG4interfaces.dylib
Collimator: /Users/Shared/opt/geant4/geant4.10.04.p01-install/lib/libG4persistency.dylib
Collimator: /Users/Shared/opt/geant4/geant4.10.04.p01-install/lib/libG4error_propagation.dylib
Collimator: /Users/Shared/opt/geant4/geant4.10.04.p01-install/lib/libG4readout.dylib
Collimator: /Users/Shared/opt/geant4/geant4.10.04.p01-install/lib/libG4physicslists.dylib
Collimator: /Users/Shared/opt/geant4/geant4.10.04.p01-install/lib/libG4parmodels.dylib
Collimator: /Users/Shared/opt/geant4/geant4.10.04.p01-install/lib/libG4FR.dylib
Collimator: /Users/Shared/opt/geant4/geant4.10.04.p01-install/lib/libG4vis_management.dylib
Collimator: /Users/Shared/opt/geant4/geant4.10.04.p01-install/lib/libG4modeling.dylib
Collimator: /usr/X11R6/lib/libSM.dylib
Collimator: /usr/X11R6/lib/libICE.dylib
Collimator: /usr/X11R6/lib/libX11.dylib
Collimator: /usr/X11R6/lib/libXext.dylib
Collimator: /usr/X11R6/lib/libGL.dylib
Collimator: /usr/X11R6/lib/libGLU.dylib
Collimator: /usr/X11R6/lib/libXmu.dylib
Collimator: /usr/local/opt/qt/lib/QtOpenGL.framework/QtOpenGL
Collimator: /usr/local/opt/qt/lib/QtPrintSupport.framework/QtPrintSupport
Collimator: /usr/local/opt/qt/lib/QtWidgets.framework/QtWidgets
Collimator: /usr/local/opt/qt/lib/QtGui.framework/QtGui
Collimator: /usr/local/opt/qt/lib/QtCore.framework/QtCore
Collimator: /Users/Shared/opt/geant4/geant4.10.04.p01-install/lib/libG4run.dylib
Collimator: /Users/Shared/opt/geant4/geant4.10.04.p01-install/lib/libG4event.dylib
Collimator: /Users/Shared/opt/geant4/geant4.10.04.p01-install/lib/libG4tracking.dylib
Collimator: /Users/Shared/opt/geant4/geant4.10.04.p01-install/lib/libG4processes.dylib
Collimator: /Users/Shared/opt/geant4/geant4.10.04.p01-install/lib/libG4analysis.dylib
Collimator: /Users/Shared/opt/geant4/geant4.10.04.p01-install/lib/libG4zlib.dylib
Collimator: /usr/lib/libexpat.dylib
Collimator: /Users/Shared/opt/geant4/geant4.10.04.p01-install/lib/libG4digits_hits.dylib
Collimator: /Users/Shared/opt/geant4/geant4.10.04.p01-install/lib/libG4track.dylib
Collimator: /Users/Shared/opt/geant4/geant4.10.04.p01-install/lib/libG4particles.dylib
Collimator: /Users/Shared/opt/geant4/geant4.10.04.p01-install/lib/libG4geometry.dylib
Collimator: /Users/Shared/opt/geant4/geant4.10.04.p01-install/lib/libG4materials.dylib
Collimator: /Users/Shared/opt/geant4/geant4.10.04.p01-install/lib/libG4graphics_reps.dylib
Collimator: /Users/Shared/opt/geant4/geant4.10.04.p01-install/lib/libG4intercoms.dylib
Collimator: /Users/Shared/opt/geant4/geant4.10.04.p01-install/lib/libG4global.dylib
Collimator: /Users/Shared/opt/geant4/geant4.10.04.p01-install/lib/libG4clhep.dylib
Collimator: CMakeFiles/Collimator.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/schoi/Documents/myCollimator/Collimator/Collimator/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Linking CXX executable Collimator"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Collimator.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/Collimator.dir/build: Collimator

.PHONY : CMakeFiles/Collimator.dir/build

CMakeFiles/Collimator.dir/requires: CMakeFiles/Collimator.dir/Collimator.cc.o.requires
CMakeFiles/Collimator.dir/requires: CMakeFiles/Collimator.dir/src/OPDetectorConstruction.cc.o.requires
CMakeFiles/Collimator.dir/requires: CMakeFiles/Collimator.dir/src/OPPrimaryGeneratorAction.cc.o.requires
CMakeFiles/Collimator.dir/requires: CMakeFiles/Collimator.dir/src/OPRunAction.cc.o.requires
CMakeFiles/Collimator.dir/requires: CMakeFiles/Collimator.dir/src/OPSteppingAction.cc.o.requires

.PHONY : CMakeFiles/Collimator.dir/requires

CMakeFiles/Collimator.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/Collimator.dir/cmake_clean.cmake
.PHONY : CMakeFiles/Collimator.dir/clean

CMakeFiles/Collimator.dir/depend:
	cd /Users/schoi/Documents/myCollimator/Collimator/Collimator/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/schoi/Documents/myCollimator/Collimator/Collimator /Users/schoi/Documents/myCollimator/Collimator/Collimator /Users/schoi/Documents/myCollimator/Collimator/Collimator/build /Users/schoi/Documents/myCollimator/Collimator/Collimator/build /Users/schoi/Documents/myCollimator/Collimator/Collimator/build/CMakeFiles/Collimator.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/Collimator.dir/depend

