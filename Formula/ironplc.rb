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
    version "0.166.0"
    desc "IronPLC Compiler"
    homepage "https://www.ironplc.com"
    license = "MIT"
  
    if OS.mac?
        url "https://github.com/ironplc/ironplc/releases/download/v0.166.0/ironplcc-x86_64-macos.tar.gz"
        sha256 "0a116884adb2e6dab418a1cf8a85ccea6ef325e8228221baca88afc3d1dc7fe9"
    elsif OS.linux?
        url "https://github.com/ironplc/ironplc/releases/download/v0.166.0/ironplcc-x86_64-linux-musl.tar.gz"
        sha256 "08ed427bfbc6737d15d1e24f06718f137ff6222532e73b59b00ceebe421d0c42"
    end
  
    def install
      bin.install "ironplcc"
      bin.install "ironplcvm"
    end
  end
