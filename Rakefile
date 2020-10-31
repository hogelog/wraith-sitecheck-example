require "chrome_diff"

SITE_CHECK_CONF = {
  domains: [
    "http://localhost:9292",
    "https://sitecheck-example.herokuapp.com",
  ],
  sizes: [
    [320, 480],
    [600, 400],
  ],
  paths: {
    home: "/",
    foobar: "/foobar",
  },
  options: {
    fuzz: 5,
  }
}

desc "Check site differences"
task :site_check do
  ChromeDiff::SiteChecker.new(**SITE_CHECK_CONF).run
end
