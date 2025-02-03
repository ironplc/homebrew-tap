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
    version "0.102.0"
    desc "IronPLC Compiler"
    homepage "https://www.ironplc.com"
    license = "MIT"
  
    if OS.mac?
        url "https://github.com/ironplc/ironplc/releases/download/v0.102.0/ironplcc-x86_64-macos.tar.gz"
        sha256 "86d325af3e026b1ec549b70bf7502d62605a59cd55164797c1f838f281e1eef9"
    elsif OS.linux?
        url "https://github.com/ironplc/ironplc/releases/download/v0.102.0/ironplcc-x86_64-linux-musl.tar.gz"
        sha256 "88480e065170a2ec3feea2e8a593c5faa2abf5f913ea7fd7fda69c55aef2a9a0"
    end
  
    def install
      bin.install "ironplcc"
    end
  end
