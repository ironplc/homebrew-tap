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
    version "0.152.0"
    desc "IronPLC Compiler"
    homepage "https://www.ironplc.com"
    license = "MIT"
  
    if OS.mac?
        url "https://github.com/ironplc/ironplc/releases/download/v0.152.0/ironplcc-x86_64-macos.tar.gz"
        sha256 "b63da9a2499299f53273a51ab656eb85c530ccb094c6f13a494ff8985f429205"
    elsif OS.linux?
        url "https://github.com/ironplc/ironplc/releases/download/v0.152.0/ironplcc-x86_64-linux-musl.tar.gz"
        sha256 "220ceb2d3d0db875e1c464152c90d7df2d45b18f068e89e8516def494aa3ff86"
    end
  
    def install
      bin.install "ironplcc"
    end
  end
