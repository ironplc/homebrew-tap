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
    version "0.46.0"
    desc "IronPLC Compiler"
    homepage "https://www.ironplc.com"
    license = "MIT"
  
    if OS.mac?
        url "https://github.com/ironplc/ironplc/releases/download/v0.46.0/ironplcc-x86_64-macos.tar.gz"
        sha256 "37ad66e7a159663dc10abaf71812688e10ebb1ce1c78abef4684e948b7a875b0"
    elsif OS.linux?
        url "https://github.com/ironplc/ironplc/releases/download/v0.46.0/ironplcc-x86_64-linux-musl.tar.gz"
        sha256 "0b35e23f4bd72282fe445c39051f8529b8764605bc4926fa11751024d6cf4c13"
    end
  
    def install
      bin.install "ironplcc"
    end
  end
