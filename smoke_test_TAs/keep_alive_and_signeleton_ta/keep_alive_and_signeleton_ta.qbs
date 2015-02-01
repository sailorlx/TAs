import qbs

DynamicLibrary {
    name: "keep_alive_and_signeleton_ta"
    Group {
        fileTagsFilter: "dynamiclibrary"
        qbs.install: true
        qbs.installDir: "TAs"
    }

    Depends { name: "cpp" }
    Depends { name: "InternalApi" }

    cpp.includePaths: ["../../include"]

    destinationDirectory: './TAs'
    cpp.defines: ["TA_PLUGIN"]

    files: ["keep_alive_and_signeleton_ta.c", "../../include/tee_ta_properties.h"]
}
