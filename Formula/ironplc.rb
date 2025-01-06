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
    version "0.95.0"
    desc "IronPLC Compiler"
    homepage "https://www.ironplc.com"
    license = "MIT"
  
    if OS.mac?
        url "https://github.com/ironplc/ironplc/releases/download/v0.95.0/ironplcc-x86_64-macos.tar.gz"
        sha256 "22b448ba2d1398f53c8d61fc32d7c65fc980b3e0d5fbf395e44fd68f8e350e88"
    elsif OS.linux?
        url "https://github.com/ironplc/ironplc/releases/download/v0.95.0/ironplcc-x86_64-linux-musl.tar.gz"
        sha256 "eb71c6bc17023a084d4084978ae07892fb4a38dd92f2f7fa92d6c12ffd62681a"
    end
  
    def install
      bin.install "ironplcc"
    end
  end
