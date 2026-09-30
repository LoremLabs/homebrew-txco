class Txco < Formula
  desc "Programmable event chassis for composing operations with txcl"
  homepage "https://github.com/loremlabs/thanks-computer"
  version "0.2.31"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/loremlabs/thanks-computer/releases/download/v0.2.31/txco_0.2.31_darwin_arm64.tar.gz"
      sha256 "bb89a05d10644655714d5ebc8aed3b422adb80d3c507b06a3113d71046c11d5d"
    end
    on_intel do
      url "https://github.com/loremlabs/thanks-computer/releases/download/v0.2.31/txco_0.2.31_darwin_amd64.tar.gz"
      sha256 "925280c4f60de83cea0fbf583ecbcaf14849c49ec9d70e4665e87b6fa06d6639"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/loremlabs/thanks-computer/releases/download/v0.2.31/txco_0.2.31_linux_arm64.tar.gz"
      sha256 "425d9441d447a237b2a4aff801212c162ee7f4aa5fcc93148d016692aefa5748"
    end
    on_intel do
      url "https://github.com/loremlabs/thanks-computer/releases/download/v0.2.31/txco_0.2.31_linux_amd64.tar.gz"
      sha256 "83ee78948c47193c50a134ea76bc0f2c187faeef695bebd525f4a590b0ad7a84"
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
