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
    version "0.13.33"
    desc "IronPLC Compiler"
    homepage "https://www.ironplc.com"
    license = "MIT"
  
    if OS.mac?
        url "https://github.com/ironplc/ironplc/releases/download/v0.13.33/ironplcc-x86_64-macos.tar.gz"
        sha256 "a2563bcbf181f2ec63a09e9c216d0cb999ddd8c8659602e0542c11e193d7c9cc"
    elsif OS.linux?
        url "https://github.com/ironplc/ironplc/releases/download/v0.13.33/ironplcc-x86_64-linux-musl.tar.gz"
        sha256 "de95db1fa8d929f6287264053c9b5fdeaa726598356e426e1c3a2d5447849417"
    end
  
    def install
      bin.install "ironplcc"
    end
  end
