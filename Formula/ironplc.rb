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
    version "0.13.42"
    desc "IronPLC Compiler"
    homepage "https://www.ironplc.com"
    license = "MIT"
  
    if OS.mac?
        url "https://github.com/ironplc/ironplc/releases/download/v0.13.42/ironplcc-x86_64-macos.tar.gz"
        sha256 "136f8c83a03dd841d376b0e23e26e6ab12017cf04edd92a65a3db6a0753b8cce"
    elsif OS.linux?
        url "https://github.com/ironplc/ironplc/releases/download/v0.13.42/ironplcc-x86_64-linux-musl.tar.gz"
        sha256 "953760b71107f8e44381a1f335d2e9180292adec0b7ddd9ac4e9e9b63f156007"
    end
  
    def install
      bin.install "ironplcc"
    end
  end
