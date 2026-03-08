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
    version "0.165.0"
    desc "IronPLC Compiler"
    homepage "https://www.ironplc.com"
    license = "MIT"
  
    if OS.mac?
        url "https://github.com/ironplc/ironplc/releases/download/v0.165.0/ironplcc-x86_64-macos.tar.gz"
        sha256 "e8879d4ebc0455e06a6d9a2f0d0a757cea57daf86a0f559ce6fc58f06865c0d5"
    elsif OS.linux?
        url "https://github.com/ironplc/ironplc/releases/download/v0.165.0/ironplcc-x86_64-linux-musl.tar.gz"
        sha256 "50f637d32324a539c674164892a295e9a5475526130cc8cbbba88e97947c3bc0"
    end
  
    def install
      bin.install "ironplcc"
      bin.install "ironplcvm"
    end
  end
