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
    version "0.112.0"
    desc "IronPLC Compiler"
    homepage "https://www.ironplc.com"
    license = "MIT"
  
    if OS.mac?
        url "https://github.com/ironplc/ironplc/releases/download/v0.112.0/ironplcc-x86_64-macos.tar.gz"
        sha256 "7698e2713e846df4da388e53eac188f4e61d44e818ca80c29100aed90c821cb5"
    elsif OS.linux?
        url "https://github.com/ironplc/ironplc/releases/download/v0.112.0/ironplcc-x86_64-linux-musl.tar.gz"
        sha256 "64edc7007be4ae59f1939c39fda9e6f34cf663777e58fb739a05ffa37a6b4ea2"
    end
  
    def install
      bin.install "ironplcc"
    end
  end
