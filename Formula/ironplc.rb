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
    version "0.134.0"
    desc "IronPLC Compiler"
    homepage "https://www.ironplc.com"
    license = "MIT"
  
    if OS.mac?
        url "https://github.com/ironplc/ironplc/releases/download/v0.134.0/ironplcc-x86_64-macos.tar.gz"
        sha256 "a7121f842d9835abb80c201505cd85bcd4af11b0f8b026773c41b8b5182eed66"
    elsif OS.linux?
        url "https://github.com/ironplc/ironplc/releases/download/v0.134.0/ironplcc-x86_64-linux-musl.tar.gz"
        sha256 "9ab0a884b76ba29ff58c035b7465cb40efd65f225e0f21010ea9b360a541c766"
    end
  
    def install
      bin.install "ironplcc"
    end
  end
