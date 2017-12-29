# ##############################################################################
# Markup LaTeX
#
# Sections:
# - CLI
# - GUI
#
# ##############################################################################


# ==============================================================================
# LaTeX
# Because of the large number of packages installed with R, this is quick.
# ==============================================================================

sudo dnf install \
     fontawesome-fonts \
     latex2html \
     latexmk \
     texlive-bibtex-bin.x86_64 texlive-bibtex-doc \
     texlive-chktex \
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
     texlive-morefloats \
     texlive-multirow \
     texlive-paper \
     texlive-pdftex \
     texlive-siunitx \
     texlive-tabulary \
     texlive-texlive-en-doc \
     texlive-titlesec \
     texlive-tex \
     texlive-titling \
     texlive-ulem \
     texlive-units

# Classes ------------------------------
sudo dnf install \
     texlive-apa \
     texlive-beamer \
     texlive-ecv \
     texlive-elpres \
     texlive-talk\
     texlive-tufte-latex



# ==============================================================================
# GUI
# ==============================================================================

sudo dnf install texworks.x86_64
