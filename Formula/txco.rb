class Txco < Formula
  desc "Programmable event chassis for composing operations with txcl"
  homepage "https://github.com/loremlabs/thanks-computer"
  version "0.2.30"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/loremlabs/thanks-computer/releases/download/v0.2.30/txco_0.2.30_darwin_arm64.tar.gz"
      sha256 "35c5b37454abf5e77322e3e8f7814156e933b888fdc6b0c7d4293c11f76f5f3b"
    end
    on_intel do
      url "https://github.com/loremlabs/thanks-computer/releases/download/v0.2.30/txco_0.2.30_darwin_amd64.tar.gz"
      sha256 "53796f90d8e0c37a0ab45e088faf611ce76c07ded889795586bdc8ae4c312bf7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/loremlabs/thanks-computer/releases/download/v0.2.30/txco_0.2.30_linux_arm64.tar.gz"
      sha256 "375ac6a5dcd28315b85f470c47e2aa2c7d7ec70bd39460d903333e141c658cc9"
    end
    on_intel do
      url "https://github.com/loremlabs/thanks-computer/releases/download/v0.2.30/txco_0.2.30_linux_amd64.tar.gz"
      sha256 "89c40f92dcc79149b31086a7e72c0c6851a6363b6ba0d0cc60156a35d7a84239"
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
