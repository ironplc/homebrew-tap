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
    version "0.192.0"
    desc "IronPLC Compiler"
    homepage "https://www.ironplc.com"
    license = "MIT"
  
    if OS.mac?
        url "https://github.com/ironplc/ironplc/releases/download/v0.192.0/ironplcc-x86_64-macos.tar.gz"
        sha256 "12b00593c3fb5bd03a4a0a629610f3bedc6ef5346d414433f108494822ae1c2f"
    elsif OS.linux?
        url "https://github.com/ironplc/ironplc/releases/download/v0.192.0/ironplcc-x86_64-linux-musl.tar.gz"
        sha256 "0f5a8c087ff514a0c5e96cea34ae1abe186d06154d18563c03ddbeb47927455c"
    end
  
    def install
      bin.install "ironplcc"
      bin.install "ironplcvm"
    end
  end
