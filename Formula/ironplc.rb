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
    version "0.53.0"
    desc "IronPLC Compiler"
    homepage "https://www.ironplc.com"
    license = "MIT"
  
    if OS.mac?
        url "https://github.com/ironplc/ironplc/releases/download/v0.53.0/ironplcc-x86_64-macos.tar.gz"
        sha256 "7c318252a7f1cb7bcc2b856f1b6e2423d10fe58efd72cbc8cbdafd900b0741d1"
    elsif OS.linux?
        url "https://github.com/ironplc/ironplc/releases/download/v0.53.0/ironplcc-x86_64-linux-musl.tar.gz"
        sha256 "5b3627fe2b7091b39cb88a3464a799f6f928678b1b93ca9dc5ebb4e3f527f7b7"
    end
  
    def install
      bin.install "ironplcc"
    end
  end
