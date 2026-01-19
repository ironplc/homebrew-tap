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
    version "0.151.0"
    desc "IronPLC Compiler"
    homepage "https://www.ironplc.com"
    license = "MIT"
  
    if OS.mac?
        url "https://github.com/ironplc/ironplc/releases/download/v0.151.0/ironplcc-x86_64-macos.tar.gz"
        sha256 "94337cef36d2eba7677df9481319615fafe02d5c5e41f6b78820f5e33e9c5c62"
    elsif OS.linux?
        url "https://github.com/ironplc/ironplc/releases/download/v0.151.0/ironplcc-x86_64-linux-musl.tar.gz"
        sha256 "c3af3aea358b53c582bcddb6dc59d5b7952e869d07deb3b557ef899a849a022d"
    end
  
    def install
      bin.install "ironplcc"
    end
  end
