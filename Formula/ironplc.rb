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
    version "0.47.0"
    desc "IronPLC Compiler"
    homepage "https://www.ironplc.com"
    license = "MIT"
  
    if OS.mac?
        url "https://github.com/ironplc/ironplc/releases/download/v0.47.0/ironplcc-x86_64-macos.tar.gz"
        sha256 "2c9c4e88741c7f96db6ff2d7a3092d4a26070c6ebd19933dce24deda57e20e9f"
    elsif OS.linux?
        url "https://github.com/ironplc/ironplc/releases/download/v0.47.0/ironplcc-x86_64-linux-musl.tar.gz"
        sha256 "ce6032048712c6d6a40a1f3ba8d61ebee931f9bc984a046b0dbe15b83c19b88b"
    end
  
    def install
      bin.install "ironplcc"
    end
  end
