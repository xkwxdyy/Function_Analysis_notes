\NeedsTeXFormat{LaTeX2e}[2017/04/15]
\ProvidesClass{xdyy-notes}[2021/11/23 v0.0.1 Notes For Math Courses by xdyy]

% 处理文档类选项
\PassOptionsToClass{UTF8,scheme=chinese,zihao=-4}{ctexbook}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{ctexbook}}
\ProcessOptions*

% 消除缺失 CJK script 的警告。
\PassOptionsToPackage{quiet}{xeCJK}
%页面a4大小
\PassOptionsToPackage{a4paper,margin=2.9cm}{geometry}
% \PassOptionsToPackage{b5paper,margin=3cm}{geometry}
% \PassOptionsToPackage{physics}{physicx}
%彩框选项
\PassOptionsToPackage{most}{tcolorbox}
%颜色
% \PassOptionsToPackage{dvipsnames}{xcolor}%颜色
% 载入 \cls{ctexart} 文档类，注意要求为 2.4.9 或更高的版本。
\LoadClass{ctexbook}[2017/04/01]





%载入所需宏包
\RequirePackage{expl3}
\RequirePackage{geometry}
\RequirePackage{mathtools,extarrows}
% \RequirePackage{bbold}%示性函数\mathbb{1}所需要的包
% \RequirePackage{libertinus-otf}
% \RequirePackage{physics}
\RequirePackage[physics,unimath]{physicx}%公式符号拓展
\RequirePackage{xeCJK}
\RequirePackage{enumitem}
\RequirePackage[dvipsnames]{xcolor}%xcolor要放在tcolorbox前面，这样加载dvipsnames就不会报错
\RequirePackage{tcolorbox}%彩框宏包，用于编写勘误命令
\RequirePackage{amsthm,thmtools}
\RequirePackage{hyperref,%\autoref %设置超链接
cleveref%\cref
}
\RequirePackage{manfnt}
\usetikzlibrary{calc}
%字体设置
% \unimathsetup{math-style=ISO, bold-style=ISO}  % 需放在设置字体之前
% \setmathfont{NewCMMath-Book.otf}
\setmathfont{STIX Two Math}
% \setmathfont{STIX Two Math}[range = {\Longleftarrow, \Longrightarrow, \equal}]

%数学环境中输入中文
% \xeCJKsetup{CJKmath}
%设置最小间距
\setlength{\lineskiplimit}{2pt}
% \setlength{\lineskip}{\baselineskip-\ccwd}
\setlength{\lineskip}{3pt}
%设置超链接没有红框
\hypersetup{
colorlinks=false,
pdfborder={0 0 0}
}
%设置罗列环境【
\setenumerate{topsep=6pt,partopsep=0pt,itemsep=0pt,parsep=\parskip}
% \setenumerate[1]{align=left,label={\arabic*}.,leftmargin=1.8em,labelindent=0em,labelwidth=1em,labelsep=3pt,itemsep=2ex}
\setenumerate[1]{align=right,label={\arabic*}.,labelindent=\parindent, leftmargin=15pt, itemindent=0pt,labelsep=8pt}
% \setenumerate[2]{align=left,label=(\makebox[0.8em][c]{\roman*}),leftmargin=1.5em,labelindent=2em,labelwidth=1.3em,labelsep=3pt,itemsep=5pt,topsep=3pt}
\setenumerate[2]{align=right,label=(\makebox[0.8em][c]{\roman*}),labelindent=0pt, leftmargin=20pt, widest=0, labelsep=5pt,itemindent=4pt}
% \setenumerate[3]{align=left,label=(\makebox[0.8em][c]{\alph*}),leftmargin=1.5em,labelindent=0em,labelwidth=1.2em,labelsep=3pt}
\setenumerate[3]{align=left,label=(\makebox[0.8em][c]{\alph*}),labelindent=\parindent, leftmargin=0pt, widest=0, itemindent=*}
%设置罗列环境】

%设置彩框样式
\tcbuselibrary{breakable}
\tcbset{
detail/.style={breakable,
parbox=false,left=2mm,right=3mm, enhanced,segmentation style={dash dot, black, line width=0.3pt}, colback=white,colframe=gray
}
}
\tcbset{
kanwu/.style={breakable,
parbox=false,left=3mm,right=3mm, enhanced,segmentation style={dash dot, black, line width=0.3pt}, colback=white,colframe=gray
}
}
\tcbset{
  % Lengths of the rules
  northwestleft/.store in={\chnorthwestleftlength},
  southwestleft/.store in={\chsouthwestleftlength},
  northeastright/.store in={\chnortheastrightlength},
  southeastright/.store in={\chsoutheastrightlength},
  northwestleft=4mm,
  southwestleft=4mm,
  northeastright=4mm,
  southeastright=4mm,
  northleft/.store in={\chnorthleftlength},
  northright/.store in={\chnorthrightlength},
  southleft/.store in={\chsouthleftlength},
  southright/.store in={\chsouthrightlength},
  northleft=4mm,
  southleft=4mm,
  northright=4mm,
  southright=4mm,
  toplength/.forward to=/tcb/northright,
  toplength/.forward to=/tcb/northleft,
  leftlength/.forward to=/tcb/northwestleft,
  leftlength/.forward to=/tcb/southwestleft,
  rightlength/.forward to=/tcb/northeastright,
  rightlength/.forward to=/tcb/southeastright,
  bottomlength/.forward to=/tcb/southright,
  bottomlength/.forward to=/tcb/southleft,
  % Widths of the rules
  northwestleftrule/.store in={\chnorthwestleftrule},
  northwesttoprule/.store in={\chnorthwesttoprule},
  northwestrule/.forward to=/tcb/northwestleftrule,
  northwestrule/.forward to=/tcb/northwesttoprule,
  northeastrightrule/.store in={\chnortheastrightrule},
  northeasttoprule/.store in={\chnortheasttoprule},
  northeastrule/.forward to=/tcb/northeastrightrule,
  northeastrule/.forward to=/tcb/northeasttoprule,
  southwestleftrule/.store in={\chsouthwestleftrule},
  southwestbottomrule/.store in={\chsouthwestbottomrule},
  southwestrule/.forward to=/tcb/southwestleftrule,
  southwestrule/.forward to=/tcb/southwestbottomrule,
  southeastrightrule/.store in={\chsoutheastrightrule},
  southeastbottomrule/.store in={\chsoutheastbottomrule},
  southeastrule/.forward to=/tcb/southeastrightrule,
  southeastrule/.forward to=/tcb/southeastbottomrule,
  northwestleftrule=2pt,
  northwesttoprule=2pt,
  southwestleftrule=2pt,
  southwestbottomrule=2pt,
  northeastrightrule=2pt,
  northeasttoprule=2pt,
  southeastrightrule=2pt,
  southeastbottomrule=2pt,
  northrules/.forward to=/tcb/northwestrule,
  northrules/.forward to=/tcb/northeastrule,
  southrules/.forward to=/tcb/southwestrule,
  southrules/.forward to=/tcb/southeastrule,
  allrules/.forward to=/tcb/northrules,
  allrules/.forward to=/tcb/southrules,
  % Colours
  upperleftcolor/.store in={\chupperleftcolor},
  upperrightcolor/.store in={\chupperrightcolor},
  lowerrightcolor/.store in={\chlowerrightcolor},
  lowerleftcolor/.store in={\chlowerleftcolor},
  lowerleftcolor={blue},
  lowerrightcolor={blue},
  upperrightcolor={blue},
  upperleftcolor={blue},
  northcolor/.forward to=/tcb/upperleftcolor,
  northcolor/.forward to=/tcb/upperrightcolor,
  southcolor/.forward to=/tcb/lowerleftcolor,
  southcolor/.forward to=/tcb/lowerrightcolor,
  allcolors/.forward to=/tcb/northcolor,
  allcolors/.forward to=/tcb/southcolor,
  northwest/.style={%
    sharp corners=northwest,
    overlay app={
      \coordinate (north west corner) at ([shift={(-0.5*\chnorthwestleftrule,\chnorthwesttoprule)}]frame.north west);
      \coordinate (west start) at ([shift={(-0.5*\chnorthwestleftrule,-\chnorthwestleftlength)}]frame.north west);
      \coordinate (north end) at ([shift={(\chnorthleftlength,\chnorthwesttoprule))}]frame.north west);
      \draw[line width=\chnorthwestleftrule,\chupperleftcolor] (west start) -- (north west corner);
      \draw[line width=\chnorthwesttoprule,\chupperleftcolor] ([yshift={(-0.5*\chnorthwesttoprule)}]north west corner) -- ([yshift={(-0.5*\chnorthwesttoprule)}]north end);
    }
  },
  southeast/.style={
    sharp corners=southeast,
    overlay app={
      \coordinate (south east corner)   at ([shift={(0.5*\chsoutheastrightrule,-\chsoutheastbottomrule)}]frame.south east);
      \coordinate (east end) at ([shift={(-\chsouthrightlength,-\chsoutheastbottomrule)}]frame.south east);
      \coordinate (east start)  at ([shift={(0.5*\chsoutheastrightrule,\chsoutheastrightlength)}]frame.south east);
      \draw[line width=\chsoutheastrightrule,\chlowerrightcolor] (east start) -- (south east corner);
      \draw[line width=\chsoutheastbottomrule,\chlowerrightcolor] ([yshift={(0.5*\chsoutheastbottomrule)}]south east corner) -- ([yshift={(0.5*\chsoutheastbottomrule)}]east end);
    }
  },    
  northeast/.style={breakable,
    sharp corners=northeast,
    overlay app={
      \coordinate (north east corner)   at ([shift={(0.5*\chnortheastrightrule,\chnortheasttoprule)}]frame.north east);
      \coordinate (north start)  at ([shift={(0.5*\chnortheastrightrule,-\chnortheastrightlength)}]frame.north east);
      \coordinate (north end) at ([shift={(-\chnorthrightlength,\chnortheasttoprule))}]frame.north east);
      \draw[line width=\chnortheastrightrule,\chupperrightcolor] (north start) -- (north east corner);
      \draw[line width=\chnortheasttoprule,\chupperrightcolor] ([yshift={(-0.5*\chnortheasttoprule)}]north east corner) --  ([yshift={(-0.5*\chnortheasttoprule)}]north end);
    }
  },
  southwest/.style={breakable,
    sharp corners=southwest,
    overlay app={
      \coordinate (south west corner)   at ([shift={(-0.5*\chsouthwestleftrule,-\chsouthwestbottomrule)}]frame.south west);
      \coordinate (south start)  at ([shift={(-0.5*\chsouthwestleftrule,\chsouthwestleftlength)}]frame.south west);
      \coordinate (south end) at ([shift={(\chsouthleftlength,-\chsouthwestbottomrule)}]frame.south west);
      \draw[line width=\chsouthwestleftrule,\chlowerleftcolor] (south start) -- (south west corner);
      \draw[line width=\chsouthwestbottomrule,\chlowerleftcolor] ([yshift={(0.5*\chsouthwestbottomrule)}]south west corner) -- ([yshift={(0.5*\chsouthwestbottomrule)}]south end);
    }
  },
  northwestsoutheast/.style={overlay={},breakable,northwest,southeast},
  northeastsouthwest/.style={overlay={},breakable,northeast,southwest},
  allcorners/.style={overlay={},breakable,northeastsouthwest,northwestsoutheast},
}

%%%%%%%一些自定义的命令%%%%%%%%%
\ExplSyntaxOn
\NewDocumentCommand{\set}{+m +m}{
    \left\{ \,\, #1 :  #2 \,\right\} 
}

\tl_new:N \l__emph_color_tl
\keys_define:nn {emph}{
    color . tl_set:N = \l__emph_color_tl,
    color . initial:n = red!90 ,
    color . default:n = red!90 ,
}
% \renewcommand{\emph}[1]{
%   \if_mode_math: \textcolor{red}{\mathbf{#1}}
%   \else:
%   \textbf{\textcolor{red}{#1}}
%   \fi
% }

\NewDocumentCommand{\emphasize}{O{} +m}{
    \group_begin:
    \keys_set:nn {emph} {#1}
    % \if_mode_math: \textcolor{\tl_use:N\l__emph_color_tl}{\mathbf{#2}}
    \if_mode_math: \textcolor{\tl_use:N\l__emph_color_tl}{#2}
    \else:
    \textbf{\textcolor{\tl_use:N\l__emph_color_tl}{#2}}
    \fi
    % \keys_set:nn {emph} {color}
    \group_end:
}

\newcommand{\st}{
  \if_mode_math: \text{\,\,s.t.\,\,}
  \else:
  \,s.t.\,\,
  \fi
}

\renewcommand{\ae}{
  \if_mode_math: \text{\,\,a.e.\,\,}
  \else:
  \,a.e.\,\,
  \fi
}

\newcommand{\ie}{
  \if_mode_math: \text{\,\,i.e.\,\,}
  \else:
  \,i.e.\,\,
  \fi
}

\newcommand{\mathtext}[1]{
    \text{\,#1\,}
}

\newcommand{\pie}{^{\prime}} %pie=撇
\newcommand{\zj}{\ensuremath{\subset}} %zj=子集
\newcommand{\so}{\ensuremath{\Rightarrow}} %so=所以，因此，推出
\newcommand{\So}{\ensuremath{\Longrightarrow}} %so=所以，因此，推出
\newcommand{\equi}{\ensuremath{\Longleftrightarrow}}%equi=equivalent等价
\newcommand{\kj}{\ensuremath{\varnothing}} %kj=空集
\newcommand{\dx}{\dd x}
\newcommand{\dy}{\dd y}
\newcommand{\dt}{\dd t}
\newcommand{\C}{\ensuremath{\symbb{C}}}
\newcommand{\R}{\ensuremath{\symbb{R}}}
\newcommand{\Q}{\ensuremath{\symbb{Q}}}
\newcommand{\K}{\ensuremath{\symbb{K}}}
\newcommand{\Z}{\ensuremath{\symbb{Z}}}
\newcommand{\N}{\ensuremath{\symbb{N}}}
\newcommand{\cO}{\ensuremath{\symcal{O}}}
\newcommand{\cN}{\ensuremath{\symcal{N}}}
\newcommand{\cH}{\ensuremath{\symcal{H}}}
\newcommand{\cA}{\ensuremath{\symcal{A}}}
\newcommand{\cB}{\ensuremath{\symcal{B}}}
\newcommand{\cC}{\ensuremath{\symcal{C}}}
\newcommand{\cK}{\ensuremath{\symcal{K}}}
\newcommand{\cJ}{\ensuremath{\symcal{J}}}
\newcommand{\cF}{\ensuremath{\symcal{F}}}
\newcommand{\cG}{\ensuremath{\symcal{G}}}
\newcommand\Rn{\mathbb{R}^n}
\newcommand{\lrangle}[2]{\langle#1,#2\rangle}
\newcommand{\generatedgroup}[1]{\langle#1\rangle} % generated group by a set, used in algebra
\newcommand{\sufficient}{($\Leftarrow$)} % sufficient condition
\newcommand{\necessary}{($\Rightarrow$)} % necessary condition
\newcommand{\closure}[1]{\overline{#1}} % the closure of a set
\newcommand{\almosteverywhere}{\;\mathrm{a.e.}}
\newcommand{\diag}{\mathrm{diag}}
\newcommand{\innerp}[2]{\left\langle#1,#2\right\rangle}
\newcommand{\conjugate}[1]{\overline{#1}}
\newcommand{\cont}[1]{\mathrm{Cont}(#1)}
\newcommand{\id}{\mathrm{id}}
% \newcommand{\abs}[1]{\ensuremath{\left| #1 \right| }}
% \newcommand{\norm}[1]{\ensuremath{\left\| #1 \right\|}}
\newcommand{\tabs}[1]{\ensuremath{\lvert #1\rvert}}
\newcommand{\tnorm}[1]{\ensuremath{\lVert #1\rVert}}
\newcommand{\weakto}{\ensuremath{\overset{w.}{\longrightarrow}}}
\newcommand{\sweakto}{\ensuremath{\overset{\Star{w.}}{\longrightarrow}}}
\newcommand{\sgn}{\mathrm{sgn}\,}
\newcommand{\sssum}{\ensuremath{{\scriptscriptstyle\sum}}}
\newcommand{\Gd}{\ensuremath{\G_{\delta}}}
\newcommand{\Star}[1]{#1^{*}}
%声明数学operator
\DeclareMathOperator{\rad}{rad}
\DeclareMathOperator{\diam}{diam}
\DeclareMathOperator{\fin}{fin}
\DeclareMathOperator{\esssup}{ess\,sup}
\DeclareMathOperator{\conv}{Conv}
\DeclareMathOperator{\Span}{span} %% 因为\span已经在宏中定义, 这里使用大写的\Span来表示线性张成
% \DeclareMathOperator{\cont}{Cont} %% 表示函数的连续点
% \DeclareMathOperator{\supp}{supp}
% \DeclareMathOperator{\diag}{diag}
\DeclareMathOperator{\codim}{codim}
\DeclareMathOperator{\convba}{Convba}
\DeclareMathOperator{\Image}{Im}
\newcommand{\dif}{\mathop{}\!\mathrm{d}}
\newcommand{\diff}{\mathop{}\!\mathrm{d}}
\newcommand{\du}{\mathop{}\!\mathrm{d}\mu}
% \newcommand{\lrangle}[2]{\langle #1, #2 \rangle}
\renewcommand{\div}{\operatorname{div}}
\newcommand{\e}{\mathrm{e}}
\newcommand{\T}{\mathrm{T}}
\newcommand{\ii}{\mathrm{i}}
% Differential Operator(在多种实现方法之中，个人认为此方法最佳)
% \newcommand{\diff}{\mathop{}\!\mathrm{d}}
% Declare Math Operator
% \DeclareMathOperator{\codim}{codim}
% \DeclareMathOperator{\conv}{conv}
% \DeclareMathOperator{\diam}{diam} % diameter
% \DeclareMathOperator{\rank}{rank}
% \DeclareMathOperator{\sgn}{sgn}
\DeclareMathOperator{\spt}{spt} % support set
\DeclareMathOperator{\supp}{supp} % another support set
\DeclareMathOperator{\lcm}{lcm} % least common multiple
% \DeclareMathOperator{\Span}{span}
% Real and Imaginary part of complex numbers
\renewcommand{\Re}{\operatorname{Re}}
\renewcommand{\Im}{\operatorname{Im}}
% \newommand{\Deltaeq}{\xlongequal{\Delta}}
% \NewDocumentEnvironment{answer}{o +b}%习题解答环境
% {
%     \begin{proof}[\IfNoValueTF{#1}{解}{{\kaishu #1}}]
%         #2
%     \end{proof}
% }{}
\bool_new:N \g__show_answer_bool
% \bool_set_true:N \g__show_answer:bool
\tl_new:N \g__course_name_tl
\keys_define:nn {xdyy-notes}
    {
        % showanswer . choice:,
        % showanswer / true.code:n=
        %     {
        %         \bool_set_true:N \g__show_answer_bool
        %     },
        % showanswer/false.code:n=
        %     {
        %         \bool_set_false:N \g__show_answer_bool
        %     },
        % showanswer.default:n=true,
        % showanswer.initial:n=true,
        showanswer .bool_set:N = \g__show_answer_bool,
        showanswer .default:n  = true,
        showanswer .initial:n  = true,
        name .tl_set:N = \g__course_name_tl,
        name . initial:n = 《泛函分析讲义》
    }
\NewDocumentCommand \notesetup { m }
    { \keys_set:nn { xdyy-notes } {#1} }
\ProcessKeysOptions{xdyy-notes}
\NewDocumentEnvironment{exerciseanalysis}{ +b}{
    \bool_if:NTF \g__show_answer_bool{
        \begin{analysis}
            #1
        \end{analysis}}
    {}
}{}
% \NewDocumentEnvironment{answer}{o o +b}%结合了equivalent命令的习题解答环境
% {
%     \bool_if:NTF \g__show_answer_bool{
%     \begin{proof}[\IfNoValueTF{#1}{证明}{{\kaishu #1}}]
%         \IfNoValueTF{#2}{#3}{
%             \equivalent{#2}{#3}
%         }
%     \end{proof}}{
%         % \begin{proof}
%         %     答案被我隐藏啦!
%         % \end{proof}
%     }
% }{}

% %设置彩框
% \tcbuselibrary{breakable}
% %设置彩框样式
% \tcbset{
% detail/.style={breakable,
% parbox=false,left=2mm,right=3mm, enhanced,segmentation style={dash dot, black, line width=0.3pt}, colback=white,colframe=gray
% }
% }
% \tcbset{
% kanwu/.style={breakable,
% parbox=false,left=3mm,right=3mm, enhanced,segmentation style={dash dot, black, line width=0.3pt}, colback=white,colframe=gray
% }
% }
%勘误命令
\NewDocumentCommand{\correct}{O{}+m+m}{
  \begin{tcolorbox}[kanwu,title=\textbf{\tl_use:N \g__course_name_tl P#1}]
    \tcbsubtitle{\bfseries \kaishu 原文：}
    #2
    % \tcblower
    \tcbsubtitle{\bf \kaishu 更正：}
    #3
  \end{tcolorbox}
}
%证明补充环境detail

\NewDocumentEnvironment { detail }
{ +m +m +!b }
{
  \begin{tcolorbox}[detail,title=\textbf{\tl_use:N \g__course_name_tl P#1}]
    \tcbsubtitle{\bfseries \kaishu 原文：}
    #2
    \tcbsubtitle{\bf \kaishu 细节补充：}
      #3
  \end{tcolorbox}
} {}
%%%%%%%下面的是没有加入控制showanswer的原answer环境
% \NewDocumentEnvironment{answer}{o o +b}%结合了equivalent命令的习题解答环境
% {
%     \begin{proof}[\IfNoValueTF{#1}{证明}{{\kaishu #1}}]
%         \IfNoValueTF{#2}{#3}{
%             \equivalent{#2}{#3}
%         }
%     \end{proof}
% }{}

\tl_new:N \l__answer_label_tl
\bool_new:N \l__equivalent_switch_bool
\keys_define:nn {answer}{
    label.tl_set:N = \l__answer_label_tl,
    label.initial:n = 证明,
    switch .bool_set:N = \l__equivalent_switch_bool,%控制“必要性”和“充分性”的先后，默认先“必要性”后“充分性”
    switch .default:n  = true,
    switch .initial:n  = false,
}
\NewDocumentEnvironment{answer}{O{} +o +b}%结合了equivalent命令的习题解答环境
{
    \bool_if:NTF \g__show_answer_bool{
    \group_begin:
    \keys_set:nn {answer}{#1}
    \begin{proof}[\tl_use:N\l__answer_label_tl]
        \IfNoValueTF{#2}{#3}{
            \equivalent{#2}{#3}
        }
    \end{proof}
    \group_end:
    }{}
}{}

\NewDocumentCommand{\equivalent}{O{} +m +m}{%证明充要条件的命令
    \group_begin:
    \keys_set:nn {answer}{#1}
    \bool_if:NTF \l__equivalent_switch_bool{
        \par \noindent \framebox{$\xLongleftarrow{\text{\normalsize 充分性}}$}
        \par \vspace*{5pt} #2
        \par \vspace*{5pt} \noindent \framebox{$\xLongrightarrow{\text{\normalsize 必要性}}$}
        \par \vspace*{5pt} #3
        \par
    }{
        \par \noindent \framebox{$\xLongrightarrow{\text{\normalsize 必要性}}$}
        \par \vspace*{5pt} #2
        \par \vspace*{5pt} \noindent \framebox{$\xLongleftarrow{\text{\normalsize 充分性}}$}
        \par \vspace*{5pt} #3
        \par
    }
    \group_end:
}
\dim_new:N \l_overlay_vertical_dim
\dim_new:N \l_overlay_horizontal_dim
\fp_new:N \l_overlay_scale_fp
\tl_new:N \l_overlay_anchor_tl
\tl_new:N \l_overlay_color_tl
\keys_define:nn {xdyy/tikz}{
    vertical.dim_set:N = \l_overlay_vertical_dim,
    vertical.default:n = -1pt,
    vertical.initial:n = -1pt,
    v.dim_set:N = \l_overlay_vertical_dim,
    v.default:n = -1pt,
    v.initial:n = -1pt,
    horizontal.dim_set:N = \l_overlay_horizontal_dim,
    horizontal.default:n = 0pt,
    horizontal.initial:n = 0pt,
    h.dim_set:N = \l_overlay_horizontal_dim,
    h.default:n = 0pt,
    h.initial:n = 0pt,
    scale.fp_set:N = \l_overlay_scale_fp,
    scale.default:n = 1.2,
    scale.initial:n = 1.2,
    anchor.tl_set:N = \l_overlay_anchor_tl,
    anchor.default:n = base,
    anchor.initial:n = base,
    color.tl_set:N = \l_overlay_color_tl,
    color.default:n = red!90,
    color.initial:n = red!90,
}
\tl_new:N \l_test_if_dollar_in_tl
\tl_new:N \l_test_if_dollar_out_tl
\NewDocumentCommand{\overlay}{D(){} O{?} O{$\Longleftrightarrow$} }{
    \group_begin:
    \keys_set:nn {xdyy/tikz}{#1}
    \tl_set:Nn \l_test_if_dollar_in_tl {#3}
    \tl_if_empty:NF \l_test_if_dollar_in_tl{
    \str_if_in:NnTF \l_test_if_dollar_in_tl{$}{
        \tl_remove_all:Nn \l_test_if_dollar_in_tl {$}
        \tl_set:Nn \l_test_if_dollar_out_tl {\l_test_if_dollar_in_tl}
    }{
        \tl_set:Nn \l_test_if_dollar_out_tl {\l_test_if_dollar_in_tl}
    }
}
    \tikz[baseline,anchor=base]{\node[anchor=\tl_use:N \l_overlay_anchor_tl][scale=\fp_use:N\l_overlay_scale_fp] at (\dim_use:N \l_overlay_horizontal_dim,\dim_use:N \l_overlay_vertical_dim) {\textcolor{\tl_use:N \l_overlay_color_tl}{\textup{#2}}};
    \node at (0,0) {$\tl_use:N\l_test_if_dollar_out_tl $}; }
    \group_end:
    % \keys_set:nn {xdyy/tikz}{v,h,scale,anchor,color}
}
\newcommand{\ifequivalent}{\overlay}

%新定义一些变量
\dim_new:N \l_deduce_node_distance_dim
\dim_new:N \l_deduce_inner_sep_dim
\dim_new:N \l_deduce_leftbox_brace_distance
\dim_new:N \l_deduce_rightbox_brace_distance
\dim_new:N \l_deduce_leftbox_arrow_distance
\dim_new:N \l_deduce_rightbox_arrow_distance
\dim_new:N \l_deduce_arrow_vertical_distance_dim
\bool_new:N \l_deduce_leftbrace_show_bool
\bool_new:N \l_deduce_rightbrace_show_bool
\tl_new:N \l_deduce_arrow_tl
\tl_new:N \l_deduce_leftbox_align_tl
\tl_new:N \l_deduce_rightbox_align_tl

%定义key-value值, 基本从key的名称就可以看出作用
\keys_define:nn{deduce}{
    node~distance.dim_set:N = \l_deduce_node_distance_dim,
    node~distance.initial:n = 8pt,
    node~distance.default:n = 8pt,
    inner~sep.dim_set:N=\l_deduce_inner_sep_dim,
    inner~sep.initial:n=2pt,
    inner~sep.default:n=2pt,
    arrow.code:n = {
        \tl_set:Nn \l_deduce_arrow_tl {#1}
        \tl_if_eq:nnF {$\Longrightarrow$}{#1}{
            \dim_set:Nn \l_deduce_arrow_vertical_distance_dim {4pt}
        }
    },
    arrow.initial:n = $\Longrightarrow$,
    arrow.default:n = $\Longrightarrow$,
    leftboxbrace~distance.dim_set:N=\l_deduce_leftbox_brace_distance,
    leftboxbrace~distance.default:n=2pt,
    leftboxbrace~distance.initial:n=2pt,
    rightboxbrace~distance.dim_set:N=\l_deduce_rightbox_brace_distance,
    rightboxbrace~distance.default:n=2pt,
    rightboxbrace~distance.initial:n=2pt,
    leftboxarrow~distance.dim_set:N=\l_deduce_leftbox_arrow_distance,
    leftboxarrow~distance.default:n=0pt,
    leftboxarrow~distance.initial:n=0pt,
    rightboxarrow~distance.dim_set:N=\l_deduce_rightbox_arrow_distance,
    rightboxarrow~distance.default:n=0pt,
    rightboxarrow~distance.initial:n=0pt,
    leftbrace. choice: ,
    leftbrace/show.code:n = {
        \bool_set_true:N \l_deduce_leftbrace_show_bool
    },
    leftbrace/hide.code:n = {
        \bool_set_false:N \l_deduce_leftbrace_show_bool
        \dim_set:Nn \l_deduce_node_distance_dim {5pt}
        \dim_set:Nn \l_deduce_leftbox_arrow_distance {4pt}
        \dim_set:Nn \l_deduce_rightbox_arrow_distance {10pt}
    },
    leftbrace.initial:n = show,
    leftbrace.default:n = show,
    rightbrace. choice: ,
    rightbrace/show.code:n = {
        \bool_set_true:N \l_deduce_rightbrace_show_bool
    },
    rightbrace/hide.code:n = {
        \bool_set_false:N \l_deduce_rightbrace_show_bool
        \dim_set:Nn \l_deduce_node_distance_dim {14pt}
        \dim_set:Nn \l_deduce_rightbox_arrow_distance {-8pt}
    },
    rightbrace.initial:n = show,
    rightbrace.default:n = show,
    brace .choice:,
    brace/show.code:n = {
        \bool_set_true:N \l_deduce_rightbrace_show_bool
        \bool_set_true:N \l_deduce_leftbrace_show_bool
    },
    brace/hide.code:n = {
        \bool_set_false:N \l_deduce_leftbrace_show_bool
        \bool_set_false:N \l_deduce_rightbrace_show_bool
    },
    brace.initial:n = show,
    brace.default:n = show,
    arrow~vertical.dim_set:N = \l_deduce_arrow_vertical_distance_dim,
    arrow~vertical.initial:n = 0pt,
    arrow~vertical.default:n = 0pt,
    arrow~v.dim_set:N = \l_deduce_arrow_vertical_distance_dim,
    arrow~v.initial:n = 0pt,
    arrow~v.default:n = 0pt,
    left~align.tl_set:N = \l_deduce_leftbox_align_tl,
    left~align.initial:n = left,
    left~align.default:n = left,
    leftbox~align.tl_set:N = \l_deduce_leftbox_align_tl,
    leftbox~align.initial:n = left,
    leftbox~align.default:n = left,
    right~align.tl_set:N = \l_deduce_rightbox_align_tl,
    right~align.initial:n = left,
    right~align.default:n = left,
    rightbox~align.tl_set:N = \l_deduce_rightbox_align_tl,
    rightbox~align.initial:n = left,
    rightbox~align.default:n = left,
}
%\deduce[<key-value>]{左边的内容}{右边的内容}
%左右的内容要换行只能用\\, 经测试不能用itemize和align*等命令, 原因是左右内容是用TikZ的node命令实现的
%嵌套会出现一些小问题, 比如距离会变得略微奇怪, 需要手动调整（不过都提供了接口可以调整）
\NewDocumentCommand{\deduce}{O{} +m +m}{ %推导命令deduce
\group_begin:
    \keys_set:nn{deduce}{#1}
    \begin{tikzpicture}[node~distance=\dim_use:N\l_deduce_node_distance_dim]
        \node[align=\l_deduce_leftbox_align_tl,inner~sep=\dim_use:N\l_deduce_inner_sep_dim](leftbox) {#2};
        \node[yshift=\dim_use:N\l_deduce_arrow_vertical_distance_dim,right=\dim_eval:n{\l_deduce_node_distance_dim+\l_deduce_leftbox_arrow_distance} of~leftbox,inner~sep=\dim_use:N\l_deduce_inner_sep_dim](arrow){\tl_use:N\l_deduce_arrow_tl};
        \node[align=\l_deduce_rightbox_align_tl,yshift=-\dim_use:N\l_deduce_arrow_vertical_distance_dim,right=\dim_eval:n{\l_deduce_node_distance_dim+\l_deduce_rightbox_arrow_distance} of~arrow,inner~sep=\dim_use:N\l_deduce_inner_sep_dim](rightbox) {#3};%这里之所以要yshift减掉arrow上升的量，是为了保证右边的rightbox“不动”, 因为rightbox是由right of arrow来的，所以会跟着一起动
        \bool_if:NT \l_deduce_leftbrace_show_bool{
            \draw[line~width=0pt,decorate,decoration={brace,amplitude=3pt,raise=\dim_use:N\l_deduce_leftbox_brace_distance}](leftbox.north~east)--(leftbox.south~east) ;
        }
        \bool_if:NTF \l_deduce_rightbrace_show_bool{
            \draw[decorate,decoration={brace,mirror,amplitude=3pt,raise=\dim_use:N\l_deduce_rightbox_brace_distance}](rightbox.north~west)--(rightbox.south~west) ;
        }{
            % \keys_set:nn {deduce}{node~distance=0pt,rightboxarrow~distance=0pt} 
            % keys_set无效的原因: 这两个控制的是在draw brace前面出现的, 现在控制显然影响不了前面的, 但是顺序也换不了（因为brace的定位需要先node出box来）
            %解决: 直接在bool判断的code里就调整两个距离
        }
    \end{tikzpicture}
    %之所以要用下面的命令“恢复”, 是想要每个deduce命令的设置是独立的, 而不能前面的设置完了影响后者
    % \keys_set:nn{deduce}{node~distance,inner~sep,arrow,leftboxbrace~distance,rightboxbrace~distance,leftboxarrow~distance,rightboxarrow~distance,
    % leftbrace,rightbrace,brace,arrow~vertical,arrow~v,
    % leftbox~align,rightbox~align,left~align,right~align
    % }
\group_end:
}
\ExplSyntaxOff



%多种方法 method环境
\newlist{method}{enumerate}{1}
\setlist[method, 1]{%
    label           =   {\bfseries Method \Roman*.},
    labelindent=-3em ,labelwidth=1cm, labelsep*=0.5em, leftmargin =!
}
%%分类讨论 case环境
\newlist{case}{enumerate}{2}
\setlist[case, 1]{%
    label           =   {\bfseries Case \arabic*.},
    % labelindent=-3em ,labelwidth=1.3cm, labelsep*=1em, leftmargin=20pt
    labelindent=! ,labelwidth=1.3cm, labelsep*=0.5em, leftmargin =1.7cm
    % labelindent=\parindent, leftmargin=0pt, widest=0, itemindent=*
}
\setlist[case, 2]{%
    label           =   {\bfseries Subcase \arabic{casei}.\arabic*.},
    % labelindent=-1em ,labelwidth=1.3cm, labelsep*=1em, leftmargin =20pt
    labelindent=-0.5em ,labelwidth=1.3cm, labelsep*=0.5em, leftmargin =0cm
}
%%分步环境 step
\newlist{step}{enumerate}{2}
\setlist[step, 1]{%
    label           =   {\bfseries Step \arabic*.},
    labelindent=! ,labelwidth=1.3cm, labelsep*=0.5em, leftmargin =1.7cm
    % labelindent=\parindent, leftmargin=0pt, widest=0, itemindent=*
}
\setlist[step, 2]{%
    label           =   {\bfseries Substep \arabic{stepi}.\arabic*.},
    labelindent=-0.5em ,labelwidth=1.3cm, labelsep*=0.5em, leftmargin =0cm
}

%%%%自定义定理类环境
\declaretheorem[name=定义,refname={定义},within=section]{definition}
\declaretheorem[name=定理,refname={定理},within=section]{theorem}
\declaretheorem[name=引理,refname={引理}]{lemma}
\declaretheorem[name=推论,refname={推论},sibling=theorem]{corollary}
\declaretheorem[name=命题,refname={命题},sibling=theorem]{proposition}
\declaretheorem[name=性质,refname={性质},sibling=theorem]{property}
% \declaretheorem[name=注,refname={注},style=remark,shaded={rulecolor=Lavender,rulewidth=1pt,bgcolor={rgb}{1,1,1}}]{remark}
\NewDocumentEnvironment{remark}{+b}{%
    \par\makebox[0pt][r]{%
        \color{red!90}\textdbend \,\, %
        \textbf{\large \textcolor{red}{注:}}}
    #1
}{\par}
\tcolorboxenvironment{remark}{
        enhanced jigsaw, parbox=false,
        breakable,boxrule=0pt,
        northeastsouthwest,allcolors=yellow!20!red,allrules=2pt,colback=pink!10,left=2mm,bottom=6mm,right=2mm,
}
% \tcolorboxenvironment{definition}{
%         enhanced jigsaw, 
%         breakable,boxrule=0pt,
%         northeastsouthwest,allcolors=blue!70,allrules=2pt,colback=blue!10,left=6mm,bottom=7mm,right=6mm,parbox=false
% }
\declaretheorem[name=例,refname={例}]{example}
\declaretheorem[thmbox={style=S,bodystyle={\normalfont},headstyle=\bfseries\kaishu 分析}]{analysis}
\declaretheorem[name=提示,style=remark,numbered=no,shaded={rulecolor=teal,rulewidth=1pt,bgcolor={rgb}{1,1,1}}]{hint}
% \declaretheorem[name=证明]{proof}
%下面是amsthm对proof环境的定义，由于上面的“分析”环境的定义会造成proof环境的bug，就再次重定义这个proof环境
% \makeatletter
\renewenvironment{proof}[1][\proofname]{\par
\pushQED{\qed}%
\normalfont \topsep6\p@\@plus6\p@\relax
\trivlist
\item\relax
{\itshape
#1\@addpunct{.}}\hspace\labelsep\ignorespaces
}{%
\popQED\endtrivlist\@endpefalse
}
% \makeatother