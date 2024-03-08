class Manim < Formula
  include Language::Python::Virtualenv

  desc "Animation engine for explanatory math videos"
  homepage "https://www.manim.community"
  url "https://files.pythonhosted.org/packages/06/62/7802597b93048a8ab543d835338739ce8f4e96e0410b63e29c86deb7cceb/manim-0.18.0.tar.gz"
  sha256 "56788066bc1aec2471a988c91e337194fd38d1035ed1b4d10838bfe64bd26af8"
  license "MIT"
  head "https://github.com/manimCommunity/manim.git", branch: "main"

  depends_on "cairo" => :build # for cairo.h
  depends_on "ninja" => :build
  depends_on "ffmpeg"
  depends_on "py3cairo"
  depends_on "python@3.11"

  on_arm do
    depends_on "pango"
    depends_on "scipy"
  end

  resource "click" do
    url "https://files.pythonhosted.org/packages/96/d3/f04c7bfcf5c1862a2a5b845c6b2b360488cf47af55dfa79c98f6a6bf98b5/click-8.1.7.tar.gz"
    sha256 "ca9853ad459e787e2192211578cc907e7594e294c7ccc834310722b41b9ca6de"
  end

  resource "cloup" do
    url "https://files.pythonhosted.org/packages/e4/95/1cdc36a95ffb2a48542b7439d5a7ba6cba0fa90208be913c01edcf267ca5/cloup-3.0.4.tar.gz"
    sha256 "658111e2f49b8256a822dac5fa0205bf64109fdefc435f39923490a32b13ec09"
  end

  resource "Cython" do
    url "https://files.pythonhosted.org/packages/68/09/ffb61f29b8e3d207c444032b21328327d753e274ea081bc74e009827cc81/Cython-3.0.8.tar.gz"
    sha256 "8333423d8fd5765e7cceea3a9985dd1e0a5dfeb2734629e1a2ed2d6233d39de6"
  end

  resource "decorator" do
    url "https://files.pythonhosted.org/packages/66/0c/8d907af351aa16b42caae42f9d6aa37b900c67308052d10fdce809f8d952/decorator-5.1.1.tar.gz"
    sha256 "637996211036b6385ef91435e4fae22989472f9d571faba8927ba8253acbc330"
  end

  resource "glcontext" do
    url "https://files.pythonhosted.org/packages/5e/cc/b32b0cd5cd527a53ad9a90cd1cb32d1ff97127265cd026c052f8bb9e8014/glcontext-2.5.0.tar.gz"
    sha256 "0f70d4be0cdd2b532a16da76c8f786b6367754a4086aaadffdbf3e37badbad02"
  end

  resource "isosurfaces" do
    url "https://files.pythonhosted.org/packages/88/b6/765e74b3ce5b40cf21b95eef7e60c7755314538908287ec2d0767b17bd2d/isosurfaces-0.1.0.tar.gz"
    sha256 "fa1b44e5e59d2f429add49289ab89e36f8dcda49b7badd99e0beea273be331f4"
  end

  resource "manim" do
    url "https://files.pythonhosted.org/packages/06/62/7802597b93048a8ab543d835338739ce8f4e96e0410b63e29c86deb7cceb/manim-0.18.0.tar.gz"
    sha256 "56788066bc1aec2471a988c91e337194fd38d1035ed1b4d10838bfe64bd26af8"
  end

  resource "ManimPango" do
    url "https://files.pythonhosted.org/packages/48/5b/d1249c3d90324a1d4dce4711e507c8ec87addca61d1304ffa55513783ba3/ManimPango-0.5.0.tar.gz"
    sha256 "299913bbccb0f15954b64401cf9df24607e1a01edda589ea77de1ed4cc2bc284"
  end

  resource "mapbox-earcut" do
    url "https://files.pythonhosted.org/packages/97/f9/38f72877be0a5bf35c04a75c8ceb261589f2807eeaffaa22055079f53839/mapbox_earcut-1.0.1.tar.gz"
    sha256 "9f155e429a22e27387cfd7a6372c3a3865aafa609ad725e2c4465257f154a438"
  end

  resource "markdown-it-py" do
    url "https://files.pythonhosted.org/packages/38/71/3b932df36c1a044d397a1f92d1cf91ee0a503d91e470cbd670aa66b07ed0/markdown-it-py-3.0.0.tar.gz"
    sha256 "e3f60a94fa066dc52ec76661e37c851cb232d92f9886b15cb560aaada2df8feb"
  end

  resource "mdurl" do
    url "https://files.pythonhosted.org/packages/d6/54/cfe61301667036ec958cb99bd3efefba235e65cdeb9c84d24a8293ba1d90/mdurl-0.1.2.tar.gz"
    sha256 "bb413d29f5eea38f31dd4754dd7377d4465116fb207585f97bf925588687c1ba"
  end

  resource "moderngl" do
    url "https://files.pythonhosted.org/packages/25/e7/d731fc4b58cb729d337c829a62aa17bc2b70438fa59745c8c9f51e279f42/moderngl-5.10.0.tar.gz"
    sha256 "119c8d364dde3cd8d1c09f237ed4916617ba759954a1952df4694e51ee4f6511"
  end

  resource "moderngl-window" do
    url "https://files.pythonhosted.org/packages/f8/06/c47b5101242189d75ca2a37e74f4c833a48872678fb097741f02b06c659b/moderngl-window-2.4.1.tar.gz"
    sha256 "691de764640b87af3d851257be544e1cafddb9cfa47cb144d0c1f1a0ed0a3936"
  end

  resource "multipledispatch" do
    url "https://files.pythonhosted.org/packages/fe/3e/a62c3b824c7dec33c4a1578bcc842e6c30300051033a4e5975ed86cc2536/multipledispatch-1.0.0.tar.gz"
    sha256 "5c839915465c68206c3e9c473357908216c28383b425361e5d144594bf85a7e0"
  end

  resource "networkx" do
    url "https://files.pythonhosted.org/packages/c4/80/a84676339aaae2f1cfdf9f418701dd634aef9cc76f708ef55c36ff39c3ca/networkx-3.2.1.tar.gz"
    sha256 "9f1bb5cf3409bf324e0a722c20bdb4c20ee39bf1c30ce8ae499c8502b0b5e0c6"
  end

  resource "numpy" do
    url "https://files.pythonhosted.org/packages/d0/b0/13e2b50c95bfc1d5ee04925eb5c105726c838f922d0aaddd57b7c8be0f8b/numpy-1.26.3.tar.gz"
    sha256 "697df43e2b6310ecc9d95f05d5ef20eacc09c7c4ecc9da3f235d39e71b7da1e4"
  end

  resource "pillow" do
    url "https://files.pythonhosted.org/packages/f8/3e/32cbd0129a28686621434cbf17bb64bf1458bfb838f1f668262fefce145c/pillow-10.2.0.tar.gz"
    sha256 "e87f0b2c78157e12d7686b27d63c070fd65d994e8ddae6f328e0dcf4a0cd007e"
  end

  resource "pycairo" do
    url "https://files.pythonhosted.org/packages/c7/7c/de4d40316ee563e4f15a0f05f28c8458833fbef80c4588b9dd51f39b78ee/pycairo-1.25.1.tar.gz"
    sha256 "7e2be4fbc3b4536f16db7a11982cbf713e75069a4d73d44fe5a49b68423f5c0c"
  end

  resource "pydub" do
    url "https://files.pythonhosted.org/packages/fe/9a/e6bca0eed82db26562c73b5076539a4a08d3cffd19c3cc5913a3e61145fd/pydub-0.25.1.tar.gz"
    sha256 "980a33ce9949cab2a569606b65674d748ecbca4f0796887fd6f46173a7b0d30f"
  end

  resource "pyglet" do
    url "https://files.pythonhosted.org/packages/05/e8/8db7a61dbb2fe7e1f060f0592ad339036809cd255c5c5ece6d9a8dad43ff/pyglet-1.5.28.zip"
    sha256 "68bff532226b0e8f54dfcc2f6df7d0e463b451fae97fe9fa4af4131d34afbc00"
  end

  resource "Pygments" do
    url "https://files.pythonhosted.org/packages/55/59/8bccf4157baf25e4aa5a0bb7fa3ba8600907de105ebc22b0c78cfbf6f565/pygments-2.17.2.tar.gz"
    sha256 "da46cec9fd2de5be3a8a784f434e4c4ab670b4ff54d605c4c2717e9d49c4c367"
  end

  resource "pyobjc-core" do
    url "https://files.pythonhosted.org/packages/50/d5/0b93cb9dc94ab4b78b2b7aa54c80f037e4de69897fff81a5ededa91d2704/pyobjc-core-10.1.tar.gz"
    sha256 "1844f1c8e282839e6fdcb9a9722396c1c12fb1e9331eb68828a26f28a3b2b2b1"
  end

  resource "pyobjc-framework-Cocoa" do
    url "https://files.pythonhosted.org/packages/5d/1d/964a0da846d49511489bd99ed705f9d85c5081fc832d0dba384c4c0d2fb2/pyobjc-framework-Cocoa-10.1.tar.gz"
    sha256 "8faaf1292a112e488b777d0c19862d993f3f384f3927dc6eca0d8d2221906a14"
  end

  resource "pyrr" do
    url "https://files.pythonhosted.org/packages/e5/7f/2af23f61340972116e4efabc3ac6e02c8bad7f7315b3002c278092963f17/pyrr-0.10.3.tar.gz"
    sha256 "3c0f7b20326e71f706a610d58f2190fff73af01eef60c19cb188b186f0ec7e1d"
  end

  resource "rich" do
    url "https://files.pythonhosted.org/packages/a7/ec/4a7d80728bd429f7c0d4d51245287158a1516315cadbb146012439403a9d/rich-13.7.0.tar.gz"
    sha256 "5cb5123b5cf9ee70584244246816e9114227e0b98ad9176eede6ad54bf5403fa"
  end

  resource "scipy" do
    url "https://files.pythonhosted.org/packages/30/85/cdbf2c3c460fe5aae812917866392068a88d02f07de0fe31ce738734c477/scipy-1.12.0.tar.gz"
    sha256 "4bf5abab8a36d20193c698b0f1fc282c1d083c94723902c447e5d2f1780936a3"
  end

  resource "screeninfo" do
    url "https://files.pythonhosted.org/packages/ec/bb/e69e5e628d43f118e0af4fc063c20058faa8635c95a1296764acc8167e27/screeninfo-0.8.1.tar.gz"
    sha256 "9983076bcc7e34402a1a9e4d7dabf3729411fd2abb3f3b4be7eba73519cd2ed1"
  end

  resource "skia-pathops" do
    url "https://files.pythonhosted.org/packages/37/15/fa6de52d9cb3a44158431d4cce870e7c2a56cdccedc8fa1262cbf61d4e1e/skia-pathops-0.8.0.post1.zip"
    sha256 "a056249de2f61fa55116b9ee55513c6a36b878aee00c91450e404d1606485cbb"
  end

  resource "srt" do
    url "https://files.pythonhosted.org/packages/66/b7/4a1bc231e0681ebf339337b0cd05b91dc6a0d701fa852bb812e244b7a030/srt-3.5.3.tar.gz"
    sha256 "4884315043a4f0740fd1f878ed6caa376ac06d70e135f306a6dc44632eed0cc0"
  end

  resource "svgelements" do
    url "https://files.pythonhosted.org/packages/5d/29/1c93c94a2289675ba2ff898612f9c9a03f46d69f253bdf4da0dfc08a599d/svgelements-1.9.6.tar.gz"
    sha256 "7c02ad6404cd3d1771fd50e40fbfc0550b0893933466f86a6eb815f3ba3f37f7"
  end

  resource "tqdm" do
    url "https://files.pythonhosted.org/packages/62/06/d5604a70d160f6a6ca5fd2ba25597c24abd5c5ca5f437263d177ac242308/tqdm-4.66.1.tar.gz"
    sha256 "d88e651f9db8d8551a62556d3cff9e3034274ca5d66e93197cf2490e2dcb69c7"
  end

  resource "typing-extensions" do
    url "https://files.pythonhosted.org/packages/0c/1d/eb26f5e75100d531d7399ae800814b069bc2ed2a7410834d57374d010d96/typing_extensions-4.9.0.tar.gz"
    sha256 "23478f88c37f27d76ac8aee6c905017a143b0b1b886c3c9f66bc2fd94f9f5783"
  end

  resource "watchdog" do
    url "https://files.pythonhosted.org/packages/95/a6/d6ef450393dac5734c63c40a131f66808d2e6f59f6165ab38c98fbe4e6ec/watchdog-3.0.0.tar.gz"
    sha256 "4d98a320595da7a7c5a18fc48cb633c2e73cda78f93cac2ef42d42bf609a33f9"
  end

  def install
    virtualenv_install_with_resources
  end

  test do
    (testpath/"testscene.py").write <<~EOS
      from manim import *

      class CreateCircle(Scene):
          def construct(self):
              circle = Circle()  # create a circle
              circle.set_fill(PINK, opacity=0.5)  # set the color and transparency
              self.play(Create(circle))  # show the circle on screen
    EOS

    system bin/"manim", "-ql", "#{testpath}/testscene.py", "CreateCircle"
    assert_predicate testpath/"media/videos/testscene/480p15/CreateCircle.mp4", :exist?
  end
end
