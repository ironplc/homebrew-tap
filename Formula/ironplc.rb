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
    version "0.146.0"
    desc "IronPLC Compiler"
    homepage "https://www.ironplc.com"
    license = "MIT"
  
    if OS.mac?
        url "https://github.com/ironplc/ironplc/releases/download/v0.146.0/ironplcc-x86_64-macos.tar.gz"
        sha256 "e87eb0522090aa87db504d63c3d515d20ffeccf8019f36c8a4183e561f8b2e31"
    elsif OS.linux?
        url "https://github.com/ironplc/ironplc/releases/download/v0.146.0/ironplcc-x86_64-linux-musl.tar.gz"
        sha256 "63688ea8cfd4f25ac9feaab891731f761d0c7fbe5a6ea2571213b0b05c37464e"
    end
  
    def install
      bin.install "ironplcc"
    end
  end
