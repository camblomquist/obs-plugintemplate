if(CMAKE_SIZEOF_VOID_P EQUAL 8)
	set(ARCH 64)
else()
	set(ARCH 32)
endif()

set(ARCH_NAME "${ARCH}bit")

find_file(OBS_BUILDDIR
    NAMES "build" "build${ARCH}"
    HINTS
		${OBSDIR}
	REQUIRED
)

list(APPEND CMAKE_PREFIX_PATH ${OBS_BUILDDIR})