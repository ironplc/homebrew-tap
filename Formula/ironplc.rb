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
    version "0.167.0"
    desc "IronPLC Compiler"
    homepage "https://www.ironplc.com"
    license = "MIT"
  
    if OS.mac?
        url "https://github.com/ironplc/ironplc/releases/download/v0.167.0/ironplcc-x86_64-macos.tar.gz"
        sha256 "14bedc9d28b96d2f5ac62fdcf9f56c6eb58adcd1a42a205570f8a605d15944e7"
    elsif OS.linux?
        url "https://github.com/ironplc/ironplc/releases/download/v0.167.0/ironplcc-x86_64-linux-musl.tar.gz"
        sha256 "6058cb5a98a251040f820f3c7ec8d1aa335838372c849f9e57a1080ef1a6cad4"
    end
  
    def install
      bin.install "ironplcc"
      bin.install "ironplcvm"
    end
  end
