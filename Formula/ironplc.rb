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
    version "0.13.29"
    desc "IronPLC Compiler"
    homepage "https://www.ironplc.com"
    license = "MIT"
  
    if OS.mac?
        url "https://github.com/ironplc/ironplc/releases/download/v0.13.29/ironplcc-x86_64-macos.tar.gz"
        sha256 "5effaa311486a4a8e83b846f13dbd028ae72ac6fdd5ea9da533b63ecc4436871"
    elsif OS.linux?
        url "https://github.com/ironplc/ironplc/releases/download/v0.13.29/ironplcc-x86_64-linux-musl.tar.gz"
        sha256 "dce9aac044d285dcab8283ec02b0133a3879afb00046ea172f6104b10955b571"
    end
  
    def install
      bin.install "ironplcc"
    end
  end
