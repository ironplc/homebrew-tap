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
    version "0.64.0"
    desc "IronPLC Compiler"
    homepage "https://www.ironplc.com"
    license = "MIT"
  
    if OS.mac?
        url "https://github.com/ironplc/ironplc/releases/download/v0.64.0/ironplcc-x86_64-macos.tar.gz"
        sha256 "285981b50d1b99e7f7f642e8db46d7f1914c75a17a42fa2b5aa135307e2e755f"
    elsif OS.linux?
        url "https://github.com/ironplc/ironplc/releases/download/v0.64.0/ironplcc-x86_64-linux-musl.tar.gz"
        sha256 "19ceda5ee903aa2a9680a2cf7fe200ae51b6169d18d0d8225d64ef6ae14864fe"
    end
  
    def install
      bin.install "ironplcc"
    end
  end
