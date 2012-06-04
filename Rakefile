Dir['*/**/*.rake'].sort.reverse.each { |rake_file| load rake_file }

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
  Dir[File.expand_path("~/.motion/helpers/*.rb")].each {|file| 
    files << File.expand_path(file)
    }
  App.configs[:development].files= files 


  end
end