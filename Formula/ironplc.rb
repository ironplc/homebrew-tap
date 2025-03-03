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
    version "0.106.0"
    desc "IronPLC Compiler"
    homepage "https://www.ironplc.com"
    license = "MIT"
  
    if OS.mac?
        url "https://github.com/ironplc/ironplc/releases/download/v0.106.0/ironplcc-x86_64-macos.tar.gz"
        sha256 "6b1b4e3e94dcfe35b650bfa9651df5b1aa36752bd31fbd7d65732e565cf91ad3"
    elsif OS.linux?
        url "https://github.com/ironplc/ironplc/releases/download/v0.106.0/ironplcc-x86_64-linux-musl.tar.gz"
        sha256 "8f1c7e391df4c718727f5cd909ed0e5b64db3e04b3bcebc406ca796d5477cf90"
    end
  
    def install
      bin.install "ironplcc"
    end
  end
