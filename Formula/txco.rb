class Txco < Formula
  desc "Programmable event chassis for composing operations with txcl"
  homepage "https://github.com/loremlabs/thanks-computer"
  version "0.2.36"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/loremlabs/thanks-computer/releases/download/v0.2.36/txco_0.2.36_darwin_arm64.tar.gz"
      sha256 "66d97559f1ae70e4bc58c13f28e5b1a62bb3bc60b7baf04d9718661c5296baa6"
    end
    on_intel do
      url "https://github.com/loremlabs/thanks-computer/releases/download/v0.2.36/txco_0.2.36_darwin_amd64.tar.gz"
      sha256 "3d980c36b8186cbd021f851018c0e3af0c50d8324082e42c7a8debd0eeee9df9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/loremlabs/thanks-computer/releases/download/v0.2.36/txco_0.2.36_linux_arm64.tar.gz"
      sha256 "170dd956841ada333ff82ea4e98e51d09c78aa9cb5df5981a4e57f0f0afb187b"
    end
    on_intel do
      url "https://github.com/loremlabs/thanks-computer/releases/download/v0.2.36/txco_0.2.36_linux_amd64.tar.gz"
      sha256 "baa310803c2925d8328d00de93c9c7b5a23d5b0f3acd5c54b69a729235905e8c"
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
