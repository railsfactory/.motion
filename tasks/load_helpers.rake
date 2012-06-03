
=begin
Rake::Task['build:simulator'].enhance ['build:load_shake_files']
Rake::Task['build:device'].enhance ['build:load_shake_files']




namespace :build do
  desc "loads additional files to build process from shake"
  task :load_shake_files do
  files = App.configs[:development].files
files << "~/.motion/helpers/helper.rb"
App.configs[:development].files= files 
  
#    Dir.glob("ui/**/*.{storyboard,xib}").each do |r|
#      extension = File.extname(r)
#      basename = File.basename(r, extension)
#      
#      new_extension = (extension == ".xib") ? ".nib" : ".storyboardc"
#      new_filename = basename + new_extension
#      
#      system "ibtool --compile resources/#{new_filename} #{r}"
    end
  end
end

=end