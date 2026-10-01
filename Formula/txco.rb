class Txco < Formula
  desc "Programmable event chassis for composing operations with txcl"
  homepage "https://github.com/loremlabs/thanks-computer"
  version "0.2.33"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/loremlabs/thanks-computer/releases/download/v0.2.33/txco_0.2.33_darwin_arm64.tar.gz"
      sha256 "18aba4f2439702e54991541fc40072c13844d138201f9beb9aba58f20e6fab38"
    end
    on_intel do
      url "https://github.com/loremlabs/thanks-computer/releases/download/v0.2.33/txco_0.2.33_darwin_amd64.tar.gz"
      sha256 "854a9e2f4c324783c06871d86fefaf00f1623df32d6f8dc567bd4c3d85b94a2d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/loremlabs/thanks-computer/releases/download/v0.2.33/txco_0.2.33_linux_arm64.tar.gz"
      sha256 "c34adc057fecb470d982ede176fcd4a2b907878f037a604e811441bd3eeb138b"
    end
    on_intel do
      url "https://github.com/loremlabs/thanks-computer/releases/download/v0.2.33/txco_0.2.33_linux_amd64.tar.gz"
      sha256 "8bf5a46aaa3313d91294272a67708dafcebcea9cad195c4cf40fd0c7d25f4ae2"
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
