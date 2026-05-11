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
    version "0.213.0"
    desc "IronPLC Compiler"
    homepage "https://www.ironplc.com"
    license = "MIT"
  
    if OS.mac?
        url "https://github.com/ironplc/ironplc/releases/download/v0.213.0/ironplcc-x86_64-macos.tar.gz"
        sha256 "9e5cf3839941de76123f938b08ca91c8d2b5bdc2b63149525ffec1550510e242"
    elsif OS.linux?
        url "https://github.com/ironplc/ironplc/releases/download/v0.213.0/ironplcc-x86_64-linux-musl.tar.gz"
        sha256 "458b174f90c73d027a7a3497afd5525c46d55f2d7a472abe0589969c1be11eb4"
    end
  
    def install
      bin.install "ironplcc"
      bin.install "ironplcvm"
      bin.install "ironplcmcp"
    end
  end
