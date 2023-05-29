
% ipsj.cls  (C) 2012 Information Processing Society of Japan
% Copyright (C) 1995-2010 by Hiroshi Nakashima, Yasuki Saito and
%                            The Editorial Board of the IPSJ Journal

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{ipsj}
% [2011/08/22-11/25 Test.ver IPSJ class]
% [2011/12/15-2012/04/24 v1.01-v1.02e IPSJ class]
% [2012/06/01 v1.03 IPSJ class]
 [2012/10/12 v1.04 IPSJ class]



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\RequirePackage{color}

\newif\if@Proof \@Prooffalse%
\DeclareOption{Proof}{\@Prooftrue}


\newif\if@LAYOUT \@LAYOUTfalse%
\DeclareOption{LAYOUT}{\@LAYOUTtrue}

\newif\if@Japanese \@Japanesefalse
\DeclareOption{Japanese}{\@Japanesetrue}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%% Document Styles %%%%%%
%\newif\ifDS@printer \DS@printerfalse
\newif\ifDS@english \DS@englishfalse
\newif\ifDS@technote \DS@technotefalse
\newif\ifDS@preface \DS@prefacefalse
\newif\ifDS@techrep \DS@techrepfalse
\newif\ifDS@sigrecommended \DS@sigrecommendedfalse
\newif\ifDS@invited \DS@invitedfalse
\newif\ifDS@online \DS@onlinefalse
\newif\ifDS@draft \DS@draftfalse
%======================
\newif\ifDS@PRO \DS@PROfalse
\newif\ifDS@ACS \DS@ACSfalse
\newif\ifDS@TOD \DS@TODfalse
\newif\ifDS@TOM \DS@TOMfalse
\newif\ifDS@CVA \DS@CVAfalse
\newif\ifDS@TBIO \DS@TBIOfalse
\newif\ifDS@SLDM \DS@SLDMfalse
\newif\ifDS@CDS \DS@CDSfalse
%======================
\newif\ifDS@English \DS@Englishfalse
\newif\ifDS@Data \DS@Datafalse
\newif\ifDS@Survey \DS@Surveyfalse
\newif\ifDS@Research \DS@Researchfalse
\newif\ifDS@Short \DS@Shortfalse
\newif\ifDS@systems \DS@systemsfalse
\newif\ifDS@services \DS@servicesfalse
\newif\ifDS@devices \DS@devicesfalse
%======================
\newif\ifDS@abstract \DS@abstractfalse
\newif\ifDS@EEE \DS@EEEfalse
%======================
\newif\ifDS@OT \DS@OTfalse


%% v1.02b
\newif\ifDS@techreq \DS@techreqfalse
\newif\ifDS@noauthor \DS@noauthorfalse

%% v1.4
\newif\ifDS@system \DS@systemfalse


\DeclareOption{DAM}{\def\@type{DAM}\def\@Mtype{DAM}}

\DeclareOption{english}{\DS@englishtrue\DS@EEEtrue}
%%%
\DeclareOption{technote}{\DS@technotetrue\def\@Mtype{technote}}
\DeclareOption{sigrecommended}{\DS@sigrecommendedtrue\def\@Mtype{sigrecommended}}
\DeclareOption{invited}{\DS@invitedtrue\def\@Mtype{invited}}
%=============
\DeclareOption{PRO}{\DS@PROtrue\def\@type{PRO}\DS@EEEfalse}
\DeclareOption{ACS}{\DS@ACStrue\def\@type{ACS}\DS@EEEfalse}
\DeclareOption{TOD}{\DS@TODtrue\def\@type{TOD}\DS@EEEfalse}
\DeclareOption{TOM}{\DS@TOMtrue\def\@type{TOM}\DS@EEEfalse}
\DeclareOption{CDS}{\DS@CDStrue\def\@type{CDS}\DS@EEEfalse}
%%
\DeclareOption{CVA}{\DS@englishtrue\DS@CVAtrue\def\@type{CVA}\DS@EEEfalse}
\DeclareOption{TBIO}{\DS@englishtrue\DS@TBIOtrue\def\@type{TBIO}\def\@Mtype{TBIOM}\DS@EEEfalse}
\DeclareOption{SLDM}{\DS@englishtrue\DS@SLDMtrue\def\@type{SLDM}\DS@EEEfalse}
%%
\DeclareOption{English}{\DS@englishtrue\DS@Englishtrue\def\@type{English}\DS@EEEfalse}

\DeclareOption{Data}{\DS@Datatrue\def\@type{Data}\def\@Mtype{Data}\DS@EEEfalse}
\DeclareOption{Survey}{\DS@Surveytrue\def\@type{Survey}\def\@Mtype{Survey}\DS@EEEfalse}
\DeclareOption{Research}{\DS@Researchtrue\def\@type{Research}\def\@Mtype{Research}\DS@EEEfalse}
\DeclareOption{Short}{\DS@Shorttrue\def\@type{Short}\def\@Mtype{Short}\DS@EEEfalse}

\DeclareOption{abstract}{\DS@abstracttrue\def\@Mtype{abstract}\DS@EEEfalse}

\DeclareOption{systems}{\DS@systemstrue\def\@Mtype{systems}\DS@EEEfalse}
\DeclareOption{services}{\DS@servicestrue\def\@Mtype{services}\DS@EEEfalse}
\DeclareOption{devices}{\DS@devicestrue\def\@Mtype{devices}\DS@EEEfalse}

\DeclareOption{preface}{\DS@prefacetrue}
\DeclareOption{draft}{\DS@drafttrue}

\DeclareOption{OT}{\DS@OTtrue}

%% v1.02b
\DeclareOption{techreq}{\DS@techreqtrue}
\DeclareOption{noauthor}{\DS@noauthortrue}


%% v1.4
\DeclareOption{system}{\DS@systemtrue\def\@Mtype{system}\DS@EEEfalse}


%%%% parameter %%%%%%%%%
\unitlength=1mm
\predisplaypenalty=0
%%%%%%%%%%%%%%%%%%%%%%%%



%%A4: 210mm, 297mm
\newcounter{@paper}
\newif\if@landscape \@landscapefalse
\newcommand{\@ptsize}{}
\newif\if@restonecol
\newif\if@titlepage
\@titlepagetrue
\newif\if@openright
\newif\if@mainmatter \@mainmattertrue
%\hour\time \divide\hour by 60\relax
%\@tempcnta\hour \multiply\@tempcnta 60\relax
%\minute\time \advance\minute-\@tempcnta
\newif\if@stysize \@stysizefalse
\newif\if@enablejfam \@enablejfamtrue
\DeclareOption{a4paper}{\setcounter{@paper}{1}%
  \setlength\paperheight {297mm}%
  \setlength\paperwidth  {210mm}}
\DeclareOption{a5paper}{\setcounter{@paper}{2}%
  \setlength\paperheight {210mm}
  \setlength\paperwidth  {148mm}}
\DeclareOption{b4paper}{\setcounter{@paper}{3}%
  \setlength\paperheight {364mm}
  \setlength\paperwidth  {257mm}}
\DeclareOption{b5paper}{\setcounter{@paper}{4}%
  \setlength\paperheight {257mm}
  \setlength\paperwidth  {182mm}}
\DeclareOption{a4j}{\setcounter{@paper}{1}\@stysizetrue
  \setlength\paperheight {297mm}%
  \setlength\paperwidth  {210mm}}
\DeclareOption{a5j}{\setcounter{@paper}{2}\@stysizetrue
  \setlength\paperheight {210mm}
  \setlength\paperwidth  {148mm}}
\DeclareOption{b4j}{\setcounter{@paper}{3}\@stysizetrue
  \setlength\paperheight {364mm}
  \setlength\paperwidth  {257mm}}
\DeclareOption{b5j}{\setcounter{@paper}{4}\@stysizetrue
  \setlength\paperheight {257mm}
  \setlength\paperwidth  {182mm}}
\DeclareOption{a4p}{\setcounter{@paper}{1}\@stysizetrue
  \setlength\paperheight {297mm}%
  \setlength\paperwidth  {210mm}}
\DeclareOption{a5p}{\setcounter{@paper}{2}\@stysizetrue
  \setlength\paperheight {210mm}
  \setlength\paperwidth  {148mm}}
\DeclareOption{b4p}{\setcounter{@paper}{3}\@stysizetrue
  \setlength\paperheight {364mm}
  \setlength\paperwidth  {257mm}}
\DeclareOption{b5p}{\setcounter{@paper}{4}\@stysizetrue
  \setlength\paperheight {257mm}
  \setlength\paperwidth  {182mm}}
\if@compatibility
  \renewcommand{\@ptsize}{0}
\else
  \DeclareOption{10pt}{\renewcommand{\@ptsize}{0}}
\fi
\DeclareOption{11pt}{\renewcommand{\@ptsize}{1}}
\DeclareOption{12pt}{\renewcommand{\@ptsize}{2}}
\DeclareOption{landscape}{\@landscapetrue
  \setlength\@tempdima{\paperheight}%
  \setlength\paperheight{\paperwidth}%
  \setlength\paperwidth{\@tempdima}}
%\DeclareOption{tombow}{%
%  \tombowtrue \tombowdatetrue
%  \setlength{\@tombowwidth}{.1\p@}%
%  \@bannertoken{%
%     \jobname\space:\space\number\year/\number\month/\number\day
%      (\number\hour:\number\minute)}
%  \maketombowbox}
%\DeclareOption{tombo}{%
%  \tombowtrue \tombowdatefalse
%  \setlength{\@tombowwidth}{.1\p@}%
%  \maketombowbox}
\DeclareOption{mentuke}{%
  \tombowtrue \tombowdatefalse
  \setlength{\@tombowwidth}{\z@}%
  \maketombowbox}
\DeclareOption{tate}{%
  \AtBeginDocument{\tate\message{《縦組モード》}%
                   \adjustbaseline}%
}
\DeclareOption{oneside}{\@twosidefalse}
\DeclareOption{twoside}{\@twosidetrue}
\DeclareOption{onecolumn}{\@twocolumnfalse}
\DeclareOption{twocolumn}{\@twocolumntrue}
\DeclareOption{titlepage}{\@titlepagetrue}
\DeclareOption{notitlepage}{\@titlepagefalse}
\if@compatibility
\@openrighttrue
\else
\DeclareOption{openright}{\@openrighttrue}
\DeclareOption{openany}{\@openrightfalse}
\fi
\DeclareOption{leqno}{\input{leqno.clo}}
\DeclareOption{fleqn}{\input{fleqn.clo}}
\DeclareOption{openbib}{%
  \AtEndOfPackage{%
   \renewcommand\@openbib@code{%
      \advance\leftmargin\bibindent
      \itemindent -\bibindent
      \listparindent \itemindent
      \parsep \z@
      }%
   \renewcommand\newblock{\par}}}
\if@compatibility
\else
  \DeclareOption{disablejfam}{\@enablejfamfalse}
\fi
%\DeclareOption{draft}{\setlength\overfullrule{5pt}}
\DeclareOption{final}{\setlength\overfullrule{0pt}}

%%
%% Option
%%
\ExecuteOptions{a4paper,10pt,twoside,twocolumn,final,openright,DAM,Prooffalse}%!!
\ProcessOptions\relax


%%
\newdimen\h
  \h=0.25mm
\newdimen\JQ
  \JQ=0.7392507pt
\newdimen\Q
  \Q=0.71144pt

\newdimen\@Q \@Q=0.25mm


%%
%% Font
%%

\ifDS@english
\else
%%
\expandafter\let\csname JY1/mc/m/n/10\endcsname\relax
\expandafter\let\csname JY1/gt/m/n/10\endcsname\relax
%%%
\DeclareFontShape{JT1}{gt}{m}{it}{<-> ssub*gt/m/n}{}
\DeclareFontFamily{JT1}{mdg}{}
\DeclareFontShape{JT1}{mdg}{m}{n}{<-> ssub*gt/m/n}{}
\DeclareFontFamily{JT1}{gmb}{}
\DeclareFontShape{JT1}{gmb}{m}{n}{<-> ssub*gt/m/n}{}
\DeclareFontShape{JT1}{gmb}{bx}{n}{<-> ssub*gt/m/n}{}
\DeclareFontFamily{JT1}{sg}{}
\DeclareFontShape{JT1}{sg}{m}{n}{<-> ssub*gt/m/n}{}
\DeclareFontShape{JT1}{sg}{bx}{n}{<-> ssub*gt/m/n}{}
\DeclareFontFamily{JT1}{gbm}{}
\DeclareFontShape{JT1}{gbm}{m}{n}{<-> ssub*gt/m/n}{}
\DeclareFontShape{JT1}{gbm}{bx}{n}{<-> ssub*gt/m/n}{}
\DeclareFontFamily{JT1}{jun}{}
\DeclareFontShape{JT1}{jun}{b}{n}{<-> ssub*gt/m/n}{}
\DeclareFontShape{JT1}{jun}{m}{n}{<-> ssub*gt/m/n}{}
\DeclareFontShape{JT1}{jun}{bx}{n}{<-> ssub*gt/m/n}{}
\DeclareFontShape{JT1}{mc}{m}{it}{<-> ssub*mc/m/n}{}
\DeclareFontShape{JY1}{mc}{m}{it}{<-> ssub*mc/m/n}{}%% v1.4
%
\DeclareFontShape{JT1}{mc}{bx}{it}{<-> ssub*gt/m/n}{}%% v1.4
\DeclareFontShape{JY1}{mc}{bx}{it}{<-> ssub*gt/m/n}{}%% v1.4


%%%
\DeclareFontShape{JT1}{mc}{m}{sc}{<-> ssub*mc/m/n}{}
\DeclareFontShape{JY1}{mc}{m}{sc}{<-> ssub*mc/m/n}{}

\DeclareFontShape{JY1}{mc}{m}{n}{<5>jis <6> jis
 <7> s * [1.05571] jis
 <8> s * [1.01625] jis
 <9> s * [0.98556] jis
 <10> s * [0.961] jis
 <10.95> s * [0.94516] jis
 <12> s * [0.98567] jis
 <14.4> s * [0.92406] jis
 <17.28> s * [0.85561] jis
 <20.74> s * [0.88545] jis
 <24.88> s * [0.9508] jis
 <-> jis
 }{}
%
\DeclareFontShape{JY1}{gt}{m}{n}{<5>jisg <6> jisg
 <7> s * [1.05571] jisg
 <8> s * [1.01625] jisg
 <9> s * [0.98556] jisg
 <10> s * [0.961] jisg
 <10.95> s * [0.94516] jisg
 <12> s * [0.98567] jisg
 <14.4> s * [0.92406] jisg
 <17.28> s * [0.85561] jisg
 <20.74> s * [0.88545] jisg
 <24.88> s * [0.9508] jisg
 <-> jisg
 }{}
\fi


%
\DeclareFontShape{OT1}{cmr}{m}{n}%
     {<-5.5>   cmr5%
      <5.5-6.5>   cmr6%
      <6.5-7.5>   cmr7%
      <7.5-8.5>   cmr8%
      <8.5-11.5>  cmr10%
      <11.5-16.5> cmr12%
      <16.5->   cmr17%
      }{}
\DeclareFontShape{OT1}{cmr}{m}{sl}%
     {  <-8.5>   cmsl8%
      <8.5-9.5>  cmsl9%
      <9.5-11.5> cmsl10%
      <11.5->    cmsl12%
      }{}
\DeclareFontShape{OT1}{cmr}{m}{it}%
     {%
      <-7.5>     cmti7%
      <7.5-8.5>  cmti8%
      <8.5-9.5>  cmti9%
      <9.5-11.5> cmti10%
      <11.5->    cmti12%
      }{}
\DeclareFontShape{OT1}{cmr}{m}{sc}%
     {%
      <->cmcsc10%
      }{}
\DeclareFontShape{OT1}{cmr}{m}{ui}
     {%
      <-> cmu10%
      }{}
%%%%%%% bold series
\DeclareFontShape{OT1}{cmr}{b}{n}
     {%
      <-> cmb10%
      }{}
%%%%%%%% bold extended series
\DeclareFontShape{OT1}{cmr}{bx}{n}
   {%
      <-5.5>     cmbx5
      <5.5-6.5>  cmbx6
      <6.5-7.5>  cmbx7
      <7.5-8.5>  cmbx8
      <8.5-9.5>  cmbx9%
      <9.5-11.5> cmbx10%
      <11.5->    cmbx12%
      }{}
\DeclareFontShape{OT1}{cmr}{bx}{sl}
      {%
      <-> cmbxsl10%
      }{}
\DeclareFontShape{OT1}{cmr}{bx}{it}
      {%
      <-> cmbxti10%
      }{}
\DeclareFontShape{OT1}{cmr}{bx}{ui}
      {<->sub*cmr/m/ui}{}
%OMScmsy
\DeclareFontShape{OMS}{cmsy}{m}{n}{%
      <-5.5>    cmsy5
      <5.5-6.5> cmsy6
      <6.5-7.5> cmsy7
      <7.5-8.5> cmsy8
      <8.5-9.5> cmsy9
      <9.5->    cmsy10%
      }{}
\DeclareFontShape{OMS}{cmsy}{b}{n}{%
      <-5.5>    cmbsy5
      <5.5-6.5> cmbsy6
      <6.5-7.5> cmbsy7
      <7.5-8.5> cmbsy8
      <8.5-9.5> cmbsy9
      <9.5->    cmbsy10%
      }{}
%OMXcmex
\DeclareFontShape{OMX}{cmex}{m}{n}{%
   <-> cmex10%
   }{}
%OMLcmmi
\DeclareFontShape{OML}{cmm}{m}{it}%
     {<-5.5>    cmmi5
      <5.5-6.5> cmmi6
      <6.5-7.5> cmmi7
      <7.5-8.5> cmmi8
      <8.5-9.5> cmmi9%
      <9.5-11.5>cmmi10%
      <11.5->   cmmi12%
      }{}
\DeclareFontShape{OML}{cmm}{b}{it}{%
      <-5.5>    cmmib5
      <5.5-6.5> cmmib6
      <6.5-7.5> cmmib7
      <7.5-8.5> cmmib8
      <8.5-9.5> cmmib9%
      <9.5->    cmmib10%
      }{}
\DeclareFontShape{OML}{cmm}{bx}{it}%
   {<->ssub*cmm/b/it}{}
%%OT1cmtt
\DeclareFontShape{OT1}{cmtt}{m}{n}
     {%
      <-8.5>     cmtt8
      <8.5-9.5>  cmtt9%
      <9.5-11.5> cmtt10%
      <11.5->    cmtt12%
      }{}
%%%%%% make sure subst shapes are available
\DeclareFontShape{OT1}{cmtt}{m}{it}
     {%
      <-> cmitt10%
      }{}
\DeclareFontShape{OT1}{cmtt}{m}{sl}
     {%
      <-> cmsltt10%
      }{}
\DeclareFontShape{OT1}{cmtt}{m}{sc}
     {%
      <-> cmtcsc10%
      }{}
\DeclareFontShape{OT1}{cmtt}{m}{ui}
  {<->ssub*cmtt/m/it}{}
\DeclareFontShape{OT1}{cmtt}{bx}{n}
  {<->ssub*cmtt/m/n}{}
\DeclareFontShape{OT1}{cmtt}{bx}{it}
  {<->ssub*cmtt/m/it}{}
\DeclareFontShape{OT1}{cmtt}{bx}{ui}
  {<->ssub*cmtt/m/it}{}
%umsa
\DeclareFontFamily{U}{msa}{}
\DeclareFontShape{U}{msa}{m}{n}{
  <   -5.5> msam5
  <5.5-6.5> msam6
  <6.5-7.5> msam7
  <7.5-8.5> msam8
  <8.5-9.5> msam9
  <9.5-    > msam10
  }{}
\DeclareFontFamily{U}{msb}{}
\DeclareFontShape{U}{msb}{m}{n}{
  <   -5.5> msbm5
  <5.5-6.5> msbm6
  <6.5-7.5> msbm7
  <7.5-8.5> msbm8
  <8.5-9.5> msbm9
  <9.5-    > msbm10
  }{}

\DeclareFontShape{OT1}{cmss}{m}{n}
     {%
      <-8.5>cmss8%
      <8.5-9.5>cmss9%
      <9.5-11.5>cmss10%
      <11.5-16.5>cmss12%
      <16.5->cmss17%
      }{}
\DeclareFontShape{OT1}{cmss}{m}{it}
      {<->sub*cmss/m/sl}{}
\DeclareFontShape{OT1}{cmss}{m}{sl}
    {%
      <-8.5>cmssi8
      <8.5-9.5>cmssi9%
      <9.5-11.5>cmssi10%
      <11.5-16.5>cmssi12%
      <16.5->cmssi17%
      }{}
\DeclareFontShape{OT1}{cmss}{m}{sc}
       {<->sub*cmr/m/sc}{}
\DeclareFontShape{OT1}{cmss}{m}{ui}
       {<->sub*cmr/m/ui}{}
\DeclareFontShape{OT1}{cmss}{sbc}{n}
     {%
      <->cmssdc10%
     }{}
\DeclareFontShape{OT1}{cmss}{bx}{n}
     {%
      <->cmssbx10%
      }{}
\DeclareFontShape{OT1}{cmss}{bx}{ui}
       {<->sub*cmr/bx/ui}{}
%%for latexsym
\DeclareFontFamily{U}{lasy}{}
\DeclareFontShape{U}{lasy}{m}{n}{
 <   -5.5>lasy5
 <5.5-6.5>lasy6
 <6.5-7.5>lasy7
 <7.5-8.5>lasy8
 <8.5-9.5>lasy9
 <9.5-    >lasy10  }{}
\DeclareFontShape{U}{lasy}{b}{n}{
     <  -10> ssub * lasy/m/n
     <10-  > lasyb10  }{}
%%%



\ifDS@english
\else
%% FutoGo
 \DeclareFontFamily{JY1}{fgb}{}
 \DeclareFontShape{JY1}{fgb}{m}{n}{%
 <-14> s *[0.961] FutoGoB101-Bold-J.tfm%
 <14-> s *[1] FutoGoB101-Bold-J.tfm%
 }{}
 \DeclareFontFamily{JT1}{fgb}{}
 \DeclareFontShape{JT1}{fgb}{m}{n}{%
 <-> s *tmin10%
 }{}

%% FutoMin
 \DeclareFontFamily{JY1}{fmb}{}
 \DeclareFontShape{JY1}{fmb}{m}{n}{%
 <-14> s *[0.961] FutoMinA101-Bold-J.tfm%
 <14-> s *[1] FutoMinA101-Bold-J.tfm%
 }{}
 \DeclareFontFamily{JT1}{fmb}{}
 \DeclareFontShape{JT1}{fmb}{m}{n}{%
 <-> s *tmin10%
 }{}
\fi


\DeclareOldFontCommand{\rm}{\normalfont\rmfamily}{\mathrm}
\DeclareOldFontCommand{\sf}{\normalfont\sffamily}{\mathsf}
\DeclareOldFontCommand{\tt}{\normalfont\ttfamily}{\mathtt}
\DeclareOldFontCommand{\bf}{\normalfont\bfseries}{\mathbf}
\DeclareOldFontCommand{\it}{\normalfont\itshape}{\mathit}
\DeclareOldFontCommand{\sl}{\normalfont\slshape}{\@nomath\sl}
\DeclareOldFontCommand{\sc}{\normalfont\scshape}{\@nomath\sc}
\DeclareRobustCommand*{\cal}{\@fontswitch\relax\mathcal}
\DeclareRobustCommand*{\mit}{\@fontswitch\relax\mathnormal}


\newskip\ChtE
\newskip\CdpE
\newskip\CwdE
\newskip\CvsE



% normalsize
% J: 13Q x 21H
% E: 13Q x 18H

\ifDS@english
\renewcommand{\normalsize}{%
    \@setfontsize\normalsize{9.25pt}{12.80592pt}%
%  \kanjiskip\z@ \@plus .1zw \@minus .05zw
  \abovedisplayskip 9\p@ \@plus 3\p@ \@minus 4\p@
  \abovedisplayshortskip \z@ \@plus 2.5\p@
  \belowdisplayshortskip 5\p@ \@plus 2\p@ \@minus 2\p@
   \belowdisplayskip \abovedisplayskip
   \let\@listi\@listI}
 \normalsize
% \setbox0\hbox{\char\euc"A1A1}% "
% \setlength\Cht{\ht0}
% \setlength\Cdp{\dp0}
% \setlength\Cwd{\wd0}
% \setlength\Chs{\wd0}
 \setlength\ChtE{7.19269pt}
 \setlength\CdpE{1.28441pt}
 \setlength\CwdE{8.9005pt}
 \setlength\CvsE{12.80592pt}
\else
\renewcommand{\normalsize}{%
    \@setfontsize\normalsize{13\JQ}{21H}%
  \kanjiskip\z@ \@plus .1zw \@minus .05zw
  \abovedisplayskip 9\p@ \@plus 3\p@ \@minus 4\p@
  \abovedisplayshortskip \z@ \@plus 2.5\p@
  \belowdisplayshortskip 5\p@ \@plus 2\p@ \@minus 2\p@
   \belowdisplayskip \abovedisplayskip
   \let\@listi\@listI}
 \normalsize
 \setbox0\hbox{\char\euc"A1A1}% "
 \setlength\Cht{\ht0}
 \setlength\Cdp{\dp0}
 \setlength\Cwd{\wd0}
 \setlength\Cvs{\baselineskip}
 \setlength\Chs{\wd0}
\fi

\ifDS@english
\let\Cht\ChtE
\let\Cdp\CdpE
\let\Cwd\CwdE
\let\Cvs\CvsE
\else\fi



% small
% J: 12Q x 20H
% E: 12Q x 17H

\ifDS@english
 \newcommand{\small}{%
  \@setfontsize\small{8.53728pt}{9.960159pt}%
%  \kanjiskip\z@ \@plus .1zw \@minus .05zw
  \abovedisplayskip 6\p@ \@plus2\p@ \@minus4\p@
  \abovedisplayshortskip \z@ \@plus\p@
  \belowdisplayshortskip 3\p@ \@plus\p@ \@minus2\p@
  \def\@listi{\leftmargin\leftmargini
              \topsep 3\p@ \@plus \p@ \@minus \p@
              \parsep 1\p@ \@plus \p@ \@minus \p@
              \itemsep \parsep}%
  \belowdisplayskip \abovedisplayskip}
\else
\newcommand{\small}{%
  \@setfontsize\small{12\JQ}{20H}%
  \kanjiskip\z@ \@plus .1zw \@minus .05zw
  \abovedisplayskip 6\p@ \@plus2\p@ \@minus4\p@
  \abovedisplayshortskip \z@ \@plus\p@
  \belowdisplayshortskip 3\p@ \@plus\p@ \@minus2\p@
  \def\@listi{\leftmargin\leftmargini
              \topsep 3\p@ \@plus \p@ \@minus \p@
              \parsep 1\p@ \@plus \p@ \@minus \p@
              \itemsep \parsep}%
  \belowdisplayskip \abovedisplayskip}
\fi


% footnotesize
% J: 11Q x 18H
% E: 11Q x 13H

\ifDS@english
 \newcommand{\footnotesize}{%
%  \@setfontsize\footnotesize{7.82584pt}{9.24872pt}%
  \@setfontsize\footnotesize{7.82584pt}{9.24872pt}%
%  \kanjiskip\z@ \@plus .1zw \@minus .05zw
  \abovedisplayskip 5\p@ \@plus 1.5\p@ \@minus 3\p@
  \abovedisplayshortskip \z@ \@plus\p@
  \belowdisplayshortskip 2.5\p@ \@plus \p@ \@minus 1.5\p@
  \def\@listi{\leftmargin\leftmargini
              \topsep 2\p@ \@plus\p@ \@minus\p@
              \parsep 1\p@ \@plus\p@ \@minus\p@
              \itemsep \parsep}%
  \belowdisplayskip \abovedisplayskip}
\else
 \newcommand{\footnotesize}{%
  \@setfontsize\footnotesize{11\JQ}{18H}%
  \kanjiskip\z@ \@plus .1zw \@minus .05zw
  \abovedisplayskip 5\p@ \@plus 1.5\p@ \@minus 3\p@
  \abovedisplayshortskip \z@ \@plus\p@
  \belowdisplayshortskip 2.5\p@ \@plus \p@ \@minus 1.5\p@
  \def\@listi{\leftmargin\leftmargini
              \topsep 2\p@ \@plus\p@ \@minus\p@
              \parsep 1\p@ \@plus\p@ \@minus\p@
              \itemsep \parsep}%
  \belowdisplayskip \abovedisplayskip}
\fi



\ifDS@english
 \newcommand{\scriptsize}{\@setfontsize\scriptsize{10\Q}{12\h}}
\else
 \newcommand{\scriptsize}{\@setfontsize\scriptsize{10\JQ}{16H}}
\fi

 \newcommand{\tiny}{\@setfontsize\tiny\@vpt\@vipt}
 \newcommand{\large}{\@setfontsize\large\@xpt{22\JQ}}
 \newcommand{\Large}{\@setfontsize\Large\@xipt{27\JQ}}
 \newcommand{\LARGE}{\@setfontsize\LARGE\@xiipt{33\JQ}}
 \newcommand{\huge}{\@setfontsize\huge\@xivpt{25}}
 \newcommand{\Huge}{\@setfontsize\Huge\@xviipt{30}}



\setlength\floatsep    {1\Cvs \@plus .75\Cvs \@minus .25\Cvs}
\setlength\textfloatsep{1\Cvs \@plus .75\Cvs \@minus .25\Cvs}
\setlength\intextsep   {1\Cvs \@plus .75\Cvs \@minus .25\Cvs}
\setlength\dblfloatsep    {12\p@ \@plus 2\p@ \@minus 2\p@}
\setlength\dbltextfloatsep{20\p@ \@plus 2\p@ \@minus 4\p@}


\setlength\@fptop{0\p@ \@plus 1fil}
\setlength\@fpsep{8\p@ \@plus 2fil}
\setlength\@fpbot{0\p@ \@plus 1fil}
\setlength\@dblfptop{0\p@ \@plus 1fil}
\setlength\@dblfpsep{8\p@ \@plus 2fil}
\setlength\@dblfpbot{0\p@ \@plus 1fil}
\setlength\partopsep{2\p@ \@plus 1\p@ \@minus 1\p@}
\def\@listi{\leftmargin\leftmargini
  \parsep 4\p@ \@plus2\p@ \@minus\p@
  \topsep 8\p@ \@plus2\p@ \@minus4\p@
  \itemsep4\p@ \@plus2\p@ \@minus\p@}
\let\@listI\@listi
\@listi
\def\@listii{\leftmargin\leftmarginii
   \labelwidth\leftmarginii \advance\labelwidth-\labelsep
   \topsep  4\p@ \@plus2\p@ \@minus\p@
   \parsep  2\p@ \@plus\p@  \@minus\p@
   \itemsep\parsep}
\def\@listiii{\leftmargin\leftmarginiii
   \labelwidth\leftmarginiii \advance\labelwidth-\labelsep
   \topsep 2\p@  \@plus\p@\@minus\p@
   \parsep\z@
   \partopsep \p@ \@plus\z@ \@minus\p@
   \itemsep\topsep}
\def\@listiv {\leftmargin\leftmarginiv
              \labelwidth\leftmarginiv
              \advance\labelwidth-\labelsep}
\def\@listv  {\leftmargin\leftmarginv
              \labelwidth\leftmarginv
              \advance\labelwidth-\labelsep}
\def\@listvi {\leftmargin\leftmarginvi
              \labelwidth\leftmarginvi
              \advance\labelwidth-\labelsep}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%



\setlength\headheight{12\p@}
\setlength\headsep{4.5mm}
\ifDS@english
\setlength\topskip{7.19269pt}%% 1\Cht
\else
\setlength\topskip{1\Cht}
\fi
%\advance\topskip by 0.14748pt%%%%%%%%%%%
%\setlength\topskip{12.80592pt}
%\setlength\topskip{12Q}
\setlength\footskip{11.7mm} %
\if@compatibility
  \setlength\maxdepth{4\p@}
\else
  \setlength\maxdepth{.5\topskip}
\fi
\if@compatibility
  \if@stysize
    \ifnum\c@@paper=2 % A5
      \if@landscape
        \setlength\textwidth{47\Cwd}
      \else
        \setlength\textwidth{28\Cwd}
      \fi
    \else\ifnum\c@@paper=3 % B4
      \if@landscape
        \setlength\textwidth{75\Cwd}
      \else
        \setlength\textwidth{60\Cwd}
      \fi
    \else\ifnum\c@@paper=4 % B5
      \if@landscape
        \setlength\textwidth{60\Cwd}
      \else
        \setlength\textwidth{37\Cwd}
      \fi
    \else % A4 ant other
      \if@landscape
        \setlength\textwidth{73\Cwd}
      \else
        \setlength\textwidth{47\Cwd}
      \fi
    \fi\fi\fi
  \else
    \if@twocolumn
      \setlength\textwidth{52\Cwd}
    \else
      \setlength\textwidth{4.3in}
    \fi
  \fi
\else
  \if@stysize
    \if@twocolumn
      \setlength\textwidth{.8\paperwidth}
    \else
      \setlength\textwidth{.7\paperwidth}
    \fi
  \else
    \setlength\@tempdima{\paperwidth}
    \addtolength\@tempdima{-2in}
    \setlength\@tempdimb{327\p@}
    \if@twocolumn
      \ifdim\@tempdima>2\@tempdimb\relax
        \setlength\textwidth{2\@tempdimb}
      \else
        \setlength\textwidth{\@tempdima}
      \fi
    \else
      \ifdim\@tempdima>\@tempdimb\relax
        \setlength\textwidth{\@tempdimb}
      \else
        \setlength\textwidth{\@tempdima}
      \fi
    \fi
  \fi
\fi
\@settopoint\textwidth
\if@compatibility
  \if@stysize
    \ifnum\c@@paper=2 % A5
      \if@landscape
        \setlength\textheight{17\Cvs}
      \else
        \setlength\textheight{28\Cvs}
      \fi
    \else\ifnum\c@@paper=3 % B4
      \if@landscape
        \setlength\textheight{38\Cvs}
      \else
        \setlength\textheight{57\Cvs}
      \fi
    \else\ifnum\c@@paper=4 % B5
      \if@landscape
        \setlength\textheight{22\Cvs}
      \else
        \setlength\textheight{35\Cvs}
      \fi
    \else % A4 and other
      \if@landscape
        \setlength\textheight{27\Cvs}
      \else
        \setlength\textheight{43\Cvs}
      \fi
    \fi\fi\fi
    \addtolength\textheight{\topskip}
    \addtolength\textheight{\baselineskip}
  \else
  \setlength\textheight{554\p@}
  \fi
\else
  \if@stysize
    \setlength\textheight{.70\paperheight}
  \else
    \setlength\@tempdima{\paperheight}
    \addtolength\@tempdima{-2in}
    \addtolength\@tempdima{-1.5in}
    \divide\@tempdima\baselineskip
    \@tempcnta\@tempdima
    \setlength\textheight{\@tempcnta\baselineskip}
  \fi
\fi
\addtolength\textheight{\topskip}
\@settopoint\textheight
\if@compatibility
  \if@stysize
    \setlength\topmargin{-.3in}
  \else
    \setlength\topmargin{.75in}
  \fi
\else
  \setlength\topmargin{\paperheight}
  \addtolength\topmargin{-\headheight}
  \addtolength\topmargin{-\headsep}
  \addtolength\topmargin{-\textheight}
  \addtolength\topmargin{-\footskip}
  \if@stysize
    \ifnum\c@@paper=2 % A5
      \addtolength\topmargin{-1.3in}
    \else
      \addtolength\topmargin{-2.0in}
    \fi
  \else
    \addtolength\topmargin{-2.0in}
  \fi
  \addtolength\topmargin{-.5\topmargin}
\fi
\@settopoint\topmargin
\if@twocolumn
  \setlength\marginparsep{10\p@}
\else
  \setlength\marginparsep{10\p@}
\fi
\setlength\marginparpush{5\p@}
\if@compatibility
    \setlength\oddsidemargin   {.5in}
    \setlength\evensidemargin  {1.5in}
    \setlength\marginparwidth {.75in}
  \if@twocolumn
     \setlength\oddsidemargin  {30\p@}
     \setlength\evensidemargin {30\p@}
     \setlength\marginparwidth {48\p@}
  \fi
  \if@stysize
    \if@twocolumn\else
      \setlength\oddsidemargin{0\p@}
      \setlength\evensidemargin{0\p@}
    \fi
  \fi
\else
  \setlength\@tempdima{\paperwidth}
  \addtolength\@tempdima{-\textwidth}
  \if@twoside
    \setlength\oddsidemargin{.4\@tempdima}
  \else
    \setlength\oddsidemargin{.5\@tempdima}
  \fi
  \addtolength\oddsidemargin{-1in}
  \setlength\evensidemargin{\paperwidth}
  \addtolength\evensidemargin{-2in}
  \addtolength\evensidemargin{-\textwidth}
  \addtolength\evensidemargin{-\oddsidemargin}
  \@settopoint\oddsidemargin
  \@settopoint\evensidemargin
  \if@twoside
    \setlength\marginparwidth{.6\@tempdima}
    \addtolength\marginparwidth{-.4in}
  \else
    \setlength\marginparwidth{.5\@tempdima}
    \addtolength\marginparwidth{-.4in}
  \fi
  \ifdim \marginparwidth >2in
    \setlength\marginparwidth{2in}
  \fi
  \@settopoint\marginparwidth
\fi

%
\headheight5mm
%
\headsep9.5mm


\if@Proof
 \def\@Rtop{\rlap{\smash{\rule[-\headsep]{0.05mm}{10mm}%
  \rule[-\headsep]{10mm}{0.05mm}}}}
 \def\@Ltop{\llap{\smash{\rule[-\headsep]{10mm}{0.05mm}%
  \rule[-\headsep]{0.05mm}{10mm}}}}
 \def\@Rbot{\rlap{\smash{\raisebox{1\footskip}
  {\rule[-10mm]{0.05mm}{10mm}\rule{10mm}{0.05mm}}}}}
 \def\@Lbot{\llap{\smash{\raisebox{1\footskip}
  {\rule{10mm}{0.05mm}\rule[-10mm]{0.05mm}{10mm}}}}}
\else
 \let\@Rtop\relax\let\@Ltop\relax\let\@Rbot\relax\let\@Lbot\relax
\fi


%
\newif\if@enablejfam \@enablejfamtrue%

\setlength\lineskip{1\p@}%
\setlength\normallineskip{1\p@}%
\renewcommand{\baselinestretch}{}%
\newskip\normalbaselineskip

\setlength\parskip{\z@}%


\ifDS@english
\setlength\parindent{1em}%
\else
\setlength\parindent{1zw}%
\fi


%penalty
\@lowpenalty   51
\@medpenalty  151
\@highpenalty 301

%%float
\setcounter{topnumber}{8}
\setcounter{bottomnumber}{8}
\setcounter{totalnumber}{16}
\setcounter{dbltopnumber}{2}

%\renewcommand{\topfraction}{1}
%\renewcommand{\bottomfraction}{1}
%\renewcommand{\textfraction}{.05}
%\renewcommand{\floatpagefraction}{.05}
%\renewcommand{\dbltopfraction}{.95}
%\renewcommand{\dblfloatpagefraction}{.05}

\def\topfraction{1}
\def\bottomfraction{1}
\def\textfraction{0}
\def\floatpagefraction{0}
\def\dbltopfraction{1}
\def\dblfloatpagefraction{0}
%

%=================================================================================

%
%\def\SIGHead{\ifDS@english%
%{IPSJ Transactions on}%
%\else 情報処理学会論文誌\fi}%%


%\def\signame@DAM{\ifDS@english%
%Electronic Preprint for Journal of Information Processing%
%\else 情報処理学会論文誌\fi}%%

\ifDS@english
\newcommand{\COMS}{}
\else
\newcommand{\COMS}{}
\fi


\def\signame@ACS{\ifDS@english%
{{{\SIGHead} }}%
\else {\SIGHead}\hskip12\JQ \fi}%
%
\def\signame@PRO{\ifDS@english%
{{{\SIGHead} }}%
\else {\SIGHead}\hskip12\JQ \fi}%
%
\def\signame@TOM{\ifDS@english%
{{{\SIGHead} }}%
\else {\SIGHead}\hskip12\JQ \fi}%
%
\def\signame@TOD{\ifDS@english%
{{{\SIGHead} }}%
\else {\SIGHead}\hskip12\JQ \fi}%
%
\def\signame@CDS{\ifDS@english%
{{{\SIGHead} }}%
\else {\SIGHead}\hskip12\JQ \COMS%
\fi}%
%
%%%
\def\signame@CVA{{{{\SIGHead} }}}
\def\signame@TBIO{{{{\SIGHead} }}}
\def\signame@SLDM{{{{\SIGHead} }}}
\def\signame@English{{{}}}
%%%
\let\signame@Data\signame@TBIO
\let\signame@Survey\signame@TBIO
%\let\signame@Research\signame@CVA
\let\signame@Short\signame@SLDM



%%%<<<< 1.02
\def\signame@Research{%
   \ifDS@CVA
      {{\SIGHead} Computer Vision and Applications}%
   \else
      \ifDS@CDS%
         \ifDS@english%
         {{{\SIGHead} Consumer Devices \& Systems}}%
         \else {\SIGHead}\hskip12\JQ \COMS%
         \fi
      \else\fi
   \fi
}%
%




\def\signame{\csname signame@\@type\endcsname}

\def\type#1{\def\@type{#1}}


\def\HeadfontE{%
\ifDS@english
   \fontsize{13\Q}{0\h}\sffamily\bfseries\selectfont%
\else
   \if@Japanese
   \fontsize{13\Q}{0\h}\sffamily\bfseries\selectfont%
   \else
   \fontsize{13\Q}{0\h}\usefont{OT1}{phv}{b}{n}\selectfont%
   \fi
\fi
}


\def\HeadfontJ{\fontsize{12\JQ}{0\h}\bfseries\selectfont}

\def\DOIHeadfont{\fontsize{11\Q}{0\h}%\usefont{OT1}{phv}{m}{n}\selectfont
\sffamily\selectfont}

%============================================================


\def\Mtype#1{\def\@type{#1}}

\def\SHUBETUname{\csname SHUBETUname@\@Mtype\endcsname}



\def\SHUBETUfontE{\fontsize{18\Q}{0\h}\bfseries%
%\usefont{OT1}{ptm}{b}{n}%Times-Bold*
\selectfont
}

\def\SHUBETUfontJ{%
\if@Japanese
\fontsize{18\JQ}{0\h}\usefont{JY1}{gt}{m}{n}%
\selectfont%
\else
\fontsize{18\JQ}{0\h}\usefont{JY1}{fgb}{m}{n}%
\selectfont%
\fi
}


\def\SHUBETUname@DAM{\ifDS@english%
%Regular Paper%
\else \leavevmode \fi}%%

%%%
\def\SHUBETUname@invited{\ifDS@english%
%Invited Paper%
%\else 招待論文\fi}
\fi}

\def\SHUBETUname@sigrecommended{\ifDS@english%
%Recommended Paper%
%\else 推薦論文\fi}%
\fi}

\def\SHUBETUname@technote{\ifDS@english%
%Technical Note%
%\else テクニカルノート\fi}%
\fi}

%%%<<<< 1.02
\def\SHUBETUname@abstract{\ifDS@english%
Abstract%
\else 発表概要\fi}%


\ifDS@english
\newcommand{\COMSYS}{Paper on Consumer Systems}
\newcommand{\COMSER}{Paper on Consumer Services}
\newcommand{\COMSDV}{Paper on Consumer Devices}
\else
\newcommand{\COMSYS}{コンシューマ・システム論文}
\newcommand{\COMSER}{コンシューマ・サービス論文}
\newcommand{\COMSDV}{コンシューマ・デバイス論文}
\fi



\def\SHUBETUname@systems{\ifDS@english%
Paper on Consumer Systems%
\else \COMSYS%
\fi}

\def\SHUBETUname@services{\ifDS@english%
Paper on Consumer Services%
\else \COMSER%
\fi}

\def\SHUBETUname@devices{\ifDS@english%
Paper on Consumer Devices%
\else \COMSDV%
\fi}

\def\SHUBETUname@Research{\ifDS@english%
Research Paper%
\else 研究論文\fi}


\def\SHUBETUname@Data{Database/Software Paper}
\def\SHUBETUname@Survey{Survey Paper}
\def\SHUBETUname@TBIOM{Original Paper}

\def\SHUBETUname@Short{Short Paper}


\def\SHUBETUname@system{Systems Paper}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


\def\ps@plain{\let\@mkboth\@gobbletwo
   \let\ps@jpl@in\ps@plain
   \let\@oddhead\@empty
   \def\@oddfoot{\reset@font\hfil\thepage\hfil}%
   \let\@evenhead\@empty
   \let\@evenfoot\@oddfoot}
\let\ps@jpl@in\ps@plain
\def\ps@headnombre{\let\@mkboth\@gobbletwo
    \let\ps@jpl@in\ps@headnombre
  \def\@evenhead{\thepage\hfil}%
  \def\@oddhead{\hfil\thepage}%
  \let\@oddfoot\@empty\let\@evenfoot\@empty}
\def\ps@footnombre{\let\@mkboth\@gobbletwo
    \let\ps@jpl@in\ps@footnombre
  \def\@evenfoot{\thepage\hfil}%
  \def\@oddfoot{\hfil\thepage}%
  \let\@oddhead\@empty\let\@evenhead\@empty}


\def\ps@empty{%
 \def\@oddhead{\@Ltop\hfil\@Rtop}%
 \let\@evenhead\@oddhead
 \def\@oddfoot{\@Lbot\hfil\@Rbot}%
 \let\@evenfoot\@oddfoot
 \let\@mkboth\@gobbletwo
}

%===============================================================


% copyright
\DeclareTextCommandDefault{\textcopyrighttx}{%
{\fontfamily{txsy}\textcircled{%
\usefont{OT1}{ptm}{m}{n}\selectfont%
c}}}



\def\bothashira{%
\ifDS@english
 \fontsize{10\Q}{0\h}\normalfont\selectfont%
\else
   \if@Japanese
      \fontsize{10\Q}{0\h}\normalfont\selectfont%
   \else
      \fontsize{10\Q}{0\h}\usefont{OT1}{ptm}{m}{n}%Times
      \selectfont%
   \fi
\fi
}


\def\botnomble{%
\ifDS@english
 \fontsize{13\Q}{0\h}\normalfont\selectfont%
\else
   \if@Japanese
      \fontsize{13\Q}{0\h}\normalfont\selectfont%
   \else
      \fontsize{13\Q}{0\h}\usefont{OT1}{ptm}{m}{n}%Times
      \selectfont%
   \fi
\fi
}





%%%<<<< 1.02
\ifDS@english
\def\ps@IPSJTITLEheadings{%
 \def\@oddhead{\@Ltop%
\rlap{\small{%%
%%
\ifx\signame\relax%
{\HeadfontE{\signame@DEF}}%%
\else
{\HeadfontE{\signame}}%%
\fi
%%%%%
%vol
%%%%%
%===============
\hskip12\Q{\HeadfontE{}}%
%===============
  \ifDS@CVA\relax\else
  \ifDS@TBIO\relax\else
  \ifDS@SLDM\relax\else
%  \ifDS@English\relax\else
%%%%%%
%no
%%%%%%
\hskip1em{\HeadfontE{}}%
\fi\fi\fi%\fi
%%%%%%
%page
%%%%%%
\bgroup
%%%
%
\ifDS@ACS
   \hskip12\Q{\HeadfontE{}}\ %
   \HeadfontE{}%
\else\relax\fi
%
\ifDS@PRO
   \ifDS@abstract
      \hskip12\Q{\HeadfontE{\pageref{ipsj@firstpage}}}\ %
      \HeadfontE{(\@monthyear)}%
   \else
   \hskip12\Q{\HeadfontE{}}\ %
   \HeadfontE{}%
   \fi
\else\relax\fi
%
\ifDS@TOD
   \hskip12\Q{\HeadfontE{}}\ %
   \HeadfontE{}%
\else\relax\fi
%
\ifDS@TOM
   \hskip12\Q{\HeadfontE{}}\ %
   \HeadfontE{}%
\else\relax\fi
%
\ifDS@TBIO
   \hskip12\Q{\HeadfontE{}}\ %
   \HeadfontE{}%
\else\relax\fi
%
\ifDS@CVA
   \hskip12\Q{\HeadfontE{}}\ %
   \HeadfontE{}%
\else\relax\fi
%
\ifDS@SLDM
   \hskip12\Q{\HeadfontE{}}\ %
   \HeadfontE{}%
\else\relax\fi
%
\ifDS@English
   \hskip12\Q{\HeadfontE{}}\ %
   \HeadfontE{}%
\else\relax\fi
%
\ifDS@CDS
   \hskip12\Q{\HeadfontE{}}\ %
   \HeadfontE{}%
\else\relax\fi
%
%%%
\egroup
}%
}%
%%%%%
\smash{\raisebox{-6mm}{\rlap{%
{\DOIHeadfont%
%%%%
\bgroup
\ifDS@TBIO
   [DOI: 10.2197/ipsjtbio.\number\c@volume.\pageref{ipsj@firstpage}]
\else\fi
%
\ifDS@CVA
   [DOI: 10.2197/ipsjtcva.\number\c@volume.\pageref{ipsj@firstpage}]
\else\fi
%
\ifDS@SLDM
   [DOI: 10.2197/ipsjtsldm.\number\c@volume.\pageref{ipsj@firstpage}]
\else\fi
%
\ifDS@English
%   [DOI: 10.2197/ipsjjip.\number\c@volume.\pageref{ipsj@firstpage}]
\else\fi
%
%%
%%
%%%%%
\egroup
}%
}}}%
\hfil\@Rtop}%
%%%%%
 \let\@evenhead\@oddhead
 \def\@oddfoot{\@Lbot%
\rlap{%\fontsize{10\Q}{0\h}%
%\usefont{OT1}{ptm}{m}{n}%Times
%\selectfont%
%\normalfont%
{\bothashira%
% \copyright \ {\@footyear} Information Processing Society of Japan%
}}%
\hfil
%\fontsize{13\Q}{0\h}%
%\usefont{OT1}{ptm}{m}{n}%Times
%\selectfont%
%\normalsize
{\botnomble
%%%%%%
%\ifDS@ACS{\thepage}\else\fi
%\ifDS@PRO{\thepage}\else\fi
%\ifDS@TOD{\thepage}\else\fi
%\ifDS@TOM{\thepage}\else\fi
%\ifDS@TBIO{\thepage}\else\fi
%\ifDS@CVA{\thepage}\else\fi
%\ifDS@SLDM{\thepage}\else\fi
%\ifDS@English{\thepage}\else\fi
%\ifDS@CDS{\thepage}\else\fi
%%%%%
\@Rbot}%
% \let\@evenfoot\@oddfoot
% \let\@mkboth\@gobbletwo
}}
%%%
%%%%%%%%%
\else
%%%%%%%%%
%%%
\def\ps@IPSJTITLEheadings{%
 \def\@oddhead{\@Ltop%
\rlap{\small%
%%
\ifx\signame\relax%
{\HeadfontJ{\signame@DEF}}%%
\else
{\HeadfontJ{\signame}}%%
\fi
%%%%%
{%%
\hskip12\JQ{\HeadfontE{}}%
\hskip12\JQ{\HeadfontE{}}%
\ifDS@abstract
   \hskip12\Q{\HeadfontE{}}\ %
   \HeadfontE{}%
\else
\hskip12\JQ{\HeadfontE{}}\ %
\HeadfontE{}%
\fi
}}%
%%%%
\smash{\raisebox{-6mm}{\rlap{%
{\DOIHeadfont%%
}%
}}}%
\hfil\@Rtop}%
%%
 \let\@evenhead\@oddhead
 \def\@oddfoot{\@Lbot%
\rlap{%
%\fontsize{10\Q}{0\h}\usefont{OT1}{ptm}{m}{n}%Times
%\selectfont%
{\bothashira%
%{\textcopyrighttx} \ {\@footyear} Information Processing Society of Japan%
}}%
\hfil%
%\fontsize{13\Q}{0\h}%
%\usefont{OT1}{ptm}{m}{n}%Times
%\selectfont%
%{\botnomble%
%{\thepage}}%
\@Rbot}%
% \let\@evenfoot\@oddfoot
% \let\@mkboth\@gobbletwo
}
\fi








%===================================================================
%%%
\ifDS@english
\def\ps@headings{%
 \def\@oddhead{\@Ltop%
\rlap{\small{%%
%%
\ifx\signame\relax%
{\HeadfontE{\signame@DEF}}%%
\else
{\HeadfontE{\signame}}%%
\fi
%%%%%
%vol
%%%%%
%===============
\hskip12\Q{\HeadfontE{}}%
%===============
  \ifDS@CVA\relax\else
  \ifDS@TBIO\relax\else
  \ifDS@SLDM\relax\else
%  \ifDS@English\relax\else
%%%%%%
%no
%%%%%%
%\hskip1em{\HeadfontE{No.\number\c@number}}%
\fi\fi\fi%\fi
%%%%%%
%page
%%%%%%
\bgroup
%%%
%
\ifDS@ACS
   %\hskip12\Q{\HeadfontE{\pageref{ipsj@firstpage}--\pageref{ipsj@lastpage}}}\ %
   %\HeadfontE{(\@monthyear)}%
\else\relax\fi
%
\ifDS@PRO
   %\hskip12\Q{\HeadfontE{\pageref{ipsj@firstpage}--\pageref{ipsj@lastpage}}}\ %
   %\HeadfontE{(\@monthyear)}%
\else\relax\fi
%
\ifDS@TOD
   %\hskip12\Q{\HeadfontE{\pageref{ipsj@firstpage}--\pageref{ipsj@lastpage}}}\ %
   %\HeadfontE{(\@monthyear)}%
\else\relax\fi
%
\ifDS@TOM
   %\hskip12\Q{\HeadfontE{\pageref{ipsj@firstpage}--\pageref{ipsj@lastpage}}}\ %
   %\HeadfontE{(\@monthyear)}%
\else\relax\fi
%
\ifDS@TBIO
   %\hskip12\Q{\HeadfontE{\pageref{ipsj@firstpage}--\pageref{ipsj@lastpage}}}\ %
   %\HeadfontE{(\@monthyear)}%
\else\relax\fi
%
\ifDS@CVA
   %\hskip12\Q{\HeadfontE{\pageref{ipsj@firstpage}--\pageref{ipsj@lastpage}}}\ %
   %\HeadfontE{(\@monthyear)}%
\else\relax\fi
%
\ifDS@SLDM
   %\hskip12\Q{\HeadfontE{\pageref{ipsj@firstpage}--\pageref{ipsj@lastpage}}}\ %
   %\HeadfontE{(\@monthyear)}%
\else\relax\fi
%
\ifDS@English
   %\hskip12\Q{\HeadfontE{\pageref{ipsj@firstpage}--\pageref{ipsj@lastpage}}}\ %
   %\HeadfontE{(\@monthyear)}%
\else\relax\fi
%
\ifDS@CDS
   %\hskip12\Q{\HeadfontE{\pageref{ipsj@firstpage}--\pageref{ipsj@lastpage}}}\ %
   %\HeadfontE{(\@monthyear)}%
\else\relax\fi
%
%%%
\egroup
}%
}%
%%%%%
\smash{\raisebox{-6mm}{\rlap{%
{\DOIHeadfont%
%%%%
}%
}}}%
\hfil\@Rtop}%
%%%%%
 \let\@evenhead\@oddhead
 \def\@oddfoot{\@Lbot%
\rlap{%
%\fontsize{10\Q}{0\h}\usefont{OT1}{ptm}{m}{n}%Times
%\selectfont%
{\bothashira%
%\copyright \ {\@footyear} Information Processing Society of Japan%
}}%
\hfil
%\fontsize{13\Q}{0\h}\usefont{OT1}{ptm}{m}{n}%Times
%\selectfont%
{\botnomble%
%%%%%%
%\ifDS@ACS{\thepage}\else\fi
%\ifDS@PRO{\thepage}\else\fi
%\ifDS@TOD{\thepage}\else\fi
%\ifDS@TOM{\thepage}\else\fi
%\ifDS@TBIO{\thepage}\else\fi
%\ifDS@CVA{\thepage}\else\fi
%\ifDS@SLDM{\thepage}\else\fi
%\ifDS@English{\thepage}\else\fi
%\ifDS@CDS{\thepage}\else\fi
%%%%%
\@Rbot}}%
 \let\@evenhead\@oddhead
 \def\@evenfoot{\@Lbot%
\rlap{%
%\fontsize{10\Q}{0\h}\usefont{OT1}{ptm}{m}{n}%Times
%\selectfont%
{\bothashira%
%\copyright \ {\@footyear} Information Processing Society of Japan%
}}%
\hfil
%\fontsize{13\Q}{0\h}\usefont{OT1}{ptm}{m}{n}%Times
%\selectfont%
{\botnomble%
%%%%%%
%\ifDS@ACS{\thepage}\else\fi
%\ifDS@PRO{\thepage}\else\fi
%\ifDS@TOD{\thepage}\else\fi
%\ifDS@TOM{\thepage}\else\fi
%\ifDS@TBIO{\thepage}\else\fi
%\ifDS@CVA{\thepage}\else\fi
%\ifDS@SLDM{\thepage}\else\fi
%\ifDS@English{\thepage}\else\fi
%\ifDS@CDS{\thepage}\else\fi
%%%%%
\@Rbot}}%
% \let\@evenfoot\@oddfoot
% \let\@mkboth\@gobbletwo
}
%%%
%%%%%%%%%
\else
%%%%%%%%%
%%%
\def\ps@headings{%
 \def\@oddhead{\@Ltop%
\rlap{\small%
%%
\ifx\signame\relax%
{\HeadfontJ{\signame@DEF}}%%
\else
{\HeadfontJ{\signame}}%%
\fi
%%%%%
{%%
\hskip12\JQ{\HeadfontE{}}%
\hskip12\JQ{\HeadfontE{}}%
\hskip12\JQ{\HeadfontE{}}\ %
\HeadfontE{}}}%
%%%%
\smash{\raisebox{-6mm}{\rlap{%
{\DOIHeadfont%%
}%
}}}%
\hfil\@Rtop}%
%%
 \let\@evenhead\@oddhead
 \def\@oddfoot{\@Lbot%
\rlap{%\fontsize{10\Q}{0\h}\usefont{OT1}{ptm}{m}{n}%Times
%\selectfont%
{\bothashira%
%{\textcopyrighttx} \ {\@footyear} Information Processing Society of Japan%
}}%
\hfil%
%\fontsize{13\Q}{0H}\usefont{OT1}{ptm}{m}{n}%Times
%\selectfont%
%{\botnomble%
%{\thepage}}%
\@Rbot}%
 \let\@evenhead\@oddhead
 \def\@evenfoot{\@Lbot%
\rlap{%\fontsize{10\Q}{0\h}\usefont{OT1}{ptm}{m}{n}%Times
%\selectfont%
{\bothashira%
%{\textcopyrighttx} \ {\@footyear} Information Processing Society of Japan%
}}%
\hfil%
%\fontsize{13\Q}{0H}\usefont{OT1}{ptm}{m}{n}%Times
%\selectfont%
%{\botnomble%
%{\thepage}}%
\@Rbot}%
% \let\@evenfoot\@oddfoot
% \let\@mkboth\@gobbletwo
}
\fi







%%%<<<< 1.02

\def\ipsj@year{%
\ifDS@EEE
\ifnum\c@year<\z@
%\c@year1992 \advance\c@year\c@volume
\fi\fi
\ifDS@ACS
\ifnum\c@year<\z@
\c@year2007 \advance\c@year\c@volume
\fi\fi
\ifDS@PRO
\ifnum\c@year<\z@
\c@year2007 \advance\c@year\c@volume
\fi\fi
\ifDS@TOD
\ifnum\c@year<\z@
\c@year2007 \advance\c@year\c@volume
\fi\fi
\ifDS@TOM
\ifnum\c@year<\z@
\c@year2007 \advance\c@year\c@volume
\fi\fi
\ifDS@TBIO
\ifnum\c@year<\z@
\c@year2007 \advance\c@year\c@volume
\fi\fi
\ifDS@CVA
\ifnum\c@year<\z@
\c@year2008 \advance\c@year\c@volume %!!
\fi\fi
\ifDS@SLDM
\ifnum\c@year<\z@
\c@year2007 \advance\c@year\c@volume
\fi\fi
\ifDS@English
\ifnum\c@year<\z@
\c@year1992 \advance\c@year\c@volume
\fi\fi
\ifDS@CDS
\ifnum\c@year<\z@
\c@year2010 \advance\c@year\c@volume
\fi\fi
%%
%===
\ifnum\c@year<\z@
\c@year1959 \advance\c@year\c@volume
\fi
\number\c@year
%===
}




%%%<<<< 1.02
\def\ipsj@month{{%
	\@tempcnta\ifDS@online\ipsj@olh@month \else
		\ifnum\c@month<\z@ \c@number \else \c@month \fi \fi \relax
   \ifDS@English
	\ifcase\@tempcnta???\or Jan.\or Apr.\or July\or Oct.\else
		???\fi
   \else
	\ifcase\@tempcnta???\or Jan.\or Feb.\or Mar.\or Apr.\or May\or
		June\or July\or Aug.\or Sep.\or Oct.\or Nov.\or Dec.\else
		???\fi
   \fi
}}





\def\@monthyear{\ipsj@month \hskip.5\Cwd \ipsj@year}

%\def\@footyear{\ipsj@year}
\def\@footyear{2020}

\newcounter{volume} \c@volume\z@
\newcounter{number} \c@number\z@
\newcounter{month} \c@month\m@ne
\newcounter{year} \c@year\m@ne


\expandafter\let\csname c@巻数\endcsname\c@volume
\expandafter\let\csname c@号数\endcsname\c@number
\expandafter\let\csname c@月数\endcsname\c@month
\expandafter\let\csname c@年数\endcsname\c@year



\AtBeginDocument{\label{ipsj@firstpage}}
\AtEndDocument{%
 \clearpage
 \addtocounter{page}{-1}%
 \immediate\write\@auxout
  {\string\newlabel{ipsj@lastpage}{{}{\thepage}}}%
}


%==========================================================================================================================


\def\jtitle{\@ifnextchar[%
 {\d@jtitle}{\s@jtitle}}
\def\d@jtitle[#1]#2{\gdef\hd@title{#1}\gdef\@jtitle{#2}}
\def\s@jtitle#1{\gdef\hd@title{#1}\gdef\@jtitle{#1}}
\def\@jtitle{}
\def\hd@title{}
\def\etitle#1{\gdef\@etitle{#1}}
\def\@etitle{}


\def\p@thanks#1{\footnotemark
  \protected@xdef\@thanks{\@thanks
    \protect{\noindent$\m@th^\thefootnote$~#1\protect\par}}}



%=================================================================================
% author,affiliate
%=================================================================================

\newcount\author@count
\newcount\label@count
\newcount\email@count
\newcount\affiliate@count
\newcount\offsetemail
\newcount\paffiliate@count



\ifDS@english
\def\author#1#2{%
\@ifnextchar[%
{\@author{#1}{#2}}
{\@author{#1}{#2}[]}
}
%====
\else
%====
\def\author#1#2#3{%
\@ifnextchar[%
{\@author{#1}{#2}{#3}}
{\@author{#1}{#2}{#3}[]}
}
\fi



\ifDS@english
\def\@author#1#2[#3]{%
 \advance\author@count\@ne
\expandafter\def\csname authorname\the\author@count\endcsname{#1}
%%
\edef\@labellist{\zap@space#2 \@empty}
\@for\@temp:=\@labellist\do{%
 \advance\label@count\@ne
\expandafter\edef\csname authorlabel\the\author@count @\the\label@count\endcsname{\@temp}}
\expandafter\edef\csname authorlabel@num@\the\author@count \endcsname{\the\label@count}
\label@count\z@
\def\_{\leavevmode \kern.06em\vbox{\hrule\@width.3em}}%%%!!!!
\edef\@emaillist{\zap@space#3 \@empty}
\@for\@temp:=\@emaillist\do{%
 \advance\email@count\@ne
\expandafter\edef\csname authoremail\the\author@count @\the\email@count\endcsname{\@temp}%
}%
\expandafter\edef\csname authoremail@num@\the\author@count \endcsname{\the\email@count}%
\email@count\z@
}%
%===
\else
%===
\def\@author#1#2#3[#4]{%
 \advance\author@count\@ne
\expandafter\def\csname authorname\the\author@count\endcsname{#1}
%%
\expandafter\def\csname eauthorname\the\author@count\endcsname{#2}
%%
\edef\@labellist{\zap@space#3 \@empty}
\@for\@temp:=\@labellist\do{%
 \advance\label@count\@ne
\expandafter\edef\csname authorlabel\the\author@count @\the\label@count\endcsname{\@temp}}
\expandafter\edef\csname authorlabel@num@\the\author@count \endcsname{\the\label@count}
\label@count\z@
%%
\def\_{\leavevmode \kern.06em\vbox{\hrule\@width.3em}}%%%!!!!
\edef\@emaillist{\zap@space#4 \@empty}
\@for\@temp:=\@emaillist\do{%
 \advance\email@count\@ne
\expandafter\edef\csname authoremail\the\author@count @\the\email@count\endcsname{\@temp}}
\expandafter\edef\csname authoremail@num@\the\author@count \endcsname{\the\email@count}
\email@count\z@
}
\fi









\def\affiliate#1#2{%
%\expandafter\def\csname affiliate@#1\endcsname{#2}
\advance\affiliate@count\@ne
\expandafter\edef\csname affiliate@num@#1\endcsname{\the\affiliate@count}%
%\typeout{>>>>>>\csname affiliate@1\endcsname}
\expandafter\def\csname affiliate@\the\affiliate@count\endcsname{#2}%
}


\def\paffiliate#1#2{%
%\advance\affiliate@count\@ne
\advance\paffiliate@count\@ne
\expandafter\edef\csname paffiliate@num@#1\endcsname{$\dagger$\the\paffiliate@count}%
\expandafter\def\csname paffiliate@\the\paffiliate@count\endcsname{#2}%
}



\def\authoroutput#1{%
%\begin{center}
\bgroup
\offsetemail\z@
\count@\@ne
\advance\author@count\@ne
%%%
%%%
%%%
\@whilenum{\count@<\author@count}\do{%
\mbox{% start
%
%% \csname #1authorfont\endcsname%% !! font
%
\ifDS@english
   \csname authorname\the\count@\endcsname %\csname affiliate@num@\endcsname
\else
   \csname #1authorname\the\count@\endcsname %\csname affiliate@num@\endcsname
\fi
%%%%%label
\null{}%
\expandafter\@tempcnta\csname authorlabel@num@\the\count@\endcsname
   \advance\@tempcnta\@ne
   \@tempcntb\@ne
{%
   \@whilenum{\@tempcntb<\@tempcnta}\do{%
      \edef\temp{\csname authorlabel\the\count@ @\the\@tempcntb\endcsname}%
      \textsuperscript{\csname #1labelfont\endcsname%% !! font
%%%change from here
%%%add paffiliate
         \expandafter\if\csname affiliate@num@\temp\endcsname\relax
            \csname paffiliate@num@\temp\endcsname%%affiliate
         \else
            \csname affiliate@num@\temp\endcsname
         \fi
%%%end
         \comma@or@relax@affilabel}%
      \advance\@tempcntb\@ne
}%
}%
%%%%%%email
\expandafter\@tempcnta\csname authoremail@num@\the\count@\endcsname\relax
   \ifnum\@tempcnta=\z@\relax\else\textsuperscript{,}\fi
   \advance\@tempcnta\@ne
   \@tempcntb\@ne
   \@whilenum{\@tempcntb<\@tempcnta}\do{%
         %\textsuperscript{\space}%
      \bgroup
         \advance\@tempcntb\offsetemail
         \textsuperscript{\csname #1labelfont\endcsname%% !! font
            \@alph{\@tempcntb}\rparen\comma@or@relax@email}%
      \egroup
      \advance\@tempcntb\@ne
   }%
\advance\@tempcntb-1\relax
\global\advance\offsetemail\@tempcntb
%
}%% end
%%
\csname #1break@or@oneskip\endcsname
%%
\advance\count@\@ne
%%%
}%
%%%%%%
%\end{center}%
\egroup
}







\def\breakauthorline#1{%
   \edef\temp@break{\zap@space#1 \@empty}
   \@for\@temp:=\temp@break\do{%
      \expandafter\def\csname break@\@temp\endcsname{\\}%
   }%
}

\def\breakeauthorline#1{%
   \edef\temp@break{\zap@space#1 \@empty}
   \@for\@temp:=\temp@break\do{%
      \expandafter\def\csname ebreak@\@temp\endcsname{\\}%
   }%
}

\def\break@or@oneskip{%
   \expandafter\ifx\csname break@\the\count@\endcsname\relax
\ifDS@english
\hskip1em \else \hskip1zw \fi
   \else
      \csname break@\the\count@\endcsname
   \fi
}

\def\ebreak@or@oneskip{%
   \expandafter\ifx\csname ebreak@\the\count@\endcsname\relax
\ifDS@english
\hskip1em \else \hskip1zw \fi
   \else
      \csname ebreak@\the\count@\endcsname
   \fi
}



\ifDS@english
\let\breakauthorline\breakeauthorline
\else\fi



%%(
\def\rparen{)}%%



\def\comma@or@relax@affilabel{%
   \bgroup
   \count@\@tempcnta
   \advance\count@\m@ne
   \ifnum\count@=\@tempcntb
      \relax
   \else
      ,%\space
   \fi
   \egroup
}

\def\comma@or@relax@email{%
   \bgroup
   \count@\@tempcnta
   \advance\count@\m@ne
   \advance\@tempcntb-\offsetemail
   \ifnum\count@=\@tempcntb
      \relax
   \else
      ,%\space
   \fi
   \egroup
}








%=================================================================================
% maketitle
%=================================================================================



\def\maketitle{\par
  \begingroup
    \renewcommand{\thefootnote}{\fnsymbol{footnote}}%
    \def\@makefnmark{\hbox{\ifydir $\m@th^{\@thefnmark}$
      \else\hbox{\yoko$\m@th^{\@thefnmark}$}\fi}}%
     \long\def\@makefntext##1{\parindent 1em\noindent
       \hbox to1.8em{\hss$\m@th^{\@thefnmark}$}##1}%
    \if@twocolumn
      \ifnum \col@number=\@ne \@maketitle
      \else \twocolumn[\@maketitle]%
      \fi
    \else
      \newpage
      \global\@topnum\z@   % Prevents figures from going at top of page.
      \@maketitle
    \fi
     \thispagestyle{IPSJTITLEheadings}
\@thanks
  \endgroup
  \setcounter{footnote}{0}%
  \global\let\thanks\relax
  \global\let\maketitle\relax
  \global\let\p@thanks\relax
  \global\let\@thanks\@empty
  \global\let\@author\@empty
  \global\let\@eauthor\@empty
  \global\let\@date\@empty
  \global\let\@title\@empty
  \global\let\title\relax
  \global\let\@etitle\@empty
  \global\let\etitle\relax
%%%
  \global\let\author\relax
  \global\let\eauthor\relax
  \global\let\date\relax
  \global\let\and\relax
%%%
% affiliate
%%%
\bgroup
\setcounter{footnote}{0}
\def\thefootnote{\@arabic{\c@footnote}\protect\hphantom{\rparen}}
\advance\affiliate@count\@ne
\count@\@ne
\@whilenum{\count@<\affiliate@count}\do{%
   \refstepcounter{footnote}
   \footnotetext{\csname affiliate@\the\count@\endcsname}%
   \advance\count@\@ne
}%
\egroup
%%%
% paffiliate
%%%
\bgroup
\setcounter{footnote}{0}
\def\thefootnote{$\dagger$\@arabic{\c@footnote}\protect\hphantom{\rparen}}
\advance\paffiliate@count\@ne
\count@\@ne
\@whilenum{\count@<\paffiliate@count}\do{%
   \refstepcounter{footnote}
%%%%
 \ifDS@english
   \footnotetext{%
Presently with\ %
\csname paffiliate@\the\count@\endcsname}%
 \else
  \footnotetext{%
\def\\{\newline Presently with \ignorespaces}%
現在，\csname paffiliate@\the\count@\endcsname}%
  \fi%
   \advance\count@\@ne
}%
\egroup
%%%
%=====
% email
%=====
\bgroup
\setcounter{footnote}{0}
\def\thefootnote{\@alph{\c@footnote}\rparen}
\count@\@ne
\advance\author@count\@ne
   \@whilenum{\count@<\author@count}\do{%
      \expandafter\@tempcntb\csname authoremail@num@\the\count@ \endcsname
      \advance\@tempcntb\@ne
      \@tempcnta\@ne
      \@whilenum{\@tempcnta<\@tempcntb}\do{%
      \refstepcounter{footnote}
      \footnotetext{\csname authoremail\the\count@ @\the\@tempcnta\endcsname}%
      \advance\@tempcnta\@ne
      }%
   \advance\count@\@ne
   }%
\egroup
%=================
\setcounter{footnote}{0}
  }
%%%






%=================================================================================
% @maketitle
%=================================================================================

%%
\newskip\shubetutitlesep
\newskip\JEhonbunsep

\shubetutitlesep=6.2mm% default 10mm
\JEhonbunsep=13.7mm % default 15mm

\newskip\Etitleauthorsep
\newskip\Eauthorreceivesep
\newskip\Ereceiveabstsep
\newskip\Eabstkeywordsep

\Etitleauthorsep=10mm% default 12.5mm
\Eauthorreceivesep=5.5mm% default 7mm
\Ereceiveabstsep=2.5mm% default 6mm
\Eabstkeywordsep=4mm % default 5mm

%
\newskip\Jtitlejauthorsep
\newskip\Jauthorjreceivesep
\newskip\Jreceivejabstsep
\newskip\Jabstsepjkeyword
\newskip\Jkeywordetitle
\newskip\Jetitleeauthor
\newskip\Jeauthorereceivesep
\newskip\Jereceiveeabstsep
\newskip\Jeabstekeywordsep

\Jtitlejauthorsep=9mm% default 10mm
\Jauthorjreceivesep=6.5mm% default 7mm
\Jreceivejabstsep=2.5mm% default 5mm
\Jabstsepjkeyword=5.5mm % default 5mm
\Jkeywordetitle=14.2mm % default 16mm
\Jetitleeauthor=5.5mm% default 7mm
\Jeauthorereceivesep=5.5mm% default 6.5mm
\Jereceiveeabstsep=1.5mm% default 4.5mm
\Jeabstekeywordsep=5mm % default 5mm

%======================================================



\def\@maketitle{%
\newpage\null
%%%%%%%%%%
\ifDS@english
%%
\vskip-1.3mm%
\ifx\SHUBETUname\relax%
{\SHUBETUfontE{\SHUBETUname@DEF}}%%
\else
{\SHUBETUfontE{\SHUBETUname}}%%
\fi
%%
\else
\ifx\SHUBETUname\relax%
{\SHUBETUfontJ{\SHUBETUname@DEF}}%%
\else
{\SHUBETUfontJ{\SHUBETUname}}%%
\fi\fi
%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%
\vskip\shubetutitlesep%
%%%%%%%%%%%%%%%%%%%%%%%%
%%
%\vskip 10mm%
\begin{center}
\authortitle %%<---
\end{center}
%%%%%%%%%%%%%%%%%%%
%
}



\ifDS@english
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\def\authortitle{%
{\Engtitlefont%
{\@title}\par}
%%%%%%%%%%%%%%%%%%%%%%%
\vskip\Etitleauthorsep%
%%%%%%%%%%%%%%%%%%%%%%%
%% author %%%
{\Engeauthorfont%
\authoroutput{e}\par}%
%%%%%%%%%%%%%%%%%%%%%%%%%
\vskip\Eauthorreceivesep%
%%%%%%%%%%%%%%%%%%%%%%%%%
%{\Enguketukefont%
%{\@uketsuke}\par}%
%%%%%%%%%%%%%%%%%%%%%%%
\vskip\Ereceiveabstsep%
%%%%%%%%%%%%%%%%%%%%%%%
\mbox{\box\@abstractbox}\par%
%%%%%%%%%%%%%%%%%%%%%%%
\vskip\Eabstkeywordsep%
%%%%%%%%%%%%%%%%%%%%%%%
\let\@keywordbox\@ekeywordbox
\mbox{\box\@ekeywordbox}\par%
%%%%%%%%%%%%%%%%%%%
\vskip\JEhonbunsep%
%%%%%%%%%%%%%%%%%%%
}
%===========
\else
%==========
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\def\authortitle{%
{\jtitlefont%
{\@title}\par}%
%%%%%%%%%%%%%%%%%%%%%%%%
\vskip\Jtitlejauthorsep%
%%%%%%%%%%%%%%%%%%%%%%%%
%% author
%======
{\authorfont%
\authoroutput{}\par}%
%%%%%%%%%%%%%%%%%%%%%%%%%%
\vskip\Jauthorjreceivesep%
%%%%%%%%%%%%%%%%%%%%%%%%%%
%======
%{\juketukefont%
%{\@uketsuke}\par}%
%%%%%%%%%%%%%%%%%%%%%%%%
\vskip\Jreceivejabstsep%
%%%%%%%%%%%%%%%%%%%%%%%%
\mbox{\box\@abstractbox}\par%
%%%%%%%%%%%%%%%%%%%%%%%%
\vskip\Jabstsepjkeyword%
%%%%%%%%%%%%%%%%%%%%%%%%
\mbox{\box\@jkeywordbox}\par%
%%%%%%%%%%%%%%%%%%%%%%
\ifDS@noauthor%%% noauthor(by DICOMO2014) %%%
%% 欧文表記無しのスイッチ(etitle,eauthor,eabstract)
%% [noauthor]
\else%
\vskip\Jkeywordetitle%
%%%%%%%%%%%%%%%%%%%%%%
{\etitlefont%
{\bfseries{\@etitle}}}\par%
%%%%%%%%%%%%%%%%%%%%%%
\vskip\Jetitleeauthor%
%%%%%%%%%%%%%%%%%%%%%%
{\eauthorfont%
\authoroutput{e}\par}%
\fi%%% noauthor(by DICOMO2014) %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%
%\vskip\Jeauthorereceivesep%
%%%%%%%%%%%%%%%%%%%%%%%%%%%
%{\euketukefont%
%{\@euketsuke}\par}%
%%%%%%%%%%%%%%%%%%%%%%%%%
%\vskip\Jereceiveeabstsep%
%%%%%%%%%%%%%%%%%%%%%%%%%
%\mbox{\box\@eabstractbox}\par%
%%%%%%%%%%%%%%%%%%%%%%%%%
%\vskip\Jeabstekeywordsep%
%%%%%%%%%%%%%%%%%%%%%%%%%
%\mbox{\box\@ekeywordbox}\par%
%%%%%%%%%%%%%%%%%%%
\vskip\JEhonbunsep%
%%%%%%%%%%%%%%%%%%%
}
\fi



%%%%%%%%%%%%%%%%%%%%%%%%%%
% abstract
%%%%%%%%%%%%%%%%%%%%%%%%%%
\ifDS@abstract
\ifDS@english
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\def\authortitle{%
{\Engtitlefont%
{\@title}\par}
%%%%%%%%%%%%%%%%%%%%%%%
\vskip\Etitleauthorsep%
%%%%%%%%%%%%%%%%%%%%%%%
{\Engeauthorfont%
\authoroutput{e}\par}%
%%%%%%%%%%%%%%%%%%%%%%%%%
\vskip\Eauthorreceivesep%
%%%%%%%%%%%%%%%%%%%%%%%%%
   {\Enguketukefont%
   {\@huketsuke}\par}%
%%%%%%%%%%%%%%%%%%%%%%%
\vskip\Ereceiveabstsep%
%%%%%%%%%%%%%%%%%%%%%%%
\mbox{\box\@abstractbox}\par%
%%%%%%%%%%%%%%%%%%%
\vskip\JEhonbunsep%
%%%%%%%%%%%%%%%%%%%
}
%===========
\else
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\def\authortitle{%
{\jtitlefont%
{\@title}\par}%
%%%%%%%%%%%%%%%%%%%%%%%%
\vskip\Jtitlejauthorsep%
%%%%%%%%%%%%%%%%%%%%%%%%
{\authorfont%
\authoroutput{}\par}%
%%%%%%%%%%%%%%%%%%%%%%%%%%
\vskip\Jauthorjreceivesep%
%%%%%%%%%%%%%%%%%%%%%%%%%%
   {\juketukefont%
   {\@huketsuke}\par}%
%%%%%%%%%%%%%%%%%%%%%%%%
\vskip\Jreceivejabstsep%
%%%%%%%%%%%%%%%%%%%%%%%%
\mbox{\box\@abstractbox}\par%
%%%%%%%%%%%%%%%%%%%%%%%%
\ifDS@noauthor%%% noauthor(by DICOMO2014) %%%
%% 欧文表記無しのスイッチ(etitle,eauthor,eabstract)
%% [noauthor]
\else%
\vskip\Jkeywordetitle%
%%%%%%%%%%%%%%%%%%%%%%
{\etitlefont%
{\bfseries{\@etitle}}}\par%
%%%%%%%%%%%%%%%%%%%%%%
\vskip\Jetitleeauthor%
%%%%%%%%%%%%%%%%%%%%%%
{\eauthorfont%
\authoroutput{e}\par}%
%%%%%%%%%%%%%%%%%%%%%%%%%%%
\vskip\Jeauthorereceivesep%
\fi%%% noauthor(by DICOMO2014) %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%
   {\euketukefont%
   {\@heuketsuke}\par}%
%%%%%%%%%%%%%%%%%%%%%%%%%
\ifDS@noauthor%%% noauthor(by DICOMO2014) %%%
%% 欧文表記無しのスイッチ(etitle,eauthor,eabstract)
%% [noauthor]
\else%
\vskip\Jereceiveeabstsep%
%%%%%%%%%%%%%%%%%%%%%%%%%
\mbox{\box\@eabstractbox}\par%
%%%%%%%%%%%%%%%%%%%%%%%%%
\fi%%% noauthor(by DICOMO2014) %%%
\vskip\JEhonbunsep%
%%%%%%%%%%%%%%%%%%%
}
\fi\fi





%=================================================================================
% maketitle Font
%=================================================================================


%% Times -> CM
\def\titleddash{{\usefont{OT1}{cmr}{bx}{n}\selectfont%
\leavevmode \raise.1zh\hbox to 2zw{---\hss ---}}}


%%
\def\jtitlefont{%
\if@Japanese
   \fontsize{26\JQ}{34\h}
   \usefont{JY1}{gt}{m}{n}%
%   \usefont{OT1}{ptm}{b}{n}%Times-Bold*
   \bfseries%
   \mathversion{bold}\selectfont%
\else
   \fontsize{26\JQ}{34\h}
   \usefont{JY1}{fmb}{m}{n}% FutoMin
   \usefont{OT1}{ptm}{b}{n}%Times-Bold*
   \mathversion{bold}\selectfont%
\let\ddash\titleddash%
\fi
}


%% J-Uketuke
\def\juketukefont{%
\if@Japanese
   \fontsize{10\JQ}{12\h}\normalfont\selectfont
\else
   \fontsize{10\JQ}{12\h}\usekanji{JY1}{gt}{m}{n}%
   \useroman{OT1}{phv}{m}{n}\selectfont
\fi}


%% v1.02c
%% E-title
\def\etitlefont{\fontsize{20\Q}{22\h}\mathversion{bold}\selectfont}

%% E-Uketuke
\def\euketukefont{%
\if@Japanese
   \fontsize{10\JQ}{12\h}\normalfont\selectfont
\else
   \fontsize{10\JQ}{12\h}\useroman{OT1}{phv}{m}{n}\selectfont
\fi}


%% author-migikata
\def\labelfont{\useroman{OT1}{cmr}{m}{n}\selectfont}

%% J-name
\def\authorfont{\fontsize{16\JQ}{22\h}\selectfont}

%% J-(e)-name
%\def\eauthorfont{\fontsize{14\JQ}{18\h}\scshape\selectfont}%14Qx18
\def\eauthorfont{\fontsize{14\JQ}{18\h}\selectfont}%14Qx18

%% E-name
%\def\Engeauthorfont{\fontsize{17\JQ}{22\h}\scshape\selectfont}%17Qx22
\def\Engeauthorfont{\fontsize{17\JQ}{22\h}\selectfont}%17Qx22

%% eauthor-migikata
\ifDS@english
  \def\elabelfont{\normalfont}%\useroman{OT1}{ptm}{m}{n}\selectfont
\else
  \def\elabelfont{\normalfont}%\useroman{OT1}{cmr}{m}{n}\selectfont
\fi
%%%




%% E-only-title
\def\Engtitlefont{\fontsize{28\Q}{34\h}\bfseries%
\mathversion{bold}\selectfont}



%%E Uketuke
\def\Enguketukefont{\fontsize{10\JQ}{12\h}\sffamily\selectfont}




%=============================================================================
% uketsuke, euketsuke
%=============================================================================


%\def\@uketsuke{%
%\@received
%\@ifundefined{@rereceived}{, }{%
%   \@rereceived
%   \@ifundefined{@rerereceived}{, }{\@rerereceived}%
%   \par
%}%
%{\@accepted}%
%\@ifundefined{@released}{}{, \@released}%
%}


%\def\@euketsuke{%
%\@ereceived
%\@ifundefined{@erereceived}{, }{%
%   \@erereceived
%   \@ifundefined{@ererereceived}{, }{\@ererereceived}%
%   \par
%}%
%\@eaccepted
%}


%\def\@huketsuke{%
%\@Presented}


%\def\@heuketsuke{%
%\@ePresented}







\def\TUKI#1{\ifcase#1 xx\or January\or February\or March\or April\or May\or June\or  July\or August\or September\or October\or November\or December\fi}




%\ifDS@english
%\def\received#1#2#3{%
% \gdef\@received{Received: \TUKI{#2} #3, #1}%
%}

%\def\accepted#1#2#3{%
%  \gdef\@accepted{Accepted: \TUKI{#2} #3, #1}%
%}
%\def\@accepted{}

%\def\rereceived#1#2#3{%
% \gdef\@rereceived{, Revised: \TUKI{#2} #3, #1}%
%}

%\def\rerereceived#1#2#3{%
% \gdef\@rerereceived{/\TUKI{#2} #3, #1,}%
%}
%%%
%\def\released#1#2#3{%
% \gdef\@released{Released: \TUKI{#2} #3, #1}%
%}
%%
%\else
%%
%\def\received#1#2#3{%
% \gdef\@received{受付日{#1}\kern0pt{年}\kern0pt{#2}\kern0pt{月}\kern0pt{#3}\kern0pt{日}}%
% \gdef\@ereceived{Received: \TUKI{#2} #3, #1}%
%}

%\def\accepted#1#2#3{%
%  \gdef\@accepted{採録日{#1}\kern0pt{年}\kern0pt{#2}\kern0pt{月}\kern0pt{#3}\kern0pt{日}}%
%  \gdef\@eaccepted{Accepted: \TUKI{#2} #3, #1}%
%}

%\def\rereceived#1#2#3{%
% \gdef\@rereceived{，再受付日{#1}\kern0pt{年}\kern0pt{#2}\kern0pt{月}\kern0pt{#3}\kern0pt{日}}%
% \gdef\@erereceived{, Revised: \TUKI{#2} #3, #1}%
%}

%\def\rerereceived#1#2#3{%
% \gdef\@rerereceived{\,/\,{#1}\kern0pt{年}\kern0pt{#2}\kern0pt{月}\kern0pt{#3}\kern0pt{日}，}%
% \gdef\@ererereceived{/\TUKI{#2} #3, #1,}%
%}
%\fi




% abstract
\ifDS@english
\def\Presented#1#2#3{%
 \gdef\@Presented{Presented: \TUKI{#2} #3, #1}%
}
\else
\def\Presented#1#2#3{%
 \gdef\@Presented{{#1}\kern0pt{年}\kern0pt{#2}\kern0pt{月}\kern0pt{#3}\kern0pt{日発表}}%
 \gdef\@ePresented{Presented: \TUKI{#2} #3, #1}%
}
\fi






%%%%%%%%%%%%%%%%%
%\received{xxxx}{0}{xx}
%\accepted{xxxx}{0}{xx}
%\Presented{xxxx}{0}{xx}
%\rereceived{xxxx}{0}{xx}
%\rerereceived{xxxx}{0}{xx}
%%%%%%%%%%%%%%



%\ifDS@english\else
%\let\受付\received
%\let\採録\accepted
%\let\再受付\rereceived
%\let\再再受付\rerereceived
%\let\発表\Presented
%\fi



%==========================================================================================================================





\def\EGAIYOU{%
\ifDS@english
   \ifDS@abstract
   {\hskip1em}
   \else
   \sffamily\itshape%
Abstract:\hskip.5em%
   \fi
\else
   \if@Japanese
   \itshape\bfseries%
   \else
   \useroman{OT1}{phv}{b}{it}\selectfont%
   \fi
\ifDS@abstract
   {\hskip1zw}\else
   Abstract:\hskip.5em%
   \fi
\fi
}




%%%<<<< 1.02
\ifDS@english
\def\GAIYOU{%
   \ifDS@abstract
   {\hskip1em}%
   \else
   \itshape\bfseries\sffamily%
   Abstract:\hskip.5em%
   \fi
}
\else
\def\GAIYOU{%
   \ifDS@abstract
   {\hskip1zw}%
   \else
{\textbf{概要}：}
   \fi
}
\fi





\newbox\@abstractbox
\newbox\@eabstractbox



\ifDS@english
\def\abstract{%
 \global\setbox\@abstractbox\hbox\bgroup%
  \begin{minipage}[t]{.8\textwidth}% 12Q 14H
\fontsize{12\Q}{14\h}\selectfont%
\noindent{\GAIYOU}%
\ignorespaces}
\else
\def\abstract{%
 \global\setbox\@abstractbox\hbox\bgroup%
  \begin{minipage}[t]{.8\textwidth}% 12Q 18H
\fontsize{12\JQ}{18\h}\selectfont%
\noindent{\GAIYOU}%
\ignorespaces}
\fi





\def\endabstract{%
\par%
\end{minipage}%
\egroup\ignorespaces}


\def\eabstract{%
 \global\setbox\@eabstractbox\hbox\bgroup%
  \begin{minipage}[t]{.8\textwidth}% 12Q 16H
\fontsize{12\Q}{15\h}\selectfont%
\noindent{\EGAIYOU}%
\ignorespaces}

\def\endeabstract{%
\par%
\end{minipage}%
\egroup\ignorespaces}



%==========================================================================================================================


\def\EKEYWORD{%
\ifDS@english
\itshape\bfseries\sffamily%
Keywords:\hskip.5em%
\else
   \if@Japanese
   \itshape\bfseries%
   \else
   \useroman{OT1}{phv}{b}{it}\selectfont%
   \fi
Keywords:\hskip.5em%
\fi
}



\ifDS@english
\def\JKEYWORD{%
\itshape\bfseries\sffamily%
Keywords:\hskip.5em%
}
\else
\def\JKEYWORD{\textbf{キーワード}：}%
\fi


\newbox\@jkeywordbox
\newbox\@ekeywordbox
\newbox\@keywordbox


\def\jkeyword{\@par%
\global\setbox\@jkeywordbox\hbox\bgroup
  \begin{minipage}[t]{.8\textwidth}%
\fontsize{12\JQ}{15\h}\selectfont%
{\noindent{\JKEYWORD}}%
\ignorespaces}
\def\endjkeyword{%
\par\end{minipage}%
\egroup\ignorespaces}

\def\ekeyword{\@par%
 \global\setbox\@ekeywordbox\hbox\bgroup
  \begin{minipage}[t]{.8\textwidth}%
\fontsize{12\Q}{15\h}\selectfont%
{\noindent{\EKEYWORD}}%
\ignorespaces}
\def\endekeyword{%
\par\end{minipage}%
\egroup\ignorespaces}


\def\keyword{\@par%
 \global\setbox\@ekeywordbox\hbox\bgroup
  \begin{minipage}[t]{.8\textwidth}%
\fontsize{12\Q}{15\h}\selectfont%
{\noindent{\EKEYWORD}}%
\ignorespaces}
\def\endkeyword{%
\par\end{minipage}%
\egroup\ignorespaces}



%==========================================================================================================================



\setcounter{secnumdepth}{3}
\newcounter{part}
\newcounter{section}
\newcounter{subsection}[section]
\newcounter{subsubsection}[subsection]
\newcounter{paragraph}[subsubsection]
\newcounter{subparagraph}[paragraph]
\renewcommand\thepart{\@Roman\c@part}
\renewcommand\thesection{\@arabic\c@section}
\renewcommand\thesubsection   {\thesection.\@arabic\c@subsection}
\renewcommand\thesubsubsection{\thesubsection .\@arabic\c@subsubsection}
\renewcommand\theparagraph    {\thesubsubsection.\@arabic\c@paragraph}
\renewcommand\thesubparagraph {\theparagraph.\@arabic\c@subparagraph}
\newcommand\part{%
   \if@noskipsec \leavevmode \fi
   \par
   \addvspace{4ex}%
   \@afterindentfalse
   \secdef\@part\@spart}




%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Midasi
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newbox\@tempboxb
%\newdimen\SECTwd
\newbox\SECTwd

\newlength{\section@height}%
\section@height=\lineskip%
\advance \section@height-\topskip
\advance \section@height \baselineskip





\def\@startsectionA#1#2#3#4#5#6{%
  \if@noskipsec \leavevmode \fi
  \par
  \@tempskipa #4\relax
  \@afterindenttrue
  \ifdim \@tempskipa <\z@
    \@tempskipa -\@tempskipa \@afterindentfalse
  \fi
  \if@nobreak
    \everypar{}%
  \else
    \addpenalty\@secpenalty\addvspace\@tempskipa
  \fi
  \@ifstar
    {\@ssectA{#3}{#4}{#5}{#6}}%
    {\@dblarg{\@sectA{#1}{#2}{#3}{#4}{#5}{#6}}}}




\ifDS@english%%!!!!!!!
\def\@sectA#1#2#3#4#5#6[#7]#8{%
  \ifnum #2>\c@secnumdepth
    \let\@svsec\@empty
  \else
    \refstepcounter{#1}%
    \protected@edef\@svsec{%\protect\rule{0mm}{21.75mm}
\@seccntformatA{#1}\relax}%
  \fi
  \@tempskipa #5\relax
  \ifdim \@tempskipa>\z@%\@tempskipa>\z@
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\setbox\SECTwd=\hbox{%
\begingroup
\noindent
#6{\@hangfrom{\hskip #3\relax\@svsec}}%
\interlinepenalty \@M {{#8}}%
\endgroup}%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\setbox\@tempboxb\hbox{#6{%
{\hskip #3\relax{\csname #2@font\endcsname \@svsec}}}}%
%%%%%%%%%%%\the\wd\SECTwd
\ifdim \wd\SECTwd > \columnwidth
\@tempdima\columnwidth
\advance\@tempdima-\wd\@tempboxb
%%%%%%%%%%%%
\begingroup
\mbox{}\par%
\vspace{-\baselineskip}%%
\addvspace{\section@height}%
\addvspace{-.9mm}%
  \noindent%
   #6{\@hangfrom{\hskip #3\relax\@svsec}%
         \interlinepenalty \@M
   %\noindent
   \hangindent\wd\@tempboxb\hangafter=1
   #8\@@par}\nobreak%
%   \addvspace{.74\Cvs}%
\vspace{-.7mm}%
\addvspace{\section@height}%
\endgroup
%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\else
%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\begingroup
\mbox{}\par%
\vspace{-\baselineskip}%%
\noindent
{\vbox to 8.65mm
  {\vfill%
   \addvspace{.54\Cvs}
   #6{\@hangfrom{\hskip #3\relax\@svsec}%
         \interlinepenalty \@M {#8}\@@par%
   }\nobreak%
   \vfill
  }%
 }
\endgroup
\fi
\par
%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    \csname #1mark\endcsname{#7}%
    \addcontentsline{toc}{#1}{%
      \ifnum #2>\c@secnumdepth \else%
        \protect\numberline{\csname the#1\endcsname}\hskip1em%
      \fi%
      {#7}%\vfill
}%
  \else
    \def\@svsechd{%
      #6{\hskip #3\relax
      \@svsec #8}%
      \csname #1mark\endcsname{#7}%
      \addcontentsline{toc}{#1}{%
        \ifnum #2>\c@secnumdepth \else%
         \protect\numberline{\csname the#1\endcsname}%
        \fi%
        #7}}%
  \fi%
  \@xsect{#5}}
\def\@xsect#1{%
  \@tempskipa #1\relax
  \ifdim \@tempskipa>\z@
    \par \nobreak
    \vskip \@tempskipa
    \@afterheading
  \else
    \@nobreakfalse
    \global\@noskipsectrue
    \everypar{%
      \if@noskipsec
        \global\@noskipsecfalse
       {\setbox\z@\lastbox}%
        \clubpenalty\z@
        \begingroup \@svsechd \endgroup
        \unskip
        \@tempskipa #1\relax
        \hskip -\@tempskipa
      \else
        \clubpenalty \@clubpenalty
        \everypar{}%
      \fi}%
  \fi
  \ignorespaces}
%%%%%%%%
\else%-------------------------------------------------------------
%%%%%%%%
\def\@sectA#1#2#3#4#5#6[#7]#8{%
  \ifnum #2>\c@secnumdepth
    \let\@svsec\@empty
  \else
    \refstepcounter{#1}%
    \protected@edef\@svsec{%\protect\rule{0mm}{21.75mm}
\@seccntformatA{#1}\relax}%
  \fi
  \@tempskipa #5\relax
  \ifdim \@tempskipa>\z@%\@tempskipa>\z@
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\setbox\SECTwd=\hbox{%
\begingroup
\noindent
#6{\@hangfrom{\hskip #3\relax\@svsec}}%
\interlinepenalty \@M {{#8}}%
\endgroup}%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\setbox\@tempboxb\hbox{#6{%
{\hskip #3\relax{\csname #2@font\endcsname \@svsec}}}}%
%%%%%%%%%%%\the\wd\SECTwd
\ifdim \wd\SECTwd > \columnwidth
%%%%%%%%%%%%
\@tempdima\columnwidth
\advance\@tempdima-\wd\@tempboxb
%%%%%%%%%%%%
\begingroup
   \mbox{}\par%
   \vspace{-\baselineskip}%%
   \addvspace{.65\Cvs}%
   \noindent%
   #6{\@hangfrom{\hskip #3\relax\@svsec}%
          \interlinepenalty \@M
   %\noindent
   \hangindent\wd\@tempboxb\hangafter=1
   #8\@@par}\nobreak{\par}%
   \addvspace{.74\Cvs}%
\endgroup
%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\else
%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\begingroup
   \mbox{}\par%
   \vspace{-\baselineskip}%%
   \noindent
   {\vbox to 2.43\Cvs{\vfill%
   #6{\@hangfrom{\hskip #3\relax\@svsec}%
          \interlinepenalty \@M {#8}\@@par}%
   \vfill}%
   }\@@par%
\endgroup
\fi
\par\prevdepth=-1000pt%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    \csname #1mark\endcsname{#7}%
    \addcontentsline{toc}{#1}{%
      \ifnum #2>\c@secnumdepth \else%
        \protect\numberline{\csname the#1\endcsname}\hskip1zw%
      \fi%
      {#7}%\vfill
}%
  \else
    \def\@svsechd{%
      #6{\hskip #3\relax
      \@svsec #8}%
      \csname #1mark\endcsname{#7}%
      \addcontentsline{toc}{#1}{%
        \ifnum #2>\c@secnumdepth \else%
         \protect\numberline{\csname the#1\endcsname}%
        \fi%
        #7}}%
  \fi%
  \@xsect{#5}}
\def\@xsect#1{%
  \@tempskipa #1\relax
  \ifdim \@tempskipa>\z@
    \par \nobreak
    \vskip \@tempskipa
    \@afterheading
  \else
    \@nobreakfalse
    \global\@noskipsectrue
    \everypar{%
      \if@noskipsec
        \global\@noskipsecfalse
       {\setbox\z@\lastbox}%
        \clubpenalty\z@
        \begingroup \@svsechd \endgroup
        \unskip
        \@tempskipa #1\relax
        \hskip -\@tempskipa
      \else
        \clubpenalty \@clubpenalty
        \everypar{}%
      \fi}%
  \fi
  \ignorespaces}
\fi



\ifDS@english
\def\@seccntformatA#1{\csname the#1\endcsname.\hskip1em}
\else
\def\@seccntformatA#1{\csname the#1\endcsname.\hskip1zw}
\fi



%%%<<<< 1.02
\def\@ssectA#1#2#3#4#5{%
  \@tempskipa #3\relax
  \ifdim \@tempskipa>\z@
%%%
\begingroup
   \mbox{}\par%
   \vspace{-\baselineskip}%%
   \addvspace{.5\Cvs}%
   \noindent%
%%%
      #4{%
        \@hangfrom{\hskip #1}%
          \interlinepenalty \@M #5\@@par}%
   \addvspace{.5\Cvs}%
    \endgroup
  \else
    \def\@svsechd{#4{\hskip #1\relax #5}}%
  \fi
  \@xsect{#3}}
\newif\if@afterindent \@afterindenttrue
\def\@afterheading{%
  \@nobreaktrue
  \everypar{%
    \if@nobreak
      \@nobreakfalse
      \clubpenalty \z@
      \if@afterindent \else
        {\setbox\z@\lastbox}%
      \fi
    \else
      \clubpenalty \@clubpenalty
      \everypar{}%
    \fi}}

%----------------------------------------------------------------------------
%----------------------------------------------------------------------------

%%%%%%%%%%%%%%% C
\def\@startsectionC#1#2#3#4#5#6{\if@noskipsec \leavevmode \fi
  \par  \@tempskipa #4\relax
  \@afterindenttrue
  \ifdim \@tempskipa <\z@    \@tempskipa -\@tempskipa \@afterindentfalse  \fi
  \if@nobreak
    \everypar{}%
  \else
    \addpenalty\@secpenalty
\ifnum #2=\@ne
       \vskip-\prevdepth \prevdepth\z@ \vskip\Cvs
       \advance\@tempskipa-\Cvs \vspace*{\@tempskipa}%
     \else
\addvspace\@tempskipa
\fi
  \fi
  \@ifstar
    {\@ssectC{#3}{#4}{#5}{#6}}%
    {\@dblarg{\@sectC{#1}{#2}{#3}{#4}{#5}{#6}}}}

\def\@sectC#1#2#3#4#5#6[#7]#8{%
  \ifnum #2>\c@secnumdepth
    \let\@svsec\@empty
  \else
    \refstepcounter{#1}%
    \protected@edef\@svsec{%\protect\rule{0mm}{21.75mm}
\@seccntformatC{#1}\relax}%
  \fi
  \@tempskipa #5\relax
  \ifdim \@tempskipa>\z@
    \begingroup
      #6{%
%        \centering
\@hangfrom{\hskip #3\relax\@svsec}%
%          \interlinepenalty \@M \protect\SECTUP{\jidoukintou{#8}}\@@par}%
          \interlinepenalty \@M {#8}\@@par}%
    \endgroup
    \csname #1mark\endcsname{#7}%
    \addcontentsline{toc}{#1}{%
      \ifnum #2>\c@secnumdepth \else
        \protect\numberline{\csname the#1\endcsname}%
      \fi
      {#7}}%
  \else
    \def\@svsechd{%
      #6{\hskip #3\relax
      \@svsec #8}%
      \csname #1mark\endcsname{#7}%
      \addcontentsline{toc}{#1}{%
        \ifnum #2>\c@secnumdepth \else
          \protect\numberline{\csname the#1\endcsname}%
        \fi
        #7}}%
  \fi
  \@xsect{#5}}
\def\@xsect#1{%
  \@tempskipa #1\relax
  \ifdim \@tempskipa>\z@
    \par \nobreak
    \vskip \@tempskipa
    \@afterheading
  \else
    \@nobreakfalse
    \global\@noskipsectrue
    \everypar{%
      \if@noskipsec
        \global\@noskipsecfalse
       {\setbox\z@\lastbox}%
        \clubpenalty\z@
        \begingroup \@svsechd \endgroup
        \unskip
        \@tempskipa #1\relax
        \hskip -\@tempskipa
      \else
        \clubpenalty \@clubpenalty
        \everypar{}%
      \fi}%
  \fi
  \ignorespaces}

\ifDS@english
\def\@seccntformatC#1{\csname the#1\endcsname\hskip1em}
\else
\def\@seccntformatC#1{\csname the#1\endcsname\hskip1zw}
\fi

\def\@ssectC#1#2#3#4#5{%
  \@tempskipa #3\relax
  \ifdim \@tempskipa>\z@
    \begingroup
      #4{%
%        \centering
\@hangfrom{\hskip #1}%
          \interlinepenalty \@M {#5}\@@par}%
    \endgroup
  \else
    \def\@svsechd{#4{\hskip #1\relax #5}}%
  \fi
  \@xsect{#3}}
\newif\if@afterindent \@afterindenttrue
\def\@afterheading{%
  \@nobreaktrue
  \everypar{%
    \if@nobreak
      \@nobreakfalse
      \clubpenalty \z@
      \if@afterindent \else
        {\setbox\z@\lastbox}%
      \fi
    \else
      \clubpenalty \@clubpenalty
      \everypar{}%
    \fi}}
\def\@hangfrom#1{\setbox\@tempboxa\hbox{#1}%
      \hangindent \wd\@tempboxa\noindent\box\@tempboxa}



%===========================================================


\def\@startsectionAPP#1#2#3#4#5#6{%
  \if@noskipsec \leavevmode \fi
  \par
  \@tempskipa #4\relax
  \@afterindenttrue
  \ifdim \@tempskipa <\z@
    \@tempskipa -\@tempskipa \@afterindentfalse
  \fi
  \if@nobreak
    \everypar{}%
\ifnum #2=1\relax \vspace*{0mm}\fi%<---------------
  \else
    \addpenalty\@secpenalty\addvspace\@tempskipa
  \fi
  \@ifstar
    {\@ssectC{#3}{#4}{#5}{#6}}%<--------------------
    {\@dblarg{\@sectAPP{#1}{#2}{#3}{#4}{#5}{#6}}}}




\ifDS@english%%!!!!!!!
\def\@sectAPP#1#2#3#4#5#6[#7]#8{%
  \ifnum #2>\c@secnumdepth
    \let\@svsec\@empty
  \else
    \refstepcounter{#1}%
    \protected@edef\@svsec{%\protect\rule{0mm}{21.75mm}
\@seccntformatAPP{#1}\relax}%
  \fi
  \@tempskipa #5\relax
  \ifdim \@tempskipa>\z@%\@tempskipa>\z@
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\setbox\SECTwd=\hbox{%
\begingroup
\noindent
#6{\@hangfrom{\hskip #3\relax\@svsec}}%
\interlinepenalty \@M {{#8}}%
\endgroup}%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\setbox\@tempboxb\hbox{#6{%
{\hskip #3\relax{\csname #2@font\endcsname \@svsec}}}}%
%%%%%%%%%%%\the\wd\SECTwd
\ifdim \wd\SECTwd > \columnwidth
\@tempdima\columnwidth
\advance\@tempdima-\wd\@tempboxb
%%%%%%%%%%%%
\begingroup
\mbox{}\par%
\vspace{-\baselineskip}%%
\addvspace{\section@height}%
\addvspace{-.9mm}%
  \noindent%
   #6{\@hangfrom{\hskip #3\relax\@svsec}%
         \interlinepenalty \@M
   %\noindent
   \hangindent\wd\@tempboxb\hangafter=1
   #8\@@par}\nobreak%
%   \addvspace{.74\Cvs}%
\vspace{-.7mm}%
\addvspace{\section@height}%
\endgroup
%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\else
%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\begingroup
\mbox{}\par%
\vspace{-\baselineskip}%%
\noindent
{\vbox to 8.65mm
  {\vfill%
   \addvspace{.54\Cvs}
   #6{\@hangfrom{\hskip #3\relax\@svsec}%
         \interlinepenalty \@M {#8}\@@par%
   }\nobreak%
   \vfill
  }%
 }
\endgroup
\fi
\par
%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    \csname #1mark\endcsname{#7}%
    \addcontentsline{toc}{#1}{%
      \ifnum #2>\c@secnumdepth \else%
        \protect\numberline{\csname the#1\endcsname}\hskip1em%
      \fi%
      {#7}%\vfill
}%
  \else
    \def\@svsechd{%
      #6{\hskip #3\relax
      \@svsec #8}%
      \csname #1mark\endcsname{#7}%
      \addcontentsline{toc}{#1}{%
        \ifnum #2>\c@secnumdepth \else%
         \protect\numberline{\csname the#1\endcsname}%
        \fi%
        #7}}%
  \fi%
  \@xsect{#5}}
\def\@xsect#1{%
  \@tempskipa #1\relax
  \ifdim \@tempskipa>\z@
    \par \nobreak
    \vskip \@tempskipa
    \@afterheading
  \else
    \@nobreakfalse
    \global\@noskipsectrue
    \everypar{%
      \if@noskipsec
        \global\@noskipsecfalse
       {\setbox\z@\lastbox}%
        \clubpenalty\z@
        \begingroup \@svsechd \endgroup
        \unskip
        \@tempskipa #1\relax
        \hskip -\@tempskipa
      \else
        \clubpenalty \@clubpenalty
        \everypar{}%
      \fi}%
  \fi
  \ignorespaces}
%%%%%%%%
\else%-------------------------------------------------------------
%%%%%%%%
\def\@sectAPP#1#2#3#4#5#6[#7]#8{%
  \ifnum #2>\c@secnumdepth
    \let\@svsec\@empty
  \else
    \refstepcounter{#1}%
    \protected@edef\@svsec{%\protect\rule{0mm}{21.75mm}
\@seccntformatAPP{#1}\relax}%
  \fi
  \@tempskipa #5\relax
  \ifdim \@tempskipa>\z@%\@tempskipa>\z@
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\setbox\SECTwd=\hbox{%
\begingroup
\noindent
#6{\@hangfrom{\hskip #3\relax\@svsec}}%
\interlinepenalty \@M {{#8}}%
\endgroup}%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\setbox\@tempboxb\hbox{#6{%
{\hskip #3\relax{\csname #2@font\endcsname \@svsec}}}}%
%%%%%%%%%%%\the\wd\SECTwd
\ifdim \wd\SECTwd > \columnwidth
%%%%%%%%%%%%
\@tempdima\columnwidth
\advance\@tempdima-\wd\@tempboxb
%%%%%%%%%%%%
\begingroup
   \mbox{}\par%
   \vspace{-\baselineskip}%%
   \addvspace{.65\Cvs}%
   \noindent%
   #6{\@hangfrom{\hskip #3\relax\@svsec}%
          \interlinepenalty \@M
   %\noindent
   \hangindent\wd\@tempboxb\hangafter=1
   #8\@@par}\nobreak{\par}%
   \addvspace{.74\Cvs}%
\endgroup
%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\else
%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\begingroup
   \mbox{}\par%
   \vspace{-\baselineskip}%%
   \noindent
   {\vbox to 2.43\Cvs{\vfill%
   #6{\@hangfrom{\hskip #3\relax\@svsec}%
          \interlinepenalty \@M {#8}\@@par}%
   \vfill}%
   }\@@par%
\endgroup
\fi
\par\prevdepth=-1000pt%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    \csname #1mark\endcsname{#7}%
    \addcontentsline{toc}{#1}{%
      \ifnum #2>\c@secnumdepth \else%
        \protect\numberline{\csname the#1\endcsname}\hskip1zw%
      \fi%
      {#7}%\vfill
}%
  \else
    \def\@svsechd{%
      #6{\hskip #3\relax
      \@svsec #8}%
      \csname #1mark\endcsname{#7}%
      \addcontentsline{toc}{#1}{%
        \ifnum #2>\c@secnumdepth \else%
         \protect\numberline{\csname the#1\endcsname}%
        \fi%
        #7}}%
  \fi%
  \@xsect{#5}}
\def\@xsect#1{%
  \@tempskipa #1\relax
  \ifdim \@tempskipa>\z@
    \par \nobreak
    \vskip \@tempskipa
    \@afterheading
  \else
    \@nobreakfalse
    \global\@noskipsectrue
    \everypar{%
      \if@noskipsec
        \global\@noskipsecfalse
       {\setbox\z@\lastbox}%
        \clubpenalty\z@
        \begingroup \@svsechd \endgroup
        \unskip
        \@tempskipa #1\relax
        \hskip -\@tempskipa
      \else
        \clubpenalty \@clubpenalty
        \everypar{}%
      \fi}%
  \fi
  \ignorespaces}
\fi


\ifDS@english
\def\@seccntformatAPP#1{\csname the#1\endcsname.\hskip1em}
\else
\def\@seccntformatAPP#1{\csname the#1\endcsname.\hskip1zw}
\fi


%----------------------------------------------------------------------------




%-----------------------------------
\newcommand{\section}{\@startsectionA{section}{1}{\z@}%
{.00001\Cvs}% \@plus.3\Cdp \@minus.2\Cdp}% \@plus1.3\Cdp\@minus10.5\Cdp}%
{.00001\Cvs}% \@plus.3\Cdp \@minus.2\Cdp}%
{\reset@font
\fontsize{16\JQ}{21\h}\selectfont%
\bfseries\mathversion{bold}%
}}
%-----------



%=======================
 \newcommand{\subsection}{\@startsectionC{subsection}{2}{\z@}%
{\Cvs}%{.3125\Cvs}%{.3125\Cvs \@plus.2\Cdp \@minus.5\Cdp}%
{.00001\Cvs}% \@plus.3\Cdp \@minus.2\Cdp}%   {.5\Cvs \@plus.3\Cdp}%
   {\reset@font\normalsize\bfseries\mathversion{bold}}}


%=======================%=======================


\newcommand{\subsubsection}{\@startsectionC{subsubsection}{3}{\z@}%
   {0.00001\Cvs}% \@plus.3\Cdp \@minus.2\Cdp}%{.5\Cvs \@plus.5\Cdp \@minus.2\Cdp}%
   {0.00001\Cvs}% \@plus.3\Cdp \@minus.2\Cdp}%{.5\Cvs \@plus.3\Cdp}%
   {\reset@font\normalsize\bfseries\mathversion{bold}}}


%=======================%=======================



\newcommand{\paragraph}{\@startsectionC{paragraph}{3}{\z@}%
   {0.00001\Cvs}% \@plus.3\Cdp \@minus.2\Cdp}%
   {0.00001\Cvs}% \@plus.3\Cdp \@minus.2\Cdp}%
   {\reset@font\normalsize\bfseries}}

\newcommand{\subparagraph}{\@startsectionC{subparagraph}{3}{\z@}%
   {0.00001\Cvs}% \@plus.3\Cdp \@minus.2\Cdp}%
   {0.00001\Cvs}% \@plus.3\Cdp \@minus.2\Cdp}%
   {\reset@font\normalsize\bfseries}}


%============================================================================




%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% fig, tab
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\ifDS@english
\newcommand{\figurename}{Fig.}
\newcommand{\tablename}{Table}
\else
\newcommand{\figurename}{図}
\newcommand{\tablename}{表}
\fi



\def\CaptionType{\def\@captype}


\newdimen\@abovecapskip
\newdimen\@belowcapskip


\newcounter{figure}
\renewcommand{\thefigure}{\@arabic\c@figure}
\def\fps@figure{tbp}
\def\ftype@figure{1}
\def\ext@figure{lof}
\def\fnum@figure{\figurename~\thefigure}
\def\fnum@efigure{Fig.~\thefigure}
\newenvironment{figure}
               {\@floatenv
%                \if@tecrep
\capwidth\hsize\ecapwidth\hsize
%\else
%\capwidth65mm\ecapwidth65mm
%\fi
                \abovecaptionskip1mm\belowcaptionskip\z@\@float{figure}}
               {\end@float}
\newenvironment{figure*}
               {\@floatenv\capwidth.66\textwidth\ecapwidth.66\textwidth
                \abovecaptionskip1mm\belowcaptionskip\z@\@dblfloat{figure}}
               {\end@dblfloat}




\newcounter{table}
\renewcommand{\thetable}{\@arabic\c@table}
\def\fps@table{tbp}
\def\ftype@table{2}
\def\ext@table{lot}
\def\fnum@table{\tablename~\thetable}
\def\fnum@etable{Table~\thetable}
\newenvironment{table}
               {\@floatenv
%                \if@tecrep
\capwidth\hsize\ecapwidth\hsize
%\else
%\capwidth65mm\ecapwidth65mm
%\fi
                \abovecaptionskip\z@\belowcaptionskip1mm\@float{table}}
               {\end@float}
\newenvironment{table*}
               {\@floatenv\capwidth.66\textwidth\ecapwidth.66\textwidth
                \abovecaptionskip\z@\belowcaptionskip1mm\@dblfloat{table}}
               {\end@dblfloat}



\def \@floatboxreset{%
\reset@font
\footnotesize\baselineskip16\h
%\tabcolsep.5zw
\@setminipage
}

\def\@floatenv{\let\center\Center}


\def\Center{\topsep\z@\parsep\z@\partopsep\z@\itemsep\z@
 \trivlist \centering\item\relax}
\def\endCenter{\endtrivlist}




\long\def\@caption#1[#2]#3{\par
 \begingroup
  \@parboxrestore
  \if@minipage
   \@setminipage
  \fi
   \@makecaption{\csname fnum@#1\endcsname}{\ignorespaces #3}\par
 \endgroup}



\newlength\abovecaptionskip
\newlength\belowcaptionskip



\newbox\@tempboxb
\newdimen\capwidth
\newdimen\ecapwidth




%%%<<< 1.02
\long\def\@makecaption#1#2{\footnotesize%
 \vskip\abovecaptionskip
 \setbox\@tempboxa\hbox{\footnotesize{\bfseries%
#1}\hskip1\zw\shortstack[l]{#2}}%
 \@tempdima\ht\@tempboxa \advance \@tempdima\dp\@tempboxa%
 \setbox\@tempboxb\hbox{\footnotesize{\bfseries%
#1}\hskip1\zw}%% <<
 \ifdim \@tempdima > \baselineskip
  \ifdim \wd\@tempboxa > \capwidth
   \hfil\parbox[t]{\capwidth}{\hangindent\wd\@tempboxb
{\bfseries%
    #1}\hskip1\zw #2}\vskip4\@Q
  \else
   \hfil\parbox[t]{\wd\@tempboxa}{\hangindent\wd\@tempboxb
{\bfseries%
   #1}\hskip1\zw #2}%\vskip4\@Q
\par\prevdepth=0pt%
\vskip-1.5\h%
  \fi
 \else %% <
  \ifdim \wd\@tempboxa > \capwidth
   \hfil\parbox[t]{\capwidth}{\hangindent\wd\@tempboxb
{\bfseries%
    #1}\hskip1\zw #2}%\vskip4\@Q
%%%
\ifx \@captype\TABLE
      \ifDS@english
      \par\vskip.25mm%
      \else
      \par\prevdepth=0pt\vskip-1.5mm%
      \fi
\else
      \par\prevdepth=0pt\vskip-1.5\h%
\fi
%%%
  \else
   \setbox\@tempboxb\hbox{#2}%
%%
%   \ifdim \wd\@tempboxb < 4.5\zw %% >
%    \hbox to\hsize{\hfil  %
%{\bfseries%
%#1}\hskip1\zw%\kintou{5\zw}%%
%{#2}\hfil}%
%   \else
    \hbox to\hsize{\hfil\box\@tempboxa\hfil}%
\ifDS@english \relax\else \vspace{-\belowcaptionskip}\fi
%   \fi
  \fi
 \fi
 \vspace{\belowcaptionskip}\par
}







\long\def\ecaption#1{{\footnotesize%
 \setbox\@tempboxa\hbox{\footnotesize{\bfseries%
\csname fnum@e\@captype\endcsname}%
\hskip1\zw\shortstack[l]{#1}}%
 \@tempdima\ht\@tempboxa \advance \@tempdima\dp\@tempboxa
 \setbox\@tempboxb\hbox{\footnotesize{\bfseries%
\csname fnum@e\@captype\endcsname}\hskip1\zw}%% <<
%%%%%%%%%%%%
 \ifdim \@tempdima > \baselineskip
  \ifdim \wd\@tempboxa > \ecapwidth
   \hfil\parbox[t]{\ecapwidth}{\hangindent\wd\@tempboxb
{\bfseries%
    \csname fnum@e\@captype\endcsname}\hskip1\zw #1}\par
  \else
   \hfil\parbox[t]{\wd\@tempboxa}{\hangindent\wd\@tempboxb
{\bfseries%
    \csname fnum@e\@captype\endcsname}\hskip1\zw #1}\par
  \fi
%%%
 \else %% <
  \ifdim \wd\@tempboxa > \ecapwidth
   \hfil\parbox[t]{\ecapwidth}{\hangindent\wd\@tempboxb
{\bfseries%
    \csname fnum@e\@captype\endcsname}\hskip1\zw #1}\par
  \else
   \hbox to\hsize{\hfil\box\@tempboxa\hfil}%
  \fi
 \fi
}%!!<---
 \vspace{2\belowcaptionskip}\par
}











%==================================================================================================


%%## % ipsjpapers.sty ##%%
%% from "ipsjpapers.sty", a little customized
\leftmargini\Cwd
\leftmarginii.5\Cwd
\leftmarginiii2\Cwd
\leftmarginiv2\Cwd
\leftmarginv2\Cwd
\leftmarginvi2\Cwd

\def\lst@listi{\labelsep\Cwd \labelwidth.25\Cwd
	\rightmargin\z@ \listparindent\z@ \itemindent\z@
	\partopsep\z@ \parsep\z@ \topsep\z@ \itemsep\z@}


\def\@listi{\leftmargin\leftmargini \lst@listi}
\def\@listii{\leftmargin\leftmarginii \lst@listi}
\def\@listiii{\leftmargin\leftmarginiii \lst@listi}
\def\@listiv{\leftmargin\leftmarginiv \lst@listi}
\def\@listv{\leftmargin\leftmarginv \lst@listi}
\def\@listvi{\leftmargin\leftmarginvi \lst@listi}



\@listi

\def\labelenumi{(\,\theenumi\,)}
\def\theenumi{\arabic{enumi}}

\def\labelenumii{(\,\theenumii\,)}
\def\theenumii{\alph{enumii}}

\def\p@enumii{\theenumi}
\def\labelenumiii{(\,\theenumiii\,)}
\def\theenumiii{\roman{enumiii}}

\def\p@enumiii{\theenumi(\theenumii)}
\def\labelenumiv{(\,\theenumiv\,)}

\def\theenumiv{\Alph{enumiv}}
\def\p@enumiv{\p@enumiii\theenumiii}

\def\enumerate{\ifnum \@enumdepth >3 \@toodeep\else
	\advance\@enumdepth \@ne
	\edef\@enumctr{enum\romannumeral\the\@enumdepth}
	\list{\csname label\@enumctr\endcsname}{\usecounter
		{\@enumctr}\def\makelabel##1{##1\hss}%
		\leftmargin2\Cwd \labelwidth2\Cwd \labelsep\z@
\itemsep\z@\topsep\z@\parsep\z@%%!!!
}\fi}


\let\endenumerate\endlist

\def\labelitemi{$\bullet$}
\def\labelitemii{\bf --}
\def\labelitemiii{$\ast$}
\def\labelitemiv{$\cdot$}


\def\itemize{\ifnum \@itemdepth >3 \@toodeep\else \advance\@itemdepth \@ne
	\edef\@itemitem{labelitem\romannumeral\the\@itemdepth}%
	\list{\csname\@itemitem\endcsname}{\def\makelabel##1{\hss##1\hss}%
		\labelwidth2\Cwd \labelsep\z@
\itemsep\z@\topsep\z@\parsep\z@%%!!!
}\fi}
\let\enditemize\endlist



\def\description{\list{}{\labelwidth\z@ \labelsep\Cwd
\itemsep\z@\topsep\z@\parsep\z@%%!!!
	\itemindent\labelsep \advance\itemindent-\leftmargin
	\def\makelabel##1{\bf ##1}}}
\let\enddescription\endlist


\let\latex@trivlist\@trivlist
\def\lst@trivlist#1#2{%
\itemsep\z@\topsep\z@\parsep\z@%%!!!
\leftmargin#1\relax
	\itemindent\labelwidth \advance\itemindent\labelsep
	\advance\itemindent#2\relax
	\let\@trivlist\latex@trivlist \@trivlist}

\def\lst@Trivlist{\def\@trivlist{\lst@trivlist\z@\z@}}
\def\Enumerate{\lst@Trivlist \enumerate}
\let\endEnumerate\endlist
\def\Itemize{\lst@Trivlist \itemize}
\let\endItemize\endlist
\def\Description{\lst@Trivlist \description}
\let\endDescription\endlist

\def\lst@TRIVLIST{\def\@trivlist{\lst@trivlist\z@\Cwd}}
\def\ENUMERATE{\lst@TRIVLIST \enumerate}
\let\endENUMERATE\endlist
\def\ITEMIZE{\lst@TRIVLIST \itemize}
\let\endITEMIZE\endlist
\def\DESCRIPTION{\lst@TRIVLIST \description}
\let\endDESCRIPTION\endlist

\def\lst@strivlist{\def\@trivlist{\lst@trivlist\Cwd{-\Cwd}}}
\@namedef{enumerate*}{\lst@strivlist \enumerate}
\@namedef{endenumerate*}{\endlist}
\@namedef{itemize*}{\lst@strivlist \itemize}
\@namedef{enditemize*}{\endlist}
\@namedef{description*}{\lst@strivlist \description}
\@namedef{enddescription*}{\endlist}




\def\verse{\let\\=\@centercr
	\list{}{%
\itemsep\z@\topsep\z@\parsep\z@%%!!!
\itemindent-\Cwd \listparindent\itemindent
	\rightmargin\leftmargin \advance\leftmargin\Cwd}\item[]}
\let\endverse\endlist

\def\quotation{\list{}{%
\itemsep\z@\topsep\z@\parsep\z@%%!!!
\listparindent\Cwd	\itemindent\listparindent
	\rightmargin\leftmargin}\item[]}
\let\endquotation\endlist

\def\quote{\list{}{\itemsep\z@\topsep\z@\parsep\z@%%!!!
\rightmargin\leftmargin}\item[]}
\let\endquote\endlist











\def\newtheorem{\@ifstar
	{\theo@newtheorem{\theo@it}{\ }}{\theo@newtheorem{}{\theo@sp}}}
\def\theo@newtheorem#1#2#3{\@namedef{theo@it@#3}{#1}\@namedef{theo@sp@#3}{#2}%
	\@ifnextchar[%]
		     {\@othm{#3}}{\@nthm{#3}}}
\def\@begintheorem#1#2{\DESCRIPTION \csname theo@it@\@currenvir\endcsname
	\item[#1\csname theo@sp@\@currenvir\endcsname #2]}
\def\@opargbegintheorem#1#2#3{\DESCRIPTION
	\csname theo@style@\@currenvir\endcsname
	\item[#1\csname theo@sp@\@currenvir\endcsname #2\ (#3)]}
\let\@endtheorem\endlist
\ifDS@english
\let\theo@it\it \let\theo@sp\ %
\else
\let\theo@it\relax \let\theo@sp\relax
\fi

%==================================================================================================


\ifDS@english
\newcommand{\refname}{References}
\else
\newcommand{\refname}{参考文献}
\fi


\newdimen\bibindent
\setlength\bibindent{1.5em}
\def\@biblabel#1{[#1]}





\newenvironment{thebibliography}[1]
 {%
\ifDS@english
%\fontsize{11\Q}{12\h}\selectfont%
\footnotesize\baselineskip12\h % 11Qx12H
\else
\small\baselineskip15\h % 12Qx15H
\fi
 \subsection*{{\normalsize%\footnotesize%
\refname}}%
\vspace*{2mm}%%
%\noindent{\bfseries{\refname}}%
%%%%%%%%%%%%
\def\@mklab##1{##1\hfil } %
%\def\@mklab##1{\hfil ##1}
%
   \list{\@biblabel{\@arabic\c@enumiv}}%
        {\settowidth\labelwidth{\@biblabel{#1}}%
         \leftmargin\labelwidth
         \advance\leftmargin\labelsep
%
%
         \@openbib@code
         \usecounter{enumiv}%
         \let\p@enumiv\@empty
         \renewcommand\theenumiv{\@arabic\c@enumiv}}%
         \parskip\z@
	 \topsep\z@\partopsep\z@
         \itemsep1\h
         \parsep\z@
%         \baselineskip3.5mm
%
   \sloppy
   \clubpenalty\z@
   \@clubpenalty\clubpenalty
   \widowpenalty\z@
   \sfcode`\.\@m
}
  {\def\@noitemerr
    {\@latex@warning{Empty `thebibliography' environment}}%
   \endlist\unskip}
%%%%
\let\@openbib@code\@empty




%==================================================================================================


%%%%%%%%%%%%%%%%% These are borrowed style files %%%%%%%%%%%
%%% from  LaTeX
\def\pushtowall{\relax\leavevmode
\ifmmode\def\next{\mathpalette\mathpushw@ll}
\else\let\next\makepushw@ll \fi \next}
\def\finpushw@ll{\wd0=0pt \box0}
\def\makepushw@ll#1{\setbox0=\hbox{#1}\finpushw@ll}
\def\mathpushw@ll#1#2{\setbox0=\hbox{$\m@th#1{#2}$}\finpushw@ll}
%%%%

\ifDS@english
\newcommand{\profname}{\relax}
\else
\newcommand{\profname}{著者紹介}
\fi



\newenvironment{biography}{%
\vspace{2\baselineskip}%
% \subsection*{\profname}%
%\noindent{\bfseries{\profname}}\par
\nobreak%
 \footnotesize\normalfont
 \parindent\z@
 \vskip\baselineskip
 \penalty\@medpenalty
 \penalty\@M
  \let\@profile\@eprofile
  \let\n@profile\n@eprofile
%%%
\ifDS@english
\vskip.5\Cvs%
\else
\vskip-.5\Cvs%
\fi
%%%
}{\par}


%%
\newcounter{profile}
%%


\def\profile{\@ifstar{\n@eprofile}{\@eprofile}}


\def\@eprofile{%
\@ifnextchar[%% ]
{\ip@eprofile}
{\no@eprofile}
}




\ifDS@english
%%%%%%%%%%%%%%%%%%%%%
\gdef\ip@eprofile[#1]#2#3{%
 \stepcounter{profile}%
 \vbox{%
  \fmt@pro@pic{#2}{#3}{#1}%
 }%
 \vskip2\Cvs%
}
%%%%%%%%%%%%%%%%%%%%%
\gdef\n@eprofile#1#2{%
 \stepcounter{profile}%
 \vbox{%
  \fmt@pro@nopicnoframe{#1}{#2}%
 }%
 \vskip2\Cvs%
}
%%%%%%%%%%%%%%%%%%%%%
\gdef\no@eprofile#1#2{%
 \stepcounter{profile}%
 \vbox{%
  \fmt@pro@nopic{#1}{#2}%
 }%
 \vskip2\Cvs%
}
%%%%%%%%%%%%%%%%%%%%%
%=====================
\else
%=====================
%%%%%%%%%%%%%%%%%%%%%
\gdef\ip@eprofile[#1]#2#3#4{%
 \stepcounter{profile}%
 \vbox{%
  \fmt@pro@pic{#2}{#3}{#4}{#1}%
 }%
 \vskip2\Cvs%
}
%%%%%%%%%%%%%%%%%%%%%
\gdef\n@eprofile#1#2#3{%
 \stepcounter{profile}%
 \vbox{%
  \fmt@pro@nopicnoframe{#1}{#2}{#3}%
 }%
 \vskip2\Cvs%
}
%%%%%%%%%%%%%%%%%%%%%
\gdef\no@eprofile#1#2#3{%
 \stepcounter{profile}%
 \vbox{%
  \fmt@pro@nopic{#1}{#2}%
 }%
 \vskip2\Cvs%
}
%%%%%%%%%%%%%%%%%%%%%
\fi


\def\BreakMember{\def\@BreakMember{\\}}
\let\@BreakMember\relax



\ifDS@english
%%%%%%%%%%%%%%%%%%%%%
\gdef\ip@eprofile[#1]#2#3{%
 \stepcounter{profile}%
 \vbox{%
%  \fmt@pro@noEname%
  \fmt@pro@pic{#2}{#3}{#1}%
 }%
 \vskip2\Cvs%
}
%%%%%%%%%%%%%%%%%%%%%
\gdef\n@eprofile#1#2{%
 \stepcounter{profile}%
 \vbox{%
%  \fmt@pro@noEname{#1}%
  \fmt@pro@nopicnoframe{#1}{#2}%
 }%
 \vskip2\Cvs%
}
%%%%%%%%%%%%%%%%%%%%%
\gdef\no@eprofile#1#2{%
 \stepcounter{profile}%
 \vbox{%
%  \fmt@pro@noEname{#1}%
  \fmt@pro@nopic{#1}{#2}%
 }%
 \vskip2\Cvs%
}
%%%%%%%%%%%%%%%%%%%%%
%=====================
\else
%=====================
%%%%%%%%%%%%%%%%%%%%%
\gdef\ip@eprofile[#1]#2#3#4{%
 \stepcounter{profile}%
 \vbox{%
%  \fmt@pro@noEname%
  \fmt@pro@pic{#2}{#3}{#4}{#1}%
 }%
 \vskip2\Cvs%
}
%%%%%%%%%%%%%%%%%%%%%
\gdef\n@eprofile#1#2#3{%
 \stepcounter{profile}%
 \vbox{%
%  \fmt@pro@noEname{#1}%
  \fmt@pro@nopicnoframe{#1}{#2}{#3}%
 }%
 \vskip2\Cvs%
}
%%%%%%%%%%%%%%%%%%%%%
\gdef\no@eprofile#1#2#3{%
 \stepcounter{profile}%
 \vbox{%
%  \fmt@pro@noEname{#1}%
  \fmt@pro@nopic{#1}{#2}{#3}%
 }%
 \vskip2\Cvs%
}
%%%%%%%%%%%%%%%%%%%%%
\fi









%%%
\ifDS@english
\def\fmt@pro@pic#1#2#3{%
\noindent
\begin{minipage}[t]{\columnwidth}%
\leavevmode%
\noindent\IfFileExists{#3.eps}{%
\noindent
{\raisebox{-28.19mm}{\pushtowall{%{-19.3mm}
\smash{%
\resizebox{25mm}{31mm}{\includegraphics{#3.eps}}}}}%<-- kao
}%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
}%{%
%\noindent{\smash{\raisebox{8mm}{\pushtowall{%
%\begin{minipage}[t]{25mm}
%     \hrule \@height .1mm
%     \hbox to 25mm{\vrule \@width .1mm \@height 31mm\hss
%                   \vrule \@width .1mm \@height 31mm}%
%     \hrule \@height .1mm
%\end{minipage}
%}}}}
%}%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\pushtowall{\raisebox{.5mm}{%%
\begin{minipage}[t]{\columnwidth}%
%\raggedright%
%\penalty=-200%
\hangindent30mm\hangafter-8\relax
\mbox{\fontsize{13\Q}{18\h}\selectfont\bfseries #1}\hskip.5em%
%%
%
%\@BreakMember%%
%%%%%%%%%%%%%%
%\if #1m\relax
%   \hangindent31mm{\normalsize (Member)}\else%
%\if #1s\relax
%   \hangindent31mm{\normalsize (Student Member)}\else%
%\if #1f\relax
%   \hangindent31mm{\normalsize (Member, Fellow)}\else%
%\if #1h\relax
%   \hangindent31mm{\normalsize (Honorary Member, Fellow)}\else%
%\if #1n\relax
%    \relax
%  \else
% \relax
%\fi\fi\fi\fi\fi
%%%%%%%%%%
%\\[.5\Cvs]
%==============
\baselineskip=18\h%
{\fontsize{13\Q}{18\h}\selectfont%
#2}
%==============
\end{minipage}}}%
\end{minipage}%
%\global\let\@BreakMember\relax
}
%===============================================================
\else
%===============================================================
\def\fmt@pro@pic#1#2#3#4{%
\noindent
%%% kao
\begin{minipage}[t]{\columnwidth}%
\leavevmode%
\noindent\IfFileExists{#4.eps}{%
\noindent
{\raisebox{-27.8mm}{\pushtowall{%{-19.3mm}
\smash{%
\resizebox{25mm}{31mm}{\includegraphics{#4.eps}}}}}%<-- kao
}%
%%%%%%
}%{%
%\noindent{\smash{\raisebox{8mm}{\pushtowall{%
%\begin{minipage}[t]{25mm}
%     \hrule \@height .1mm
%     \hbox to 25mm{\vrule \@width .1mm \@height 31mm\hss
%                   \vrule \@width .1mm \@height 31mm}%
%     \hrule \@height .1mm
%\end{minipage}
%}}}}}%
%%%%%%%%%%%%
\pushtowall{\begin{minipage}[t]{\columnwidth}%
\hangindent30mm\hangafter-7\relax
\mbox{\fontsize{15\JQ}{0\h}\selectfont\bfseries #2}%%
%%
\hskip1.6zw%%%
\@BreakMember%%
%%%%%%%%%%%%%%
\if #1m\relax
   \hangindent30mm{\normalsize \inhibitglue（正会員）}\else%
\if #1s\relax
   \hangindent30mm{\normalsize \inhibitglue（学生会員）}\else%
\if #1f\relax
   \hangindent30mm{\normalsize \inhibitglue（フェロー）}\else%
\if #1F\relax
   \hangindent30mm{\normalsize \inhibitglue（正会員，フェロー）}\else%
\if #1h\relax
   \hangindent30mm{\normalsize \inhibitglue（名誉会員，フェロー）}\else%
\if #1n\relax
   \relax
  \else
 \relax
\fi\fi\fi\fi\fi\fi
%%%%%%%%%%
\\[.5\Cvs]
%==============
\baselineskip=21\h%
{\fontsize{13\JQ}{21\h}\selectfont%
#3}
%==============
\end{minipage}}%
\end{minipage}%
\global\let\@BreakMember\relax
}
\fi




%==================================================================
%==================================================================


%%% E:  profile{name}{xxx}
%%% J:  profile{m}{name}{xxx}
\ifDS@english
\def\fmt@pro@nopic#1#2{%
\noindent
%%% kao
\begin{minipage}[t]{\columnwidth}%
\leavevmode%
\noindent\IfFileExists{\the\c@profile.eps}{%
\noindent
{\raisebox{-28mm}{\pushtowall{%{-19.3mm}
\smash{%
%\resizebox{25mm}{31mm}{\includegraphics{#4.eps}}
}}}%<-- kao
}%
%%%%%%%
}{%
\noindent{%\smash
{\raisebox{2.2mm}{\pushtowall{%
\begin{minipage}[t]{25mm}
     \hrule \@height .1mm
     \hbox to 25mm{\vrule \@width .1mm \@height 31mm\hss
                   \vrule \@width .1mm \@height 31mm}%
     \hrule \@height .1mm
\end{minipage}
}}}}}%
%%%%%%%
\pushtowall{\begin{minipage}[t]{\columnwidth}%
\hangindent30mm\hangafter-8\relax
\mbox{\fontsize{13\Q}{18\h}\selectfont\bfseries #1}\hskip.5em%%
%%
%\quad%%%
%\@BreakMember%%
%%%%%%%%%%%%%%
%\if #1m\relax
%   \hangindent31mm{\normalsize (Member)}\else%
%\if #1s\relax
%   \hangindent31mm{\normalsize (Student Member)}\else%
%\if #1f\relax
%   \hangindent31mm{\normalsize (Member, Fellow)}\else%
%\if #1h\relax
%   \hangindent31mm{\normalsize (Honorary Member, Fellow)}\else%
%\if #1n\relax
%   \relax
%  \else
% \relax
%\fi\fi\fi\fi\fi
%%%%%%%%%%
%\\[.5\Cvs]
%==============
\baselineskip=18\h%
{\fontsize{13\Q}{18\h}\selectfont%
#2}
%==============
\end{minipage}}%
\end{minipage}%
%\global\let\@BreakMember\relax
}
%===============================================================
\else
%===============================================================
\def\fmt@pro@nopic#1#2#3{%
\noindent
\begin{minipage}[t]{\columnwidth}%
\leavevmode%
\noindent\IfFileExists{\the\c@profile.eps}{%
\noindent
{\raisebox{-28mm}{\pushtowall{%{-19.3mm}
\smash{%
%\resizebox{25mm}{31mm}{\includegraphics{#4.eps}}%%
}}}%<-- kao
}%
%%%%%%%
}{%
\noindent{%\smash
{\raisebox{3mm}{\pushtowall{%
\begin{minipage}[t]{25mm}
     \hrule \@height .1mm
     \hbox to 25mm{\vrule \@width .1mm \@height 31mm\hss
                   \vrule \@width .1mm \@height 31mm}%
     \hrule \@height .1mm
\end{minipage}
}}}}}%
%%%%%%%%
\pushtowall{\begin{minipage}[t]{\columnwidth}%
\hangindent30mm\hangafter-7\relax
\mbox{\fontsize{15\JQ}{0\h}\selectfont\bfseries #2}%%
%%
\hskip1.6zw%%%
\@BreakMember%%
%%%%%%%%%%%%%%
\if #1m\relax
   \hangindent30mm{\normalsize \inhibitglue（正会員）}\else%
\if #1s\relax
   \hangindent30mm{\normalsize \inhibitglue（学生会員）}\else%
\if #1f\relax
   \hangindent30mm{\normalsize \inhibitglue（フェロー）}\else%
\if #1F\relax
   \hangindent30mm{\normalsize \inhibitglue（正会員，フェロー）}\else%
\if #1h\relax
   \hangindent30mm{\normalsize \inhibitglue（名誉会員，フェロー）}\else%
\if #1n\relax
   \relax
  \else
 \relax
\fi\fi\fi\fi\fi\fi
%%%%%%%%%%
\\[.5\Cvs]
%==============
\baselineskip=21\h%
{\fontsize{13\JQ}{21\h}\selectfont%
#3}
%==============
\end{minipage}}%
\end{minipage}%
\global\let\@BreakMember\relax
}
\fi





%==================================================================
%==================================================================



%%% profile*{m}{name}{xxx}
\ifDS@english
\def\fmt@pro@nopicnoframe#1#2{%
\noindent
\begin{minipage}[t]{\columnwidth}%
\pushtowall{\begin{minipage}[t]{\columnwidth}%
%\hangindent30mm\hangafter-7\relax
\mbox{\fontsize{13\JQ}{18\h}\selectfont\bfseries #1}\hskip.5em%%
%%
%\quad%%%
%\@BreakMember%%
%%%%%%%%%%%%%%
%\if #1m\relax
%{\normalsize (Member)}\else%
%\if #1s\relax
%{\normalsize (Student Member)}\else%
%\if #1f\relax
%{\normalsize (Member, Fellow)}\else%
%\if #1h\relax
%{\normalsize (Honorary Member, Fellow)}\else%
%\if #1n\relax
%   \relax
%  \else
% \relax
%\fi\fi\fi\fi\fi
%%%%%%%%%%
%\\[.5\Cvs]
%==============
\baselineskip=18\h%
{\fontsize{13\Q}{18\h}\selectfont%
#2}
%==============
\end{minipage}}%
\end{minipage}%
\global\let\@BreakMember\relax
}
%===============================================================
\else
%===============================================================
\def\fmt@pro@nopicnoframe#1#2#3{%
\begin{minipage}[t]{\columnwidth}%
\noindent
\pushtowall{\begin{minipage}[t]{\columnwidth}%
%%\hangindent30mm\hangafter-7\relax
\mbox{\fontsize{15\JQ}{0\h}\selectfont\bfseries #2}%%
%%
\hskip1.6zw%%%
\@BreakMember%%
%%%%%%%%%%%%%%
\if #1m\relax
     {\normalsize \inhibitglue（正会員）}\else%
\if #1s\relax
     {\normalsize \inhibitglue（学生会員）}\else%
\if #1f\relax
     {\normalsize \inhibitglue（フェロー）}\else%
\if #1F\relax
     {\normalsize \inhibitglue（正会員，フェロー）}\else%
\if #1h\relax
     {\normalsize \inhibitglue（名誉会員，フェロー）}\else%
\if #1n\relax
   \relax
  \else
 \relax
\fi\fi\fi\fi\fi\fi
%%%%%%%%%%
\\[.5\Cvs]
%==============
\baselineskip=21\h%
{\fontsize{13\JQ}{21\h}\selectfont%
#3}
%==============
\end{minipage}}%
\end{minipage}%
\global\let\@BreakMember\relax
}
\fi




%==================================================================================================

%\setlength\footnotesep{6.65\p@}
\setlength{\skip\footins}{9\p@ \@plus 4\p@ \@minus 2\p@}




%\renewcommand{\footnoterule}{%
%  \kern-3\p@
%  \hrule width \columnwidth
%  \kern 2.6\p@}

\ifDS@english
\setlength\footnotesep{6.65\p@}%%!!
%
\renewcommand{\footnoterule}{%
  \kern-3\p@
  \hrule width \columnwidth
  \kern 2.6\p@}
\else
\setlength\footnotesep{10\h}%!!
%
\renewcommand{\footnoterule}{%
  \kern-4\p@
  \hrule width \columnwidth
  \kern 1.6\p@}
\fi



\let\footnotes@ve=\footnote
\ifDS@english
\def\footnote{\footnotes@ve}
\else
\def\footnote{\inhibitglue\footnotes@ve}
\fi

\let\footnotemarks@ve=\footnotemark
\ifDS@english
\def\footnotemark{\footnotemarks@ve}
\else
\def\footnotemark{\inhibitglue\footnotemarks@ve}
\fi


\def\thefootnote{\ifnum\c@footnote>\z@\leavevmode\lower.5ex\hbox{*}\@arabic\c@footnote\fi}






\long\def\@footnotetext#1{\insert\footins{%
    \reset@font\footnotesize
    \interlinepenalty\interfootnotelinepenalty
    \splittopskip\footnotesep
    \splitmaxdepth \dp\strutbox \floatingpenalty \@MM
    \hsize\columnwidth \@parboxrestore
    \protected@edef\@currentlabel{%
       \csname p@footnote\endcsname\@thefnmark
    }%
    \color@begingroup
      \@makefntext{%
        \rule\z@\footnotesep\ignorespaces#1\@finalstrut\strutbox}%
    \color@endgroup}}%




\def\footfont{%
\ifDS@english
 \fontsize{11\Q}{13\h}\normalfont\selectfont%
\else
 \fontsize{11\JQ}{14\h}\normalfont\selectfont%
\fi
}


%%%<<<< 1.02
\long\def\@makefntext#1{\footfont%
\ifDS@english
\setbox\z@=\hbox{\makebox[1.61\Cwd][l]{\@makefnmark}}%
\else
\setbox\z@=\hbox{\makebox[1.58\Cwd][l]{\@makefnmark}}%
\fi
\def\par{{\@@par}}
\@tempdima\columnwidth
\advance\@tempdima-\wd\z@
\parshape 1 \wd\z@ \@tempdima
\parindent=1\zw
\noindent
\llap{\unhbox\z@}#1}




%==================================================================================================

%==================================================================================================




%% from fleqn.clo
%%\ProvidesFile{fleqn.clo}
%%       [1998/08/17 v1.1c Standard LaTeX option
%%                                   (flush left equations)]
\newdimen\mathindent
\AtEndOfClass{\mathindent1\zw}% \leftmargini
\renewcommand\[{\relax
                \ifmmode\@badmath
                \else
                 \parsep  4\p@ \@plus2\p@ \@minus\p@
                 \topsep  8\p@ \@plus2\p@ \@minus4\p@
                 \itemsep 4\p@ \@plus2\p@ \@minus\p@
                  \begin{trivlist}%
                    \@beginparpenalty\predisplaypenalty
                    \@endparpenalty\postdisplaypenalty
                    \item[]\leavevmode
                    \hb@xt@\linewidth\bgroup $\m@th\displaystyle %$
                      \hskip\mathindent\bgroup
                \fi}
\renewcommand\]{\relax
                \ifmmode
                      \egroup $\hfil% $
                    \egroup
                  \end{trivlist}%
                \else \@badmath
                \fi}
\renewenvironment{equation}%
    {\@beginparpenalty\predisplaypenalty
     \@endparpenalty\postdisplaypenalty
     \refstepcounter{equation}%
     \parsep  4\p@ \@plus2\p@ \@minus\p@
     \topsep  8\p@ \@plus2\p@ \@minus4\p@
     \itemsep 4\p@ \@plus2\p@ \@minus\p@
     \trivlist \item[]\leavevmode
       \hb@xt@\linewidth\bgroup $\m@th% $
         \displaystyle
         \hskip\mathindent}%
        {$\hfil % $
         \displaywidth\linewidth\hbox{\@eqnnum}%
       \egroup
     \endtrivlist}
\renewenvironment{eqnarray}{%
    \stepcounter{equation}%
    \parsep  4\p@ \@plus2\p@ \@minus\p@
    \topsep  8\p@ \@plus2\p@ \@minus4\p@
    \itemsep 4\p@ \@plus2\p@ \@minus\p@
    \def\@currentlabel{\p@equation\theequation}%
    \global\@eqnswtrue\m@th
    \global\@eqcnt\z@
    \tabskip\mathindent
    \let\\=\@eqncr
    \setlength\abovedisplayskip{\topsep}%
    \ifvmode
      \addtolength\abovedisplayskip{\partopsep}%
    \fi
    \addtolength\abovedisplayskip{\parskip}%
    \setlength\belowdisplayskip{\abovedisplayskip}%
    \setlength\belowdisplayshortskip{\abovedisplayskip}%
    \setlength\abovedisplayshortskip{\abovedisplayskip}%
    $$\everycr{}\halign to\linewidth% $$
    \bgroup
      \hskip\@centering
      $\displaystyle\tabskip\z@skip{##}$\@eqnsel&%
      \global\@eqcnt\@ne \hskip.8\arraycolsep \hfil${##}$\hfil&%
      \global\@eqcnt\tw@ \hskip.8\arraycolsep
        $\displaystyle{##}$\hfil \tabskip\@centering&%
      \global\@eqcnt\thr@@
        \hb@xt@\z@\bgroup\hss##\egroup\tabskip\z@skip\cr}%
      {\@@eqncr
    \egroup
    \global\advance\c@equation\m@ne$$% $$
    \@ignoretrue
    }
%%\endinput
%%
%% End of file `fleqn.clo'.

\def\@eqnnum{{\normalfont \normalcolor (\theequation)\hspace*{3mm}}}


%=============================================================================


%% Editor

\def\Ediname{\csname Ediname@\@type\endcsname}


\def\Ediname@DAM{\ifDS@english%
{Editor in Charge:}
\else {担当編集委員}
\fi}%%

\def\Ediname@TBIO{Communicated by}
\def\Ediname@CVA{Communicated by}


\def\Ediname@SLDM{\ifDS@invited
{Invited by Editor-in-Chief:}%
\else%
{Recommended by Associate Editor:}%
\fi}


\let\Ediname@TOD\Ediname@DAM
\let\Ediname@Data\Ediname@TBIO
\let\Ediname@Survey\Ediname@TBIO
\let\Ediname@Research\Ediname@CVA
\let\Ediname@Short\Ediname@SLDM



\def\Edifont{\normalfont\normalsize}



\def\Editor#1{%
\vspace{-.5\baselineskip}%
\ifDS@english
%%
\ifx\Ediname\relax%
\noindent
\hfill ({\Edifont{\Ediname@DEF}}%%)
\else
\noindent
\hfill ({\Edifont{\Ediname}}%%)
\fi
\else
\noindent
\hfill \<（{\Edifont{\Ediname}}%%）
\fi
%%
\ifDS@english
\hskip.5em%
\textit{#1})\else
\hskip1\zw%
#1）\fi
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%



%=============================================================================



\newcommand\appendixname{%
\ifDS@english Appendix\else \protect\kintou{5zw}{付録}\fi}




\newcommand\appendix{\par
%\def\@seccntformat##1{a\thesection.\the\c@subsection\ }%  ver2.3
\ifDS@english
\def\@seccntformatAPP##1{\csname the##1\endcsname\hskip1em}
\else
\def\@seccntformatAPP##1{\csname the##1\endcsname\hskip1zw}
\fi
\vspace*{\Cvs}%
\renewcommand{\section}{\@startsectionAPP{section}{1}{\z@}%
{.00001\Cvs}% \@plus.3\Cdp \@minus.2\Cdp}% \@plus1.3\Cdp\@minus10.5\Cdp}%
{.00001\Cvs}% \@plus.3\Cdp \@minus.2\Cdp}%
{\reset@font
\fontsize{16\JQ}{21\h}\selectfont%
\bfseries\mathversion{bold}%
}}%
%-----------
\section*{\appendixname}
  \setcounter{section}{0}%
  \setcounter{subsection}{0}%
  \setcounter{equation}{0}%
  \setcounter{figure}{0}%
  \setcounter{table}{0}%
%\renewcommand\thesection{\@Alph\c@section}
%\renewcommand\thesubsection   {\thesection.\@arabic\c@subsection}
%
\renewcommand\thesection{A.\@arabic\c@section}
\renewcommand\thesubsection{\thesection.\@arabic\c@subsection}
%
%\renewcommand\theequation {A.\@arabic\c@equation}
\renewcommand\theequation {A.\@arabic\c@equation}
%
\renewcommand \thefigure {{A$\cdot$\@arabic\c@figure}}
\renewcommand\thetable{{A$\cdot$\@arabic\c@table}}
\def\fps@figure{tbp}
\def\ftype@figure{1}
\def\ext@figure{lof}
\def\fnum@figure{\figurename~\thefigure}
\def\fnum@table{\tablename~\thetable}
%\@addtoreset{equation}{section}
%\@addtoreset{figure}{section}
%\@addtoreset{table}{section}
}




%=============================================================================


\ifDS@english
\edef\zw{em}\else
\edef\zw{zw}\fi

\let\Cite\cite



\if@twocolumn
  \setlength\leftmargini {2\Cwd}%
\else
  \setlength\leftmargini {2\Cwd}%
\fi


\if@twocolumn
  \setlength\marginparsep{5mm}
\else
  \setlength\marginparsep{5mm}
\fi


\if@twocolumn
  \twocolumn
  \sloppy
\else
  \onecolumn
\fi

\if@twoside
  \@mparswitchtrue
\else
  \@mparswitchfalse
\fi

%\sloppy
\flushbottom
%\raggedbottom
\sloppy



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\setlength{\paperheight}{297mm}
\setlength{\paperwidth}{210mm}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

 \ifDS@english
%%\AtBeginDocument{\RequirePackage{txfonts}}
\textwidth 177mm
 \@settopoint\textwidth
 \textheight 55\Cvs
% \textheight 250.75mm
% \textheight 55\baselineskip
 \advance \textheight \topskip
 \advance \textheight .4mm %% limit .31mm
 \@settopoint\textheight
 \setlength\marginparsep{5mm}
\else
\textwidth 177mm
 \@settopoint\textwidth
 \textheight 47\Cvs
 \advance \textheight \topskip
 \advance \textheight .4mm %% limit .31mm
 \@settopoint\textheight
 \setlength\marginparsep{5mm}
\fi
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%
\@tempdima\paperwidth
\advance\@tempdima-\textwidth
\@tempdima.5\@tempdima
\advance\@tempdima-1in
\oddsidemargin\@tempdima
\evensidemargin\@tempdima
\setlength{\topmargin}{-17mm}%



%
\columnsep 8mm

%% \doublerulesep is 1pt (H.N.)
\arraycolsep5pt
\tabcolsep6pt
\arrayrulewidth.4pt
\doublerulesep1pt
\tabbingsep.5\Cwd

\skip\@mpfootins\skip\footins
\fboxsep3pt \fboxrule.4pt


%% SKIP
\def\onelineskip{\par\vspace{1\baselineskip}\par}
\def\halflineskip{\par\vspace{.5\baselineskip}\par}



%% kintou
\def\kintou#1#2{\ifDS@english
\relax\else
\@ifundefined{jintercharskip}%
 {\leavevmode\hbox to #1{%
   \kanjiskip\z@ \@plus 1fill \@minus 1fill\xkanjiskip\kanjiskip #2}}%
 {\leavevmode\hbox to #1{\kanjiskip\z@ \@plus 1fill \@minus 1fill
   \jasciikanjiskip\kanjiskip #2}}%
\fi
}


%% runy
\def\ruby#1#2{\leavevmode \setbox0=\hbox{#1}\setbox1=\hbox{\tiny #2}%% <
 \ifdim\wd0>\wd1 \dimen0=\wd0 \else \dimen0=\wd1 \fi
 \hbox{\kanjiskip=\fill
 \vbox{\hbox to \dimen0{\tiny \hfil#2\hfil}%
  \nointerlineskip \hbox to \dimen0{\hfil#1\hfil}}}}

%% Proof end
\def\QED{{\unskip\nobreak\hfil\penalty50
 \hskip1\zw\hbox{}\nobreak\hfil \hbox{$\Box$\hskip1\zw}
 \parfillskip\z@ \finalhyphendemerits\z@\par}}


%%
\def\Hline{\noalign{\hrule height 0.4mm}}



\def\thepage{\the\c@page}


\hbadness4000
\vbadness10001
\tolerance4000\pretolerance\m@ne
\clubpenalty\z@
\widowpenalty\z@
\displaywidowpenalty\z@
\interdisplaylinepenalty\z@ %%  100
\predisplaypenalty\z@       %% 1000


\pagestyle{headings}





%==================================================================================================
%==================================================================================================


\def\long@fig{\ifDS@english {Figure~\nobreak}\else {\figurename~\nobreak}\fi}
\def\short@fig{\ifDS@english {Fig.\,\nobreak}\else {\figurename~\nobreak}\fi}
\def\long@figs{\ifDS@english {Figures~\nobreak}\else {\figurename~\nobreak}\fi}
\def\short@figs{\ifDS@english {Figs.\,\nobreak}\else {\figurename~\nobreak}\fi}

\def\long@tab{\ifDS@english {Table~}\else {\tablename~\nobreak}\fi}
\def\short@tab{\ifDS@english {Table~}\else {\tablename~\nobreak}\fi}
\def\long@tabs{\ifDS@english {Tables~}\else {\tablename~\nobreak}\fi}
\def\short@tabs{\ifDS@english {Tables~}\else {\tablename~\nobreak}\fi}



\def\Figref{\bgroup\let\prefix@figtabref\long@fig
                   \@ifstar\figtabref@star\figtabref@}
\def\figref{\bgroup\let\prefix@figtabref\short@fig
                   \@ifstar\figtabref@star\figtabref@}
\def\Figsref{\bgroup\let\prefix@figtabref\long@figs
                   \@ifstar\figtabref@star\figtabref@}
\def\figsref{\bgroup\let\prefix@figtabref\short@figs
                   \@ifstar\figtabref@star\figtabref@}

\def\Tabref{\bgroup\let\prefix@figtabref\long@tab
                   \@ifstar\figtabref@star\figtabref@}
\def\tabref{\bgroup\let\prefix@figtabref\short@tab
                   \@ifstar\figtabref@star\figtabref@}
\def\Tabsref{\bgroup\let\prefix@figtabref\long@tabs
                   \@ifstar\figtabref@star\figtabref@}
\def\tabsref{\bgroup\let\prefix@figtabref\short@tabs
                   \@ifstar\figtabref@star\figtabref@}



\def\figtabref@star#1{\prefix@figtabref\ref{#1}\egroup}

\def\figtabref@#1{%
   \let\bf@or@normal\normalfont
   \@ifundefined{used@#1}{\expandafter\gdef\csname used@#1\endcsname{used}%
                          \let\bf@or@normal\bfseries}{\relax}%
   \bf@or@normal\prefix@figtabref\ref{#1}\egroup}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


\def\urlj{%
\@ifnextchar[%% ]
{\n@urlj}
{\@urlj}
}

\def\n@urlj[#1]#2{%
\normalfont
\if #11\relax
入手先\\ \else%
\fi
\normalfont $\langle$\nobreak{#2}\nobreak$\rangle$}

\def\@urlj#1{%
\normalfont 入手先$\langle$\nobreak{#1}\nobreak$\rangle$}


\def\urle{%
\@ifnextchar[%% ]
{\n@urle}
{\@urle}
}


\def\n@urle[#1]#2{%
\normalfont
\if #11\relax
available \\ from \else%
\if #12\relax
available from \\ \else
\fi\fi
$\langle$\nobreak{#2}\nobreak$\rangle$}


\def\@urle#1{%
\normalfont available from $\langle$\nobreak{#1}\nobreak$\rangle$}




\def\refdatej#1{\normalfont （参照{#1}）\<}
\def\refdatee#1{\normalfont (accessed {#1})}

\def\doi#1{\normalfont DOI: #1}





\newenvironment{recommendation}{%
\normalsize%
\par\vskip\baselineskip%
\ifDS@english
   \noindent{\bfseries{Editor's Recommendation}}\par
\else
   \noindent{\bfseries{推薦文}}\par%
\fi
}{\par}%\vskip\baselineskip





\def\acknowledgment{\par
\ifDS@english
   {\bfseries{Acknowledgments}}%
\hskip1em\ignorespaces%
\else
   {\bfseries{謝辞}}%
\hskip1\zw\ignorespaces%
\fi}



%====================================
% Dannuki-sita
%====================================

\newbox\@dummyfigbox

\def\twocolcaption{\refstepcounter\@captype \@dblarg{\@twocolcaption\@captype}}



\long\def\@twocolcaption#1[#2]#3{\par
 \begingroup
  \@parboxrestore
  \if@minipage
   \@setminipage
  \fi
\footnotesize%%
   \@maketwocolcaption{%
{\bfseries{\csname fnum@#1\endcsname}}}{\ignorespaces #3}\par
 \endgroup}


\newdimen\twocolcapwidth
\twocolcapwidth=.66\textwidth%130mm
\newdimen\twocolecapwidth
\twocolecapwidth=.66\textwidth%130mm








\ifDS@english
\long\def\@maketwocolcaption#1#2{%
 \vskip\abovecaptionskip
 \setbox\@tempboxa\hbox{#1\hskip1\zw\shortstack[l]{#2}}%
 \@tempdima\ht\@tempboxa \advance \@tempdima \dp\@tempboxa
 \setbox\@tempboxb\hbox{#1\hskip1\zw}%% <<
 \ifdim \@tempdima > \baselineskip
  \ifdim \wd\@tempboxa > \twocolcapwidth
  \hbox to\textwidth{\hfil\parbox[t]{\twocolcapwidth}{\hangindent\wd\@tempboxb
    #1\hskip1\zw #2}\hfil}%
\par\prevdepth=0pt%
\vskip4\@Q
  \else
\hbox to\textwidth{\hss\parbox[t]{\wd\@tempboxa}{\hangindent\wd\@tempboxb
    #1\hskip1\zw #2}\hss}%
\par\prevdepth=0pt%
\vskip4\@Q
  \fi
 \else %% <
  \ifdim \wd\@tempboxa > \twocolcapwidth
   \hbox to\textwidth{\hfil\begin{tabular}{p{\twocolcapwidth}}\hangindent\wd\@tempboxb
    #1\hskip1\zw #2\end{tabular}\hfil}%
\par\prevdepth=0pt%
\vskip2.5\@Q
%\vskip12\@Q
  \else
   \setbox\@tempboxb\hbox{#2}%
   \hbox to\textwidth{\hfil\hbox to\twocolcapwidth
{\hss\box\@tempboxa\hss}\hfil}%
\vskip\belowcaptionskip
  \fi
 \fi
}
%%%%%
\else
%%%%%
\long\def\@maketwocolcaption#1#2{%
 \vskip\abovecaptionskip
 \setbox\@tempboxa\hbox{#1\hskip1\zw\shortstack[l]{#2}}%
 \@tempdima\ht\@tempboxa \advance \@tempdima \dp\@tempboxa
 \setbox\@tempboxb\hbox{#1\hskip1\zw}%% <<
 \ifdim \@tempdima > \baselineskip
  \ifdim \wd\@tempboxa > \twocolcapwidth
   \hbox to\textwidth{\hfil\parbox[t]{\twocolcapwidth}{\hangindent\wd\@tempboxb
    #1\hskip1\zw #2}\hfil}\vskip2\@Q
  \else
\hbox to\textwidth{\hss\parbox[t]{\wd\@tempboxa}{\hangindent\wd\@tempboxb
    #1\hskip1\zw #2}\hss}
\vskip2\@Q
  \fi
 \else %% <
  \ifdim \wd\@tempboxa > \twocolcapwidth
   \hbox to\textwidth{\hfil\begin{tabular}{p{\twocolcapwidth}}\hangindent\wd\@tempboxb
    #1\hskip1\zw #2\end{tabular}\hfil}\vskip2\@Q
  \else
   \setbox\@tempboxb\hbox{#2}%
%   \ifdim \wd\@tempboxb < 4.5\Cwd %% >
%    \hbox to\textwidth{\hss #1\hskip1\zw\kintou{5\Cwd}{#2}\hss}%
%   \else
   \hbox to\textwidth{\hfil\hbox to\twocolcapwidth
{\hss\box\@tempboxa\hss}\hfil}%
%   \fi
  \fi
 \fi
}
\fi


\def\TABLE{table}%%!!




\long\def\twocolecaption#1{\footnotesize%
 \setbox\@tempboxa%
\hbox{{\bfseries%
\csname fnum@e\@captype\endcsname}\hskip1\zw
  \shortstack[l]{#1}}%
 \@tempdima\ht\@tempboxa \advance \@tempdima \dp\@tempboxa
 \setbox\@tempboxb\hbox{{\bfseries%
\csname fnum@e\@captype\endcsname}\hskip1\zw}%% <<
 \ifdim \@tempdima > \baselineskip
  \ifdim \wd\@tempboxa > \twocolecapwidth
\hbox to\textwidth{\hss\parbox[t]{\twocolecapwidth}{\hangindent\wd\@tempboxb
    {\bfseries%
\csname fnum@e\@captype\endcsname}\hskip1\zw #1}\hss}\par\prevdepth=0pt%
  \else
 \hbox to\textwidth{\hss\parbox[t]{\wd\@tempboxa}{\hangindent\wd\@tempboxb
    {\bfseries%
\csname fnum@e\@captype\endcsname}\hskip1\zw #1}\hss}\par\prevdepth=0pt%%
\vskip5.9\h%
  \fi
 \else %% <
  \ifdim \wd\@tempboxa > \twocolecapwidth
\hbox to\textwidth{\hfil\begin{tabular}{p{\twocolecapwidth}}\hangindent\wd\@tempboxb
    {\bfseries%
\csname fnum@e\@captype\endcsname}\hskip1\zw #1\end{tabular}\hfil}
\par\prevdepth=0pt%
\vskip3\h%
  \else
   \hbox to\textwidth{\hfil\hbox to\twocolcapwidth%
{\hss\box\@tempboxa\hss}\hfil}%
\vspace{\belowcaptionskip}\par
  \fi
 \fi
\ifx \@captype\TABLE
\vspace{1mm}%
\else
\fi
}








\def\twocolfig#1{%
\hbox to \columnwidth{%
\hbox to \textwidth{\hss
#1
\hss}\hss}}



\def\dummyfigure#1{%
 \begin{figure}[b]
 \vspace{#1}
 \vskip\abovecaptionskip
 \phantom{\box\@dummyfigbox}\par
 \end{figure}
}

\def\dummyfiguret#1{%
 \begin{figure}[t]
 \vspace{#1}
 \vskip\abovecaptionskip
 \phantom{\box\@dummyfigbox}\par
 \end{figure}
}

%====================================





%
\long\def\contact#1{}

%
\def\MARU#1{\raisebox{0.1zh}{{\rm
\ooalign{\hfil
\lower.168ex\hbox{\ifnum#1<10\relax {#1}\else \scalebox{.5}[1]{#1}\fi}%
\hfil\crcr
\mathhexbox20D}}}}

%
\ifDS@english
\def\ddash{\leavevmode \raise.1mm\hbox to 1.95em{\hfil ---\hss ---\hfil}}
\else
\def\ddash{\leavevmode \raise.1zh\hbox to 2zw{---\hss ---}}
\fi

\let\doubledash\ddash

%% for ams
\AtBeginDocument{%
\mathindent1em%
\def\tagform@#1{\maketag@@@{(\ignorespaces#1\unskip\@@italiccorr)\hskip1\zw}}%!
}



%% sort cite
\def\@cite@itemsep{,\penalty\@m\ }
\def\@cite@firstdelim{}
\def\@cite@lastdelim{}

\def\@cite#1#2{%
   \ifvmode\leavevmode\fi\nobreak
   \if@tempswa\@cite@without@comment{#1}{#2}%
   \else      \@cite@with@comment{#1}%
   \fi}

\def\@cite@without@comment#1#2{%
   \@cite@firstdelim{#1, #2}\@cite@lastdelim}%

\def\@cite@with@comment#1{%
   \@cite@firstdelim{#1}\@cite@lastdelim
}

\def\@citex[#1]#2{%
   \let\@cite@reference@list\@empty
   \let\@cite@undefined@reference\@empty
   \@for\@tempa:=#2\do{%
      \edef\@tempa{\expandafter\@firstofone\@tempa\@empty}%
      \if@filesw
         \immediate\write\@auxout{\string\citation{\@tempa}}%
      \fi
      \@ifundefined{b@\@tempa}%
      {\G@refundefinedtrue
          \@latex@warning{Citation `\@tempa' on page
          \thepage \space undefined}%
       \def\@cite@undefined@reference{%
           \@cite@put@itemsep
            \mbox{\reset@font\bfseries ?}}}%
       {\edef\@tempb{{\@nameuse{b@\@tempa}}}%
        \expandafter\@append@list\expandafter
           \@cite@reference@list\@tempb}}%
       \@simplify@list\@cite@reference@list
       \@ascending@sort@list\@cite@reference@list\@compare@num
       \@cite{{\let\@elt\@cite@output@elt
               \def\@cite@put@itemsep{%
                  \def\@cite@put@itemsep{\@cite@itemsep}}%
                \@cite@reference@list
                \@cite@undefined@reference}}%
        {#1}}%


\def\@cite@output@elt#1{%
    \@cite@put@itemsep
    \bgroup[#1]\egroup
}

%%%%%%%%%%%%%%%
\def\@append@list#1#2{%
   \@addto@macro#1{\@elt{#2}}}%

\def\@addto@macro#1#2{%
   \expandafter\def\expandafter#1\expandafter{#1#2}}

\def\@simplify@list#1{%
   \begingroup
      \let\@templist\@empty
      \loop\ifx#1\@empty\else
         \@pop@list\@firstterm#1%
         \expandafter\@append@list\expandafter\@templist
             \expandafter{\@firstterm}%
         \expandafter\@remove@from@list\expandafter#1%
             \expandafter{\@firstterm}%
      \repeat
      \expandafter\endgroup\expandafter
         \def\expandafter#1\expandafter{\@templist}}

\def\@remove@from@list#1#2{%
    \begingroup
    \let\@templist\@empty
    \def\@to@be@removed{#2}%
    \let\@elt\@remove@from@list@elt
     #1%
    \expandafter\endgroup\expandafter
      \def\expandafter#1\expandafter{\@templist}}

\def\@remove@from@list@elt#1{%
   \def\@tempa{#1}%
   \ifx\@tempa\@to@be@removed\else
      \@append@list\@templist{#1}%
   \fi}%

\def\@pop@list#1#2{%
   \ifx#2\@empty\let#1\@empty
   \else        \expandafter\@pop@list@#2\@nil#1#2%
   \fi
}

\def\@pop@list@\@elt#1#2\@nil#3#4{%
    \def#3{#1}\def#4{#2}}


\newcount\@compare@result

\def\@compare@num#1#2{%
    \@compare@result#1\relax
    \advance\@compare@result-#2\relax
}

\def\@ascending@sort@list{\@sort@list<}
\def\@descending@sort@list{\@sort@list>}

\def\@sort@list#1#2#3{%
   \begingroup
   \let\@sort@templista\@empty
   \def\@elt##1{%
      \@addto@sorted@list#1\@sort@templista{#3}{##1}}%
   #2%
   \expandafter\endgroup\expandafter
      \def\expandafter#2\expandafter{\@sort@templista}}


\newif\if@ignore@same@item

\def\@addto@sorted@list#1#2#3#4{%
    \begingroup
    \let\@sort@templistb\@empty
    \def\@tempz{\@elt{#4}}%
    \def\@elt##1{%
        #3{##1}{#4}%
        \def\@tempa{\@elt{##1}}%
        \let\@tempb\@empty
        \ifnum\z@#1\@compare@result
           \@csc@t\@tempa\@tempz\@tempa
           \def\@tempb{\@addto@sorted@list@skip}%
        \else
            \ifnum\z@=\@compare@result
                \if@ignore@same@item
                     \def\@tempb{\@addto@sorted@list@skip}%
                \fi
            \fi
        \fi
        \@csc@t\@sort@templistb\@sort@templistb\@tempa
        \@tempb}%
     #2\@addto@sorted@list@{\@elt{#4}}%
     \expandafter\endgroup\expandafter
         \def\expandafter#2\expandafter{\@sort@templistb}}%

\def\@addto@sorted@list@skip#1\@addto@sorted@list@#2{%
    \@addto@sorted@list@{#1}}

\def\@addto@sorted@list@#1{%
    \@addto@macro\@sort@templistb{#1}}

\def\@csc@t#1#2#3{%
   \expandafter\expandafter\expandafter\def
   \expandafter\expandafter\expandafter#1%
   \expandafter\expandafter\expandafter{%
   \expandafter#2#3}}




%%% kinsoku %%%

\ifDS@english
\else
\postbreakpenalty`\`=\@M
\prebreakpenalty`'=\@M
\prebreakpenalty`)=\@M
\postbreakpenalty`(=\@M
\prebreakpenalty`]=\@M
\postbreakpenalty`[=\@M
\prebreakpenalty`\}=\@M
\postbreakpenalty`\{=\@M

\prebreakpenalty`・=\@M
\prebreakpenalty`：=\@M
\prebreakpenalty`；=\@M
\prebreakpenalty`？=\@M
\prebreakpenalty`！=\@M

\prebreakpenalty\jis"212D=\@M		% ´
\postbreakpenalty\jis"212E=\@M		% ｀
\postbreakpenalty\jis"2146=\@M		% ‘
\prebreakpenalty\jis"2147=\@M		% ’
\postbreakpenalty\jis"2148=\@M		% “
\prebreakpenalty\jis"2149=\@M		% ”

\prebreakpenalty`）=\@M
\postbreakpenalty`（=\@M
\prebreakpenalty`｝=\@M
\postbreakpenalty`｛=\@M
\prebreakpenalty`］=\@M
\postbreakpenalty`［=\@M
\postbreakpenalty`‘=\@M
\prebreakpenalty`’=\@M

\postbreakpenalty\jis"214C=\@M		%〔
\prebreakpenalty\jis"214D=\@M		% 〕
\postbreakpenalty\jis"2152=\@M		% 〈
\prebreakpenalty\jis"2153=\@M		% 〉
\postbreakpenalty\jis"2154=\@M		% 《
\prebreakpenalty\jis"2155=\@M		% 》
\postbreakpenalty\jis"2156=\@M		% 「
\prebreakpenalty\jis"2157=\@M		% 」
\postbreakpenalty\jis"2158=\@M		% 『
\prebreakpenalty\jis"2159=\@M		% 』
\postbreakpenalty\jis"215A=\@M		% 【
\prebreakpenalty\jis"215B=\@M		% 】

\prebreakpenalty`ー=\@M						% 2.12(6)
\prebreakpenalty`?=\@M						% 2.12(6)

\prebreakpenalty`ぁ=\@M
\prebreakpenalty`ぃ=\@M
\prebreakpenalty`ぅ=\@M
\prebreakpenalty`ぇ=\@M
\prebreakpenalty`ぉ=\@M
\prebreakpenalty`っ=\@M
\prebreakpenalty`ゃ=\@M
\prebreakpenalty`ゅ=\@M
\prebreakpenalty`ょ=\@M
\prebreakpenalty\jis"246E=\@M		% ゎ
\prebreakpenalty`ァ=\@M
\prebreakpenalty`ィ=\@M
\prebreakpenalty`ゥ=\@M
\prebreakpenalty`ェ=\@M
\prebreakpenalty`ォ=\@M
\prebreakpenalty`ッ=\@M
\prebreakpenalty`ャ=\@M
\prebreakpenalty`ュ=\@M
\prebreakpenalty`ョ=\@M
\prebreakpenalty\jis"256E=\@M		% ヮ
\prebreakpenalty\jis"2575=\@M		% ヵ
\prebreakpenalty\jis"2576=\@M		% ヶ
\fi


\def\：{\makebox[1zw][l]{：}}



\ifDS@draft\def\next{\input{ipsjdraft.sty}\endinput}\else\let\next\relax\fi
\next

\ifDS@preface\def\next{\input{ipsjpref.sty}\endinput}\else\let\next\relax\fi
\next


\ifDS@OT\def\next{\input{ipsjot.sty}\endinput}\else\let\next\relax\fi
\next

%% v1.02c
\ifDS@techreq\def\next{\input{ipsjtech.sty}\endinput}\else\let\next\relax\fi
\next


%% not use Japanese
\def\zdash{{\usefont{OT1}{cmr}{bx}{n}\selectfont\leavevmode \raise.1zh\hbox {---}}}

\def\ndash{{\usefont{OT1}{cmr}{bx}{n}\selectfont\leavevmode \raise.1zh\hbox {--}}}






\endinput





