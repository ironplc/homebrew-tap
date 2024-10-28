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
    version "0.85.0"
    desc "IronPLC Compiler"
    homepage "https://www.ironplc.com"
    license = "MIT"
  
    if OS.mac?
        url "https://github.com/ironplc/ironplc/releases/download/v0.85.0/ironplcc-x86_64-macos.tar.gz"
        sha256 "a79aff773044899365d1e2afb8b5455d378577ff6f52f564af5a38764edfd7fe"
    elsif OS.linux?
        url "https://github.com/ironplc/ironplc/releases/download/v0.85.0/ironplcc-x86_64-linux-musl.tar.gz"
        sha256 "9973db4bb3024e3cc46b3bb1d0b830688ebce87cc363a005751407ecb72f9049"
    end
  
    def install
      bin.install "ironplcc"
    end
  end
