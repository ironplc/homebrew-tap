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
    version "0.159.0"
    desc "IronPLC Compiler"
    homepage "https://www.ironplc.com"
    license = "MIT"
  
    if OS.mac?
        url "https://github.com/ironplc/ironplc/releases/download/v0.159.0/ironplcc-x86_64-macos.tar.gz"
        sha256 "6dfa136d6d9f7bdc1de35fb8cdf5c306ef5c608a7684be8fa57d581ac71afde9"
    elsif OS.linux?
        url "https://github.com/ironplc/ironplc/releases/download/v0.159.0/ironplcc-x86_64-linux-musl.tar.gz"
        sha256 "49306090881a9bb2e93ca9a67b8ff5d35dabac39ccc5749f0f21883621d69a69"
    end
  
    def install
      bin.install "ironplcc"
      bin.install "ironplcvm"
    end
  end
