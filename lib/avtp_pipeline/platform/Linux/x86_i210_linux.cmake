set ( GSTREAMER_1_0 0 )
set ( AVB_FEATURE_PCAP 1 )

if (AVB_FEATURE_AVDECC)
	set ( AVB_FEATURE_IGB 0 )
else ()
	set ( AVB_FEATURE_IGB 1 )
endif ()


# and another kernel sources
#set ( LINUX_KERNEL_DIR "/usr/src/kernel" )

# build configuration
set ( OPENAVB_HAL      "x86_i210" )
set ( OPENAVB_OSAL     "Linux" )
set ( OPENAVB_TCAL     "GNU" )
set ( OPENAVB_PLATFORM "${OPENAVB_HAL}-${OPENAVB_OSAL}" )

# Platform Additions
set ( PLATFORM_INCLUDE_DIRECTORIES
	${CMAKE_SOURCE_DIR}/platform/x86_i210/include
if (AVB_FEATURE_IGB)
	${CMAKE_SOURCE_DIR}/../igb
endif ()
	${CMAKE_SOURCE_DIR}/openavb_common
	${CMAKE_SOURCE_DIR}/../../daemons/common
	${CMAKE_SOURCE_DIR}/../../daemons/mrpd
)

#if (AVB_FEATURE_IGB)
	set ( PLATFORM_LINK_DIRECTORIES
		${CMAKE_SOURCE_DIR}/../igb
	)
#endif ()

#if (AVB_FEATURE_IGB)
	set ( PLATFORM_LINK_LIBRARIES
		igb
	)
#endif ()

# TODO_OPENAVB : need this?
# Set platform specific define
#set ( PLATFORM_DEFINE "AVB_DELAY_TWEAK_USEC=15" )
