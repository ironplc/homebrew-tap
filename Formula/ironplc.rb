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
class IronPlcBin < Formula
    version "0.13.26"
    desc "IronPLC Compiler"
    homepage "https://www.ironplc.com"
  
    if OS.mac?
        url "https://github.com/ironplc/ironplc/releases/download/v0.13.26/ironplcc-x86_64-macos.tar.gz"
        sha256 "3862dbf45c37b119b24d9617a5a038dbb436fddfd641002ac27c1ee6894a53c0"
    elsif OS.linux?
        url "https://github.com/ironplc/ironplc/releases/download/v0.13.26/ironplcc-x86_64-linux-musl.tar.gz"
        sha256 "e7500618e5fb72a842619e29f781df744d4da96b785758a87b0df5ad9d5f9e09"
    end
  
    def install
      bin.install "ironplcc"
    end
  end