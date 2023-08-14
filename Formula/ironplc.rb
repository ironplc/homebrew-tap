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
    version "0.13.43"
    desc "IronPLC Compiler"
    homepage "https://www.ironplc.com"
    license = "MIT"
  
    if OS.mac?
        url "https://github.com/ironplc/ironplc/releases/download/v0.13.43/ironplcc-x86_64-macos.tar.gz"
        sha256 "739f0f2c40b2f42dc0fd9e6eed82326c142f78ee105264b3e640a532d288e51a"
    elsif OS.linux?
        url "https://github.com/ironplc/ironplc/releases/download/v0.13.43/ironplcc-x86_64-linux-musl.tar.gz"
        sha256 "ab25a99ae872fba7bc06a42f5c8ab388dc318141f67c82edf12b00e4c3082a16"
    end
  
    def install
      bin.install "ironplcc"
    end
  end
