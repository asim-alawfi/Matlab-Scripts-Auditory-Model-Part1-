function S=dde_lincond_struct(xdim,fieldname,varargin)
%% set parameters for linear conditions to be appended to defining systems
%%
%% List of parameters
%
% * |'fieldname'| (passed on as second argument) Possible are |'x'|, |'v'|
% for |stst| and their bifurcations |fold| and |hopf|, and |'profile.'| for
% |coll| (that is, |psol| and |hcli| (|hcli| is untested|).
% * |'trafo'| (default |eye(xdim)|), transformation matrix of discrete
% symmetry, eg a permutation or reflection matrix.
% * |'rotation'| (default |[0,1]|, which is no rotation), for
% bifurcations one may impose that |trafo*z-z*exp(2pi*1i*(p/q))| for |z=Ps*x| or |z=Ps*v||.
% * |'shift'| (default |[0,1]|),  for periodic orbits one may impose that
% |trafo*z(t)-z(t+ps/qs)*exp(2pi*1i*(p/q))| for |z=Ps*profile| and certain
% |t|.
% * |'stateproj'| (default |eye(xdim)|)  projection |Ps| applied to state
% before condition is evaluated.
% * |'condprojmat'| (default |zeros(,xdim)|) projection applied on the
% outside of the condition.
% * |'condprojint'| (default |[0,1]|) time interval or time point at which
% condition is evaluated. Shape is nintx2, where nint is the number of time
% intervals or points where the symmetry is enforced. For example
% |'condprojint',[0,0.1;0.2,0.2]| will enforce the symmetry conndition for
% the integral from 0 to 0.1 and at time 0.2. *|res_parameters| (default
% []). If non-empty each conditon k may be non-zero but equal to
% |point.parameter(res_parameter(k))|. If |res_parameter(j)==0| then this
% condition is always enforced to be zero.
default={...
    'fieldname',fieldname,...
    'trafo',eye(xdim),...
    'rotation',[0,1],...
    'shift',[0,1],...
    'stateproj',eye(xdim),...
    'condprojmat',zeros(0,xdim),...
    'condprojint',[0,1],...
    'res_parameters',[]
    };
[S,dum,userdefined]=dde_set_options(default,varargin,'pass_on','symmetry'); %#ok<ASGLU>
ntr=size(S.stateproj,1);
if any(S.trafo(:)~=reshape(eye(ntr),[],1)) && ~userdefined.condprojmat
    S.condprojmat=eye(ntr);
end 
assert(...
    size(S.trafo,1)==size(S.condprojmat,2),...
    'dde_symmetry_create:matrices',...
    ['dde_symmetry_create: projection expects dimension %d, but ',...
    'transformation has dimension %d'],size(S.condprojmat,2),size(S.trafo,1));
assert(...
    size(S.stateproj,1)==size(S.trafo,2),...
    'dde_symmetry_create:matrices',...
    ['dde_symmetry_create: projection expects dimension %d, but ',...
    'transformation has dimension %d'],size(S.condprojmat,2),size(S.trafo,1));
assert(...
    size(S.trafo,1)==size(S.trafo,2),...
    'dde_symmetry_create:transformation',...
    ['dde_symmetry_create: transformation has dimensions %d x %d,',...
    'should be square'],size(S.trafo,1),size(S.trafo,2));
assert(...
    S.rotation(1,2)~=0 && ...
        all(S.rotation==round(S.rotation)),...
        'dde_symmetry_create:rotation',...
        ['dde_symmetry_create: rotation',...
        'does not represent rational fraction j/k, j=%g, k=%g'],...
        S.rotation(1),S.rotation(2));
for i=1:size(S.condprojint,1)
    if size(S.condprojint,2)==1
        S.condprojint=S.condprojint*[1,1];
    end
    assert(size(S.condprojint,2)==2 && ...
        S.condprojint(i,1)>=0 &&...
        S.condprojint(i,2)>=S.condprojint(i,1)&&...
        S.condprojint(i,2)<=1,...
        'dde_symmetry_create:projection',['dde_symmetry_create: projection',...
        ' requires intervals in [0,1], par %d is [t1,t2], t1=%g, t2=%g'],...
        i,S.condprojint(i,1),S.condprojint(i,2));
end
end
