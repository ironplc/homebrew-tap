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
    version "0.96.0"
    desc "IronPLC Compiler"
    homepage "https://www.ironplc.com"
    license = "MIT"
  
    if OS.mac?
        url "https://github.com/ironplc/ironplc/releases/download/v0.96.0/ironplcc-x86_64-macos.tar.gz"
        sha256 "5a27c7f61615be3f0a02aeb442f31953612c53879ab1f12e97e8a420b63331f3"
    elsif OS.linux?
        url "https://github.com/ironplc/ironplc/releases/download/v0.96.0/ironplcc-x86_64-linux-musl.tar.gz"
        sha256 "f7605107074835f9acae712687a302b8a92e57abac6633fba4d3e377b5c00736"
    end
  
    def install
      bin.install "ironplcc"
    end
  end
