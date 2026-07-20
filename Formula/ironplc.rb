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
    version "0.231.0"
    desc "IronPLC Compiler"
    homepage "https://www.ironplc.com"
    license "MIT"
  
    if OS.mac?
        url "https://github.com/ironplc/ironplc/releases/download/v0.231.0/ironplcc-x86_64-macos.tar.gz"
        sha256 "64a864671398e54c9b0c2258fc9d806b6ae10f455418df4a643687305a78e54a"
    elsif OS.linux?
        url "https://github.com/ironplc/ironplc/releases/download/v0.231.0/ironplcc-x86_64-linux-musl.tar.gz"
        sha256 "34ece79af5760f694d79e75ee8212e374cf957f8a5e88a3c234463cf303d8049"
    end
  
    def install
      bin.install "ironplcc"
      bin.install "ironplcvm"
      bin.install "ironplcmcp"
    end
  end
