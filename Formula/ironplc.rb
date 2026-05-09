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
    version "0.211.0"
    desc "IronPLC Compiler"
    homepage "https://www.ironplc.com"
    license = "MIT"
  
    if OS.mac?
        url "https://github.com/ironplc/ironplc/releases/download/v0.211.0/ironplcc-x86_64-macos.tar.gz"
        sha256 "fb30302970162e482a5a4ba94e393bf6960a3c274700e734b479dff44219c936"
    elsif OS.linux?
        url "https://github.com/ironplc/ironplc/releases/download/v0.211.0/ironplcc-x86_64-linux-musl.tar.gz"
        sha256 "1b51d004f090145f0740a79848ace86175bc92331e4752a0ba6d348053194383"
    end
  
    def install
      bin.install "ironplcc"
      bin.install "ironplcvm"
      bin.install "ironplcmcp"
    end
  end
