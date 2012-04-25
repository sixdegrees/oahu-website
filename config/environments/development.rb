MyApp::Application.configure do
  config.middleware.insert_before(Rack::Lock, Rack::LiveReload)

  # ...or, change some options...

  # config.middleware.insert_before(
  #   Rack::Lock, Rack::LiveReload,
  #   :min_delay => 500,
  #   :max_delay => 10000,
  #   :port => 56789,
  #   :host => 'oahu.dev',
  #   :ignore => [ %r{dont/modify\.html$} ]
  # )
end
