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
    version "0.119.0"
    desc "IronPLC Compiler"
    homepage "https://www.ironplc.com"
    license = "MIT"
  
    if OS.mac?
        url "https://github.com/ironplc/ironplc/releases/download/v0.119.0/ironplcc-x86_64-macos.tar.gz"
        sha256 "d15492c41d532018fc0fe5f19e44ad90e8add32f2a2c66d2c1c250d3d1861603"
    elsif OS.linux?
        url "https://github.com/ironplc/ironplc/releases/download/v0.119.0/ironplcc-x86_64-linux-musl.tar.gz"
        sha256 "70280af7b134b0c1f94ead94b24a44a6840f0cfe79c3e902f75f067665ff8851"
    end
  
    def install
      bin.install "ironplcc"
    end
  end
