% compile separate chapters

chap = {...
'shannon', ...
'fourier', ...
'meshes', ...
'wavelets', ...
'meshes-multires', ...
'approximation', ...
'compression', ...
'denoising', ...
'variational-priors', ...
'inverse-problems', ...
'sparse-regularization', ...
'convex-analysis', ...
'convex-optimization', ...
'sparse-theory', ...
'compressed-sensing', ...
'machine-learning', ...
'deep-learning', ...
'optimal-transport', ...
};


cd ..
for i=1:length(chap)
    str = ['/Library/TeX/texbin/pdflatex -jobname=chapters-pdf/' chap{i} ' "\includeonly{chapters/' chap{i} '}\input{FundationsDataScience}"'];
    strbib = ['/Library/TeX/texbin/bibtex chapters-pdf/' chap{i}];
    system(str);
    system(strbib);
    system(str);
    system(str);
end
cd chapters-pdf/


system('rm *.log');
system('rm *.aux');
system('rm *.toc');
system('rm *.out');
system('rm *.bbl');
system('rm *.blg');

system('rm ../chapters/*.aux');