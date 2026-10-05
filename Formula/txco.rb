class Txco < Formula
  desc "Programmable event chassis for composing operations with txcl"
  homepage "https://github.com/loremlabs/thanks-computer"
  version "0.2.43"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/loremlabs/thanks-computer/releases/download/v0.2.43/txco_0.2.43_darwin_arm64.tar.gz"
      sha256 "3cfd1731afde5c7b8e2ccbae0aad67f7f3558e8a0df30bcef91845eae083f353"
    end
    on_intel do
      url "https://github.com/loremlabs/thanks-computer/releases/download/v0.2.43/txco_0.2.43_darwin_amd64.tar.gz"
      sha256 "f41fb420a82d2d753d0565ed6336fd21839190db31fd754ea0b45e1b3b7158db"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/loremlabs/thanks-computer/releases/download/v0.2.43/txco_0.2.43_linux_arm64.tar.gz"
      sha256 "149c0c2f8ddfb8f4a3ae73151e3d063a6301809b237ec4e2c7216b011bf73452"
    end
    on_intel do
      url "https://github.com/loremlabs/thanks-computer/releases/download/v0.2.43/txco_0.2.43_linux_amd64.tar.gz"
      sha256 "d5a42b9f07f5ecb4bed58bd188dd54c0377881d325bb6a728d8c8dff4ba1663e"
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
