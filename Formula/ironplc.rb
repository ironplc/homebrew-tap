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
    version "0.13.50"
    desc "IronPLC Compiler"
    homepage "https://www.ironplc.com"
    license = "MIT"
  
    if OS.mac?
        url "https://github.com/ironplc/ironplc/releases/download/v0.13.50/ironplcc-x86_64-macos.tar.gz"
        sha256 "f3885ecb6a5417fb28b1147a163138df1fe62f887d710788f83dbdb4c565271e"
    elsif OS.linux?
        url "https://github.com/ironplc/ironplc/releases/download/v0.13.50/ironplcc-x86_64-linux-musl.tar.gz"
        sha256 "23e25db5c0c95c79eb138a37a56c0f7107d2d3566e37801546342ef879f06226"
    end
  
    def install
      bin.install "ironplcc"
    end
  end
