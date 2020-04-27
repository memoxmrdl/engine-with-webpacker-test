namespace :build do
  desc "Remove Webpack output folder public (public/engine_with_webpacker_test_tasks.rake)"
  task :clean_webpack_output_folder do
    puts "Destroying packs output folder ..."
    Dir.chdir(File.join(__dir__, "..", "..")) do
      system("rm -rf public/engine_with_webpacker_test_tasks")
    end
  end

  desc "Compile Webpacker"
  task :webpacker_compile do
    puts "Webpacker compiling..."
    system("bin/webpack")
  end

  desc "Build gem with webpacker compiled"
  task :gem do
    Rake::Task["app:build:clean_webpack_output_folder"].invoke
    system("bin/rails app:build:webpacker_compile")
    system("RAILS_ENV=test bin/rails app:build:webpacker_compile")

    puts "Building..."
    system("gem build engine_with_webpacker_test.gemspec --output=release.gem")
  end
end
