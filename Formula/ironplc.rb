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
    version "0.13.52"
    desc "IronPLC Compiler"
    homepage "https://www.ironplc.com"
    license = "MIT"
  
    if OS.mac?
        url "https://github.com/ironplc/ironplc/releases/download/v0.13.52/ironplcc-x86_64-macos.tar.gz"
        sha256 "09b032e9ffc3450d04ab3d39f2dbc0fa1d356aabbf49d720c066ac1c73a79249"
    elsif OS.linux?
        url "https://github.com/ironplc/ironplc/releases/download/v0.13.52/ironplcc-x86_64-linux-musl.tar.gz"
        sha256 "dfea0983bd7edd26eccec358d1fc08186a59ad4a139fa6481d5f1213637cf5b3"
    end
  
    def install
      bin.install "ironplcc"
    end
  end
