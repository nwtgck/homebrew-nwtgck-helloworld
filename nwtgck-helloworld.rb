# Documentation: https://github.com/Homebrew/homebrew/blob/master/share/doc/homebrew/Formula-Cookbook.md
#                http://www.rubydoc.info/github/Homebrew/homebrew/master/frames
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!

class NwtgckHelloworld < Formula
  desc "This is hello world"
  homepage "https://github.com/nwtgck/public-download"
  url "https://github.com/nwtgck/public-download/raw/master/HelloWorldJar.jar"
  sha1 "abe88272d52532ed4cf5778a4d00a0e9bcb0e990"
  version '0.2'

  depends_on :java => '1.8+'
  # depends_on :x11 # if your formula requires any X11/XQuartz components

  def install
    if build.head?
      puts 'cant head install'
    else
	    libexec.install 'HelloWorldJar.jar'
    end
    bin.write_jar_script libexec/"HelloWorldJar.jar", "nwtgck-hello"
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! It's enough to just replace
    # "false" with the main program this formula installs, but it'd be nice if you
    # were more thorough. Run the test with `brew test nwtgck-helloworld`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "false"
  end
end
