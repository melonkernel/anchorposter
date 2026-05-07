$pdf_mode = 5;          # 5 = XeLaTeX
$xelatex = 'xelatex -interaction=nonstopmode -file-line-error -halt-on-error %O %S';
$pdf_previewer = 'open -a Preview';
@default_files = ('poster.tex', 'better-poster.tex');
