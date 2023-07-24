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
    version "0.13.40"
    desc "IronPLC Compiler"
    homepage "https://www.ironplc.com"
    license = "MIT"
  
    if OS.mac?
        url "https://github.com/ironplc/ironplc/releases/download/v0.13.40/ironplcc-x86_64-macos.tar.gz"
        sha256 "1322ce22d08b2b9d66a104fb05e92c91af371ba912f9589c8bc2d4d1bb0601d8"
    elsif OS.linux?
        url "https://github.com/ironplc/ironplc/releases/download/v0.13.40/ironplcc-x86_64-linux-musl.tar.gz"
        sha256 "0554796d7c2a15910351ca0090a518fa41c8a828ba0145ea88033458c1130e51"
    end
  
    def install
      bin.install "ironplcc"
    end
  end
