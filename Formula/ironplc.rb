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
    version "0.107.0"
    desc "IronPLC Compiler"
    homepage "https://www.ironplc.com"
    license = "MIT"
  
    if OS.mac?
        url "https://github.com/ironplc/ironplc/releases/download/v0.107.0/ironplcc-x86_64-macos.tar.gz"
        sha256 "bc0b4e9f4e035afd4ad6bb47d88a0fdbe0d34aa17cb91d50e53c9ad46ed60388"
    elsif OS.linux?
        url "https://github.com/ironplc/ironplc/releases/download/v0.107.0/ironplcc-x86_64-linux-musl.tar.gz"
        sha256 "482f2297f0e7ea2f8a2be5ae3a878874733cff812442bdb8fa83bd08a00d1698"
    end
  
    def install
      bin.install "ironplcc"
    end
  end
