cp .vim ~
touch .vimrc
cd ~/.vim/RNPlugins/command-t/ruby/command-t/
make clean
rake clean 
ruby -e 'puts "#{RUBY_VERSION}-p#{RUBY_PATCHLEVEL}"'
ruby extconf.rb
make
