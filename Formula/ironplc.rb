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
    version "0.187.0"
    desc "IronPLC Compiler"
    homepage "https://www.ironplc.com"
    license = "MIT"
  
    if OS.mac?
        url "https://github.com/ironplc/ironplc/releases/download/v0.187.0/ironplcc-x86_64-macos.tar.gz"
        sha256 "52bba8a5832ed6b61aa3dc116c38c7e0389f0cd4381d617a0f3b2d5be6628bea"
    elsif OS.linux?
        url "https://github.com/ironplc/ironplc/releases/download/v0.187.0/ironplcc-x86_64-linux-musl.tar.gz"
        sha256 "e4e2ca10405c533df608eec4fc55ce823ced26b75e346314c316aec01cd1b523"
    end
  
    def install
      bin.install "ironplcc"
      bin.install "ironplcvm"
    end
  end
