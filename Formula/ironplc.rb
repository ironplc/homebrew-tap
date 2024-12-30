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
    version "0.94.0"
    desc "IronPLC Compiler"
    homepage "https://www.ironplc.com"
    license = "MIT"
  
    if OS.mac?
        url "https://github.com/ironplc/ironplc/releases/download/v0.94.0/ironplcc-x86_64-macos.tar.gz"
        sha256 "b2411e9ae753016c5667c281fa1f8d0e6f5455d2da0b789d57efeb69dad0df51"
    elsif OS.linux?
        url "https://github.com/ironplc/ironplc/releases/download/v0.94.0/ironplcc-x86_64-linux-musl.tar.gz"
        sha256 "c03d926b7d1f568838c58a855e592afa9ceaac0801b680828311fa03c2959ed9"
    end
  
    def install
      bin.install "ironplcc"
    end
  end
