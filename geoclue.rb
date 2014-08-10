require "formula"

class Geoclue < Formula
  homepage "http://www.freedesktop.org/wiki/Software/GeoClue"
  url "https://launchpad.net/geoclue/trunk/0.12/+download/geoclue-0.12.0.tar.gz"
  sha1 "0c7d3322ac80e5032b8dd5826ad76517f34c92fd"

  depends_on :x11
  depends_on 'pkg-config' => :build
  depends_on 'glib'
  depends_on 'dbus-glib'
  depends_on 'gconf'
  depends_on 'libxslt'

  def install
    system "./configure", "--disable-debug",
                          "--disable-dependency-tracking",
                          "--disable-silent-rules",
                          "--prefix=#{prefix}"
    system "make", "install"
  end
end

