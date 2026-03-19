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
    version "0.178.0"
    desc "IronPLC Compiler"
    homepage "https://www.ironplc.com"
    license = "MIT"
  
    if OS.mac?
        url "https://github.com/ironplc/ironplc/releases/download/v0.178.0/ironplcc-x86_64-macos.tar.gz"
        sha256 "3c0d5afa5a2b94fdcba4026f0bf66cf6110ebcd0a5022d66725542b01a4d48af"
    elsif OS.linux?
        url "https://github.com/ironplc/ironplc/releases/download/v0.178.0/ironplcc-x86_64-linux-musl.tar.gz"
        sha256 "1ad3e06051d03eb2ac8dd8491063ac1df57bb6f47db725ae0f85c29d39ee421a"
    end
  
    def install
      bin.install "ironplcc"
      bin.install "ironplcvm"
    end
  end
