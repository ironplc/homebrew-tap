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
    version "0.153.0"
    desc "IronPLC Compiler"
    homepage "https://www.ironplc.com"
    license = "MIT"
  
    if OS.mac?
        url "https://github.com/ironplc/ironplc/releases/download/v0.153.0/ironplcc-x86_64-macos.tar.gz"
        sha256 "c86d6616b053a5840d9e9d25e19b9a2f412f37ec5e09211ea4667c1dae918d91"
    elsif OS.linux?
        url "https://github.com/ironplc/ironplc/releases/download/v0.153.0/ironplcc-x86_64-linux-musl.tar.gz"
        sha256 "c4cba761e3851151b8368707c9a971880db6db527c0577fa5ee7f686a544f26c"
    end
  
    def install
      bin.install "ironplcc"
    end
  end
