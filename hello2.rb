# Documentation: https://docs.brew.sh/Formula-Cookbook.html
#                http://www.rubydoc.info/github/Homebrew/brew/master/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!

HOMEBREW_HELLO2_VERSION="0.1"
class Hello2 < Formula
  desc ""
  homepage "http://raspberrypi3.example.jp/~osabe/samples/"
  url "http://raspberrypi3.example.jp/~osabe/samples/hello2-0.1.tar.gz"
  sha256 "29f79cae521c21bc4f764d2d10376c8dfe1d35a96805507d109d48e9743eacad"

  version HOMEBREW_HELLO2_VERSION
  
  # depends_on "cmake" => :build

  def install
    # ENV.deparallelize  # if your formula fails when building in parallel

    # Dec 13, 2017 by Osabe -----------------------------------------------
    # Remove unrecognized options if warned by configure
    # system "./configure", "--disable-debug",
    #                       "--disable-dependency-tracking",
    #                       "--disable-silent-rules",
    #                       "--prefix=#{prefix}"
    # system "cmake", ".", *std_cmake_args
    #system "make", "install" # if this fails, try separate make/make install steps
    system "make"
    bin.install "hello2"
    # ---------------------------------------------------------------------
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test hello2`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "false"
  end
end
