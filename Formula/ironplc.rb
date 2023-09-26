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
    version "0.13.53"
    desc "IronPLC Compiler"
    homepage "https://www.ironplc.com"
    license = "MIT"
  
    if OS.mac?
        url "https://github.com/ironplc/ironplc/releases/download/v0.13.53/ironplcc-x86_64-macos.tar.gz"
        sha256 "dcdf78e728b56bd8670e7a3cfbdd39a5a8a290b80bd7ed2d40de8848af2a6c17"
    elsif OS.linux?
        url "https://github.com/ironplc/ironplc/releases/download/v0.13.53/ironplcc-x86_64-linux-musl.tar.gz"
        sha256 "97a11a3baf406fd50e53575c7775a09710c80541d7bc022e9626c25f3c1d04bb"
    end
  
    def install
      bin.install "ironplcc"
    end
  end
