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
class IronPlc < Formula
    version "0.13.28"
    desc "IronPLC Compiler"
    homepage "https://www.ironplc.com"
    license = "MIT"
  
    if OS.mac?
        url "https://github.com/ironplc/ironplc/releases/download/v0.13.28/ironplcc-x86_64-macos.tar.gz"
        sha256 "8e07b8c4bd0787e2b626d7d0db04c70e3f341f6e6240cd2e1863844f76d53b25"
    elsif OS.linux?
        url "https://github.com/ironplc/ironplc/releases/download/v0.13.28/ironplcc-x86_64-linux-musl.tar.gz"
        sha256 "640bb1683cc63e4afcd94be0b36bb08abd03f2068b2367421da7a9932e512bf8"
    end
  
    def install
      bin.install "ironplcc"
    end
  end