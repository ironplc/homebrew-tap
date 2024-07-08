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
    version "0.69.0"
    desc "IronPLC Compiler"
    homepage "https://www.ironplc.com"
    license = "MIT"
  
    if OS.mac?
        url "https://github.com/ironplc/ironplc/releases/download/v0.69.0/ironplcc-x86_64-macos.tar.gz"
        sha256 "9eb3ea77ad543a968352b545b48bc05e970a02857b58cf17fc33339ad9020e18"
    elsif OS.linux?
        url "https://github.com/ironplc/ironplc/releases/download/v0.69.0/ironplcc-x86_64-linux-musl.tar.gz"
        sha256 "9925e2ebfa205cb465cd00b94a65b229c7fd9d1001788dd7bf1cbfbbc72da322"
    end
  
    def install
      bin.install "ironplcc"
    end
  end
