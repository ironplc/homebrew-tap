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
    version "0.60.0"
    desc "IronPLC Compiler"
    homepage "https://www.ironplc.com"
    license = "MIT"
  
    if OS.mac?
        url "https://github.com/ironplc/ironplc/releases/download/v0.60.0/ironplcc-x86_64-macos.tar.gz"
        sha256 "cac4989fd85ecc2e291fb62811fb0a7060e5d9ecbecfb9fc1a4cebeea358b2ca"
    elsif OS.linux?
        url "https://github.com/ironplc/ironplc/releases/download/v0.60.0/ironplcc-x86_64-linux-musl.tar.gz"
        sha256 "69d7f2715be4252e45d2dc8d107e4389dc8c3f550557e0dc3768505ba459f862"
    end
  
    def install
      bin.install "ironplcc"
    end
  end
