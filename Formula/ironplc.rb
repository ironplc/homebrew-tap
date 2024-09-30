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
    version "0.81.0"
    desc "IronPLC Compiler"
    homepage "https://www.ironplc.com"
    license = "MIT"
  
    if OS.mac?
        url "https://github.com/ironplc/ironplc/releases/download/v0.81.0/ironplcc-x86_64-macos.tar.gz"
        sha256 "766626849d62588319f667b3a852638b32c8d97a7f1b216e2f29b09922e2910b"
    elsif OS.linux?
        url "https://github.com/ironplc/ironplc/releases/download/v0.81.0/ironplcc-x86_64-linux-musl.tar.gz"
        sha256 "a8e058e7b6c1c5dfe989ee48c5c15704b785f81f3b887d95cc361d90a81fc176"
    end
  
    def install
      bin.install "ironplcc"
    end
  end
