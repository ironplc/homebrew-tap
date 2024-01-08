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
    version "0.41.0"
    desc "IronPLC Compiler"
    homepage "https://www.ironplc.com"
    license = "MIT"
  
    if OS.mac?
        url "https://github.com/ironplc/ironplc/releases/download/v0.41.0/ironplcc-x86_64-macos.tar.gz"
        sha256 "cccfd778c7161c62b7f7c3cb880defc89b2757264c62f5cf5f3e7ec041acc5f6"
    elsif OS.linux?
        url "https://github.com/ironplc/ironplc/releases/download/v0.41.0/ironplcc-x86_64-linux-musl.tar.gz"
        sha256 "1baf6aba97ea485d199a5e523743e7f3104dcea50c24911516a3360063ee52ff"
    end
  
    def install
      bin.install "ironplcc"
    end
  end
