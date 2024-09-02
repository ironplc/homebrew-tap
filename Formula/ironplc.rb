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
    version "0.77.0"
    desc "IronPLC Compiler"
    homepage "https://www.ironplc.com"
    license = "MIT"
  
    if OS.mac?
        url "https://github.com/ironplc/ironplc/releases/download/v0.77.0/ironplcc-x86_64-macos.tar.gz"
        sha256 "69317e38cba4b663b3f151fa6d58519ba65a34f61ddfb9fb7590367795a86195"
    elsif OS.linux?
        url "https://github.com/ironplc/ironplc/releases/download/v0.77.0/ironplcc-x86_64-linux-musl.tar.gz"
        sha256 "9ee10031072410d24579f74b112b1abc74f3901138df9fa2772b5762435ccc0b"
    end
  
    def install
      bin.install "ironplcc"
    end
  end
