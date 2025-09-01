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
    version "0.129.0"
    desc "IronPLC Compiler"
    homepage "https://www.ironplc.com"
    license = "MIT"
  
    if OS.mac?
        url "https://github.com/ironplc/ironplc/releases/download/v0.129.0/ironplcc-x86_64-macos.tar.gz"
        sha256 "eda90b87e379835f294773ea97e5c4c1d2a6c39f5524e20a1ebd5d36b82d0dc8"
    elsif OS.linux?
        url "https://github.com/ironplc/ironplc/releases/download/v0.129.0/ironplcc-x86_64-linux-musl.tar.gz"
        sha256 "140c3e1a2eefbe8b671a707c5dba064a2b81e927abf90fd8d5e2d6177000eaf8"
    end
  
    def install
      bin.install "ironplcc"
    end
  end
