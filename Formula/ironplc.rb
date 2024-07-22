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
    version "0.71.0"
    desc "IronPLC Compiler"
    homepage "https://www.ironplc.com"
    license = "MIT"
  
    if OS.mac?
        url "https://github.com/ironplc/ironplc/releases/download/v0.71.0/ironplcc-x86_64-macos.tar.gz"
        sha256 "a51d455f61a93543f31c148b6435c43f4b4728b7d781d3b37b06c54e53bc956c"
    elsif OS.linux?
        url "https://github.com/ironplc/ironplc/releases/download/v0.71.0/ironplcc-x86_64-linux-musl.tar.gz"
        sha256 "f6b9585e5546a4f3311bc19667212798d6591765fb07c5aab4ff0459ffcd205a"
    end
  
    def install
      bin.install "ironplcc"
    end
  end
