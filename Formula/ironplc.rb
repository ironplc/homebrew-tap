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
    version "0.54.0"
    desc "IronPLC Compiler"
    homepage "https://www.ironplc.com"
    license = "MIT"
  
    if OS.mac?
        url "https://github.com/ironplc/ironplc/releases/download/v0.54.0/ironplcc-x86_64-macos.tar.gz"
        sha256 "6671d33fd853ccfc192212ab2dac76508b537066ddafa96064e06502516d7d59"
    elsif OS.linux?
        url "https://github.com/ironplc/ironplc/releases/download/v0.54.0/ironplcc-x86_64-linux-musl.tar.gz"
        sha256 "92f776679a92fa5f3ee8d0da0d3d12b6e88098a79df9b821b2ac999277e6f0d3"
    end
  
    def install
      bin.install "ironplcc"
    end
  end
