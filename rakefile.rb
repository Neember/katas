require 'active_support/inflector'
require 'fileutils'
require 'awesome_print'

task :new do
  kata = ENV['KATA']
  abort "Error: Specify the kata name ie. rake new KATA=<NewKataName>\n".red if kata.nil?

  kata_dir = 'katas/' + kata.underscore
  abort "Error: template is a reserved word\n".red if kata_dir == 'template'
  abort "Error: Kata already exists at #{kata_dir}\n".red if File.exists? kata_dir

  FileUtils.cp_r(Dir['lib/template'], 'katas')
  FileUtils.mv 'katas/template', kata_dir

  puts "#{kata} created in katas directory at #{kata_dir}"
end

task :remove do
  kata = ENV['KATA']
  abort "Error: Specify the kata name ie. rake remove KATA=<KataName>\n".red if kata.nil?

  kata_dir = 'katas/' + kata.underscore
  abort "Error: No such kata #{kata}\n".red unless File.exists? kata_dir

  puts "#{kata} kata will be removed.".red
  puts "This is irreversible.".red
  print "Please type yes to continue. Typing anything else will abort the task: ".red
  response = STDIN.gets

  if response.chomp == 'yes'
    FileUtils.rm_r(kata_dir)
    puts "#{kata} removed"
  else
    puts "Rake task aborted."
    puts "No kata is harmed."
  end
end

task :judge do
  abort "Error: Please run this raketask within your kata directory."
end
