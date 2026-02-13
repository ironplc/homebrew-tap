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
    version "0.156.0"
    desc "IronPLC Compiler"
    homepage "https://www.ironplc.com"
    license = "MIT"
  
    if OS.mac?
        url "https://github.com/ironplc/ironplc/releases/download/v0.156.0/ironplcc-x86_64-macos.tar.gz"
        sha256 "c7f8150949acbe5704630b501b51465558e7bcf63702e52f47b1ef5d8fde7d9d"
    elsif OS.linux?
        url "https://github.com/ironplc/ironplc/releases/download/v0.156.0/ironplcc-x86_64-linux-musl.tar.gz"
        sha256 "4132faf6ebf198c14768a0bef9349b1dfe5e610d210511696e9ee050af8d2fc2"
    end
  
    def install
      bin.install "ironplcc"
    end
  end
