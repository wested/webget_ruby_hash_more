Gem::Specification.new do |s|

  s.name              = "webget_ruby_hash_more"
  s.summary           = "WebGet Ruby Gem: HashMore class to create a recursive hash"
  s.version           = "1.2.8"
  s.author            = "WebGet"
  s.email             = "webget@webget.com"
  s.homepage          = "http://webget.com/"
  s.signing_key       = '/home/webget/keys/certs/webget.com.rsa.private.key.and.certificate.pem'
  s.cert_chain        = ['/home/webget/keys/certs/webget.pem']

  s.platform          = Gem::Platform::RUBY
  s.require_path      = 'lib'
  s.has_rdoc          = true
  s.files             = ['lib/webget_ruby_hash_more.rb']
  s.test_files        = ['test/unit/webget_ruby_hash_more_test.rb']

end
