#if !macro
private typedef Import = haxe.macro.MacroType<[Build.build()]>;
#else

class Build {

	static var config : webidl.Options = {
		idlFile : "./recast/recast.idl",
		nativeLib : "recast",
		includeCode : "#include \"recastjs.h\"",
		autoGC : true,
		outputDir : "../build/",
	};

	public static function buildLibCpp() {
		webidl.Generate.generateCpp(config);
	}
}

#end