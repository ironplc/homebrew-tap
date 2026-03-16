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
    version "0.176.0"
    desc "IronPLC Compiler"
    homepage "https://www.ironplc.com"
    license = "MIT"
  
    if OS.mac?
        url "https://github.com/ironplc/ironplc/releases/download/v0.176.0/ironplcc-x86_64-macos.tar.gz"
        sha256 "0e546b7a2b8b6e2570b6748d732e37c06422b44385a5539cbbb0d42669b7e144"
    elsif OS.linux?
        url "https://github.com/ironplc/ironplc/releases/download/v0.176.0/ironplcc-x86_64-linux-musl.tar.gz"
        sha256 "69b7403cd6320d48e95a567b82b2c0fd7e9003a7daf5e37d1851b19811c66969"
    end
  
    def install
      bin.install "ironplcc"
      bin.install "ironplcvm"
    end
  end
