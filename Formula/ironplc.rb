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
    version "0.171.0"
    desc "IronPLC Compiler"
    homepage "https://www.ironplc.com"
    license = "MIT"
  
    if OS.mac?
        url "https://github.com/ironplc/ironplc/releases/download/v0.171.0/ironplcc-x86_64-macos.tar.gz"
        sha256 "1286a50fd6e222f222bb82b554a2cf38676d182d03dc18970545ac5fe9155a21"
    elsif OS.linux?
        url "https://github.com/ironplc/ironplc/releases/download/v0.171.0/ironplcc-x86_64-linux-musl.tar.gz"
        sha256 "ee4ac567a9206decc07fbf36731734da7eb7e4d6c6bd9f83d3fccc0d3456f43f"
    end
  
    def install
      bin.install "ironplcc"
      bin.install "ironplcvm"
    end
  end
