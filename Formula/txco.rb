class Txco < Formula
  desc "Programmable event chassis for composing operations with txcl"
  homepage "https://github.com/loremlabs/thanks-computer"
  version "0.2.15"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/loremlabs/thanks-computer/releases/download/v0.2.15/txco_0.2.15_darwin_arm64.tar.gz"
      sha256 "e428d4fafe8ff3f62a9c915c7cd88169bb50aa8f6cabb0857d4d93b79faddff5"
    end
    on_intel do
      url "https://github.com/loremlabs/thanks-computer/releases/download/v0.2.15/txco_0.2.15_darwin_amd64.tar.gz"
      sha256 "3304d919c234d06683ee299234a5070f8d8cbc77fbc9b861a8897e5119787718"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/loremlabs/thanks-computer/releases/download/v0.2.15/txco_0.2.15_linux_arm64.tar.gz"
      sha256 "74431dc15294fe7a34aa788f1d85e0e7613d826c7a114e4fb72b3caa54e18a18"
    end
    on_intel do
      url "https://github.com/loremlabs/thanks-computer/releases/download/v0.2.15/txco_0.2.15_linux_amd64.tar.gz"
      sha256 "06a28e97b01d784972fde22a1318245c6c9d1b738a243bed0cd82d58d5a3d67a"
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
