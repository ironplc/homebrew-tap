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
    version "0.142.0"
    desc "IronPLC Compiler"
    homepage "https://www.ironplc.com"
    license = "MIT"
  
    if OS.mac?
        url "https://github.com/ironplc/ironplc/releases/download/v0.142.0/ironplcc-x86_64-macos.tar.gz"
        sha256 "357de5dce97cbc7e0c65e5e79bc6c7f22af2f9ea23ff18612a803ac9ba398cc3"
    elsif OS.linux?
        url "https://github.com/ironplc/ironplc/releases/download/v0.142.0/ironplcc-x86_64-linux-musl.tar.gz"
        sha256 "9fb889f275f01978d70550e3a148cc183f463518278f32cd8519b3fb2103d68f"
    end
  
    def install
      bin.install "ironplcc"
    end
  end
