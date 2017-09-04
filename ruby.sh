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
gem install bigdecimal
gem install jekyll
gem install jekyll-mentions
gem install jekyll-paginate
gem install json
gem install github-pages
gen install pigments
gem install posix-spawn
gem install rake
gem install rouge
gem install uri
gem install yajl
