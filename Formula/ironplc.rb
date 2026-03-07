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
    version "0.164.0"
    desc "IronPLC Compiler"
    homepage "https://www.ironplc.com"
    license = "MIT"
  
    if OS.mac?
        url "https://github.com/ironplc/ironplc/releases/download/v0.164.0/ironplcc-x86_64-macos.tar.gz"
        sha256 "b22ca97db655f1e15a98c0d9169111de2c671b476f562b45df97e8d64df9b52c"
    elsif OS.linux?
        url "https://github.com/ironplc/ironplc/releases/download/v0.164.0/ironplcc-x86_64-linux-musl.tar.gz"
        sha256 "74dd8592caf4891e3bec4038b9ff091b6091d9653d494c4878219430f2f9bfd1"
    end
  
    def install
      bin.install "ironplcc"
      bin.install "ironplcvm"
    end
  end
