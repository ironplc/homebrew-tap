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
    version "0.128.0"
    desc "IronPLC Compiler"
    homepage "https://www.ironplc.com"
    license = "MIT"
  
    if OS.mac?
        url "https://github.com/ironplc/ironplc/releases/download/v0.128.0/ironplcc-x86_64-macos.tar.gz"
        sha256 "91f5322870f21ee16b9cab8ee9c406b62ff62d08fb0831d42ec707c84d81a9c2"
    elsif OS.linux?
        url "https://github.com/ironplc/ironplc/releases/download/v0.128.0/ironplcc-x86_64-linux-musl.tar.gz"
        sha256 "19b648803e826b2a7a33016acda6d058d01f81ff64bbe6f01c4a5350e65f93bc"
    end
  
    def install
      bin.install "ironplcc"
    end
  end
