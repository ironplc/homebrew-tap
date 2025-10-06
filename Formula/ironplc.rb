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
    version "0.136.0"
    desc "IronPLC Compiler"
    homepage "https://www.ironplc.com"
    license = "MIT"
  
    if OS.mac?
        url "https://github.com/ironplc/ironplc/releases/download/v0.136.0/ironplcc-x86_64-macos.tar.gz"
        sha256 "d023e3b9444648760b3f3179fc5e360e2580175af12146383ee4fd646f2ceeef"
    elsif OS.linux?
        url "https://github.com/ironplc/ironplc/releases/download/v0.136.0/ironplcc-x86_64-linux-musl.tar.gz"
        sha256 "7f305a9b2386ee3b4e38272a4fb8f01c282fd210be8661a3227973ca3110cc0d"
    end
  
    def install
      bin.install "ironplcc"
    end
  end
