# Homebrew Formula for installing IronPLC Compiler on macOS or Linux.
#
# This file may be in one of two forms:
# * a template with variables that can be filled in at build time
# * the filled in template
#
# The template form has the following variables:
# * VERSION - the bare version number, such as 1.2.3
# * MACFILENAME - the name of the TAR.GZ file containing ironplcc, such as ironplcc-x86_64-apple-darwin.tar.gz
# * MACSHA256 - the SHA256 of {MACFILENAME}
# * LINUXFILENAME - the name of the TAR.GZ file containing ironplcc, such as ironplcc-x86_64-unknown-linux-musl.tar.gz
# * LINUXSHA256 - the SHA256 of {LINUXFILENAME}
# 
# The formula assumes releases are from the GitHub ironplc/ironplc repository
# and that releases are prefixed with "v".
class Ironplc < Formula
    version "0.126.0"
    desc "IronPLC Compiler"
    homepage "https://www.ironplc.com"
    license = "MIT"
  
    if OS.mac?
        url "https://github.com/ironplc/ironplc/releases/download/v0.126.0/ironplcc-x86_64-macos.tar.gz"
        sha256 "43318ff02d44ced0ba196f96b62c96e5adb1fbc5d37522de8d5f6876fd01f905"
    elsif OS.linux?
        url "https://github.com/ironplc/ironplc/releases/download/v0.126.0/ironplcc-x86_64-linux-musl.tar.gz"
        sha256 "d5d24a5bc479271a773a0ccb34758440aedc66e5ae57c98402ca57e05ef6f128"
    end
  
    def install
      bin.install "ironplcc"
    end
  end
