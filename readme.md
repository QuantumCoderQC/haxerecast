## What is recastjs ?

recastjs is a port of recastnavigation and a thin abstraction layer using emscripten. https://github.com/emscripten-core/emscripten
This port allows the use of recastnavigation in your browser using JavaScript or WebAssembly.

## What is recastnavigation ?

Recast is a navigation mesh construction toolset for games. 
Recast is accompanied by Detour, a spatial reasoning toolkit. 
You can use any navigation mesh with Detour, but of course the data generated by Recast fits perfectly.
The crowd management module provides you with features for agents handling and behavior customization

## How to build recastjs and haxerecast?

You'll need emscripten with an active environment and mingw32-make for Windows (make for Linux). 
You'll also need Haxe and haxelib webidl installed for HL(cpp) build.

### Common
```
mkdir build
```
### JS build
```
emcmake cmake -B build -DCMAKE_BUILD_TYPE=Release
cmake --build build
```
This will produce .js and wasm version in the `build` directory.

### HL(cpp) build
```
cd Sources
haxelib dev webidl webidl
make recast.cpp
```
This will produce `recast.cpp` file in the `build` directory

Latest RecastNavigation commit : https://github.com/recastnavigation/recastnavigation/commit/c5cbd53024c8a9d8d097a4371215e3342d2fdc87
Built with emsdk 2.0.29

## How to extend recastjs ?

Recast/Detour can be difficult to use directly. A simplification layer is done thru recastnavigation/src/recastjs.h/.cpp. All the functionnalities have to be exposed to JS by the IDL file.
Basically, that file lists all the structures, classes, methods visible to JS. The glue generation and build is handled ny make.py script. Any new functionnality should be written in recastjs.cpp file and exposed by the IDL
For more information on Web IDL : https://emscripten.org/docs/porting/connecting_cpp_and_javascript/WebIDL-Binder.html

## Initial Commit
 The initial commit was created from https://github.com/BabylonJS/Extensions/tree/734bc19abb04d6c38b6ffcc8a788aac08e14c8af/recastjs
 
## License

Recastjs is licensed under the same terms as Recastnavigation. 
