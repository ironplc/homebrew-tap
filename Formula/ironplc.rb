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
    version "0.37.0"
    desc "IronPLC Compiler"
    homepage "https://www.ironplc.com"
    license = "MIT"
  
    if OS.mac?
        url "https://github.com/ironplc/ironplc/releases/download/v0.37.0/ironplcc-x86_64-macos.tar.gz"
        sha256 "3f35aba77431eecdd6d332c7bb7b26056168a94236cd39d4e31270e448dfb708"
    elsif OS.linux?
        url "https://github.com/ironplc/ironplc/releases/download/v0.37.0/ironplcc-x86_64-linux-musl.tar.gz"
        sha256 "9a333d3c17145a39b08e6cc170b3a4d305dc8dc6a64c811c3d297a1c80dc6bd9"
    end
  
    def install
      bin.install "ironplcc"
    end
  end
