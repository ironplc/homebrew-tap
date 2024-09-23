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
    version "0.80.0"
    desc "IronPLC Compiler"
    homepage "https://www.ironplc.com"
    license = "MIT"
  
    if OS.mac?
        url "https://github.com/ironplc/ironplc/releases/download/v0.80.0/ironplcc-x86_64-macos.tar.gz"
        sha256 "72448fb7b376f06586077d7a605fb9aa9c0fe5d074481a36cbb0e9027db34d8a"
    elsif OS.linux?
        url "https://github.com/ironplc/ironplc/releases/download/v0.80.0/ironplcc-x86_64-linux-musl.tar.gz"
        sha256 "e9a91724408601a75e982be3ad8ccd703cf7af66cb8bea4a3616fc4987123b72"
    end
  
    def install
      bin.install "ironplcc"
    end
  end
