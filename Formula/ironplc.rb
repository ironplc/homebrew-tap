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
    version "0.35.0"
    desc "IronPLC Compiler"
    homepage "https://www.ironplc.com"
    license = "MIT"
  
    if OS.mac?
        url "https://github.com/ironplc/ironplc/releases/download/v0.35.0/ironplcc-x86_64-macos.tar.gz"
        sha256 "10182ba12a5ba21dc84383f97a0bfb9eddbaa8f30b294397626464db30e9c51d"
    elsif OS.linux?
        url "https://github.com/ironplc/ironplc/releases/download/v0.35.0/ironplcc-x86_64-linux-musl.tar.gz"
        sha256 "5c854e31369c624c77ef4ae37e6c631bb17f87a94632d89362a2bab7b50a2a0f"
    end
  
    def install
      bin.install "ironplcc"
    end
  end
