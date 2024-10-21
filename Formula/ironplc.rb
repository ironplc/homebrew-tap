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
    version "0.84.0"
    desc "IronPLC Compiler"
    homepage "https://www.ironplc.com"
    license = "MIT"
  
    if OS.mac?
        url "https://github.com/ironplc/ironplc/releases/download/v0.84.0/ironplcc-x86_64-macos.tar.gz"
        sha256 "db6c0b52f6fe374f94969c83f5700bd2a87e9268fb49f4fed3efbe4ebea306ea"
    elsif OS.linux?
        url "https://github.com/ironplc/ironplc/releases/download/v0.84.0/ironplcc-x86_64-linux-musl.tar.gz"
        sha256 "fd894b507b0d24a79f9b414c789c04569314928652ce8c2491cb22efe72c5019"
    end
  
    def install
      bin.install "ironplcc"
    end
  end
