function(rpclib_msvc_support)
  if(MSVC)
    if(RPCLIB_ENABLE_COVERAGE)
      message(FATAL_ERROR "Coverage is only supported with non-MS compilers")
    endif()

    target_compile_definitions(${PROJECT_NAME} PRIVATE
      "WIN32_LEAN_AND_MEAN"
      "NOMINMAX"
      "VC_EXTRALEAN"
      "_CRT_SECURE_NO_WARNINGS"
      "_CRT_NONSTDC_NO_DEPRECATE"
      "_WIN32_WINNT=0x0501"
      "_GNU_SOURCE"
      "ASIO_HAS_STD_ADDRESSOF"
      "ASIO_HAS_STD_ARRAY"
      "ASIO_HAS_CSTDINT"
      "ASIO_HAS_STD_SHARED_PTR"
      "ASIO_HAS_STD_TYPE_TRAITS"
    )
  endif()
endfunction()
