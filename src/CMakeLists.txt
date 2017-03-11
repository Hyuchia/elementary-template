include(ValaPrecompile)
# Files we want to compile
vala_precompile(VALA_C ${EXEC_NAME}
    main.vala

    # Libraries to use when compiling
    PACKAGES
        gtk+-3.0
        granite
)

# Tell cmake what to call the executable
add_executable(${EXEC_NAME} ${VALA_C})

# Install the binaries
install (TARGETS ${EXEC_NAME} RUNTIME DESTINATION bin)
