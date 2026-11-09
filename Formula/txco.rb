class Txco < Formula
  desc "Programmable event chassis for composing operations with txcl"
  homepage "https://github.com/loremlabs/thanks-computer"
  version "0.2.59"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/loremlabs/thanks-computer/releases/download/v0.2.59/txco_0.2.59_darwin_arm64.tar.gz"
      sha256 "86036fd93a1457f5ec3d47495cb42ed8b51828de692a3ab780642fb62b5c4b1f"
    end
    on_intel do
      url "https://github.com/loremlabs/thanks-computer/releases/download/v0.2.59/txco_0.2.59_darwin_amd64.tar.gz"
      sha256 "a31c8acf1dfa5c1b35b829c2b1a5d9a78b926f9a9fce8cd76d54dc274695fc0b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/loremlabs/thanks-computer/releases/download/v0.2.59/txco_0.2.59_linux_arm64.tar.gz"
      sha256 "0ed8c9f11f4ef52226828640c0c646cb6e2b9e1e9d5b0027f3d05d7859e5c66a"
    end
    on_intel do
      url "https://github.com/loremlabs/thanks-computer/releases/download/v0.2.59/txco_0.2.59_linux_amd64.tar.gz"
      sha256 "c3212c02d45134c3fae049818dabbf0d5a1008ed5438193c5d1c888ad5869704"
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
