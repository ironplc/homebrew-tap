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
    version "0.108.0"
    desc "IronPLC Compiler"
    homepage "https://www.ironplc.com"
    license = "MIT"
  
    if OS.mac?
        url "https://github.com/ironplc/ironplc/releases/download/v0.108.0/ironplcc-x86_64-macos.tar.gz"
        sha256 "51d05ba0b8633530c969cb94541a673e69c47781ff648b22b929e6f121967724"
    elsif OS.linux?
        url "https://github.com/ironplc/ironplc/releases/download/v0.108.0/ironplcc-x86_64-linux-musl.tar.gz"
        sha256 "17e5799c0c5a6c2d657113b501d87fcb34f59b7ba01c589c4ccca5296453bae4"
    end
  
    def install
      bin.install "ironplcc"
    end
  end
