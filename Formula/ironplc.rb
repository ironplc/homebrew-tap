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
    version "0.13.47"
    desc "IronPLC Compiler"
    homepage "https://www.ironplc.com"
    license = "MIT"
  
    if OS.mac?
        url "https://github.com/ironplc/ironplc/releases/download/v0.13.47/ironplcc-x86_64-macos.tar.gz"
        sha256 "333c943bec71bf8ff6171fc4737203f956b05516225dbc102657ac9d76bdf33e"
    elsif OS.linux?
        url "https://github.com/ironplc/ironplc/releases/download/v0.13.47/ironplcc-x86_64-linux-musl.tar.gz"
        sha256 "e21321c837c6e06721cc873473a3b57e1b984044ec1f7a33216d864d50b93e87"
    end
  
    def install
      bin.install "ironplcc"
    end
  end
