require 'pathname'
require 'rbtrace'

worker_processes 1

listen 4567
listen "/tmp/unicorn.sock"

app_path = Pathname.new(File.expand_path(File.dirname(__FILE__))).parent.to_s
working_directory app_path

pid File.join(app_path, 'tmp', 'unicorn.pid')

stdout_path File.join(app_path, 'log', 'unicorn.stdout.log')
stderr_path File.join(app_path, 'log', 'unicorn.stderr.log')

