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
    version "0.154.0"
    desc "IronPLC Compiler"
    homepage "https://www.ironplc.com"
    license = "MIT"
  
    if OS.mac?
        url "https://github.com/ironplc/ironplc/releases/download/v0.154.0/ironplcc-x86_64-macos.tar.gz"
        sha256 "550f4b073ef3c93f4f5ecd87e1f6b75caee68a73aedbb769d2e5638a5008f963"
    elsif OS.linux?
        url "https://github.com/ironplc/ironplc/releases/download/v0.154.0/ironplcc-x86_64-linux-musl.tar.gz"
        sha256 "cf5cf21e0dc0bc7d042d38cff6e418204ea85a1fad00ccc3c98a69b23663f133"
    end
  
    def install
      bin.install "ironplcc"
    end
  end
