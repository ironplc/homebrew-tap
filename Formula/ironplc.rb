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
    version "0.181.0"
    desc "IronPLC Compiler"
    homepage "https://www.ironplc.com"
    license = "MIT"
  
    if OS.mac?
        url "https://github.com/ironplc/ironplc/releases/download/v0.181.0/ironplcc-x86_64-macos.tar.gz"
        sha256 "5c480d26d4b64d7c8f945a1574f23c79778bb8cd8a5b977c2a789fd7d873a3ce"
    elsif OS.linux?
        url "https://github.com/ironplc/ironplc/releases/download/v0.181.0/ironplcc-x86_64-linux-musl.tar.gz"
        sha256 "3217b3ced10a04267aa68701ce6846f455ec54b3d8286dde64d1de1ad0c5dd0e"
    end
  
    def install
      bin.install "ironplcc"
      bin.install "ironplcvm"
    end
  end
