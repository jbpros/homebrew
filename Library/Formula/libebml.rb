require 'formula'

class Libebml < Formula
  # This is the official source, but it's frequently down. Use the mktoolnix mirror instead.
  # url 'http://dl.matroska.org/downloads/libebml/libebml-0.7.8.tar.bz2'
  url 'http://www.bunkus.org/videotools/mkvtoolnix/sources/libebml-1.2.0.tar.bz2'
  homepage 'http://www.matroska.org/'
  md5 '26fbaa556bb497c1134d33b84ab34443'

  def install
    system 'cp -r make/linux make/darwin'
    system "cd make/darwin && make install prefix=#{prefix}"
  end
end
