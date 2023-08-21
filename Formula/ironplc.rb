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
    version "0.13.44"
    desc "IronPLC Compiler"
    homepage "https://www.ironplc.com"
    license = "MIT"
  
    if OS.mac?
        url "https://github.com/ironplc/ironplc/releases/download/v0.13.44/ironplcc-x86_64-macos.tar.gz"
        sha256 "96c9cf75779a15f0d426264262c3aecef14e8a9ad2304a35b4b4e3709261db59"
    elsif OS.linux?
        url "https://github.com/ironplc/ironplc/releases/download/v0.13.44/ironplcc-x86_64-linux-musl.tar.gz"
        sha256 "b9db85460b55e6e97499266fc83b29a018244c5f3d86cbb4151707e32deb53b5"
    end
  
    def install
      bin.install "ironplcc"
    end
  end
