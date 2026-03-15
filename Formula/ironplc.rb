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
    version "0.175.0"
    desc "IronPLC Compiler"
    homepage "https://www.ironplc.com"
    license = "MIT"
  
    if OS.mac?
        url "https://github.com/ironplc/ironplc/releases/download/v0.175.0/ironplcc-x86_64-macos.tar.gz"
        sha256 "820cc7fef11dfa8387517a9c8256c3cc90ed783d62c1240edff46ee5ff917b66"
    elsif OS.linux?
        url "https://github.com/ironplc/ironplc/releases/download/v0.175.0/ironplcc-x86_64-linux-musl.tar.gz"
        sha256 "152d576a3588d978f6fa8430f0203c4748d79b7d7ed7c41aeb7be4c575e0ad18"
    end
  
    def install
      bin.install "ironplcc"
      bin.install "ironplcvm"
    end
  end
