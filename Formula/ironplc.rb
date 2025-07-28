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
    version "0.124.0"
    desc "IronPLC Compiler"
    homepage "https://www.ironplc.com"
    license = "MIT"
  
    if OS.mac?
        url "https://github.com/ironplc/ironplc/releases/download/v0.124.0/ironplcc-x86_64-macos.tar.gz"
        sha256 "2384f5b85835ea940af791eb6a0a1c7d90681fb828732987cd8b4b337620c33e"
    elsif OS.linux?
        url "https://github.com/ironplc/ironplc/releases/download/v0.124.0/ironplcc-x86_64-linux-musl.tar.gz"
        sha256 "0fc87628b69520ca2d1b1f79c91f56d59a454d78c3a3adb7f7e9457d976b0562"
    end
  
    def install
      bin.install "ironplcc"
    end
  end
