class VideoCompare < Formula
  desc "Split screen video comparison tool using FFmpeg and SDL2"
  homepage "https://github.com/pixop/video-compare"
  url "https://github.com/pixop/video-compare/archive/refs/tags/20220412.tar.gz"
  sha256 "425eafd0095e8043c240658618c14c8a4e92954c41cd1adf5a3b01d275a3581c"
  license "GPL-2.0-only"

  depends_on "ffmpeg"
  depends_on "sdl2"
  depends_on "sdl2_ttf"

  def install
    system "make"
    bin.install "video-compare"
  end

  test do
    testvideo = test_fixtures("test.gif") # GIF is valid ffmpeg input format
    system "#{bin}/video-compare", testvideo, testvideo
  end
end
