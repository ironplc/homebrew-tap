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
    version "0.45.0"
    desc "IronPLC Compiler"
    homepage "https://www.ironplc.com"
    license = "MIT"
  
    if OS.mac?
        url "https://github.com/ironplc/ironplc/releases/download/v0.45.0/ironplcc-x86_64-macos.tar.gz"
        sha256 "0fb81d329e3ab7a944719ccf3a11371661c2be50ed77bc558c3fa52c6da56f08"
    elsif OS.linux?
        url "https://github.com/ironplc/ironplc/releases/download/v0.45.0/ironplcc-x86_64-linux-musl.tar.gz"
        sha256 "d27c3ecb1955586f8f774dd623acee75ccee4c00028a137300540030e4e1ae0f"
    end
  
    def install
      bin.install "ironplcc"
    end
  end
