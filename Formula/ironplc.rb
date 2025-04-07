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
    version "0.111.0"
    desc "IronPLC Compiler"
    homepage "https://www.ironplc.com"
    license = "MIT"
  
    if OS.mac?
        url "https://github.com/ironplc/ironplc/releases/download/v0.111.0/ironplcc-x86_64-macos.tar.gz"
        sha256 "92472173f6574b90afcfef87a1f87c99e3b60a45ebdaaa5b282a183f715c76ee"
    elsif OS.linux?
        url "https://github.com/ironplc/ironplc/releases/download/v0.111.0/ironplcc-x86_64-linux-musl.tar.gz"
        sha256 "84a6393a918958071d3c5f9c58314ccb738056c200c752bfab75d49ad012f2eb"
    end
  
    def install
      bin.install "ironplcc"
    end
  end
