class Storeenv < Formula
  desc "Git for .env files: encrypted, versioned environment secrets"
  homepage "https://storeenv.app"
  version "0.1.2"
  license "ISC"

  on_macos do
    on_arm do
      url "https://github.com/tusharrr0302/homebrew-storeenv/releases/download/v0.1.2/storeenv-darwin-arm64.tar.gz"
      sha256 "be7408cbc70938ff98d8c6ea9e3c78ab89af04c6dd27f9680d701947fc5638f7"
    end
    on_intel do
      url "https://github.com/tusharrr0302/homebrew-storeenv/releases/download/v0.1.2/storeenv-darwin-x64.tar.gz"
      sha256 "79ca07358158e1a0a5d291e90a6387cf7659f0d91ddd725d34fde3f7f9b381e1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tusharrr0302/homebrew-storeenv/releases/download/v0.1.2/storeenv-linux-arm64.tar.gz"
      sha256 "03d89cfd7928804fbda8894add757ef3ab84b4137073a168005d8673d3b9b281"
    end
    on_intel do
      url "https://github.com/tusharrr0302/homebrew-storeenv/releases/download/v0.1.2/storeenv-linux-x64.tar.gz"
      sha256 "256bd88e165e602cdecb8da37e65d44418ba450f9625ffc62987fe75720a0670"
    end
  end

  def install
    bin.install "storeenv"
  end

  test do
    assert_equal version.to_s, shell_output("#{bin}/storeenv --version").strip
  end
end
