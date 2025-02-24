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
    version "0.105.0"
    desc "IronPLC Compiler"
    homepage "https://www.ironplc.com"
    license = "MIT"
  
    if OS.mac?
        url "https://github.com/ironplc/ironplc/releases/download/v0.105.0/ironplcc-x86_64-macos.tar.gz"
        sha256 "6c1cb903f15257abd31b8d85a07d5478d51ee5bc445fe5ad27255adb7c73e9b9"
    elsif OS.linux?
        url "https://github.com/ironplc/ironplc/releases/download/v0.105.0/ironplcc-x86_64-linux-musl.tar.gz"
        sha256 "8ae549b86cecb2c0692a3439e5c214e44cac22493d77a724629633fb44357d3a"
    end
  
    def install
      bin.install "ironplcc"
    end
  end
