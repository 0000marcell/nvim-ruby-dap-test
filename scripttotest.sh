# back up your current configuration
mv ~/.config/nvim ~/.config/nvim-backup
# clone my configuration
git clone git@github.com:0000marcell/nvim-ruby-dap-configuration.git
# synlinc the configuration
ln -sr nvim-ruby-dap-configuration/nvim/ ~/.config/
# install packer 
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim
# clone example code
git clone git@github.com:0000marcell/nvim-ruby-dap-test.git
# install example code dependencies
cd nvim-ruby-dap-test
bundle install
