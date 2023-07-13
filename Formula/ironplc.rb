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
    version "0.13.38"
    desc "IronPLC Compiler"
    homepage "https://www.ironplc.com"
    license = "MIT"
  
    if OS.mac?
        url "https://github.com/ironplc/ironplc/releases/download/v0.13.38/ironplcc-x86_64-macos.tar.gz"
        sha256 "f2fb3ee45d4f0ebf61a761c2d244db86e17fc6113399fd3d3cf626017474e364"
    elsif OS.linux?
        url "https://github.com/ironplc/ironplc/releases/download/v0.13.38/ironplcc-x86_64-linux-musl.tar.gz"
        sha256 "c597627799c53794a30216161684580d82329c0e40dba9c9870e1a1af5b76aee"
    end
  
    def install
      bin.install "ironplcc"
    end
  end
