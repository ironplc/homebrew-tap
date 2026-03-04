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
    version "0.161.0"
    desc "IronPLC Compiler"
    homepage "https://www.ironplc.com"
    license = "MIT"
  
    if OS.mac?
        url "https://github.com/ironplc/ironplc/releases/download/v0.161.0/ironplcc-x86_64-macos.tar.gz"
        sha256 "8098942bb4b31500708f23e275b74ae6814eeb087a40447a9484735c4fab03e3"
    elsif OS.linux?
        url "https://github.com/ironplc/ironplc/releases/download/v0.161.0/ironplcc-x86_64-linux-musl.tar.gz"
        sha256 "50c06a563ee68c190fa2ebf4761f017625ff1c551e244b3af78dd8c7f1c00718"
    end
  
    def install
      bin.install "ironplcc"
      bin.install "ironplcvm"
    end
  end
