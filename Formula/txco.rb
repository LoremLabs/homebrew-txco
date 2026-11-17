class Txco < Formula
  desc "Programmable event chassis for composing operations with txcl"
  homepage "https://github.com/loremlabs/thanks-computer"
  version "0.2.61"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/loremlabs/thanks-computer/releases/download/v0.2.61/txco_0.2.61_darwin_arm64.tar.gz"
      sha256 "a76a36d2e7e40bf4ed70a10d2ed7d06c9592319576ff22730d38bc9da1ea9ce1"
    end
    on_intel do
      url "https://github.com/loremlabs/thanks-computer/releases/download/v0.2.61/txco_0.2.61_darwin_amd64.tar.gz"
      sha256 "3b6463fde61b35de0af3db90df10730c4afe1461d99bcff9031d1e607e0f080d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/loremlabs/thanks-computer/releases/download/v0.2.61/txco_0.2.61_linux_arm64.tar.gz"
      sha256 "79acdd8e2bc41364e35f42958dba187f81e649389e890a2d7a7edfdebffd5432"
    end
    on_intel do
      url "https://github.com/loremlabs/thanks-computer/releases/download/v0.2.61/txco_0.2.61_linux_amd64.tar.gz"
      sha256 "fd2f3d1eb9b78b87e0871e218e8acc45257e2b22da53650281a60f337b0a15f5"
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
