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
    version "0.13.41"
    desc "IronPLC Compiler"
    homepage "https://www.ironplc.com"
    license = "MIT"
  
    if OS.mac?
        url "https://github.com/ironplc/ironplc/releases/download/v0.13.41/ironplcc-x86_64-macos.tar.gz"
        sha256 "d0564ef026866b088884b9e0a1b9ea57794eef687e41f32a6af7446a29fc467d"
    elsif OS.linux?
        url "https://github.com/ironplc/ironplc/releases/download/v0.13.41/ironplcc-x86_64-linux-musl.tar.gz"
        sha256 "918b449c431d65a1a9118c669d14bfc7586eb50f1370516efb756cf86d892e92"
    end
  
    def install
      bin.install "ironplcc"
    end
  end
