class Txco < Formula
  desc "Programmable event chassis for composing operations with txcl"
  homepage "https://github.com/loremlabs/thanks-computer"
  version "0.2.62"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/loremlabs/thanks-computer/releases/download/v0.2.62/txco_0.2.62_darwin_arm64.tar.gz"
      sha256 "da231c74bcb10c0ba61670823e3d36b66c9c4d53b07e79101c2e30b346db3adb"
    end
    on_intel do
      url "https://github.com/loremlabs/thanks-computer/releases/download/v0.2.62/txco_0.2.62_darwin_amd64.tar.gz"
      sha256 "1cc08c8406f692bab1986387c37b4d3f8a67fd872e94da3f0290a0b78fd5c485"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/loremlabs/thanks-computer/releases/download/v0.2.62/txco_0.2.62_linux_arm64.tar.gz"
      sha256 "a0ddaa0c3fd70b85a43b53f8f8fbc72e878c65b19f79f4c27f7505501c3c30ff"
    end
    on_intel do
      url "https://github.com/loremlabs/thanks-computer/releases/download/v0.2.62/txco_0.2.62_linux_amd64.tar.gz"
      sha256 "1d4a21d46153e7b276ceff3cd0d9481f6dd49a9a4e23ad9f5b8e1b27acd24617"
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
