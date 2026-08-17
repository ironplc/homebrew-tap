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
    version "0.239.0"
    desc "IronPLC Compiler"
    homepage "https://www.ironplc.com"
    license "MIT"
  
    if OS.mac?
        url "https://github.com/ironplc/ironplc/releases/download/v0.239.0/ironplcc-x86_64-macos.tar.gz"
        sha256 "24177dc63b2711e65b8efdc6c2c8ec1bf98e098dacc2c1a448ece7844f63b2f7"
    elsif OS.linux?
        url "https://github.com/ironplc/ironplc/releases/download/v0.239.0/ironplcc-x86_64-linux-musl.tar.gz"
        sha256 "b47bd2e535f6387a0d5ac61e64f55f29af3308f346b5379108d4a9cc83853d64"
    end
  
    def install
      # Keep the binaries and their runtime resources together in libexec, then
      # symlink the executables onto the PATH. The compiler reads its bundled
      # compatibility libraries from <exedir>/resources/libs at runtime, and
      # current_exe() resolves the bin symlink back to libexec -- so the
      # libraries must sit beside the real binaries here, not in bin.
      libexec.install "ironplcc", "ironplcvm", "ironplcmcp", "ironplcdap", "resources"
      bin.install_symlink libexec/"ironplcc"
      bin.install_symlink libexec/"ironplcvm"
      bin.install_symlink libexec/"ironplcmcp"
      bin.install_symlink libexec/"ironplcdap"
    end
  end
