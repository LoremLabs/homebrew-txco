class Txco < Formula
  desc "Programmable event chassis for composing operations with txcl"
  homepage "https://github.com/loremlabs/thanks-computer"
  version "0.2.35"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/loremlabs/thanks-computer/releases/download/v0.2.35/txco_0.2.35_darwin_arm64.tar.gz"
      sha256 "690e5ae83df4302dd7fb7081a0e500cb3e89a9123c27403e620065cc097f321f"
    end
    on_intel do
      url "https://github.com/loremlabs/thanks-computer/releases/download/v0.2.35/txco_0.2.35_darwin_amd64.tar.gz"
      sha256 "fc000992f28f81c4a011fd8ce2e6d3ac502e984d3e5903aac0d943463c38e8a3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/loremlabs/thanks-computer/releases/download/v0.2.35/txco_0.2.35_linux_arm64.tar.gz"
      sha256 "9a6159c34d49a78467f99bc41b57d49f4a02787958d7dc71fc24e3508b54eba6"
    end
    on_intel do
      url "https://github.com/loremlabs/thanks-computer/releases/download/v0.2.35/txco_0.2.35_linux_amd64.tar.gz"
      sha256 "37a82661c0e4ad9a4283a90c4a930244d23d479b5b143b6e1dee1fd986378342"
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
