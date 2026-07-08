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
    version "0.228.0"
    desc "IronPLC Compiler"
    homepage "https://www.ironplc.com"
    license "MIT"
  
    if OS.mac?
        url "https://github.com/ironplc/ironplc/releases/download/v0.228.0/ironplcc-x86_64-macos.tar.gz"
        sha256 "a8802db75a3a5c524107aa0537af991a83b70ae88b0a141f7ac57f3535abf7f4"
    elsif OS.linux?
        url "https://github.com/ironplc/ironplc/releases/download/v0.228.0/ironplcc-x86_64-linux-musl.tar.gz"
        sha256 "7473e7b24be3efc58a2bcc03f7fdb811a508d635dc4f33222c70b8d44a775895"
    end
  
    def install
      bin.install "ironplcc"
      bin.install "ironplcvm"
      bin.install "ironplcmcp"
    end
  end
