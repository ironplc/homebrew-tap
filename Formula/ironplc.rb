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
    version "0.13.39"
    desc "IronPLC Compiler"
    homepage "https://www.ironplc.com"
    license = "MIT"
  
    if OS.mac?
        url "https://github.com/ironplc/ironplc/releases/download/v0.13.39/ironplcc-x86_64-macos.tar.gz"
        sha256 "0c84336c97dff347675f254a9157510fa6bb30479e9a2ed5396f784ee6e1afaa"
    elsif OS.linux?
        url "https://github.com/ironplc/ironplc/releases/download/v0.13.39/ironplcc-x86_64-linux-musl.tar.gz"
        sha256 "254f12e8f7e0eb5a8be9f1366df083bbb45ea3845ff0c512a60d1b73e433be03"
    end
  
    def install
      bin.install "ironplcc"
    end
  end
