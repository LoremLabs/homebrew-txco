class Txco < Formula
  desc "Programmable event chassis for composing operations with txcl"
  homepage "https://github.com/loremlabs/thanks-computer"
  version "0.2.64"
  license "MPL-2.0"

  # Prebuilt kegs from the release. Pouring one skips Homebrew's
  # build-from-source checks, so no Command Line Tools are needed.
  bottle do
    root_url "https://github.com/loremlabs/thanks-computer/releases/download/v0.2.64"
    sha256 cellar: :any_skip_relocation, arm64_monterey: "afb2e1c9fd46dc8fd1b9a6f4b8dec98de12b5c7f495ba242e779b1f27ca5b2a2"
    sha256 cellar: :any_skip_relocation, monterey:       "db18d714103f301355565fceaad763d4a657a8519d02796643e0f390528a5640"
    sha256 cellar: :any_skip_relocation, arm64_linux:    "087939a83dff4a045917308d363b7d50cd3a0c2bbd1746ef44be85b543386fdb"
    sha256 cellar: :any_skip_relocation, x86_64_linux:   "54c210b959eb68f52d2e4b1076a1fe4696e86c2ee411577771db75d737650c68"
  end

  on_macos do
    on_arm do
      url "https://github.com/loremlabs/thanks-computer/releases/download/v0.2.64/txco_0.2.64_darwin_arm64.tar.gz"
      sha256 "0864801cb3554ea5e921417d6f93b1c715c06227dcbb623b12d326fa8feea87d"
    end
    on_intel do
      url "https://github.com/loremlabs/thanks-computer/releases/download/v0.2.64/txco_0.2.64_darwin_amd64.tar.gz"
      sha256 "c48a7790084a9596f731062e37301c54c5e94c94e045d185778ba73ddfe87b2f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/loremlabs/thanks-computer/releases/download/v0.2.64/txco_0.2.64_linux_arm64.tar.gz"
      sha256 "1baf22cbae136c17df282ed9b23e8f4a801a873cfd2b518cc9bebf007972cbe5"
    end
    on_intel do
      url "https://github.com/loremlabs/thanks-computer/releases/download/v0.2.64/txco_0.2.64_linux_amd64.tar.gz"
      sha256 "40c6ba64470a42bc809145374f209689c6fcffdb60bdbac66c332280071493e8"
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
