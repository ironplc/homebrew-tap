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
    version "0.44.0"
    desc "IronPLC Compiler"
    homepage "https://www.ironplc.com"
    license = "MIT"
  
    if OS.mac?
        url "https://github.com/ironplc/ironplc/releases/download/v0.44.0/ironplcc-x86_64-macos.tar.gz"
        sha256 "5740848d2039fa10c8b03fb301e19e93b86b2bbda858e44ed108e558190e28d0"
    elsif OS.linux?
        url "https://github.com/ironplc/ironplc/releases/download/v0.44.0/ironplcc-x86_64-linux-musl.tar.gz"
        sha256 "63b57ff91e730dd57b764e6851fab96ee043f6504ea245e8e69d375adcc5baa0"
    end
  
    def install
      bin.install "ironplcc"
    end
  end
