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
    version "0.148.0"
    desc "IronPLC Compiler"
    homepage "https://www.ironplc.com"
    license = "MIT"
  
    if OS.mac?
        url "https://github.com/ironplc/ironplc/releases/download/v0.148.0/ironplcc-x86_64-macos.tar.gz"
        sha256 "3541eae4ad0e5346eb15181c2ba5f939ec305bdb70ee0bfa36de4874c50d0455"
    elsif OS.linux?
        url "https://github.com/ironplc/ironplc/releases/download/v0.148.0/ironplcc-x86_64-linux-musl.tar.gz"
        sha256 "3231a319585018ecda07858a3d7948fe77160e40fde2cab00824a8f937ac6acd"
    end
  
    def install
      bin.install "ironplcc"
    end
  end
