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
    version "0.248.0"
    desc "IronPLC Compiler"
    homepage "https://www.ironplc.com"
    license "MIT"
  
    if OS.mac?
        url "https://github.com/ironplc/ironplc/releases/download/v0.248.0/ironplcc-x86_64-macos.tar.gz"
        sha256 "19581c6ddb05180e66d535dce691b531a877a95bcd9459e09def699479266563"
    elsif OS.linux?
        url "https://github.com/ironplc/ironplc/releases/download/v0.248.0/ironplcc-x86_64-linux-musl.tar.gz"
        sha256 "02dab41ad5ebadada8622c46aede604f164f34d2ea76ad1ca8b6c10a76d9e394"
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
