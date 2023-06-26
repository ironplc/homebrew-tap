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
    version "0.13.34"
    desc "IronPLC Compiler"
    homepage "https://www.ironplc.com"
    license = "MIT"
  
    if OS.mac?
        url "https://github.com/ironplc/ironplc/releases/download/v0.13.34/ironplcc-x86_64-macos.tar.gz"
        sha256 "23c77ff4f1646215a66c35a725ef8c51a27213145ae24d7b12fe79f3e90e5948"
    elsif OS.linux?
        url "https://github.com/ironplc/ironplc/releases/download/v0.13.34/ironplcc-x86_64-linux-musl.tar.gz"
        sha256 "0465bfae0db57f3536fe7a91eaf55a3a53d6d2fe41c9f9e58f126ef380eb4a13"
    end
  
    def install
      bin.install "ironplcc"
    end
  end
