(* Content-type: application/vnd.wolfram.cdf.text *)

(*** Wolfram CDF File ***)
(* http://www.wolfram.com/cdf *)

(* CreatedBy='Mathematica 12.3' *)

(*************************************************************************)
(*                                                                       *)
(*                                                                       *)
(*  This file was created under the Wolfram Enterprise licensing terms.  *)
(*                                                                       *)
(*       For additional information concerning CDF licensing see:        *)
(*                                                                       *)
(*        www.wolfram.com/cdf/adopting-cdf/licensing-options.html        *)
(*                                                                       *)
(*                                                                       *)
(*                                                                       *)
(*************************************************************************)

(*CacheID: 234*)
(* Internal cache information:
NotebookFileLineBreakTest
NotebookFileLineBreakTest
NotebookDataPosition[      1064,         20]
NotebookDataLength[     41452,        952]
NotebookOptionsPosition[     41575,        940]
NotebookOutlinePosition[     42053,        960]
CellTagsIndexPosition[     42010,        957]
WindowFrame->Normal*)

(* Beginning of Notebook Content *)
Notebook[{

Cell[CellGroupData[{
Cell["\<\
Find closeness/distance between a selected watermark and all watermarks in a \
folder\
\>", "Section",ExpressionUUID->"5240bbe9-e9aa-4913-8ebd-66ba1deb7163"],

Cell["\<\
Much of this project has been made possible with support from the Getty \
Foundation through its grants \[OpenCurlyDoubleQuote]Applying Digital Image \
Processing Algorithms to the Study of Prints and Drawings\
\[CloseCurlyDoubleQuote] and \[OpenCurlyDoubleQuote]Computational \
Characterization of Historic Papers via Watermarks, Chain Lines, and Laid \
Lines.\[CloseCurlyDoubleQuote] We also thank Fred Schroeder (Gates \
Collection)\[Dash]who shared and nurtured our investigations .\
\>", "Text",ExpressionUUID->"1ab77650-f199-4f13-b7c3-77b5a8c5211b"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"Manipulate", "[", "\[IndentingNewLine]", 
  RowBox[{
   RowBox[{
    RowBox[{"If", "[", 
     RowBox[{
      RowBox[{"snap", "\[Equal]", "True"}], ",", 
      RowBox[{
       RowBox[{"If", "[", 
        RowBox[{
         RowBox[{"shortName", "=!=", "\"\<\>\""}], ",", 
         RowBox[{"Export", "[", 
          RowBox[{
           RowBox[{"FileNameJoin", "[", 
            RowBox[{"{", 
             RowBox[{
              RowBox[{"NotebookDirectory", "[", "]"}], ",", 
              RowBox[{
               RowBox[{"FileBaseName", "[", "dir", "]"}], "<>", "shortName", 
               "<>", "\"\<.pdf\>\""}]}], "}"}], "]"}], ",", "dispTable"}], 
          "]"}]}], "]"}], ";", 
       RowBox[{"snap", "=", "False"}], ";", 
       RowBox[{"snapCount", "=", 
        RowBox[{"snapCount", "+", "1"}]}], ";"}]}], "]"}], ";", 
    "\[IndentingNewLine]", 
    RowBox[{"If", "[", 
     RowBox[{
      RowBox[{"play", "\[Equal]", "True"}], ",", 
      RowBox[{
       RowBox[{"If", "[", 
        RowBox[{
         RowBox[{
          RowBox[{"done", "\[Equal]", "True"}], "&&", 
          RowBox[{
           RowBox[{"Length", "[", "frames", "]"}], ">", "0"}]}], ",", 
         RowBox[{
          RowBox[{"dispMake", "=", 
           RowBox[{"Animate", "[", 
            RowBox[{
             RowBox[{"frames", "[", 
              RowBox[{"[", "i", "]"}], "]"}], ",", 
             RowBox[{"{", 
              RowBox[{"i", ",", "1", ",", 
               RowBox[{"Length", "[", "frames", "]"}], ",", "1"}], "}"}], ",", 
             RowBox[{"AnimationRate", "\[Rule]", "3"}]}], "]"}]}], ";"}], ",", 
         RowBox[{
          RowBox[{"play", "=", "False"}], ";"}]}], "]"}], ";"}]}], "]"}], ";",
     "\[IndentingNewLine]", 
    RowBox[{"If", "[", 
     RowBox[{
      RowBox[{"stop", "\[Equal]", "True"}], ",", 
      RowBox[{
       RowBox[{"dispMake", "=", "\"\<\>\""}], ";", 
       RowBox[{"stop", "=", "False"}], ";", 
       RowBox[{"play", "=", "False"}]}]}], "]"}], ";", "\[IndentingNewLine]", 
    
    RowBox[{"If", "[", 
     RowBox[{
      RowBox[{"newDir", "\[Equal]", "True"}], ",", "\[IndentingNewLine]", 
      RowBox[{
       RowBox[{"thisChoice", "=", 
        RowBox[{"SystemDialogInput", "[", 
         RowBox[{"\"\<Directory\>\"", ",", 
          RowBox[{"NotebookDirectory", "[", "]"}]}], "]"}]}], ";", 
       "\[IndentingNewLine]", 
       RowBox[{"If", "[", 
        RowBox[{
         RowBox[{"UnsameQ", "[", 
          RowBox[{"thisChoice", ",", "$Canceled"}], "]"}], ",", 
         "\[IndentingNewLine]", 
         RowBox[{
          RowBox[{"thisDir", "=", "thisChoice"}], ";", 
          RowBox[{"dir", "=", "thisDir"}], ";", "\[IndentingNewLine]", 
          RowBox[{"txtFiles", "=", 
           RowBox[{"FileNames", "[", 
            RowBox[{"\"\<*.txt\>\"", ",", "dir"}], "]"}]}], ";", 
          "\[IndentingNewLine]", 
          RowBox[{"imageNames", "=", 
           RowBox[{"FileNames", "[", 
            RowBox[{"\"\<*.jpg\>\"", ",", "dir"}], "]"}]}], ";", 
          "\[IndentingNewLine]", 
          RowBox[{"txtImg", "=", 
           RowBox[{
            RowBox[{
             RowBox[{"StringDrop", "[", 
              RowBox[{"#", ",", 
               RowBox[{"-", "19"}]}], "]"}], "&"}], "/@", 
            RowBox[{"Intersection", "[", 
             RowBox[{
              RowBox[{"StringReplace", "[", 
               RowBox[{
                RowBox[{"FileBaseName", "/@", "txtFiles"}], ",", 
                RowBox[{"\"\<TextWM\>\"", "\[Rule]", "\"\<\>\""}]}], "]"}], 
              ",", 
              RowBox[{"StringReplace", "[", 
               RowBox[{
                RowBox[{"FileBaseName", "/@", "imageNames"}], ",", 
                RowBox[{"\"\<SnapWMImg\>\"", "\[Rule]", "\"\<\>\""}]}], 
               "]"}]}], "]"}]}]}]}]}], "\[IndentingNewLine]", "]"}], ";", 
       RowBox[{"alignData", "=", 
        RowBox[{"{", "}"}]}], ";", 
       RowBox[{"newDir", "=", "False"}], ";", 
       RowBox[{"done", "=", "False"}], ";", 
       RowBox[{"dispMake", "=", "\"\<\>\""}], ";"}]}], "\[IndentingNewLine]", 
     "]"}], ";", "\[IndentingNewLine]", 
    RowBox[{"If", "[", 
     RowBox[{
      RowBox[{"newFile", "\[Equal]", "True"}], ",", "\[IndentingNewLine]", 
      RowBox[{
       RowBox[{"thisChoice", "=", 
        RowBox[{"SystemDialogInput", "[", 
         RowBox[{"\"\<FileOpen\>\"", ",", 
          RowBox[{"NotebookDirectory", "[", "]"}]}], "]"}]}], ";", 
       "\[IndentingNewLine]", 
       RowBox[{"If", "[", 
        RowBox[{
         RowBox[{"UnsameQ", "[", 
          RowBox[{"thisChoice", ",", "$Canceled"}], "]"}], ",", 
         "\[IndentingNewLine]", 
         RowBox[{
          RowBox[{"thisFile", "=", "thisChoice"}], ";", "\[IndentingNewLine]", 
          RowBox[{"thisFileTXT", "=", 
           RowBox[{"StringReplace", "[", 
            RowBox[{"thisFile", ",", 
             RowBox[{"{", 
              RowBox[{
               RowBox[{"\"\<SnapWMImg\>\"", "->", "\"\<TextWM\>\""}], ",", 
               RowBox[{"\"\<jpg\>\"", "\[Rule]", "\"\<txt\>\""}]}], "}"}]}], 
            "]"}]}], ";", "\[IndentingNewLine]", 
          RowBox[{"thisFileJPG", "=", 
           RowBox[{"StringReplace", "[", 
            RowBox[{"thisFile", ",", 
             RowBox[{"{", 
              RowBox[{
               RowBox[{"\"\<TextWM\>\"", "\[Rule]", "\"\<SnapWMImg\>\""}], 
               ",", 
               RowBox[{"\"\<txt\>\"", "\[Rule]", "\"\<jpg\>\""}]}], "}"}]}], 
            "]"}]}], ";", "\[IndentingNewLine]", 
          RowBox[{"shortName", "=", 
           RowBox[{"StringDrop", "[", 
            RowBox[{
             RowBox[{"FileBaseName", "@", "thisFileTXT"}], ",", 
             RowBox[{"-", "25"}]}], "]"}]}], ";"}]}], "\[IndentingNewLine]", 
        "]"}], ";", 
       RowBox[{"alignData", "=", 
        RowBox[{"{", "}"}]}], ";", 
       RowBox[{"done", "=", "False"}], ";", 
       RowBox[{"newFile", "=", "False"}], ";", 
       RowBox[{"dispMake", "=", "\"\<\>\""}], ";"}]}], "\[IndentingNewLine]", 
     "]"}], ";", "\[IndentingNewLine]", 
    RowBox[{"Which", "[", 
     RowBox[{
      RowBox[{
       RowBox[{
        RowBox[{"Sign", "[", 
         RowBox[{"Length", "[", "txtImg", "]"}], "]"}], "+", 
        RowBox[{"Sign", "[", 
         RowBox[{"StringLength", "[", "shortName", "]"}], "]"}]}], "\[Equal]",
        "0"}], ",", "message1", ",", "\[IndentingNewLine]", 
      RowBox[{
       RowBox[{
        RowBox[{"Sign", "[", 
         RowBox[{"Length", "[", "txtImg", "]"}], "]"}], ">", "0"}], "&&", 
       RowBox[{
        RowBox[{"Sign", "[", 
         RowBox[{"StringLength", "[", "shortName", "]"}], "]"}], "\[Equal]", 
        "0"}]}], ",", 
      RowBox[{"\"\<Select a marked watermark for comparison to \>\"", "~~", 
       RowBox[{"FileBaseName", "[", "dir", "]"}]}], ",", 
      RowBox[{
       RowBox[{
        RowBox[{"Sign", "[", 
         RowBox[{"Length", "[", "txtImg", "]"}], "]"}], "==", "0"}], "&&", 
       RowBox[{
        RowBox[{"Sign", "[", 
         RowBox[{"StringLength", "[", "shortName", "]"}], "]"}], ">", "0"}]}],
       ",", 
      RowBox[{
      "\"\<Select a library folder for comparison with \>\"", "~~", 
       "shortName"}], ",", "\[IndentingNewLine]", 
      RowBox[{
       RowBox[{
        RowBox[{"Sign", "[", 
         RowBox[{"Length", "[", "txtImg", "]"}], "]"}], ">", "0"}], "&&", 
       RowBox[{
        RowBox[{"Sign", "[", 
         RowBox[{"StringLength", "[", "shortName", "]"}], "]"}], ">", "0"}], "&&", 
       RowBox[{"done", "\[Equal]", "False"}]}], ",", "\[IndentingNewLine]", 
      RowBox[{
       RowBox[{"alignData", "=", 
        RowBox[{"Table", "[", 
         RowBox[{
          RowBox[{
           RowBox[{"errors", "=", 
            RowBox[{"calculateAlignmentError", "[", "i", "]"}]}], ";", 
           "\[IndentingNewLine]", 
           RowBox[{"If", "[", 
            RowBox[{
             RowBox[{
              RowBox[{"Length", "[", "errors", "]"}], ">", "0"}], ",", 
             RowBox[{"{", 
              RowBox[{
               RowBox[{"txtImg", "[", 
                RowBox[{"[", "i", "]"}], "]"}], ",", 
               RowBox[{"Round", "[", 
                RowBox[{
                 RowBox[{"errors", "[", 
                  RowBox[{"[", "1", "]"}], "]"}], ",", "0.01"}], "]"}], ",", 
               RowBox[{"Round", "[", 
                RowBox[{
                 RowBox[{"errors", "[", 
                  RowBox[{"[", "2", "]"}], "]"}], ",", "0.01"}], "]"}]}], 
              "}"}], ",", "\[IndentingNewLine]", 
             RowBox[{"{", 
              RowBox[{
               RowBox[{"txtImg", "[", 
                RowBox[{"[", "i", "]"}], "]"}], ",", "\"\<xx\>\"", ",", 
               "\"\<xx\>\""}], "}"}]}], "]"}]}], ",", 
          RowBox[{"{", 
           RowBox[{"i", ",", 
            RowBox[{"Length", "[", "txtImg", "]"}]}], "}"}]}], "]"}]}], ";", 
       RowBox[{"done", "=", "True"}], ";", 
       RowBox[{"dispTable", "=", 
        RowBox[{"table", "[", "alignData", "]"}]}]}], ",", 
      "\[IndentingNewLine]", 
      RowBox[{
       RowBox[{
        RowBox[{"Sign", "[", 
         RowBox[{"Length", "[", "txtImg", "]"}], "]"}], ">", "0"}], "&&", 
       RowBox[{
        RowBox[{"Sign", "[", 
         RowBox[{"StringLength", "[", "shortName", "]"}], "]"}], ">", "0"}], "&&", 
       RowBox[{"done", "\[Equal]", "True"}]}], ",", 
      RowBox[{"Column", "[", 
       RowBox[{"{", 
        RowBox[{"dispTable", ",", 
         RowBox[{"Dynamic", "[", "dispMake", "]"}]}], "}"}], "]"}]}], 
     "\[IndentingNewLine]", "]"}]}], ",", "\[IndentingNewLine]", 
   RowBox[{"Row", "[", 
    RowBox[{"{", 
     RowBox[{
      RowBox[{"Control", "[", 
       RowBox[{"{", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{"newDir", ",", "False", ",", "\"\<\>\""}], "}"}], ",", 
         RowBox[{
          RowBox[{"Button", "[", 
           RowBox[{
            RowBox[{"Text", "[", "\"\<Select\\nLibrary\\nFolder\>\"", "]"}], 
            ",", 
            RowBox[{"newDir", "=", "True"}]}], "]"}], "&"}]}], "}"}], "]"}], 
      ",", "\[IndentingNewLine]", 
      RowBox[{"Control", "[", 
       RowBox[{"{", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{"newFile", ",", "False", ",", "\"\<\>\""}], "}"}], ",", 
         RowBox[{
          RowBox[{"Button", "[", 
           RowBox[{
            RowBox[{"Text", "[", "\"\<Select\\nMarked\\nWatermark\>\"", "]"}],
             ",", 
            RowBox[{"newFile", "=", "True"}]}], "]"}], "&"}]}], "}"}], "]"}], 
      ",", 
      RowBox[{"Spacer", "[", "30", "]"}], ",", "\[IndentingNewLine]", 
      RowBox[{"Button", "[", 
       RowBox[{
        RowBox[{"Text", "[", "\"\<Snapshot\>\"", "]"}], ",", 
        RowBox[{"snap", "=", "True"}]}], "]"}]}], "}"}], "]"}], ",", 
   "\[IndentingNewLine]", 
   RowBox[{"LocalizeVariables", "\[Rule]", "True"}], ",", 
   RowBox[{"SaveDefinitions", "\[Rule]", "True"}], ",", "\[IndentingNewLine]", 
   RowBox[{"Initialization", "\[RuleDelayed]", 
    RowBox[{"(", "\[IndentingNewLine]", 
     RowBox[{
      RowBox[{"dir", "=", 
       RowBox[{"NotebookDirectory", "[", "]"}]}], ";", "\[IndentingNewLine]", 
      
      RowBox[{"thisDir", "=", 
       RowBox[{"NotebookDirectory", "[", "]"}]}], ";", "\[IndentingNewLine]", 
      
      RowBox[{"thisFile", "=", 
       RowBox[{"{", "}"}]}], ";", "\[IndentingNewLine]", 
      RowBox[{"txtFiles", "=", 
       RowBox[{"outFile", "=", "\"\<select\>\""}]}], ";", 
      "\[IndentingNewLine]", 
      RowBox[{"shortName", "=", 
       RowBox[{"txtImg", "=", 
        RowBox[{"dispMake", "=", "\"\<\>\""}]}]}], ";", "\[IndentingNewLine]", 
      RowBox[{"alignData", "=", 
       RowBox[{"{", "}"}]}], ";", 
      RowBox[{"done", "=", "False"}], ";", 
      RowBox[{"dispOld", "=", "\"\<\>\""}], ";", "\[IndentingNewLine]", 
      RowBox[{"snapCount", "=", "1"}], ";", "\[IndentingNewLine]", 
      RowBox[{
      "message1", "=", 
       "\"\<Select a marked watermark and a library folder to compare \
with\>\""}], ";", "\[IndentingNewLine]", 
      RowBox[{
       RowBox[{"table", "[", "align_", "]"}], ":=", 
       RowBox[{"Module", "[", 
        RowBox[{
         RowBox[{"{", "}"}], ",", "\[IndentingNewLine]", 
         RowBox[{
          RowBox[{"names", "=", 
           RowBox[{"alignData", "[", 
            RowBox[{"[", 
             RowBox[{"All", ",", "1"}], "]"}], "]"}]}], ";", 
          "\[IndentingNewLine]", 
          RowBox[{"vals", "=", 
           RowBox[{"alignData", "[", 
            RowBox[{"[", 
             RowBox[{"All", ",", "3"}], "]"}], "]"}]}], ";", 
          "\[IndentingNewLine]", 
          RowBox[{"(*", 
           RowBox[{
            RowBox[{"vals", "=", 
             RowBox[{"Clip", "[", 
              RowBox[{"vals", ",", 
               RowBox[{"{", 
                RowBox[{"0", ",", 
                 RowBox[{"1.5", " ", 
                  RowBox[{
                   RowBox[{"Reverse", "[", 
                    RowBox[{"Sort", "[", "vals", "]"}], "]"}], "[", 
                   RowBox[{"[", "2", "]"}], "]"}]}]}], "}"}]}], "]"}]}], 
            ";"}], "*)"}], "\[IndentingNewLine]", 
          RowBox[{"If", "[", 
           RowBox[{
            RowBox[{
             RowBox[{"Total", "[", 
              RowBox[{"vals", "/.", 
               RowBox[{"\"\<xx\>\"", "\[Rule]", "0"}]}], "]"}], ">", "0"}], 
            ",", "\[IndentingNewLine]", 
            RowBox[{"BarChart", "[", 
             RowBox[{"vals", ",", 
              RowBox[{
              "ChartElementFunction", "\[Rule]", "\"\<GlassRectangle\>\""}], 
              ",", 
              RowBox[{"ChartLabels", "\[Rule]", "names"}], ",", 
              RowBox[{"BarOrigin", "\[Rule]", "Left"}], ",", 
              RowBox[{"PlotLabel", "\[Rule]", 
               RowBox[{"Style", "[", 
                RowBox[{
                 RowBox[{
                 "\"\<Distance between \>\"", "~~", "shortName", "~~", 
                  "\"\< and \>\"", "~~", "\"\<\\n\>\"", "~~", 
                  RowBox[{"FileBaseName", "@", "dir"}]}], ",", "Bold"}], 
                "]"}]}], ",", 
              RowBox[{"ImageSize", "\[Rule]", 
               RowBox[{
                RowBox[{
                 RowBox[{"Length", "[", "names", "]"}], "*", "30"}], "+", 
                "300"}]}]}], "]"}], ",", 
            RowBox[{
            "shortName", "~~", 
             "\"\< has the wrong number of marked points\\nto match with \
\>\"", "~~", 
             RowBox[{"FileBaseName", "@", "dir"}]}]}], "]"}]}]}], "]"}]}], 
      ";", "\[IndentingNewLine]", 
      RowBox[{
       RowBox[{"calculateAlignmentError", "[", "thisImgA_", "]"}], ":=", 
       RowBox[{"Module", "[", 
        RowBox[{
         RowBox[{"{", "}"}], ",", "\[IndentingNewLine]", 
         RowBox[{
          RowBox[{"fileIndA", "=", 
           RowBox[{"First", "@", 
            RowBox[{"First", "@", 
             RowBox[{"Position", "[", 
              RowBox[{
               RowBox[{"StringPosition", "[", 
                RowBox[{"txtFiles", ",", 
                 RowBox[{"txtImg", "[", 
                  RowBox[{"[", "thisImgA", "]"}], "]"}]}], "]"}], ",", "List",
                ",", 
               RowBox[{"{", "3", "}"}]}], "]"}]}]}]}], ";", 
          "\[IndentingNewLine]", 
          RowBox[{"textA", "=", 
           RowBox[{"Import", "[", 
            RowBox[{"txtFiles", "[", 
             RowBox[{"[", "fileIndA", "]"}], "]"}], "]"}]}], ";", 
          "\[IndentingNewLine]", 
          RowBox[{"expAraw", "=", 
           RowBox[{"ToExpression", "[", 
            RowBox[{
             RowBox[{"StringSplit", "[", 
              RowBox[{"textA", ",", "\"\<\\n\>\""}], "]"}], "[", 
             RowBox[{"[", "1", "]"}], "]"}], "]"}]}], ";", 
          "\[IndentingNewLine]", 
          RowBox[{"fileIndA", "=", 
           RowBox[{"First", "@", 
            RowBox[{"First", "@", 
             RowBox[{"Position", "[", 
              RowBox[{
               RowBox[{"StringPosition", "[", 
                RowBox[{"imageNames", ",", 
                 RowBox[{"txtImg", "[", 
                  RowBox[{"[", "thisImgA", "]"}], "]"}]}], "]"}], ",", "List",
                ",", 
               RowBox[{"{", "3", "}"}]}], "]"}]}]}]}], ";", 
          "\[IndentingNewLine]", 
          RowBox[{"imgAraw", "=", 
           RowBox[{"ColorConvert", "[", 
            RowBox[{
             RowBox[{"Import", "[", 
              RowBox[{"imageNames", "[", 
               RowBox[{"[", "fileIndA", "]"}], "]"}], "]"}], ",", 
             "\"\<Grayscale\>\""}], "]"}]}], ";", "\[IndentingNewLine]", 
          RowBox[{"textB", "=", 
           RowBox[{"Import", "[", "thisFileTXT", "]"}]}], ";", 
          "\[IndentingNewLine]", 
          RowBox[{"expBraw", "=", 
           RowBox[{"ToExpression", "[", 
            RowBox[{
             RowBox[{"StringSplit", "[", 
              RowBox[{"textB", ",", "\"\<\\n\>\""}], "]"}], "[", 
             RowBox[{"[", "1", "]"}], "]"}], "]"}]}], ";", 
          "\[IndentingNewLine]", 
          RowBox[{"imgBraw", "=", 
           RowBox[{"ColorConvert", "[", 
            RowBox[{
             RowBox[{"Import", "[", "thisFileJPG", "]"}], ",", 
             "\"\<Grayscale\>\""}], "]"}]}], ";", "\[IndentingNewLine]", 
          RowBox[{"expA", "=", "expAraw"}], ";", 
          RowBox[{"expB", "=", "expBraw"}], ";", "\[IndentingNewLine]", 
          RowBox[{"If", "[", 
           RowBox[{
            RowBox[{
             RowBox[{"Length", "[", "expA", "]"}], "\[Equal]", 
             RowBox[{"Length", "[", "expB", "]"}]}], ",", 
            "\[IndentingNewLine]", 
            RowBox[{
             RowBox[{"ind", "=", 
              RowBox[{"Flatten", "[", 
               RowBox[{"Position", "[", 
                RowBox[{
                 RowBox[{
                  RowBox[{"(", 
                   RowBox[{"Total", "/@", "expA"}], ")"}], " ", 
                  RowBox[{"(", 
                   RowBox[{"Total", "/@", "expB"}], ")"}]}], ",", 
                 RowBox[{"_", "?", 
                  RowBox[{"(", 
                   RowBox[{
                    RowBox[{"(", 
                    RowBox[{"0.01", "<", "#"}], ")"}], "&"}], ")"}]}]}], 
                "]"}], "]"}]}], ";", "\[IndentingNewLine]", 
             RowBox[{"selectedA", "=", 
              RowBox[{"expA", "[", 
               RowBox[{"[", "ind", "]"}], "]"}]}], ";", "\[IndentingNewLine]", 
             RowBox[{"selectedB", "=", 
              RowBox[{"expB", "[", 
               RowBox[{"[", "ind", "]"}], "]"}]}], ";", "\[IndentingNewLine]", 
             RowBox[{"expA", "=", "selectedA"}], ";", 
             RowBox[{"expB", "=", "selectedB"}], ";", "\[IndentingNewLine]", 
             RowBox[{"regA", "=", 
              RowBox[{"CoordinateBoundingBox", "[", "selectedA", "]"}]}], ";",
              "\[IndentingNewLine]", 
             RowBox[{"regB", "=", 
              RowBox[{"CoordinateBoundingBox", "[", "selectedB", "]"}]}], ";",
              "\[IndentingNewLine]", 
             RowBox[{"boundingSizeA", "=", 
              RowBox[{"Max", "[", 
               RowBox[{
                RowBox[{"{", 
                 RowBox[{
                  RowBox[{"Differences", "@", 
                   RowBox[{"regA", "[", 
                    RowBox[{"[", 
                    RowBox[{"All", ",", "1"}], "]"}], "]"}]}], ",", 
                  RowBox[{"Differences", "@", 
                   RowBox[{"regA", "[", 
                    RowBox[{"[", 
                    RowBox[{"All", ",", "2"}], "]"}], "]"}]}]}], "}"}], "//", 
                "Flatten"}], "]"}]}], ";", "\[IndentingNewLine]", 
             RowBox[{"boundingSizeB", "=", "\[IndentingNewLine]", 
              RowBox[{"Max", "[", 
               RowBox[{
                RowBox[{"{", 
                 RowBox[{
                  RowBox[{"Differences", "@", 
                   RowBox[{"regB", "[", 
                    RowBox[{"[", 
                    RowBox[{"All", ",", "1"}], "]"}], "]"}]}], ",", 
                  RowBox[{"Differences", "@", 
                   RowBox[{"regB", "[", 
                    RowBox[{"[", 
                    RowBox[{"All", ",", "2"}], "]"}], "]"}]}]}], "}"}], "//", 
                "Flatten"}], "]"}]}], ";", "\[IndentingNewLine]", 
             RowBox[{"rescaleA", "=", 
              RowBox[{"1000.0", "/", "boundingSizeA"}]}], ";", 
             RowBox[{"rescaleB", "=", 
              RowBox[{"1000.0", "/", "boundingSizeB"}]}], ";", 
             "\[IndentingNewLine]", 
             RowBox[{"imgA", "=", 
              RowBox[{"ImageResize", "[", 
               RowBox[{"imgAraw", ",", 
                RowBox[{"Scaled", "[", "rescaleA", "]"}]}], "]"}]}], ";", 
             "\[IndentingNewLine]", 
             RowBox[{"imgAraw", " ", "=", " ", "imgA"}], ";", 
             "\[IndentingNewLine]", 
             RowBox[{"expA", "=", 
              RowBox[{"rescaleA", " ", "selectedA"}]}], ";", 
             "\[IndentingNewLine]", 
             RowBox[{"imgB", "=", 
              RowBox[{"ImageResize", "[", 
               RowBox[{"imgBraw", ",", 
                RowBox[{"Scaled", "[", "rescaleB", "]"}]}], "]"}]}], ";", 
             "\[IndentingNewLine]", 
             RowBox[{"imgBraw", " ", "=", " ", "imgB"}], ";", 
             "\[IndentingNewLine]", 
             RowBox[{"expB", "=", 
              RowBox[{"rescaleB", " ", "selectedB"}]}], ";", 
             "\[IndentingNewLine]", 
             RowBox[{
              RowBox[{"{", 
               RowBox[{"err", ",", "trans"}], "}"}], "=", 
              RowBox[{"FindGeometricTransform", "[", 
               RowBox[{"expB", ",", "expA", ",", 
                RowBox[{"Method", "\[Rule]", "\"\<Linear\>\""}], ",", 
                RowBox[{
                "TransformationClass", "\[Rule]", "\"\<Similarity\>\""}]}], 
               "]"}]}], ";", "\[IndentingNewLine]", 
             RowBox[{"Clip", "[", 
              RowBox[{
               RowBox[{
                RowBox[{"{", 
                 RowBox[{"err", ",", 
                  RowBox[{"err", "/", 
                   RowBox[{"Length", "[", "expA", "]"}]}]}], "}"}], "-", 
                "0.00000001"}], ",", 
               RowBox[{"{", 
                RowBox[{"0", ",", "Infinity"}], "}"}]}], "]"}]}]}], 
           "\[IndentingNewLine]", "]"}]}]}], "\[IndentingNewLine]", "]"}]}]}],
      "\[IndentingNewLine]", ")"}]}]}], "\[IndentingNewLine]", "]"}]], "Input",\
ExpressionUUID->"5bda3336-02f8-45bd-beab-5a98e15fc19f"],

Cell[BoxData[
 TagBox[
  StyleBox[
   DynamicModuleBox[{$CellContext`newDir$$ = False, $CellContext`newFile$$ = 
    False, Typeset`show$$ = True, Typeset`bookmarkList$$ = {}, 
    Typeset`bookmarkMode$$ = "Menu", Typeset`animator$$, Typeset`animvar$$ = 
    1, Typeset`name$$ = "\"untitled\"", Typeset`specs$$ = {{{
       Hold[$CellContext`newDir$$], False, ""}, 
      Dynamic[Button[
        Text["Select\nLibrary\nFolder"], $CellContext`newDir$$ = True]& ]}, {{
      
       Hold[$CellContext`newFile$$], False, ""}, 
      Dynamic[Button[
        Text["Select\nMarked\nWatermark"], $CellContext`newFile$$ = 
        True]& ]}, {
      Hold[
       Row[{
         Manipulate`Place[1], 
         Manipulate`Place[2], 
         Spacer[30], 
         Button[
          Text["Snapshot"], $CellContext`snap = True]}]], 
      Manipulate`Dump`ThisIsNotAControl}}, Typeset`size$$ = {487., {3., 10.}},
     Typeset`update$$ = 0, Typeset`initDone$$, Typeset`skipInitDone$$ = 
    False}, 
    DynamicBox[Manipulate`ManipulateBoxes[
     2, StandardForm, 
      "Variables" :> {$CellContext`newDir$$ = False, $CellContext`newFile$$ = 
        False}, "ControllerVariables" :> {}, 
      "OtherVariables" :> {
       Typeset`show$$, Typeset`bookmarkList$$, Typeset`bookmarkMode$$, 
        Typeset`animator$$, Typeset`animvar$$, Typeset`name$$, 
        Typeset`specs$$, Typeset`size$$, Typeset`update$$, Typeset`initDone$$,
         Typeset`skipInitDone$$}, 
      "Body" :> (
       If[$CellContext`snap == True, If[$CellContext`shortName =!= "", 
           Export[
            FileNameJoin[{
              NotebookDirectory[], 
              StringJoin[
               FileBaseName[$CellContext`dir], $CellContext`shortName, 
               ".pdf"]}], $CellContext`dispTable]]; $CellContext`snap = 
          False; $CellContext`snapCount = $CellContext`snapCount + 1; Null]; 
       If[$CellContext`play == True, If[
           
           And[$CellContext`done == True, Length[$CellContext`frames] > 
            0], $CellContext`dispMake = Animate[
              Part[$CellContext`frames, $CellContext`i], {$CellContext`i, 1, 
               Length[$CellContext`frames], 1}, AnimationRate -> 3]; 
           Null, $CellContext`play = False; Null]; Null]; 
       If[$CellContext`stop == 
         True, $CellContext`dispMake = ""; $CellContext`stop = 
          False; $CellContext`play = False]; 
       If[$CellContext`newDir$$ == 
         True, $CellContext`thisChoice = SystemDialogInput["Directory", 
            NotebookDirectory[]]; 
         If[$CellContext`thisChoice =!= $Canceled, $CellContext`thisDir = \
$CellContext`thisChoice; $CellContext`dir = $CellContext`thisDir; \
$CellContext`txtFiles = 
            FileNames["*.txt", $CellContext`dir]; $CellContext`imageNames = 
            FileNames["*.jpg", $CellContext`dir]; $CellContext`txtImg = 
            Map[StringDrop[#, -19]& , 
              Intersection[
               StringReplace[
                Map[FileBaseName, $CellContext`txtFiles], "TextWM" -> ""], 
               StringReplace[
                Map[FileBaseName, $CellContext`imageNames], "SnapWMImg" -> 
                ""]]]]; $CellContext`alignData = {}; $CellContext`newDir$$ = 
          False; $CellContext`done = False; $CellContext`dispMake = ""; Null]; 
       If[$CellContext`newFile$$ == 
         True, $CellContext`thisChoice = SystemDialogInput["FileOpen", 
            NotebookDirectory[]]; 
         If[$CellContext`thisChoice =!= $Canceled, $CellContext`thisFile = \
$CellContext`thisChoice; $CellContext`thisFileTXT = 
            StringReplace[$CellContext`thisFile, {
              "SnapWMImg" -> "TextWM", "jpg" -> 
               "txt"}]; $CellContext`thisFileJPG = 
            StringReplace[$CellContext`thisFile, {
              "TextWM" -> "SnapWMImg", "txt" -> 
               "jpg"}]; $CellContext`shortName = StringDrop[
              FileBaseName[$CellContext`thisFileTXT], -25]; 
           Null]; $CellContext`alignData = {}; $CellContext`done = 
          False; $CellContext`newFile$$ = False; $CellContext`dispMake = ""; 
         Null]; Which[Sign[
            Length[$CellContext`txtImg]] + Sign[
            StringLength[$CellContext`shortName]] == 0, $CellContext`message1, 
         And[Sign[
            Length[$CellContext`txtImg]] > 0, Sign[
            StringLength[$CellContext`shortName]] == 0], 
         StringExpression["Select a marked watermark for comparison to ", 
          FileBaseName[$CellContext`dir]], 
         And[Sign[
            Length[$CellContext`txtImg]] == 0, Sign[
            StringLength[$CellContext`shortName]] > 0], 
         StringExpression[
         "Select a library folder for comparison with ", \
$CellContext`shortName], 
         And[Sign[
            Length[$CellContext`txtImg]] > 0, Sign[
            StringLength[$CellContext`shortName]] > 0, $CellContext`done == 
          False], $CellContext`alignData = 
          Table[$CellContext`errors = \
$CellContext`calculateAlignmentError[$CellContext`i]; 
            If[Length[$CellContext`errors] > 0, {
               Part[$CellContext`txtImg, $CellContext`i], 
               Round[
                Part[$CellContext`errors, 1], 0.01], 
               Round[
                Part[$CellContext`errors, 2], 0.01]}, {
               Part[$CellContext`txtImg, $CellContext`i], "xx", 
               "xx"}], {$CellContext`i, 
             Length[$CellContext`txtImg]}]; $CellContext`done = 
          True; $CellContext`dispTable = \
$CellContext`table[$CellContext`alignData], 
         And[Sign[
            Length[$CellContext`txtImg]] > 0, Sign[
            StringLength[$CellContext`shortName]] > 0, $CellContext`done == 
          True], 
         Column[{$CellContext`dispTable, 
           Dynamic[$CellContext`dispMake]}]]), 
      "Specifications" :> {{{$CellContext`newDir$$, False, ""}, 
         Dynamic[Button[
           Text["Select\nLibrary\nFolder"], $CellContext`newDir$$ = True]& ], 
         ControlPlacement -> 1}, {{$CellContext`newFile$$, False, ""}, 
         Dynamic[Button[
           Text["Select\nMarked\nWatermark"], $CellContext`newFile$$ = 
           True]& ], ControlPlacement -> 2}, 
        Row[{
          Manipulate`Place[1], 
          Manipulate`Place[2], 
          Spacer[30], 
          Button[
           Text["Snapshot"], $CellContext`snap = True]}]}, 
      "Options" :> {LocalizeVariables -> True}, "DefaultOptions" :> {}],
     ImageSizeCache->{532., {72., 78.}},
     SingleEvaluation->True],
    Deinitialization:>None,
    DynamicModuleValues:>{},
    Initialization:>({$CellContext`shortName = "", $CellContext`dir = 
       "/Volumes/MisterWho/Dropbox/Billswap/DurerMWL/", \
$CellContext`snapCount = 1, $CellContext`done = False, $CellContext`dispMake = 
       "", $CellContext`thisDir = 
       "/Volumes/MisterWho/Dropbox/Billswap/DurerMWL/", $CellContext`txtFiles = 
       "select", $CellContext`txtImg = 
       "", $CellContext`alignData = {}, $CellContext`thisFile = {}, \
$CellContext`message1 = 
       "Select a marked watermark and a library folder to compare with", \
$CellContext`calculateAlignmentError[
         Pattern[$CellContext`thisImgA, 
          Blank[]]] := Module[{}, $CellContext`fileIndA = First[
            First[
             Position[
              StringPosition[$CellContext`txtFiles, 
               Part[$CellContext`txtImg, $CellContext`thisImgA]], List, {
              3}]]]; $CellContext`textA = Import[
            
            Part[$CellContext`txtFiles, $CellContext`fileIndA]]; \
$CellContext`expAraw = ToExpression[
            Part[
             StringSplit[$CellContext`textA, "\n"], 
             1]]; $CellContext`fileIndA = First[
            First[
             Position[
              StringPosition[$CellContext`imageNames, 
               Part[$CellContext`txtImg, $CellContext`thisImgA]], List, {
              3}]]]; $CellContext`imgAraw = ColorConvert[
            Import[
             Part[$CellContext`imageNames, $CellContext`fileIndA]], 
            "Grayscale"]; $CellContext`textB = 
          Import[$CellContext`thisFileTXT]; $CellContext`expBraw = 
          ToExpression[
            Part[
             StringSplit[$CellContext`textB, "\n"], 1]]; $CellContext`imgBraw = 
          ColorConvert[
            Import[$CellContext`thisFileJPG], 
            "Grayscale"]; $CellContext`expA = $CellContext`expAraw; \
$CellContext`expB = $CellContext`expBraw; 
         If[Length[$CellContext`expA] == 
           Length[$CellContext`expB], $CellContext`ind = Flatten[
              Position[
              Map[Total, $CellContext`expA] Map[Total, $CellContext`expB], 
               PatternTest[
                Blank[], 0.01 < #& ]]]; $CellContext`selectedA = 
            Part[$CellContext`expA, $CellContext`ind]; $CellContext`selectedB = 
            Part[$CellContext`expB, $CellContext`ind]; $CellContext`expA = \
$CellContext`selectedA; $CellContext`expB = $CellContext`selectedB; \
$CellContext`regA = 
            CoordinateBoundingBox[$CellContext`selectedA]; $CellContext`regB = 
            CoordinateBoundingBox[$CellContext`selectedB]; \
$CellContext`boundingSizeA = Max[
              Flatten[{
                Differences[
                 Part[$CellContext`regA, All, 1]], 
                Differences[
                 
                 Part[$CellContext`regA, All, 
                  2]]}]]; $CellContext`boundingSizeB = Max[
              Flatten[{
                Differences[
                 Part[$CellContext`regB, All, 1]], 
                Differences[
                 Part[$CellContext`regB, All, 2]]}]]; $CellContext`rescaleA = 
            1000./$CellContext`boundingSizeA; $CellContext`rescaleB = 
            1000./$CellContext`boundingSizeB; $CellContext`imgA = 
            ImageResize[$CellContext`imgAraw, 
              
              Scaled[$CellContext`rescaleA]]; $CellContext`imgAraw = \
$CellContext`imgA; $CellContext`expA = $CellContext`rescaleA \
$CellContext`selectedA; $CellContext`imgB = 
            ImageResize[$CellContext`imgBraw, 
              
              Scaled[$CellContext`rescaleB]]; $CellContext`imgBraw = \
$CellContext`imgB; $CellContext`expB = $CellContext`rescaleB \
$CellContext`selectedB; {$CellContext`err, $CellContext`trans} = 
            FindGeometricTransform[$CellContext`expB, $CellContext`expA, 
              Method -> "Linear", TransformationClass -> "Similarity"]; 
           Clip[{$CellContext`err, $CellContext`err/
               Length[$CellContext`expA]} - 1.*^-8, {
             0, Infinity}]]], $CellContext`table[
         Pattern[$CellContext`align, 
          Blank[]]] := 
       Module[{}, $CellContext`names = 
          Part[$CellContext`alignData, All, 1]; $CellContext`vals = 
          Part[$CellContext`alignData, All, 3]; If[Total[
             ReplaceAll[$CellContext`vals, "xx" -> 0]] > 0, 
           
           BarChart[$CellContext`vals, ChartElementFunction -> 
            "GlassRectangle", ChartLabels -> $CellContext`names, BarOrigin -> 
            Left, PlotLabel -> Style[
              StringExpression[
              "Distance between ", $CellContext`shortName, " and ", "\n", 
               FileBaseName[$CellContext`dir]], Bold], ImageSize -> 
            Length[$CellContext`names] 30 + 300], 
           
           StringExpression[$CellContext`shortName, 
            " has the wrong number of marked points\nto match with ", 
            FileBaseName[$CellContext`dir]]]], $CellContext`dir = 
        NotebookDirectory[]; $CellContext`thisDir = 
        NotebookDirectory[]; $CellContext`thisFile = {}; \
$CellContext`txtFiles = ($CellContext`outFile = 
         "select"); $CellContext`shortName = ($CellContext`txtImg = \
($CellContext`dispMake = "")); $CellContext`alignData = {}; $CellContext`done = 
        False; $CellContext`dispOld = ""; $CellContext`snapCount = 
        1; $CellContext`message1 = 
        "Select a marked watermark and a library folder to compare with"; \
$CellContext`table[
          Pattern[$CellContext`align, 
           Blank[]]] := 
        Module[{}, $CellContext`names = 
           Part[$CellContext`alignData, All, 1]; $CellContext`vals = 
           Part[$CellContext`alignData, All, 3]; If[Total[
              ReplaceAll[$CellContext`vals, "xx" -> 0]] > 0, 
            
            BarChart[$CellContext`vals, ChartElementFunction -> 
             "GlassRectangle", ChartLabels -> $CellContext`names, BarOrigin -> 
             Left, PlotLabel -> Style[
               StringExpression[
               "Distance between ", $CellContext`shortName, " and ", "\n", 
                FileBaseName[$CellContext`dir]], Bold], ImageSize -> 
             Length[$CellContext`names] 30 + 300], 
            
            StringExpression[$CellContext`shortName, 
             " has the wrong number of marked points\nto match with ", 
             
             FileBaseName[$CellContext`dir]]]]; \
$CellContext`calculateAlignmentError[
          Pattern[$CellContext`thisImgA, 
           Blank[]]] := Module[{}, $CellContext`fileIndA = First[
             First[
              Position[
               StringPosition[$CellContext`txtFiles, 
                Part[$CellContext`txtImg, $CellContext`thisImgA]], List, {
               3}]]]; $CellContext`textA = Import[
             
             Part[$CellContext`txtFiles, $CellContext`fileIndA]]; \
$CellContext`expAraw = ToExpression[
             Part[
              StringSplit[$CellContext`textA, "\n"], 
              1]]; $CellContext`fileIndA = First[
             First[
              Position[
               StringPosition[$CellContext`imageNames, 
                Part[$CellContext`txtImg, $CellContext`thisImgA]], List, {
               3}]]]; $CellContext`imgAraw = ColorConvert[
             Import[
              Part[$CellContext`imageNames, $CellContext`fileIndA]], 
             "Grayscale"]; $CellContext`textB = 
           Import[$CellContext`thisFileTXT]; $CellContext`expBraw = 
           ToExpression[
             Part[
              StringSplit[$CellContext`textB, "\n"], 
              1]]; $CellContext`imgBraw = ColorConvert[
             Import[$CellContext`thisFileJPG], 
             "Grayscale"]; $CellContext`expA = $CellContext`expAraw; \
$CellContext`expB = $CellContext`expBraw; 
          If[Length[$CellContext`expA] == 
            Length[$CellContext`expB], $CellContext`ind = Flatten[
               Position[
               Map[Total, $CellContext`expA] Map[Total, $CellContext`expB], 
                PatternTest[
                 Blank[], 0.01 < #& ]]]; $CellContext`selectedA = 
             Part[$CellContext`expA, $CellContext`ind]; \
$CellContext`selectedB = 
             Part[$CellContext`expB, $CellContext`ind]; $CellContext`expA = \
$CellContext`selectedA; $CellContext`expB = $CellContext`selectedB; \
$CellContext`regA = 
             CoordinateBoundingBox[$CellContext`selectedA]; $CellContext`regB = 
             CoordinateBoundingBox[$CellContext`selectedB]; \
$CellContext`boundingSizeA = Max[
               Flatten[{
                 Differences[
                  Part[$CellContext`regA, All, 1]], 
                 Differences[
                  
                  Part[$CellContext`regA, All, 
                   2]]}]]; $CellContext`boundingSizeB = Max[
               Flatten[{
                 Differences[
                  Part[$CellContext`regB, All, 1]], 
                 Differences[
                  Part[$CellContext`regB, All, 2]]}]]; $CellContext`rescaleA = 
             1000./$CellContext`boundingSizeA; $CellContext`rescaleB = 
             1000./$CellContext`boundingSizeB; $CellContext`imgA = 
             ImageResize[$CellContext`imgAraw, 
               
               Scaled[$CellContext`rescaleA]]; $CellContext`imgAraw = \
$CellContext`imgA; $CellContext`expA = $CellContext`rescaleA \
$CellContext`selectedA; $CellContext`imgB = 
             ImageResize[$CellContext`imgBraw, 
               
               Scaled[$CellContext`rescaleB]]; $CellContext`imgBraw = \
$CellContext`imgB; $CellContext`expB = $CellContext`rescaleB \
$CellContext`selectedB; {$CellContext`err, $CellContext`trans} = 
             FindGeometricTransform[$CellContext`expB, $CellContext`expA, 
               Method -> "Linear", TransformationClass -> "Similarity"]; 
            Clip[{$CellContext`err, $CellContext`err/
                Length[$CellContext`expA]} - 1.*^-8, {0, Infinity}]]]}; 
     Typeset`initDone$$ = True),
    SynchronousInitialization->True,
    UndoTrackedVariables:>{Typeset`show$$, Typeset`bookmarkMode$$},
    UnsavedVariables:>{Typeset`initDone$$},
    UntrackedVariables:>{Typeset`size$$}], "Manipulate",
   Deployed->True,
   StripOnInput->False],
  Manipulate`InterpretManipulate[1]]], "Output",ExpressionUUID->"49028c48-\
168a-4511-a44f-fa1d53b39a76"]
}, {2}]]
}, Open  ]]
},
WindowSize->{1441, 960},
Visible->True,
ScrollingOptions->{"VerticalScrollRange"->Fit},
ShowCellBracket->Automatic,
Deployed->True,
TrackCellChangeTimes->False,
FrontEndVersion->"12.3 for Mac OS X x86 (64-bit) (July 9, 2021)",
StyleDefinitions->"Default.nb",
ExpressionUUID->"2f9a31ec-e268-4c88-853c-ba2c417f420d"
]
(* End of Notebook Content *)

(* Internal cache information *)
(*CellTagsOutline
CellTagsIndex->{}
*)
(*CellTagsIndex
CellTagsIndex->{}
*)
(*NotebookFileOutline
Notebook[{
Cell[CellGroupData[{
Cell[1486, 35, 167, 3, 67, "Section",ExpressionUUID->"5240bbe9-e9aa-4913-8ebd-66ba1deb7163"],
Cell[1656, 40, 565, 8, 58, "Text",ExpressionUUID->"1ab77650-f199-4f13-b7c3-77b5a8c5211b"],
Cell[CellGroupData[{
Cell[2246, 52, 22455, 537, 1837, "Input",ExpressionUUID->"5bda3336-02f8-45bd-beab-5a98e15fc19f"],
Cell[24704, 591, 16846, 345, 171, "Output",ExpressionUUID->"49028c48-168a-4511-a44f-fa1d53b39a76"]
}, {2}]]
}, Open  ]]
}
]
*)

(* End of internal cache information *)

(* NotebookSignature 6W#o38OcMaCqsVzonwe5oyKA *)
