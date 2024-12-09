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
    version "0.91.0"
    desc "IronPLC Compiler"
    homepage "https://www.ironplc.com"
    license = "MIT"
  
    if OS.mac?
        url "https://github.com/ironplc/ironplc/releases/download/v0.91.0/ironplcc-x86_64-macos.tar.gz"
        sha256 "d9a579013d9db07b7ea83b3cc8d2ab59db6b2085771a04513547a9c969b1177e"
    elsif OS.linux?
        url "https://github.com/ironplc/ironplc/releases/download/v0.91.0/ironplcc-x86_64-linux-musl.tar.gz"
        sha256 "c3ae189b93a80d25f46ad834deeee0432449305b5e06e62c10c4f6f160823d6f"
    end
  
    def install
      bin.install "ironplcc"
    end
  end
