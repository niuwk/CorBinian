addpath(genpath(pwd))
addpath([pwd,'/demo'])
addpath([pwd,'/maxent'])
addpath([pwd,'/dich_gauss'])
addpath([pwd,'/util'])
addpath([pwd,'/third_party'])
addpath([pwd,'/third_party/minfunc_2012'])
addpath([pwd,'/third_party/minfunc_2012/minFunc'])
addpath([pwd,'/third_party/minfunc_2012/minfunc/compiled'])
addpath([pwd,'/third_party/minfunc_2012/autoDif'])

%compile C_Code  if neceessary
compile_c=1;
if compile_c
    warning('Compiling mex-files, this might take a while');
    cd ./maxent/maxent_MCMC/MCMCbase/C_Code
    ! make all
    cd ../../../..
else
    warning('Not compiling mex-files-- set compile_c=1 in file startup.m to compile');
end

