class Txco < Formula
  desc "Programmable event chassis for composing operations with txcl"
  homepage "https://github.com/loremlabs/thanks-computer"
  version "0.2.11"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/loremlabs/thanks-computer/releases/download/v0.2.11/txco_0.2.11_darwin_arm64.tar.gz"
      sha256 "25c2bc646237c502c1ae669938ba15ac8937f378a1f85e57d2c186cf49d0ef9d"
    end
    on_intel do
      url "https://github.com/loremlabs/thanks-computer/releases/download/v0.2.11/txco_0.2.11_darwin_amd64.tar.gz"
      sha256 "cc84bb536df9f081559bd31869b000837c1a4e5139743445ee886bf6560845bf"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/loremlabs/thanks-computer/releases/download/v0.2.11/txco_0.2.11_linux_arm64.tar.gz"
      sha256 "17bca20976496e89f5a662c79f8fb84593611b310de9da930cf959d9cf65bb57"
    end
    on_intel do
      url "https://github.com/loremlabs/thanks-computer/releases/download/v0.2.11/txco_0.2.11_linux_amd64.tar.gz"
      sha256 "3e4582589e717e6cd65695d5570281dd8f6e82bfe5798bb0d5a4ab720811a40c"
    end
  end

  def install
    bin.install "txco"
    # `thanks` is the same binary under a second name; argv[0] dispatches it
    # into room mode (`thanks <args>` == `txco room <args>`). install_symlink
    # lets Homebrew manage the second command with no post-install script.
    bin.install_symlink "txco" => "thanks"
  end

  test do
    system "#{bin}/txco", "--help"
    system "#{bin}/thanks", "--help"
  end
end
