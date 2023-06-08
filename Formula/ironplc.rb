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
class IronPlcBin < Formula
    version "0.13.27"
    desc "IronPLC Compiler"
    homepage "https://www.ironplc.com"
    license = "MIT"
  
    if OS.mac?
        url "https://github.com/ironplc/ironplc/releases/download/v0.13.27/ironplcc-x86_64-macos.tar.gz"
        sha256 "6a8b7da5c85d0ea982424159bf8f26181af5aa140ac3268effdb7f0c050ec2e0"
    elsif OS.linux?
        url "https://github.com/ironplc/ironplc/releases/download/v0.13.27/ironplcc-x86_64-linux-musl.tar.gz"
        sha256 "2b4e39be57cd7cf21867a2a154de9992a31642607c4f25513c75ed6e770d299d"
    end
  
    def install
      bin.install "ironplcc"
    end
  end