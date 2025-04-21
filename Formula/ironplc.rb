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
    version "0.113.0"
    desc "IronPLC Compiler"
    homepage "https://www.ironplc.com"
    license = "MIT"
  
    if OS.mac?
        url "https://github.com/ironplc/ironplc/releases/download/v0.113.0/ironplcc-x86_64-macos.tar.gz"
        sha256 "16dfb076ac6a3ec4fa0c8fad9427d90c33ae9dcfddabd4f4e46b0efcf5b9b44e"
    elsif OS.linux?
        url "https://github.com/ironplc/ironplc/releases/download/v0.113.0/ironplcc-x86_64-linux-musl.tar.gz"
        sha256 "cd8f921b9a524eda6620a90d3f0b49c07783e44e04ab1d97c70ce6ee8e356c59"
    end
  
    def install
      bin.install "ironplcc"
    end
  end
