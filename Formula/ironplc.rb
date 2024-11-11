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
    version "0.87.0"
    desc "IronPLC Compiler"
    homepage "https://www.ironplc.com"
    license = "MIT"
  
    if OS.mac?
        url "https://github.com/ironplc/ironplc/releases/download/v0.87.0/ironplcc-x86_64-macos.tar.gz"
        sha256 "115132916df05883aae291100afc61b122a6a197426f04368be0fb8a8dcb1689"
    elsif OS.linux?
        url "https://github.com/ironplc/ironplc/releases/download/v0.87.0/ironplcc-x86_64-linux-musl.tar.gz"
        sha256 "cdf79c8ec89713709049db9f15a6a30c968eed2cd7bd56474a9e9e3be81ebec2"
    end
  
    def install
      bin.install "ironplcc"
    end
  end
