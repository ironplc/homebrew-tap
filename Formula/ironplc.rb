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
    version "0.160.0"
    desc "IronPLC Compiler"
    homepage "https://www.ironplc.com"
    license = "MIT"
  
    if OS.mac?
        url "https://github.com/ironplc/ironplc/releases/download/v0.160.0/ironplcc-x86_64-macos.tar.gz"
        sha256 "5ad1980d28dc809d6e99fb82ddfb7d0f4725901c86991f44fc7be6c6d45f95a8"
    elsif OS.linux?
        url "https://github.com/ironplc/ironplc/releases/download/v0.160.0/ironplcc-x86_64-linux-musl.tar.gz"
        sha256 "9e799f0b3df2afdfe74327c31163a77537174b211037ed05c4a97936a8490ac7"
    end
  
    def install
      bin.install "ironplcc"
      bin.install "ironplcvm"
    end
  end
