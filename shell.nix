{ pkgs ? import <nixpkgs> { } }:

pkgs.mkShell {
  buildInputs = with pkgs; [
    dbus
    git
    glib.dev
    just
    libinput
    libpulseaudio
    libseat
    libxkbcommon
    llvmPackages_14.clang
    llvmPackages_14.libclang
    mesa
    pipewire
    pkgconfig
    rustup
    udev
    wayland
    which
  ];

  LIBCLANG_PATH = "${pkgs.llvmPackages_14.libclang.lib}/lib";

}
