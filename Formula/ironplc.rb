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
    version "0.117.0"
    desc "IronPLC Compiler"
    homepage "https://www.ironplc.com"
    license = "MIT"
  
    if OS.mac?
        url "https://github.com/ironplc/ironplc/releases/download/v0.117.0/ironplcc-x86_64-macos.tar.gz"
        sha256 "067589f020aa05104afc6b9fd779181b9dbc5b11d75398337cf0272b040d548e"
    elsif OS.linux?
        url "https://github.com/ironplc/ironplc/releases/download/v0.117.0/ironplcc-x86_64-linux-musl.tar.gz"
        sha256 "229b4ca1e781cedfc01f3c0865eee8cfd01bb3c8088a88ad1d2774b3a565d433"
    end
  
    def install
      bin.install "ironplcc"
    end
  end
