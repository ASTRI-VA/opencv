# Set flags to enable/disable ASTRI specific OpenCV modifications

OCV_OPTION(ENABLE_ASTRI_NEON_DFT      "Enable NEON optimised DFT"                                OFF  IF ARM)

if(ENABLE_ASTRI_NEON_DFT)
  set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -DUSE_ASTRI_NEON_DFT")
endif()
