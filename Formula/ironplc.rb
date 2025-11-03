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
    version "0.140.0"
    desc "IronPLC Compiler"
    homepage "https://www.ironplc.com"
    license = "MIT"
  
    if OS.mac?
        url "https://github.com/ironplc/ironplc/releases/download/v0.140.0/ironplcc-x86_64-macos.tar.gz"
        sha256 "b252fab4a0ae115474b135c9d8ace93479b73b22240a8f53cce7d1def2efef8d"
    elsif OS.linux?
        url "https://github.com/ironplc/ironplc/releases/download/v0.140.0/ironplcc-x86_64-linux-musl.tar.gz"
        sha256 "43dc2154b7a2dd1eb8ef0ef26e8fc1c48b02be74f825b2961bd3ae3870b060f8"
    end
  
    def install
      bin.install "ironplcc"
    end
  end
