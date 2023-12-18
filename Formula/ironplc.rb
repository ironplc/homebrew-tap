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
    version "0.38.0"
    desc "IronPLC Compiler"
    homepage "https://www.ironplc.com"
    license = "MIT"
  
    if OS.mac?
        url "https://github.com/ironplc/ironplc/releases/download/v0.38.0/ironplcc-x86_64-macos.tar.gz"
        sha256 "30b92a4ad6d3dc1956386aae97cb6a870b8a277bfe025c517aa7514b740fea0b"
    elsif OS.linux?
        url "https://github.com/ironplc/ironplc/releases/download/v0.38.0/ironplcc-x86_64-linux-musl.tar.gz"
        sha256 "05f73f8f8b786568230b060ed6431844a243dc3fc2c945b9fd999c5a4a14befc"
    end
  
    def install
      bin.install "ironplcc"
    end
  end
