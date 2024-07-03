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
    version "0.68.0"
    desc "IronPLC Compiler"
    homepage "https://www.ironplc.com"
    license = "MIT"
  
    if OS.mac?
        url "https://github.com/ironplc/ironplc/releases/download/v0.68.0/ironplcc-x86_64-macos.tar.gz"
        sha256 "6a3a92fe525c122393503b8786b336e1be44261caf7d896bb153f96a80c2beb0"
    elsif OS.linux?
        url "https://github.com/ironplc/ironplc/releases/download/v0.68.0/ironplcc-x86_64-linux-musl.tar.gz"
        sha256 "38ad9a42f6e2a4aa74a2357b36efef44806d3a7c48b8c5099a29d4dff87911fe"
    end
  
    def install
      bin.install "ironplcc"
    end
  end
