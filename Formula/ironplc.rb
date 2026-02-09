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
    version "0.155.0"
    desc "IronPLC Compiler"
    homepage "https://www.ironplc.com"
    license = "MIT"
  
    if OS.mac?
        url "https://github.com/ironplc/ironplc/releases/download/v0.155.0/ironplcc-x86_64-macos.tar.gz"
        sha256 "8bf65b10218f5b6bdd3415f56b77399ada3e02d730679d11d798f89fd7d2c8f7"
    elsif OS.linux?
        url "https://github.com/ironplc/ironplc/releases/download/v0.155.0/ironplcc-x86_64-linux-musl.tar.gz"
        sha256 "483b53902d818d1a8a60e3acfc1d8492702474d453c388abf6a18465f2e84121"
    end
  
    def install
      bin.install "ironplcc"
    end
  end
