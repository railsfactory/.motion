Dir['*/**/*.rake'].sort.reverse.each { |sake| load sake }

Rake::Task['build:simulator'].enhance ['build:load_shake_files']
Rake::Task['build:device'].enhance ['build:load_shake_files']
Rake::Task['config'].enhance ['build:load_shake_files']



namespace :build do
  
  desc "Hello World"
  task :helloworld do
   puts "Hello World" 
end    
  
  desc "loads additional files to build process from shake"
  task :load_shake_files do
  files = App.configs[:development].files
files << File.expand_path("~/.motion/helpers/helper.rb")
App.configs[:development].files= files 
  end
end