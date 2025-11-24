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
    version "0.143.0"
    desc "IronPLC Compiler"
    homepage "https://www.ironplc.com"
    license = "MIT"
  
    if OS.mac?
        url "https://github.com/ironplc/ironplc/releases/download/v0.143.0/ironplcc-x86_64-macos.tar.gz"
        sha256 "b6ddd617efcc4ae8186904564badb49a26b58993700f4e2d970b754c650a5dc3"
    elsif OS.linux?
        url "https://github.com/ironplc/ironplc/releases/download/v0.143.0/ironplcc-x86_64-linux-musl.tar.gz"
        sha256 "07b45598fcae6cd8607b64f6409638797abf73e1721176f5faf1884982511c0c"
    end
  
    def install
      bin.install "ironplcc"
    end
  end
