# encoding: UTF-8

guard :bundler do
  watch('Gemfile')
end

#https://github.com/guard/guard-coffeescript
#Compile coffeescript into JS, still in build
guard 'coffeescript', :input => 'app/coffee', :output => 'public/assets/js' do 
  watch(%r{app/coffee/(.+)\.coffee$})
end

guard 'compass', :configuration_file => 'config/config.rb' do
  watch(%r{app/s[ac]ss/(.+)\.s[ac]ss$})
end


guard 'haml', :input => 'app/haml', :output => 'public' do
  watch %r{^app/haml/(.+)(\.html\.haml)}
end

#https://github.com/guard/guard-jammit
# guard 'jammit' do
#   watch(%r{app/(.+)\.js$})
#   watch(%r{app/(.+)\.css$})
#   watch(%r{build/(.+)\.js$})
#   watch(%r{build/(.+)\.css$})
# end


guard 'livereload',  :port => '35729', :apply_js_live => false, :apply_css_live => true, :grace_period => 0.5 do
  watch(%r{app/.+\.(erb|haml)})
  watch(%r{app/helpers/.+\.rb})
  watch(%r{(public/|app/assets).+\.(css|js|html)})
  watch(%r{(app/assets/.+\.css)\.s[ac]ss}) { |m| m[1] }
  watch(%r{(app/assets/.+\.js)\.coffee}) { |m| m[1] }
  watch(%r{config/locales/.+\.yml})
end

#https://github.com/guard/guard-s3
#https://github.com/guard/guard-rsync
#https://github.com/guard/guard-sprockets2
#https://github.com/guard/guard-pow
