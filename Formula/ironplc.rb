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
    version "0.219.0"
    desc "IronPLC Compiler"
    homepage "https://www.ironplc.com"
    license "MIT"
  
    if OS.mac?
        url "https://github.com/ironplc/ironplc/releases/download/v0.219.0/ironplcc-x86_64-macos.tar.gz"
        sha256 "896d5ee584f71f7afd000dd1324d1c63cbaf70279099ea1d14d64994e166dbdc"
    elsif OS.linux?
        url "https://github.com/ironplc/ironplc/releases/download/v0.219.0/ironplcc-x86_64-linux-musl.tar.gz"
        sha256 "3beb9bf0748f61a6afc10f1631bd967531e0af6fa243090ace21bb310c38e2d3"
    end
  
    def install
      bin.install "ironplcc"
      bin.install "ironplcvm"
      bin.install "ironplcmcp"
    end
  end
