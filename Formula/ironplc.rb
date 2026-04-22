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
    version "0.206.0"
    desc "IronPLC Compiler"
    homepage "https://www.ironplc.com"
    license = "MIT"
  
    if OS.mac?
        url "https://github.com/ironplc/ironplc/releases/download/v0.206.0/ironplcc-x86_64-macos.tar.gz"
        sha256 "1dab534bf778a4d65974ce3538a82e2b02300f2dbf12a98375ae665b2064c6d9"
    elsif OS.linux?
        url "https://github.com/ironplc/ironplc/releases/download/v0.206.0/ironplcc-x86_64-linux-musl.tar.gz"
        sha256 "9416303ca35d841a634afacf188273823da9fae27ceaa04b8ad26324cd9d8f13"
    end
  
    def install
      bin.install "ironplcc"
      bin.install "ironplcvm"
      bin.install "ironplcmcp"
    end
  end
