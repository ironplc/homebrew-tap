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
    version "0.13.36"
    desc "IronPLC Compiler"
    homepage "https://www.ironplc.com"
    license = "MIT"
  
    if OS.mac?
        url "https://github.com/ironplc/ironplc/releases/download/v0.13.36/ironplcc-x86_64-macos.tar.gz"
        sha256 "8ebe94b27821c2c60a13ba31a68847f614211b9becb3d74767f7ee245f62702b"
    elsif OS.linux?
        url "https://github.com/ironplc/ironplc/releases/download/v0.13.36/ironplcc-x86_64-linux-musl.tar.gz"
        sha256 "493f3a70644d5c5f7e1689246b2b489e765dd8d434d92445505053fbfbd58b26"
    end
  
    def install
      bin.install "ironplcc"
    end
  end
