class Txco < Formula
  desc "Programmable event chassis for composing operations with txcl"
  homepage "https://github.com/loremlabs/thanks-computer"
  version "0.2.37"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/loremlabs/thanks-computer/releases/download/v0.2.37/txco_0.2.37_darwin_arm64.tar.gz"
      sha256 "bfd2236ae6720ac035e64077e2bf719ad1c1e7b90a808875be14ef86458cd7b1"
    end
    on_intel do
      url "https://github.com/loremlabs/thanks-computer/releases/download/v0.2.37/txco_0.2.37_darwin_amd64.tar.gz"
      sha256 "46cf30eedc05b866fcafed07e32743ca0d6d85935705c8d0cfe201daf1fbd716"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/loremlabs/thanks-computer/releases/download/v0.2.37/txco_0.2.37_linux_arm64.tar.gz"
      sha256 "f53ef1748578926ff7f1c949d3939ad6f32e8ef1ddd1c0a663fdf70875761b3c"
    end
    on_intel do
      url "https://github.com/loremlabs/thanks-computer/releases/download/v0.2.37/txco_0.2.37_linux_amd64.tar.gz"
      sha256 "f4cf6fab5a6fdb2d1c5eddd1dc60ecebdfec12c647f6164e548d850691b8d37c"
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
