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
    version "0.246.0"
    desc "IronPLC Compiler"
    homepage "https://www.ironplc.com"
    license "MIT"
  
    if OS.mac?
        url "https://github.com/ironplc/ironplc/releases/download/v0.246.0/ironplcc-x86_64-macos.tar.gz"
        sha256 "3bfc2b4fca3df62a5cc468bdeb6c22c7e944f9b24051d8b0db8742a6981c8eb4"
    elsif OS.linux?
        url "https://github.com/ironplc/ironplc/releases/download/v0.246.0/ironplcc-x86_64-linux-musl.tar.gz"
        sha256 "ce38b328fc2b91f92ba337cb869d41f2b0552127d8c462907210f9005a8f4e93"
    end
  
    def install
      # Keep the binaries and their runtime resources together in libexec, then
      # symlink the executables onto the PATH. The compiler reads its bundled
      # compatibility libraries from <exedir>/resources/libs at runtime, and
      # current_exe() resolves the bin symlink back to libexec -- so the
      # libraries must sit beside the real binaries here, not in bin.
      # The SBOM sits beside the binaries it describes.
      libexec.install "ironplcc", "ironplcvm", "ironplcmcp", "ironplcvmd", "resources", "bom.cdx.json"
      bin.install_symlink libexec/"ironplcc"
      bin.install_symlink libexec/"ironplcvm"
      bin.install_symlink libexec/"ironplcmcp"
      bin.install_symlink libexec/"ironplcvmd"
    end
  end
