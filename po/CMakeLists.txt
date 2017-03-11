# Set from which files the translations should be generated. Currently it is
# only set to build translations from the files inside the src and data
# directories, if you add files that need to be translated outside this
# directories, you'll need to add the to this list.

include (Translations)

add_translations_directory(${GETTEXT_PACKAGE})

add_translations_catalog(${GETTEXT_PACKAGE}
    ../data
    ../src
    DESKTOP_FILES
        ${CMAKE_BINARY_DIR}/data/{{app.id}}.desktop.in
    APPDATA_FILES
        ../data/{{app.id}}.appdata.xml.in
)
