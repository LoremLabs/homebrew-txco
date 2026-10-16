class Txco < Formula
  desc "Programmable event chassis for composing operations with txcl"
  homepage "https://github.com/loremlabs/thanks-computer"
  version "0.2.48"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/loremlabs/thanks-computer/releases/download/v0.2.48/txco_0.2.48_darwin_arm64.tar.gz"
      sha256 "532e02fa59de7da63e43f8460720169d4eaac5a2385d61227df0af23743f6f20"
    end
    on_intel do
      url "https://github.com/loremlabs/thanks-computer/releases/download/v0.2.48/txco_0.2.48_darwin_amd64.tar.gz"
      sha256 "0dd02a75792c6b9a54971e6b4259768b810ac853ca8735d06b6a8704fa6f3d49"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/loremlabs/thanks-computer/releases/download/v0.2.48/txco_0.2.48_linux_arm64.tar.gz"
      sha256 "a637d95b35f313e30fddf287d7058fbe10d25ce15045f713b9e8e7378dc9221e"
    end
    on_intel do
      url "https://github.com/loremlabs/thanks-computer/releases/download/v0.2.48/txco_0.2.48_linux_amd64.tar.gz"
      sha256 "a6c07fbb21ff313fa7520ebc9788b7f12cc7dee28f2be6c472dac8a10d30b2b1"
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
