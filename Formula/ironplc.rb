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
    version "0.13.32"
    desc "IronPLC Compiler"
    homepage "https://www.ironplc.com"
    license = "MIT"
  
    if OS.mac?
        url "https://github.com/ironplc/ironplc/releases/download/v0.13.32/ironplcc-x86_64-macos.tar.gz"
        sha256 "ab994cae819a9b055e5f17a2ef9f6606e2b01a77f5bc72fd285504438da16a42"
    elsif OS.linux?
        url "https://github.com/ironplc/ironplc/releases/download/v0.13.32/ironplcc-x86_64-linux-musl.tar.gz"
        sha256 "afc3d37924c80a59e700fb733cbdd6bbd499548390745f9e76e74c582ea80b4a"
    end
  
    def install
      bin.install "ironplcc"
    end
  end
