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
    version "0.59.0"
    desc "IronPLC Compiler"
    homepage "https://www.ironplc.com"
    license = "MIT"
  
    if OS.mac?
        url "https://github.com/ironplc/ironplc/releases/download/v0.59.0/ironplcc-x86_64-macos.tar.gz"
        sha256 "e3add20e7a9ce5e87a4dea1f2a4bd78eab7699312b2dd48a0b18c73488a62a2b"
    elsif OS.linux?
        url "https://github.com/ironplc/ironplc/releases/download/v0.59.0/ironplcc-x86_64-linux-musl.tar.gz"
        sha256 "74d0ae29028ea8c6609b5611053362720e57399e80aac395fc8f141879a60de7"
    end
  
    def install
      bin.install "ironplcc"
    end
  end
