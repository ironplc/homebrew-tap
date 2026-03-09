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
    version "0.169.0"
    desc "IronPLC Compiler"
    homepage "https://www.ironplc.com"
    license = "MIT"
  
    if OS.mac?
        url "https://github.com/ironplc/ironplc/releases/download/v0.169.0/ironplcc-x86_64-macos.tar.gz"
        sha256 "fd8153c8b37b22a0441d37db4609ae5d63751b490f5fb12414e72f19af738ea9"
    elsif OS.linux?
        url "https://github.com/ironplc/ironplc/releases/download/v0.169.0/ironplcc-x86_64-linux-musl.tar.gz"
        sha256 "613ddfd2c004717ffa5711255800d9cae822c28032acb3b8b6e771d691f57062"
    end
  
    def install
      bin.install "ironplcc"
      bin.install "ironplcvm"
    end
  end
