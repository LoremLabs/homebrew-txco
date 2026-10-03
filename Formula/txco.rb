class Txco < Formula
  desc "Programmable event chassis for composing operations with txcl"
  homepage "https://github.com/loremlabs/thanks-computer"
  version "0.2.38"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/loremlabs/thanks-computer/releases/download/v0.2.38/txco_0.2.38_darwin_arm64.tar.gz"
      sha256 "acc21eab0a273ebb96b78f906f4ac093c79168ae432393e1dcacaa929bf238fb"
    end
    on_intel do
      url "https://github.com/loremlabs/thanks-computer/releases/download/v0.2.38/txco_0.2.38_darwin_amd64.tar.gz"
      sha256 "063e66352072ae37a10fa8db01d1a207c63159c3203428c4a646c4b7c36c6ed2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/loremlabs/thanks-computer/releases/download/v0.2.38/txco_0.2.38_linux_arm64.tar.gz"
      sha256 "86cfb313b5889bc1e5057b86060c35f8995fbfbf90bb7be2cc91e8c81506ec40"
    end
    on_intel do
      url "https://github.com/loremlabs/thanks-computer/releases/download/v0.2.38/txco_0.2.38_linux_amd64.tar.gz"
      sha256 "fed68fb4f2bc905c0540322af6b558f251e1b101a048dc0fed9e8d7fb4d24c72"
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
