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
    version "0.147.0"
    desc "IronPLC Compiler"
    homepage "https://www.ironplc.com"
    license = "MIT"
  
    if OS.mac?
        url "https://github.com/ironplc/ironplc/releases/download/v0.147.0/ironplcc-x86_64-macos.tar.gz"
        sha256 "b8ffb59fc410acef93a0fcfcf1f28deb511d5e9ad295eed20945636b6731ecf2"
    elsif OS.linux?
        url "https://github.com/ironplc/ironplc/releases/download/v0.147.0/ironplcc-x86_64-linux-musl.tar.gz"
        sha256 "19ab9b56b0eee28fb4cd2ceed501cee1857e9897cfa53c267cfdfc70268181b3"
    end
  
    def install
      bin.install "ironplcc"
    end
  end
