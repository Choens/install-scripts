# ##############################################################################
# Ruby
#
# I would like to remove Ruby from my life. Save some space. Have more fun.
#
# Sections:
# - DNF
# - Gem
#
# ##############################################################################



# ==============================================================================
# DNF
# =============================================================================

sudo dnf install \
     rubygem-bundler \
     ruby.x86_64 ruby-devel.x86_64 ruby-irb \
     rubygems \
     rubygem-rake \
     rubygem-rdiscount.x86_64



# ==============================================================================
# Gem
# =============================================================================

# TODO: For 1st Friday, etc. I need to have working gemfiles.
gem install bigdecimal --user-install
gem install ffi --user-install
gem install jekyll --user-install
gem install jekyll-mentions  --user-install
gem install jekyll-paginate  --user-install
gem install json  --user-install
gem install kramdown --user-install
gem install github-pages  --user-install
gen install pigments  --user-install
gem install posix-spawn  --user-install
gem install rake  --user-install
gem install rouge  --user-install
gem install uri  --user-install
gem install yajl  --user-install
