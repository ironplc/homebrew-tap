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
    version "0.13.35"
    desc "IronPLC Compiler"
    homepage "https://www.ironplc.com"
    license = "MIT"
  
    if OS.mac?
        url "https://github.com/ironplc/ironplc/releases/download/v0.13.35/ironplcc-x86_64-macos.tar.gz"
        sha256 "48739cc1ccadc41af90ad344292a375ce37ebd2501e5b563a6e808820fa866e3"
    elsif OS.linux?
        url "https://github.com/ironplc/ironplc/releases/download/v0.13.35/ironplcc-x86_64-linux-musl.tar.gz"
        sha256 "b732d975efc1917919815890c952dc3c68954267f45345c63f558ff295a8218b"
    end
  
    def install
      bin.install "ironplcc"
    end
  end
