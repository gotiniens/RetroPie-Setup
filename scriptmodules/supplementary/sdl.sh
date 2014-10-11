rp_module_id="sdl1"
rp_module_desc="SDL 1.2.15 with dispmanx backend"
rp_module_menus="4+"

function depends_sdl1() {
    rps_checkNeededPackages libudev-dev libasound2-dev libdbus-1-dev firmware-imx xbian-update
}

function sources_sdl1() {
    gitPullOrClone "$rootdir/supplementary/SDL12-kms-dispmanx" https://github.com/vanfanel/SDL12-kms-dispmanx.git || return 1
}

function build_sdl1() {
    pushd "$rootdir/supplementary/SDL12-kms-dispmanx" || return 1
    ./MAC_ConfigureDISPMANX.sh || return 1
    make || return 1
    popd || return 1
}

function install_sdl1() {
    pushd "$rootdir/supplementary/SDL12-kms-dispmanx" || return 1
    make install || return 1
    popd || return 1
}
