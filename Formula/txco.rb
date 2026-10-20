class Txco < Formula
  desc "Programmable event chassis for composing operations with txcl"
  homepage "https://github.com/loremlabs/thanks-computer"
  version "0.2.49"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/loremlabs/thanks-computer/releases/download/v0.2.49/txco_0.2.49_darwin_arm64.tar.gz"
      sha256 "b40767f0559e6f4abc44b2a42808e827b8f0587fa6bf4941c7f8e106aa13d16d"
    end
    on_intel do
      url "https://github.com/loremlabs/thanks-computer/releases/download/v0.2.49/txco_0.2.49_darwin_amd64.tar.gz"
      sha256 "c0e702dbd775729594428da3495e203d3f809c58dfb29b674a44db47aa0de429"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/loremlabs/thanks-computer/releases/download/v0.2.49/txco_0.2.49_linux_arm64.tar.gz"
      sha256 "469cdee2d003e3fb9b24dd97276c7c80f1448f1eb0f98bdb85ecf488ce70d886"
    end
    on_intel do
      url "https://github.com/loremlabs/thanks-computer/releases/download/v0.2.49/txco_0.2.49_linux_amd64.tar.gz"
      sha256 "454a4aedcba3d9731e50f4413a454855320b126f0551a4eda0dab1b3b5d29201"
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
