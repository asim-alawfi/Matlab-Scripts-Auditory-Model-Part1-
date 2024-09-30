function varargout=ChangeBranchParameters(funcs,branch,ind,varargin)
%% Change parameters for continuation along branch and create first two points
%
% $Id: ChangeBranchParameters.m 346 2019-05-13 05:41:50Z jansieber $
%
default={'contpar',[],'dir',[],'step',0.01,'correc',true,...    %'newpars',[],...
    'outputfuncs',false,'usercond',[]};
[options,pass_on]=dde_set_options(default,varargin,'pass_on');
newbranch=replace_branch_pars(branch,options.contpar,pass_on);
pini=branch.point(ind);
suc=true;
if isempty(options.dir) && ~isempty(newbranch.parameter.free)
    options.dir=newbranch.parameter.free(1);
end
% newfuncs=funcs;
% if ~isempty(options.newpars)
%     assert(options.outputfuncs,'ChangeBranchParameters:output',...
%         'ChangeBranchParameters; if new parameters are added, outputfuncs has to be true');
%     ip.nuserpar=length(pini.parameter); % number of original system parameters
%     ip.extrapars=ip.nuserpar+(1:length(options.newpars);
%     newfuncs.sys_rhs=
%% add new sys_cond if given by user
newfuncs=dde_add_cond('ChangeBranchParameters',funcs,options);
if options.correc
    [newbranch,suc]=correct_ini(newfuncs,newbranch,pini,...
        options.dir,options.step,options.correc);
end
varargout=dde_setupoutput(newfuncs,newbranch,suc,options.outputfuncs);
end
