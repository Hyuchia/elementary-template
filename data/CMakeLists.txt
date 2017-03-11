include (Translations)

# Pre-configure the desktop file
configure_file (
    {{app.id}}.desktop.in.in
    ${CMAKE_CURRENT_BINARY_DIR}/{{app.id}}.desktop.in
)

# Configure the desktop file
configure_file_translation (
    ${CMAKE_CURRENT_BINARY_DIR}/{{app.id}}.desktop.in
    ${CMAKE_CURRENT_BINARY_DIR}/{{app.id}}.desktop
    ${CMAKE_SOURCE_DIR}/po/
)

# Configure the appdata.xml file
configure_file_translation (
    ${CMAKE_CURRENT_SOURCE_DIR}/{{app.id}}.appdata.xml.in
    ${CMAKE_CURRENT_BINARY_DIR}/{{app.id}}.appdata.xml
    ${CMAKE_SOURCE_DIR}/po/
)

# Save the .desktop file in the share/applications directory
install (
    FILES ${CMAKE_CURRENT_BINARY_DIR}/{{app.id}}.desktop
    DESTINATION share/applications
)

# Save the .appdata.xml file in the share/metainfo directory
install (
    FILES ${CMAKE_CURRENT_BINARY_DIR}/{{app.id}}.appdata.xml
    DESTINATION share/metainfo
)
