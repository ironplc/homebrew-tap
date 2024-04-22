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
    version "0.57.0"
    desc "IronPLC Compiler"
    homepage "https://www.ironplc.com"
    license = "MIT"
  
    if OS.mac?
        url "https://github.com/ironplc/ironplc/releases/download/v0.57.0/ironplcc-x86_64-macos.tar.gz"
        sha256 "6643cbd89bbf9a1c9c95cea9a0887168c8f64a46b1099476b0814d4dbe309b47"
    elsif OS.linux?
        url "https://github.com/ironplc/ironplc/releases/download/v0.57.0/ironplcc-x86_64-linux-musl.tar.gz"
        sha256 "6e3c1712e014d544cd5d38b3c0644288ad2f17ffaed118fd46046ea778b093e9"
    end
  
    def install
      bin.install "ironplcc"
    end
  end
