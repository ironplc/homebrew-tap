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
    version "0.233.0"
    desc "IronPLC Compiler"
    homepage "https://www.ironplc.com"
    license "MIT"
  
    if OS.mac?
        url "https://github.com/ironplc/ironplc/releases/download/v0.233.0/ironplcc-x86_64-macos.tar.gz"
        sha256 "093ba9a425b5417034f0159ee50be922ff5e437638dbca6b5b83333dc48e4bfb"
    elsif OS.linux?
        url "https://github.com/ironplc/ironplc/releases/download/v0.233.0/ironplcc-x86_64-linux-musl.tar.gz"
        sha256 "737688aaa60148bdc2380d1e6f9370d47ee1d971fdbcb66ff92f6328beb2f2c4"
    end
  
    def install
      bin.install "ironplcc"
      bin.install "ironplcvm"
      bin.install "ironplcmcp"
    end
  end
