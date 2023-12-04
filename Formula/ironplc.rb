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
    version "0.36.0"
    desc "IronPLC Compiler"
    homepage "https://www.ironplc.com"
    license = "MIT"
  
    if OS.mac?
        url "https://github.com/ironplc/ironplc/releases/download/v0.36.0/ironplcc-x86_64-macos.tar.gz"
        sha256 "65cc382531881a9196ae0df7074ed4ba2f0b3a9994e13a80d1f669afed30e18b"
    elsif OS.linux?
        url "https://github.com/ironplc/ironplc/releases/download/v0.36.0/ironplcc-x86_64-linux-musl.tar.gz"
        sha256 "a03d89abe1ccb2a5da6ed152764373fc420dba76ee38079388d72dcc01e76bb7"
    end
  
    def install
      bin.install "ironplcc"
    end
  end
