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
    version "0.168.0"
    desc "IronPLC Compiler"
    homepage "https://www.ironplc.com"
    license = "MIT"
  
    if OS.mac?
        url "https://github.com/ironplc/ironplc/releases/download/v0.168.0/ironplcc-x86_64-macos.tar.gz"
        sha256 "ab6c9febd1d765cca74ec91e6206e84f886916a3b6936a95c92935f8f2b35d32"
    elsif OS.linux?
        url "https://github.com/ironplc/ironplc/releases/download/v0.168.0/ironplcc-x86_64-linux-musl.tar.gz"
        sha256 "311f012e922d82237508b1494a61e251c0ed1f6ae54d242729024f9bb5c558bc"
    end
  
    def install
      bin.install "ironplcc"
      bin.install "ironplcvm"
    end
  end
