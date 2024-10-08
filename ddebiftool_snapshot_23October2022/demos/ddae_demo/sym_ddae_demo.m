function varargout=sym_ddae_demo(action,varargin)
%% Automatically generated with matlabFunction
% 
%#ok<*DEFNU,*INUSD,*INUSL>

switch action
  case 'ntau'
   varargout{1}=1;
   return
  case 'npar'
   varargout{1}=4;
   return
  case 'tp_del'
   varargout{1}=0;
   return
  case 'maxorder'
   varargout{1}=2;
   return
  case 'directional_derivative'
   varargout{1}=1;
   return
end
ind=varargin{1};
order=varargin{2};
nout=varargin{3};
f=str2func(sprintf('sym_ddae_demo_%s_%d_%d',action,ind,order));
varargout=cell(nout,1);
[varargout{:}]=f(varargin{4:end});




function [out1,out2,out3,out4] = sym_ddae_demo_rhs_1_0(Er,Ei,Yr,Yi,Ertau,Eitau,Yrtau,Yitau,a,b,h,tau,Er_d,Ei_d,Yr_d,Yi_d,Ertau_d,Eitau_d,Yrtau_d,Yitau_d,a_d,b_d,h_d,tau_d)
%SYM_DDAE_DEMO_RHS_1_0
%    [OUT1,OUT2,OUT3,OUT4] = SYM_DDAE_DEMO_RHS_1_0(ER,EI,YR,YI,ERTAU,EITAU,YRTAU,YITAU,A,B,H,TAU,ER_D,EI_D,YR_D,YI_D,ERTAU_D,EITAU_D,YRTAU_D,YITAU_D,A_D,B_D,H_D,TAU_D)

%    This function was generated by the Symbolic Math Toolbox version 8.2.
%    30-Sep-2022 14:28:23

t2 = Ei+Er;
t3 = Ei-Er;
t4 = Er.*t2;
t5 = Ei.*t3;
t6 = -a+t4+t5;
t7 = Ei.*t2;
t8 = t7-Er.*t3;
out1 = Ei.*t8-Er.*t6+Yr.*h;
if nargout > 1
    out2 = -Ei.*t6-Er.*t8+Yi.*h;
end
if nargout > 2
    out3 = -Yr+b.*(Ertau-Yrtau);
end
if nargout > 3
    out4 = -Yi+b.*(Eitau-Yitau);
end


function [out1,out2,out3,out4] = sym_ddae_demo_rhs_1_1(Er,Ei,Yr,Yi,Ertau,Eitau,Yrtau,Yitau,a,b,h,tau,Er_d,Ei_d,Yr_d,Yi_d,Ertau_d,Eitau_d,Yrtau_d,Yitau_d,a_d,b_d,h_d,tau_d)
%SYM_DDAE_DEMO_RHS_1_1
%    [OUT1,OUT2,OUT3,OUT4] = SYM_DDAE_DEMO_RHS_1_1(ER,EI,YR,YI,ERTAU,EITAU,YRTAU,YITAU,A,B,H,TAU,ER_D,EI_D,YR_D,YI_D,ERTAU_D,EITAU_D,YRTAU_D,YITAU_D,A_D,B_D,H_D,TAU_D)

%    This function was generated by the Symbolic Math Toolbox version 8.2.
%    30-Sep-2022 14:28:24

t2 = Ei+Er;
t3 = Ei-Er;
t4 = Ei_d+Er_d;
t5 = Ei_d-Er_d;
t6 = Er.*t2;
t7 = Ei.*t3;
t8 = -a+t6+t7;
t9 = Ei.*t2;
t10 = t9-Er.*t3;
t11 = Er.*t4;
t12 = Er_d.*t2;
t13 = Ei_d.*t3;
t14 = Ei.*t5;
t15 = -a_d+t11+t12+t13+t14;
t16 = Ei_d.*t2;
t17 = Ei.*t4;
t18 = t16+t17-Er.*t5-Er_d.*t3;
out1 = Ei_d.*t10+Ei.*t18-Er.*t15-Er_d.*t8+Yr_d.*h+Yr.*h_d;
if nargout > 1
    out2 = -Ei_d.*t8-Ei.*t15-Er.*t18-Er_d.*t10+Yi_d.*h+Yi.*h_d;
end
if nargout > 2
    out3 = -Yr_d+b.*(Ertau_d-Yrtau_d)+b_d.*(Ertau-Yrtau);
end
if nargout > 3
    out4 = -Yi_d+b.*(Eitau_d-Yitau_d)+b_d.*(Eitau-Yitau);
end


function [out1,out2,out3,out4] = sym_ddae_demo_rhs_1_2(Er,Ei,Yr,Yi,Ertau,Eitau,Yrtau,Yitau,a,b,h,tau,Er_d,Ei_d,Yr_d,Yi_d,Ertau_d,Eitau_d,Yrtau_d,Yitau_d,a_d,b_d,h_d,tau_d)
%SYM_DDAE_DEMO_RHS_1_2
%    [OUT1,OUT2,OUT3,OUT4] = SYM_DDAE_DEMO_RHS_1_2(ER,EI,YR,YI,ERTAU,EITAU,YRTAU,YITAU,A,B,H,TAU,ER_D,EI_D,YR_D,YI_D,ERTAU_D,EITAU_D,YRTAU_D,YITAU_D,A_D,B_D,H_D,TAU_D)

%    This function was generated by the Symbolic Math Toolbox version 8.2.
%    30-Sep-2022 14:28:24

t2 = Ei_d+Er_d;
t3 = Ei_d-Er_d;
t4 = Ei+Er;
t5 = Ei-Er;
t6 = Er_d.*t2.*2.0;
t7 = Ei_d.*t3.*2.0;
t8 = t6+t7;
t9 = Ei_d.*t2.*2.0;
t10 = t9-Er_d.*t3.*2.0;
t11 = Er.*t2;
t12 = Er_d.*t4;
t13 = Ei_d.*t5;
t14 = Ei.*t3;
t15 = -a_d+t11+t12+t13+t14;
t16 = Ei_d.*t4;
t17 = Ei.*t2;
t18 = t16+t17-Er.*t3-Er_d.*t5;
out1 = Ei_d.*t18.*2.0+Ei.*t10-Er.*t8-Er_d.*t15.*2.0+Yr_d.*h_d.*2.0;
if nargout > 1
    out2 = Ei_d.*t15.*-2.0-Ei.*t8-Er.*t10-Er_d.*t18.*2.0+Yi_d.*h_d.*2.0;
end
if nargout > 2
    out3 = b_d.*(Ertau_d-Yrtau_d).*2.0;
end
if nargout > 3
    out4 = b_d.*(Eitau_d-Yitau_d).*2.0;
end

