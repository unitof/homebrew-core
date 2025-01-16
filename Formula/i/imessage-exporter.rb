class ImessageExporter < Formula
  desc "Command-line tool to export and inspect local iMessage database"
  homepage "https://github.com/ReagentX/imessage-exporter"
  url "https://github.com/ReagentX/imessage-exporter/archive/refs/tags/2.3.0.tar.gz"
  sha256 "b4e4b27b48bda00a0d30af3dfa1e5df4c7002cc36b379865f0842ab826600f03"
  license "GPL-3.0-only"

  bottle do
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "5dac74f814ec85458d2d5c5759a39bd3d98ad042d55594edacda8745f7832ab0"
    sha256 cellar: :any_skip_relocation, arm64_sonoma:  "2fdf5e4ab14fa41bbfa52d56d859c514709cfd81e03e8b1efabebabcfd3b3672"
    sha256 cellar: :any_skip_relocation, arm64_ventura: "00009028d064e8181350c3a35a391f9c02f8dc56a70f8528b81487dd440b7fe0"
    sha256 cellar: :any_skip_relocation, sonoma:        "393115686819f826fde76bd7bb9deea060c135c9dd1ec2d5035871760b4d63d7"
    sha256 cellar: :any_skip_relocation, ventura:       "668c52b48cbaf0e20a64cd20d22eec3aa2b8b305dd7133332fc69ab4bdf42f47"
    sha256 cellar: :any_skip_relocation, x86_64_linux:  "4d4725c13c585d2099c778c743cc9cdb429106cccc4bfcced9fc44890ca89de3"
  end

  depends_on "rust" => :build

  def install
    # manifest set to 0.0.0 for some reason, matching upstream build behavior
    # https://github.com/ReagentX/imessage-exporter/blob/develop/build.sh
    inreplace "imessage-exporter/Cargo.toml", "version = \"0.0.0\"",
                                              "version = \"#{version}\""
    system "cargo", "install", *std_cargo_args(path: "imessage-exporter")
  end

  test do
    assert_match version.to_s, shell_output(bin/"imessage-exporter --version")
    output = shell_output(bin/"imessage-exporter --diagnostics 2>&1")
    assert_match "Invalid configuration: Database not found", output
  end
end
