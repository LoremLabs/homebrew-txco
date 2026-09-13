class Txco < Formula
  desc "Programmable event chassis for composing operations with txcl"
  homepage "https://github.com/loremlabs/thanks-computer"
  version "0.2.28"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/loremlabs/thanks-computer/releases/download/v0.2.28/txco_0.2.28_darwin_arm64.tar.gz"
      sha256 "f5d4c813c40179a4d70ae9e4586b4bc4517f5249c969b37ed1fdb71025a80d28"
    end
    on_intel do
      url "https://github.com/loremlabs/thanks-computer/releases/download/v0.2.28/txco_0.2.28_darwin_amd64.tar.gz"
      sha256 "55647088df1d0622c8632795d0784900a5b8e0d3277ceaa4a5bf7f2445b1be44"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/loremlabs/thanks-computer/releases/download/v0.2.28/txco_0.2.28_linux_arm64.tar.gz"
      sha256 "5b9153f61c50ae54d8c09cce23953ebd71c8034bac41f1e5ddf744ef1be1c7a2"
    end
    on_intel do
      url "https://github.com/loremlabs/thanks-computer/releases/download/v0.2.28/txco_0.2.28_linux_amd64.tar.gz"
      sha256 "53e3c0378cb5eec7f94850b232df2ca6eb70b84756fc34881ade3c024d7766dc"
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
