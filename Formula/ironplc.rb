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
    version "0.83.0"
    desc "IronPLC Compiler"
    homepage "https://www.ironplc.com"
    license = "MIT"
  
    if OS.mac?
        url "https://github.com/ironplc/ironplc/releases/download/v0.83.0/ironplcc-x86_64-macos.tar.gz"
        sha256 "afc5df4821d78e93a463ea56d9d21fe36564c246cc86bb448fb11c4c40672e40"
    elsif OS.linux?
        url "https://github.com/ironplc/ironplc/releases/download/v0.83.0/ironplcc-x86_64-linux-musl.tar.gz"
        sha256 "e8b8a95beef6584b7be122c8959c4205f479c8b818ff63691d0e2cdb4650abab"
    end
  
    def install
      bin.install "ironplcc"
    end
  end
