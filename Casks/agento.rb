cask "agento" do
  version "0.1.1"

  on_arm do
    sha256 "78e55a3ef63d2116949234d7ca64176a9a03ffffe2653abe00f95d724ad2c8ac"

    url "https://github.com/shaharia-lab/agento/releases/download/desktop-v#{version}/Agento_#{version}_aarch64.dmg",
        verified: "github.com/shaharia-lab/agento/"
  end
  on_intel do
    sha256 "6ca3250a5baaeeac06278fc0afd689a8b845704f0a713fba5cc30cb6c1442326"

    url "https://github.com/shaharia-lab/agento/releases/download/desktop-v#{version}/Agento_#{version}_x64.dmg",
        verified: "github.com/shaharia-lab/agento/"
  end

  name "Agento"
  desc "Local dashboard and agent platform for Claude Code"
  homepage "https://github.com/shaharia-lab/agento"

  # The desktop releases are tagged `desktop-v*` and are published with
  # `--latest=false`, so the repo's Latest badge stays on the Go build's `v*`
  # release. Match the tag explicitly rather than following :latest.
  livecheck do
    url :url
    regex(/^desktop[._-]v?(\d+(?:\.\d+)+)$/i)
    strategy :git
  end

  # The formula in this tap installs the retiring Go/web build, which is a
  # different program that happens to share a name. Both can be installed at
  # once, so this is deliberately not a `conflicts_with`.
  depends_on macos: ">= :big_sur"

  app "Agento.app"

  # `~/.agento` is deliberately absent. It holds agento.db — every session,
  # agent, task and analytic the user has — and it is shared with the Go CLI,
  # which may still be installed. Zapping the app must never take the user's
  # history with it.
  zap trash: [
    "~/Library/Application Support/com.shaharialab.agento",
    "~/Library/Caches/com.shaharialab.agento",
    "~/Library/Preferences/com.shaharialab.agento.plist",
    "~/Library/Saved Application State/com.shaharialab.agento.savedState",
    "~/Library/WebKit/com.shaharialab.agento",
  ]
end
