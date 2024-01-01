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
    version "0.40.0"
    desc "IronPLC Compiler"
    homepage "https://www.ironplc.com"
    license = "MIT"
  
    if OS.mac?
        url "https://github.com/ironplc/ironplc/releases/download/v0.40.0/ironplcc-x86_64-macos.tar.gz"
        sha256 "c85f2f77c037b96f288a33d41a917ba14416e564fa4ffa1e117349e19ea10c5c"
    elsif OS.linux?
        url "https://github.com/ironplc/ironplc/releases/download/v0.40.0/ironplcc-x86_64-linux-musl.tar.gz"
        sha256 "a35d424219c1e63f9299559e1fc481f0f94577f95399b3af4687ce431f2d1939"
    end
  
    def install
      bin.install "ironplcc"
    end
  end
