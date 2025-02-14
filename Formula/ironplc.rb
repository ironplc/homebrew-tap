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
    version "0.103.0"
    desc "IronPLC Compiler"
    homepage "https://www.ironplc.com"
    license = "MIT"
  
    if OS.mac?
        url "https://github.com/ironplc/ironplc/releases/download/v0.103.0/ironplcc-x86_64-macos.tar.gz"
        sha256 "63dfbeeadcc7e27c49c1c1bf51c2af555c815ae09136298ee8a696c302e0b0d7"
    elsif OS.linux?
        url "https://github.com/ironplc/ironplc/releases/download/v0.103.0/ironplcc-x86_64-linux-musl.tar.gz"
        sha256 "0f31ea7a5779c7c7688f8d0c24a04e00a653bbab17fcae2211f72904f6733f1b"
    end
  
    def install
      bin.install "ironplcc"
    end
  end
