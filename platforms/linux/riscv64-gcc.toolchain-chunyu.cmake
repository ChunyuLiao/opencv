set(CMAKE_SYSTEM_NAME Linux)
set(CMAKE_SYSTEM_PROCESSOR riscv64)

set(RISCV_GCC_INSTALL_ROOT /home/liaochunyu/ruyisdk/revyos-gnu-toolchain/build/ CACHE PATH "Path to GCC for RISC-V cross compiler installation directory")
set(CMAKE_SYSROOT ${RISCV_GCC_INSTALL_ROOT}/sysroot CACHE PATH "RISC-V sysroot")

set(CMAKE_C_COMPILER ${RISCV_GCC_INSTALL_ROOT}/bin/riscv64-unknown-linux-gnu-gcc)
set(CMAKE_CXX_COMPILER ${RISCV_GCC_INSTALL_ROOT}/bin/riscv64-unknown-linux-gnu-g++)

# Don't run the linker on compiler check
set(CMAKE_TRY_COMPILE_TARGET_TYPE STATIC_LIBRARY)

set(CMAKE_C_FLAGS "-march=rv64gcv_zfh_xtheadc -mabi=lp64d -U__clang__ ${CMAKE_C_FLAGS}")
set(CMAKE_CXX_FLAGS "-march=rv64gcv_zfh_xtheadc -mabi=lp64d -U__clang__ ${CXX_FLAGS}")

set(CMAKE_FIND_ROOT_PATH ${CMAKE_SYSROOT})
set(CMAKE_FIND_ROOT_PATH_MODE_PROGRAM NEVER)
set(CMAKE_FIND_ROOT_PATH_MODE_LIBRARY ONLY)
set(CMAKE_FIND_ROOT_PATH_MODE_INCLUDE ONLY)
set(CMAKE_FIND_ROOT_PATH_MODE_PACKAGE ONLY)
