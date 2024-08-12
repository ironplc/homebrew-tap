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
    version "0.74.0"
    desc "IronPLC Compiler"
    homepage "https://www.ironplc.com"
    license = "MIT"
  
    if OS.mac?
        url "https://github.com/ironplc/ironplc/releases/download/v0.74.0/ironplcc-x86_64-macos.tar.gz"
        sha256 "9e6b8ed3dc4c02406e05cb0c27048d9f14d90cc1b27eede000bc3e70ef5e4729"
    elsif OS.linux?
        url "https://github.com/ironplc/ironplc/releases/download/v0.74.0/ironplcc-x86_64-linux-musl.tar.gz"
        sha256 "28d98164b79a061df20bc18a56d9971ed444c754ee6aa0e6b2e235c71ceb833f"
    end
  
    def install
      bin.install "ironplcc"
    end
  end
