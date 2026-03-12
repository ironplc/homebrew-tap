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
    version "0.174.0"
    desc "IronPLC Compiler"
    homepage "https://www.ironplc.com"
    license = "MIT"
  
    if OS.mac?
        url "https://github.com/ironplc/ironplc/releases/download/v0.174.0/ironplcc-x86_64-macos.tar.gz"
        sha256 "47822c337e8bb91eebdf889c0067c9c76719592fd311cbe4ecf139d488df2f7c"
    elsif OS.linux?
        url "https://github.com/ironplc/ironplc/releases/download/v0.174.0/ironplcc-x86_64-linux-musl.tar.gz"
        sha256 "2cd08b7723a988c6f6a3733021723a4530df54356690ed0282f7bf5b9bb866d8"
    end
  
    def install
      bin.install "ironplcc"
      bin.install "ironplcvm"
    end
  end
