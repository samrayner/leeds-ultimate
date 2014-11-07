namespace :db do
  task :export do
    ENV['FROM'] = 'leeds-ultimate' #site identifier
    ENV['TO']   = 'leeds-ultimate' #fixtures dir
    Rake::Task['comfortable_mexican_sofa:fixtures:export'].invoke
  end
end
