rp_module_id="libsdlbinaries"
rp_module_desc="Install SDL 2.0.1 binaries"
rp_module_menus="2-"

function install_libsdlbinaries() {
    rps_checkNeededPackages libudev-dev libasound2-dev libdbus-1-dev firmware-imx

    wget -O libsdlbinaries.tar.gz http://downloads.petrockblock.com/retropiearchives/libsdl2.0.1.tar.gz
    tar -xvzf libsdlbinaries.tar.gz -C /
    rm libsdlbinaries.tar.gz
}
