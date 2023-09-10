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
    version "0.13.48"
    desc "IronPLC Compiler"
    homepage "https://www.ironplc.com"
    license = "MIT"
  
    if OS.mac?
        url "https://github.com/ironplc/ironplc/releases/download/v0.13.48/ironplcc-x86_64-macos.tar.gz"
        sha256 "5ac10791d5cc5aaef9c6d6c8a5d7713b81c0230fac9048116b15d0f0b65c782f"
    elsif OS.linux?
        url "https://github.com/ironplc/ironplc/releases/download/v0.13.48/ironplcc-x86_64-linux-musl.tar.gz"
        sha256 "aa7d533b82d56554a7f7164026cd76cb277791e25ccb07878c1a94d57b1d6437"
    end
  
    def install
      bin.install "ironplcc"
    end
  end
