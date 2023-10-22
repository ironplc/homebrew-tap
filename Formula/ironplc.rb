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
    version "0.19.0"
    desc "IronPLC Compiler"
    homepage "https://www.ironplc.com"
    license = "MIT"
  
    if OS.mac?
        url "https://github.com/ironplc/ironplc/releases/download/v0.19.0/ironplcc-x86_64-macos.tar.gz"
        sha256 "0fb70b956a06a4430b5406c84bd3d64ce6de8e08311456512a5cb45238254a16"
    elsif OS.linux?
        url "https://github.com/ironplc/ironplc/releases/download/v0.19.0/ironplcc-x86_64-linux-musl.tar.gz"
        sha256 "add178695a06330433d78c2b065f3de203187fecdc3d9ff70b7a344cb5a6c425"
    end
  
    def install
      bin.install "ironplcc"
    end
  end
