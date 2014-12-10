namespace :travis do
  def verbose_system *args
    puts(args.join(' '))
    system(*args)
  end

  task :brfore_script do
    verbose_system("cp -f config/database.yml.travis config/database.yml")
    verbose_system("bundle exec rake db:drop db:create db:schema:load --trace 2>&1")
  end
end
