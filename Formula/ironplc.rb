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
    version "0.48.0"
    desc "IronPLC Compiler"
    homepage "https://www.ironplc.com"
    license = "MIT"
  
    if OS.mac?
        url "https://github.com/ironplc/ironplc/releases/download/v0.48.0/ironplcc-x86_64-macos.tar.gz"
        sha256 "52da36d4642af533789b43825eb9ef766cc0d28090ec3e583a9d5495cdca29df"
    elsif OS.linux?
        url "https://github.com/ironplc/ironplc/releases/download/v0.48.0/ironplcc-x86_64-linux-musl.tar.gz"
        sha256 "b7a4b833af12d2ad3f6c32762ee6f36cbe6729ddf8346ce1e6b70ff8dcfae125"
    end
  
    def install
      bin.install "ironplcc"
    end
  end
