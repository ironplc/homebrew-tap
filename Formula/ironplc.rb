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
    version "0.13.54"
    desc "IronPLC Compiler"
    homepage "https://www.ironplc.com"
    license = "MIT"
  
    if OS.mac?
        url "https://github.com/ironplc/ironplc/releases/download/v0.13.54/ironplcc-x86_64-macos.tar.gz"
        sha256 "bbd3babd20d800a706cb1818d955a086d784ad506af78daebc0015a4a0da4ffd"
    elsif OS.linux?
        url "https://github.com/ironplc/ironplc/releases/download/v0.13.54/ironplcc-x86_64-linux-musl.tar.gz"
        sha256 "5e1e8c28ca8897a9e742d7d09e941a644c9a30af04ce3b5dd0d14b3836f2675d"
    end
  
    def install
      bin.install "ironplcc"
    end
  end
