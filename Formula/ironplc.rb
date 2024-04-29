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
    version "0.58.0"
    desc "IronPLC Compiler"
    homepage "https://www.ironplc.com"
    license = "MIT"
  
    if OS.mac?
        url "https://github.com/ironplc/ironplc/releases/download/v0.58.0/ironplcc-x86_64-macos.tar.gz"
        sha256 "b419aa8c340e7c3c4bfc7c9991ccf28e767639febcf6d9631ab0ea1f65a969e6"
    elsif OS.linux?
        url "https://github.com/ironplc/ironplc/releases/download/v0.58.0/ironplcc-x86_64-linux-musl.tar.gz"
        sha256 "0bfaa6aced9a7fc5c004cdca39d66dfc4c44106ef50c81408d6567e5833ea717"
    end
  
    def install
      bin.install "ironplcc"
    end
  end
