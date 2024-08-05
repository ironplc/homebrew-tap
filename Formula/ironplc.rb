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
    version "0.73.0"
    desc "IronPLC Compiler"
    homepage "https://www.ironplc.com"
    license = "MIT"
  
    if OS.mac?
        url "https://github.com/ironplc/ironplc/releases/download/v0.73.0/ironplcc-x86_64-macos.tar.gz"
        sha256 "e7d594faead66f3b7607a9c7b455c2e99e44f39dc9750bd9e77ddb6085d7336d"
    elsif OS.linux?
        url "https://github.com/ironplc/ironplc/releases/download/v0.73.0/ironplcc-x86_64-linux-musl.tar.gz"
        sha256 "db3f0d4ebf14d8a5b93ad62148bdded3881a8c92a1f7ad8fb498495664434243"
    end
  
    def install
      bin.install "ironplcc"
    end
  end
