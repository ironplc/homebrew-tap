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
    version "0.184.0"
    desc "IronPLC Compiler"
    homepage "https://www.ironplc.com"
    license = "MIT"
  
    if OS.mac?
        url "https://github.com/ironplc/ironplc/releases/download/v0.184.0/ironplcc-x86_64-macos.tar.gz"
        sha256 "900cb93692a413639ae099d8be77959f27f6dc89e50165eff7a0e4e52de11a1a"
    elsif OS.linux?
        url "https://github.com/ironplc/ironplc/releases/download/v0.184.0/ironplcc-x86_64-linux-musl.tar.gz"
        sha256 "27b38e0b99ae120c8361f83dd1ded291c2db2d65f5e996ada85fa515802fd13f"
    end
  
    def install
      bin.install "ironplcc"
      bin.install "ironplcvm"
    end
  end
