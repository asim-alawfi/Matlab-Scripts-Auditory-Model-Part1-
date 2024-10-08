function varargout=symbolic_auditory_with_symmetry_version(action,varargin)
%% Automatically generated with matlabFunction
% 
%#ok<*DEFNU,*INUSD,*INUSL>

switch action
  case 'ntau'
   varargout{1}=2;
   return
  case 'npar'
   varargout{1}=14;
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
f=str2func(sprintf('symbolic_auditory_with_symmetry_version_%s_%d_%d',action,ind,order));
varargout=cell(nout,1);
[varargout{:}]=f(varargin{4:end});
end



function [out1,out2,out3,out4,out5,out6] = symbolic_auditory_with_symmetry_version_rhs_1_0(u_A1,u_B1,s_a1,s_b1,x1,y1,u_A2,u_B2,s_a2,s_b2,x2,y2,u_A3,u_B3,s_a3,s_b3,x3,y3,a,b,tau,tau_i,D,PR,df,TD,lambda,theta,c,m,ph1,ph2,u_A1_d,u_B1_d,s_a1_d,s_b1_d,x1_d,y1_d,u_A2_d,u_B2_d,s_a2_d,s_b2_d,x2_d,y2_d,u_A3_d,u_B3_d,s_a3_d,s_b3_d,x3_d,y3_d,a_d,b_d,tau_d,tau_i_d,D_d,PR_d,df_d,TD_d,lambda_d,theta_d,c_d,m_d,ph1_d,ph2_d)
%SYMBOLIC_AUDITORY_WITH_SYMMETRY_VERSION_RHS_1_0
%    [OUT1,OUT2,OUT3,OUT4,OUT5,OUT6] = SYMBOLIC_AUDITORY_WITH_SYMMETRY_VERSION_RHS_1_0(u_A1,u_B1,S_A1,S_B1,X1,Y1,u_A2,u_B2,S_A2,S_B2,X2,Y2,u_A3,u_B3,S_A3,S_B3,X3,Y3,A,B,TAU,TAU_I,D,PR,DF,TD,LAMBDA,THETA,C,M,PH1,PH2,u_A1_d,u_B1_d,S_A1_D,S_B1_D,X1_D,Y1_D,u_A2_d,u_B2_d,S_A2_D,S_B2_D,X2_D,Y2_D,u_A3_d,u_B3_d,S_A3_D,S_B3_D,X3_D,Y3_D,A_D,B_D,TAU_D,TAU_I_D,D_d,PR_d,DF_D,TD_d,LAMBDA_D,THETA_D,C_D,M_D,PH1_D,PH2_D)

%    This function was generated by the Symbolic Math Toolbox version 23.2.
%    26-Sep-2024 19:26:08

t2 = nthroot(df,m);
t3 = lambda.*x1;
t4 = lambda.*x3;
t5 = x1.^2;
t6 = y1.^2;
t9 = 1.0./tau;
t10 = 1.0./tau_i;
t7 = exp(t3);
t8 = exp(t4);
t11 = -t3;
t12 = -t4;
t15 = t2-1.0;
t18 = t5+t6;
t13 = t7+1.0;
t14 = t8+1.0;
t16 = exp(t11);
t17 = exp(t12);
t19 = t16+1.0;
t20 = t17+1.0;
t21 = 1.0./t13;
t22 = 1.0./t14;
t23 = 1.0./t19;
t24 = 1.0./t20;
out1 = -t9.*(u_A1-1.0./(exp(lambda.*(theta+b.*s_b2-a.*u_B1-c.*t22.*t23+c.*t15.*t21.*t24))+1.0));
if nargout > 1
    out2 = -t9.*(u_B1-1.0./(exp(lambda.*(theta+b.*s_a2-a.*u_A1-c.*t21.*t24+c.*t15.*t22.*t23))+1.0));
end
if nargout > 2
    out3 = -s_a1.*t10-(t9.*(s_a1-1.0))./(exp(lambda.*(theta-u_A1))+1.0);
end
if nargout > 3
    out4 = -s_b1.*t10-(t9.*(s_b1-1.0))./(exp(lambda.*(theta-u_B1))+1.0);
end
if nargout > 4
    out5 = ph1.*x1-t18.*x1-PR.*y1.*pi;
end
if nargout > 5
    out6 = ph1.*y1-t18.*y1+PR.*x1.*pi;
end
end


function [out1,out2,out3,out4,out5,out6] = symbolic_auditory_with_symmetry_version_rhs_1_1(u_A1,u_B1,s_a1,s_b1,x1,y1,u_A2,u_B2,s_a2,s_b2,x2,y2,u_A3,u_B3,s_a3,s_b3,x3,y3,a,b,tau,tau_i,D,PR,df,TD,lambda,theta,c,m,ph1,ph2,u_A1_d,u_B1_d,s_a1_d,s_b1_d,x1_d,y1_d,u_A2_d,u_B2_d,s_a2_d,s_b2_d,x2_d,y2_d,u_A3_d,u_B3_d,s_a3_d,s_b3_d,x3_d,y3_d,a_d,b_d,tau_d,tau_i_d,D_d,PR_d,df_d,TD_d,lambda_d,theta_d,c_d,m_d,ph1_d,ph2_d)
%SYMBOLIC_AUDITORY_WITH_SYMMETRY_VERSION_RHS_1_1
%    [OUT1,OUT2,OUT3,OUT4,OUT5,OUT6] = SYMBOLIC_AUDITORY_WITH_SYMMETRY_VERSION_RHS_1_1(u_A1,u_B1,S_A1,S_B1,X1,Y1,u_A2,u_B2,S_A2,S_B2,X2,Y2,u_A3,u_B3,S_A3,S_B3,X3,Y3,A,B,TAU,TAU_I,D,PR,DF,TD,LAMBDA,THETA,C,M,PH1,PH2,u_A1_d,u_B1_d,S_A1_D,S_B1_D,X1_D,Y1_D,u_A2_d,u_B2_d,S_A2_D,S_B2_D,X2_D,Y2_D,u_A3_d,u_B3_d,S_A3_D,S_B3_D,X3_D,Y3_D,A_D,B_D,TAU_D,TAU_I_D,D_d,PR_d,DF_D,TD_d,LAMBDA_D,THETA_D,C_D,M_D,PH1_D,PH2_D)

%    This function was generated by the Symbolic Math Toolbox version 23.2.
%    26-Sep-2024 19:26:09

t2 = b.*s_a2;
t3 = b.*s_b2;
t4 = a.*u_A1;
t5 = a.*u_B1;
t6 = nthroot(df,m);
t7 = lambda.*x1;
t8 = lambda.*x3;
t9 = lambda_d.*x1;
t10 = lambda_d.*x3;
t11 = lambda.*x1_d;
t12 = lambda.*x3_d;
t13 = x1.^2;
t14 = y1.^2;
t15 = x1.*x1_d.*2.0;
t16 = y1.*y1_d.*2.0;
t19 = 1.0./df;
t20 = 1.0./m;
t21 = s_a1-1.0;
t22 = s_b1-1.0;
t23 = 1.0./tau;
t25 = 1.0./tau_i;
t27 = -u_A1;
t28 = -u_B1;
t17 = exp(t7);
t18 = exp(t8);
t24 = t23.^2;
t26 = t25.^2;
t29 = -t4;
t30 = -t5;
t31 = -t7;
t32 = -t8;
t35 = t6-1.0;
t36 = t27+theta;
t37 = t28+theta;
t40 = t13+t14;
t41 = t9+t11;
t42 = t10+t12;
t47 = t15+t16;
t33 = t17+1.0;
t34 = t18+1.0;
t38 = exp(t31);
t39 = exp(t32);
t45 = lambda.*t36;
t46 = lambda.*t37;
t43 = t38+1.0;
t44 = t39+1.0;
t48 = 1.0./t33;
t50 = 1.0./t34;
t52 = exp(t45);
t53 = exp(t46);
t49 = t48.^2;
t51 = t50.^2;
t54 = t52+1.0;
t55 = t53+1.0;
t56 = 1.0./t43;
t58 = 1.0./t44;
t57 = t56.^2;
t59 = t58.^2;
t60 = 1.0./t54;
t61 = 1.0./t55;
t62 = c.*t48.*t58;
t63 = c.*t50.*t56;
t64 = -t62;
t65 = -t63;
t66 = t35.*t62;
t67 = t35.*t63;
t68 = t2+t29+t64+t67+theta;
t69 = t3+t30+t65+t66+theta;
t70 = lambda.*t68;
t71 = lambda.*t69;
t72 = exp(t70);
t73 = exp(t71);
t74 = t72+1.0;
t75 = t73+1.0;
out1 = -t23.*(u_A1_d+t73.*1.0./t75.^2.*(lambda.*(theta_d+b.*s_b2_d+a_d.*t28+b_d.*s_b2-a.*u_B1_d-c_d.*t50.*t56+c_d.*t35.*t48.*t58+c.*t18.*t42.*t51.*t56-c.*t38.*t41.*t50.*t57+df_d.*t6.*t19.*t20.*t62-c.*t17.*t35.*t41.*t49.*t58+c.*t35.*t39.*t42.*t48.*t59)+lambda_d.*t69))+t24.*tau_d.*(u_A1-1.0./t75);
if nargout > 1
    out2 = -t23.*(u_B1_d+t72.*1.0./t74.^2.*(lambda.*(theta_d+b.*s_a2_d+a_d.*t27+b_d.*s_a2-a.*u_A1_d-c_d.*t48.*t58+c_d.*t35.*t50.*t56+c.*t17.*t41.*t49.*t58-c.*t39.*t42.*t48.*t59+df_d.*t6.*t19.*t20.*t63-c.*t18.*t35.*t42.*t51.*t56+c.*t35.*t38.*t41.*t50.*t57)+lambda_d.*t68))+t24.*tau_d.*(u_B1-1.0./t74);
end
if nargout > 2
    out3 = -s_a1_d.*t25-s_a1_d.*t23.*t60+s_a1.*t26.*tau_i_d+t21.*t24.*t60.*tau_d+t21.*t23.*t52.*t60.^2.*(lambda_d.*t36+lambda.*(theta_d-u_A1_d));
end
if nargout > 3
    out4 = -s_b1_d.*t25-s_b1_d.*t23.*t61+s_b1.*t26.*tau_i_d+t22.*t24.*t61.*tau_d+t22.*t23.*t53.*t61.^2.*(lambda_d.*t37+lambda.*(theta_d-u_B1_d));
end
if nargout > 4
    out5 = ph1_d.*x1+ph1.*x1_d-t47.*x1-t40.*x1_d-PR.*y1_d.*pi-PR_d.*y1.*pi;
end
if nargout > 5
    out6 = ph1_d.*y1+ph1.*y1_d-t47.*y1-t40.*y1_d+PR.*x1_d.*pi+PR_d.*x1.*pi;
end
end


function [out1,out2,out3,out4,out5,out6] = symbolic_auditory_with_symmetry_version_rhs_1_2(u_A1,u_B1,s_a1,s_b1,x1,y1,u_A2,u_B2,s_a2,s_b2,x2,y2,u_A3,u_B3,s_a3,s_b3,x3,y3,a,b,tau,tau_i,D,PR,df,TD,lambda,theta,c,m,ph1,ph2,u_A1_d,u_B1_d,s_a1_d,s_b1_d,x1_d,y1_d,u_A2_d,u_B2_d,s_a2_d,s_b2_d,x2_d,y2_d,u_A3_d,u_B3_d,s_a3_d,s_b3_d,x3_d,y3_d,a_d,b_d,tau_d,tau_i_d,D_d,PR_d,df_d,TD_d,lambda_d,theta_d,c_d,m_d,ph1_d,ph2_d)
%SYMBOLIC_AUDITORY_WITH_SYMMETRY_VERSION_RHS_1_2
%    [OUT1,OUT2,OUT3,OUT4,OUT5,OUT6] = SYMBOLIC_AUDITORY_WITH_SYMMETRY_VERSION_RHS_1_2(u_A1,u_B1,S_A1,S_B1,X1,Y1,u_A2,u_B2,S_A2,S_B2,X2,Y2,u_A3,u_B3,S_A3,S_B3,X3,Y3,A,B,TAU,TAU_I,D,PR,DF,TD,LAMBDA,THETA,C,M,PH1,PH2,u_A1_d,u_B1_d,S_A1_D,S_B1_D,X1_D,Y1_D,u_A2_d,u_B2_d,S_A2_D,S_B2_D,X2_D,Y2_D,u_A3_d,u_B3_d,S_A3_D,S_B3_D,X3_D,Y3_D,A_D,B_D,TAU_D,TAU_I_D,D_d,PR_d,DF_D,TD_d,LAMBDA_D,THETA_D,C_D,M_D,PH1_D,PH2_D)

%    This function was generated by the Symbolic Math Toolbox version 23.2.
%    26-Sep-2024 19:26:10

t2 = b.*s_a2;
t3 = b.*s_a2_d;
t4 = b.*s_b2;
t5 = b.*s_b2_d;
t6 = b_d.*s_a2;
t7 = b_d.*s_b2;
t8 = a.*u_A1;
t9 = a.*u_A1_d;
t10 = a.*u_B1;
t11 = a.*u_B1_d;
t12 = a_d.*u_A1;
t13 = a_d.*u_B1;
t14 = nthroot(df,m);
t15 = lambda.*x1;
t16 = lambda.*x3;
t17 = lambda_d.*x1;
t18 = lambda_d.*x3;
t19 = lambda.*x1_d;
t20 = lambda.*x3_d;
t21 = df_d.^2;
t22 = tau_d.^2;
t23 = tau_i_d.^2;
t24 = x1_d.^2;
t25 = y1_d.^2;
t28 = x1.*x1_d.*2.0;
t29 = y1.*y1_d.*2.0;
t32 = 1.0./df;
t34 = 1.0./m;
t36 = s_a1-1.0;
t37 = s_b1-1.0;
t38 = 1.0./tau;
t41 = 1.0./tau_i.^2;
t42 = 1.0./tau_i.^3;
t43 = -u_A1;
t44 = -u_A1_d;
t45 = -u_B1;
t46 = -u_B1_d;
t26 = t15.*2.0;
t27 = t16.*2.0;
t30 = exp(t15);
t31 = exp(t16);
t33 = t32.^2;
t35 = t34.^2;
t39 = t38.^2;
t40 = t38.^3;
t47 = -t8;
t48 = -t9;
t49 = -t10;
t50 = -t11;
t51 = -t12;
t52 = -t13;
t53 = t24.*2.0;
t54 = t25.*2.0;
t55 = -t15;
t57 = -t16;
t63 = t14-1.0;
t64 = t43+theta;
t65 = t45+theta;
t66 = t44+theta_d;
t67 = t46+theta_d;
t72 = t17+t19;
t73 = t18+t20;
t82 = t28+t29;
t56 = -t26;
t58 = -t27;
t59 = exp(t26);
t60 = exp(t27);
t61 = t30+1.0;
t62 = t31+1.0;
t68 = exp(t55);
t70 = exp(t57);
t76 = lambda.*t64;
t77 = lambda_d.*t64;
t78 = lambda.*t65;
t79 = lambda.*t66;
t80 = lambda_d.*t65;
t81 = lambda.*t67;
t83 = t72.^2;
t84 = t73.^2;
t101 = t53+t54;
t69 = exp(t56);
t71 = exp(t58);
t74 = t68+1.0;
t75 = t70+1.0;
t85 = 1.0./t61;
t88 = 1.0./t62;
t91 = exp(t76);
t92 = exp(t78);
t106 = t77+t79;
t107 = t80+t81;
t86 = t85.^2;
t87 = t85.^3;
t89 = t88.^2;
t90 = t88.^3;
t93 = t91+1.0;
t94 = t92+1.0;
t95 = 1.0./t74;
t98 = 1.0./t75;
t108 = t106.^2;
t109 = t107.^2;
t96 = t95.^2;
t97 = t95.^3;
t99 = t98.^2;
t100 = t98.^3;
t102 = 1.0./t93;
t104 = 1.0./t94;
t110 = c.*t85.*t98;
t111 = c.*t88.*t95;
t112 = c_d.*t85.*t98;
t113 = c_d.*t88.*t95;
t122 = c.*t30.*t72.*t86.*t98;
t123 = c.*t31.*t73.*t89.*t95;
t103 = t102.^2;
t105 = t104.^2;
t114 = -t110;
t115 = -t111;
t116 = -t112;
t117 = -t113;
t118 = t63.*t110;
t119 = t63.*t111;
t120 = t63.*t112;
t121 = t63.*t113;
t124 = df_d.*t14.*t32.*t34.*t110;
t125 = df_d.*t14.*t32.*t34.*t111;
t126 = c.*t68.*t72.*t88.*t96;
t127 = c.*t70.*t73.*t85.*t99;
t130 = t63.*t122;
t131 = t63.*t123;
t128 = -t126;
t129 = -t127;
t132 = t63.*t126;
t133 = -t130;
t134 = t63.*t127;
t135 = -t131;
t136 = t2+t47+t114+t119+theta;
t137 = t4+t49+t115+t118+theta;
t138 = lambda.*t136;
t139 = lambda_d.*t136;
t140 = lambda.*t137;
t141 = lambda_d.*t137;
t148 = t3+t6+t48+t51+t116+t121+t122+t125+t129+t132+t135+theta_d;
t149 = t5+t7+t50+t52+t117+t120+t123+t124+t128+t133+t134+theta_d;
t142 = exp(t138);
t143 = exp(t140);
t150 = lambda.*t148;
t151 = lambda.*t149;
t144 = t142+1.0;
t145 = t143+1.0;
t152 = t139+t150;
t153 = t141+t151;
t146 = 1.0./t144.^2;
t147 = 1.0./t145.^2;
t154 = t152.^2;
t155 = t153.^2;
et1 = lambda;
et2 = b_d.*s_b2_d.*2.0-a_d.*u_B1_d.*2.0+c.*t31.*t84.*t89.*t95-c.*t60.*t84.*t90.*t95.*2.0+c.*t68.*t83.*t88.*t96-c.*t69.*t83.*t88.*t97.*2.0+c_d.*t31.*t73.*t89.*t95.*2.0-c_d.*t68.*t72.*t88.*t96.*2.0+df_d.*t14.*t32.*t34.*t112.*2.0-df_d.*t14.*t32.*t34.*t122.*2.0+df_d.*t14.*t32.*t34.*t127.*2.0+t14.*t21.*t33.*t35.*t110+t14.*t21.*t33.*t34.*t114+df_d.*m_d.*t14.*t32.*t35.*t114+c.*lambda_d.*t31.*t89.*t95.*x3_d.*2.0-c.*lambda_d.*t68.*t88.*t96.*x1_d.*2.0-c.*t30.*t63.*t83.*t86.*t98+c.*t59.*t63.*t83.*t87.*t98.*2.0-c.*t63.*t70.*t84.*t85.*t99+c.*t63.*t71.*t84.*t85.*t100.*2.0-c_d.*t30.*t63.*t72.*t86.*t98.*2.0+c_d.*t63.*t70.*t73.*t85.*t99.*2.0-c.*lambda_d.*t30.*t63.*t86.*t98.*x1_d.*2.0+c.*lambda_d.*t63.*t70.*t85.*t99.*x3_d.*2.0+c.*t31.*t68.*t72.*t73.*t89.*t96.*2.0-c.*t30.*t63.*t70.*t72.*t73.*t86.*t99.*2.0;
out1 = -t38.*(t143.*t147.*(et1.*et2+lambda_d.*t149.*2.0)+t143.*t147.*t155-1.0./t145.^3.*t155.*exp(t140.*2.0).*2.0)-t22.*t40.*(u_A1-1.0./t145).*2.0+t39.*tau_d.*(u_A1_d+t143.*t147.*t153).*2.0;
if nargout > 1
    et3 = lambda;
    et4 = b_d.*s_a2_d.*2.0-a_d.*u_A1_d.*2.0+c.*t30.*t83.*t86.*t98-c.*t59.*t83.*t87.*t98.*2.0+c.*t70.*t84.*t85.*t99-c.*t71.*t84.*t85.*t100.*2.0+c_d.*t30.*t72.*t86.*t98.*2.0-c_d.*t70.*t73.*t85.*t99.*2.0+df_d.*t14.*t32.*t34.*t113.*2.0-df_d.*t14.*t32.*t34.*t123.*2.0+df_d.*t14.*t32.*t34.*t126.*2.0+t14.*t21.*t33.*t35.*t111+t14.*t21.*t33.*t34.*t115+df_d.*m_d.*t14.*t32.*t35.*t115+c.*lambda_d.*t30.*t86.*t98.*x1_d.*2.0-c.*lambda_d.*t70.*t85.*t99.*x3_d.*2.0-c.*t31.*t63.*t84.*t89.*t95+c.*t60.*t63.*t84.*t90.*t95.*2.0-c.*t63.*t68.*t83.*t88.*t96+c.*t63.*t69.*t83.*t88.*t97.*2.0-c_d.*t31.*t63.*t73.*t89.*t95.*2.0+c_d.*t63.*t68.*t72.*t88.*t96.*2.0-c.*lambda_d.*t31.*t63.*t89.*t95.*x3_d.*2.0+c.*lambda_d.*t63.*t68.*t88.*t96.*x1_d.*2.0+c.*t30.*t70.*t72.*t73.*t86.*t99.*2.0-c.*t31.*t63.*t68.*t72.*t73.*t89.*t96.*2.0;
    out2 = -t38.*(t142.*t146.*(et3.*et4+lambda_d.*t148.*2.0)+t142.*t146.*t154-1.0./t144.^3.*t154.*exp(t138.*2.0).*2.0)-t22.*t40.*(u_B1-1.0./t144).*2.0+t39.*tau_d.*(u_B1_d+t142.*t146.*t152).*2.0;
end
if nargout > 2
    out3 = s_a1.*t23.*t42.*-2.0+s_a1_d.*t41.*tau_i_d.*2.0+s_a1_d.*t39.*t102.*tau_d.*2.0-t22.*t36.*t40.*t102.*2.0+s_a1_d.*t38.*t91.*t103.*t106.*2.0+t36.*t38.*t91.*t103.*t108-t36.*t38.*t102.^3.*t108.*exp(t76.*2.0).*2.0+lambda_d.*t36.*t38.*t66.*t91.*t103.*2.0-t36.*t39.*t91.*t103.*t106.*tau_d.*2.0;
end
if nargout > 3
    out4 = s_b1.*t23.*t42.*-2.0+s_b1_d.*t41.*tau_i_d.*2.0+s_b1_d.*t39.*t104.*tau_d.*2.0-t22.*t37.*t40.*t104.*2.0+s_b1_d.*t38.*t92.*t105.*t107.*2.0+t37.*t38.*t92.*t105.*t109-t37.*t38.*t104.^3.*t109.*exp(t78.*2.0).*2.0+lambda_d.*t37.*t38.*t67.*t92.*t105.*2.0-t37.*t39.*t92.*t105.*t107.*tau_d.*2.0;
end
if nargout > 4
    out5 = ph1_d.*x1_d.*2.0-t101.*x1-t82.*x1_d.*2.0-PR_d.*y1_d.*pi.*2.0;
end
if nargout > 5
    out6 = ph1_d.*y1_d.*2.0-t101.*y1-t82.*y1_d.*2.0+PR_d.*x1_d.*pi.*2.0;
end
end

