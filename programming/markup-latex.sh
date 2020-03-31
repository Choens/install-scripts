# ##############################################################################
# Markup LaTeX
#
# Sections:
# - LaTeX
# - LaTeX Classes
# - GUI
#
# ##############################################################################


# ==============================================================================
# LaTeX
# Because of the large number of packages installed with R, this is quick.
# ==============================================================================
sudo dnf install -y \
     fontawesome-fonts \
     latex2html \
     latexmk \
     texlive-bibtex-bin.x86_64 texlive-bibtex-doc \
     texlive-chktex \
     texlive-collection-latexextra \
     texlive-ctablestack \
     texlive-datenumber \
     texlive-droid \
     texlive-fontawesome \
     texlive-framed \
     texlive-inconsolata \
     texlive-lacheck texlive-lacheck-bin.x86_64 \
     texlive-latexdiff-bin texlive-latexdiff-doc \
     texlive-latexdiff \
     texlive-latex-make \
     texlive-luatex \
     texlive-lipsum \
     texlive-makecell \
     texlive-morefloats \
     texlive-paper \
     texlive-pdftex \
     texlive-siunitx \
     texlive-tabu \
     texlive-tabulary \
     texlive-threeparttable texlive-threeparttablex \
     texlive-texlive-en-doc \
     texlive-titlesec \
     texlive-tex \
     texlive-titling \
     texlive-ulem \
     texlive-units \
     texlive-wrapfig



# ==============================================================================
# LaTeX Classes
# ==============================================================================

sudo dnf install -y \
     texlive-apa \
     texlive-beamer \
     texlive-ecv \
     texlive-elpres \
     texlive-talk\
     texlive-tufte-latex



# ==============================================================================
# GUI
# ==============================================================================
sudo dnf install -y texworks
