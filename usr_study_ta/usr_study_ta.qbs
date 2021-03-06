import qbs

DynamicLibrary {
    name: "usr_study_ta"
    Group {
        name: "project-install"
        fileTagsFilter: "dynamiclibrary"
        qbs.install: false
        qbs.installDir: "TAs"
    }

    Depends { name: "cpp" }
    Depends { name: "InternalApi" }

    cpp.includePaths: ["../include"]

    destinationDirectory: './TAs'
    cpp.defines: ["TA_PLUGIN"]

    files: ["usr_study_ta.c", "../include/tee_ta_properties.h", "usr_study_ta_ctrl.h"]
}
