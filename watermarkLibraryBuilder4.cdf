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
NotebookDataLength[     36541,        858]
NotebookOptionsPosition[     36664,        846]
NotebookOutlinePosition[     37142,        866]
CellTagsIndexPosition[     37099,        863]
WindowFrame->Normal*)

(* Beginning of Notebook Content *)
Notebook[{

Cell[CellGroupData[{
Cell["Find closeness/distance between all watermarks in a folder", "Section",ExpressionUUID->"dc53fd55-0f5b-4946-b9cc-f5d37d9663aa"],

Cell["\<\
Much of this project has been made possible with support from the Getty \
Foundation through its grants \[OpenCurlyDoubleQuote]Applying Digital Image \
Processing Algorithms to the Study of Prints and Drawings\
\[CloseCurlyDoubleQuote] and \[OpenCurlyDoubleQuote]Computational \
Characterization of Historic Papers via Watermarks, Chain Lines, and Laid \
Lines.\[CloseCurlyDoubleQuote] We also thank Fred Schroeder (Gates \
Collection)\[Dash]who shared and nurtured our investigations.\
\>", "Text",ExpressionUUID->"550fee26-1fd1-493a-b9a6-b188ddf14466"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"Manipulate", "[", "\[IndentingNewLine]", 
  RowBox[{
   RowBox[{
    RowBox[{"If", "[", 
     RowBox[{
      RowBox[{"snap", "\[Equal]", "True"}], ",", 
      RowBox[{
       RowBox[{"Export", "[", 
        RowBox[{
         RowBox[{"FileNameJoin", "[", 
          RowBox[{"{", 
           RowBox[{
            RowBox[{"NotebookDirectory", "[", "]"}], ",", 
            RowBox[{
             RowBox[{"FileBaseName", "[", "dir", "]"}], "<>", 
             "\"\<Snapshot\>\"", "<>", 
             RowBox[{"ToString", "[", "snapCount", "]"}], "<>", 
             "\"\<.pdf\>\""}]}], "}"}], "]"}], ",", "disp"}], "]"}], ";", 
       RowBox[{"snap", "=", "False"}], ";", 
       RowBox[{"snapCount", "=", 
        RowBox[{"snapCount", "+", "1"}]}], ";"}]}], "]"}], ";", 
    "\[IndentingNewLine]", 
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
       RowBox[{"alignDataLB", "=", 
        RowBox[{"{", "}"}]}], ";", 
       RowBox[{"newDir", "=", "False"}], ";"}]}], "\[IndentingNewLine]", 
     "]"}], ";", "\[IndentingNewLine]", 
    RowBox[{"If", "[", 
     RowBox[{
      RowBox[{"make", "\[Equal]", "True"}], ",", "\[IndentingNewLine]", 
      RowBox[{
       RowBox[{"dispMess", "=", "\"\<Calculating distances...\>\""}], ";", 
       "\[IndentingNewLine]", 
       RowBox[{"alignDataLB", "=", 
        RowBox[{"Table", "[", 
         RowBox[{
          RowBox[{
           RowBox[{"errors", "=", 
            RowBox[{"calculateAlignmentError", "[", 
             RowBox[{"i", ",", "j"}], "]"}]}], ";", "\[IndentingNewLine]", 
           RowBox[{"If", "[", 
            RowBox[{
             RowBox[{
              RowBox[{"Length", "[", "errors", "]"}], ">", "0"}], ",", 
             RowBox[{"{", 
              RowBox[{
               RowBox[{"txtImg", "[", 
                RowBox[{"[", "i", "]"}], "]"}], ",", 
               RowBox[{"txtImg", "[", 
                RowBox[{"[", "j", "]"}], "]"}], ",", 
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
                RowBox[{"[", "i", "]"}], "]"}], ",", 
               RowBox[{"txtImg", "[", 
                RowBox[{"[", "j", "]"}], "]"}], ",", "\"\<xx\>\"", ",", 
               "\"\<xx\>\""}], "}"}]}], "]"}]}], ",", 
          RowBox[{"{", 
           RowBox[{"i", ",", 
            RowBox[{"Length", "[", "txtImg", "]"}]}], "}"}], ",", 
          RowBox[{"{", 
           RowBox[{"j", ",", 
            RowBox[{"Length", "[", "txtImg", "]"}]}], "}"}]}], "]"}]}], ";", 
       "\[IndentingNewLine]", 
       RowBox[{"outFile", "=", 
        RowBox[{"FileNameJoin", "[", 
         RowBox[{"{", 
          RowBox[{
           RowBox[{"NotebookDirectory", "[", "]"}], ",", 
           RowBox[{"StringJoin", "[", 
            RowBox[{"{", 
             RowBox[{"\"\<alignmentError\>\"", ",", "\"\<-\>\"", ",", 
              RowBox[{"FileBaseName", "[", "dir", "]"}], ",", "\"\<-\>\"", 
              ",", 
              RowBox[{"FileBaseName", "[", "dir", "]"}], ",", 
              "\"\<.txt\>\""}], "}"}], "]"}]}], "}"}], "]"}]}], ";", 
       "\[IndentingNewLine]", 
       RowBox[{"(*", 
        RowBox[{
         RowBox[{"Export", "[", 
          RowBox[{"outFile", ",", 
           RowBox[{"Flatten", "[", 
            RowBox[{"alignDataLB", ",", "1"}], "]"}]}], "]"}], ";"}], "*)"}], 
       "\[IndentingNewLine]", 
       RowBox[{"dispMess", "=", "\"\<\>\""}], ";", "\[IndentingNewLine]", 
       RowBox[{"make", "=", "False"}], ";"}]}], "\[IndentingNewLine]", "]"}], 
    ";", "\[IndentingNewLine]", 
    RowBox[{"Which", "[", 
     RowBox[{
      RowBox[{
       RowBox[{"Length", "[", 
        RowBox[{"Dimensions", "[", "alignDataLB", "]"}], "]"}], "\[Equal]", 
       "1"}], ",", 
      RowBox[{"Dynamic", "[", "dispMess", "]"}], ",", 
      RowBox[{
       RowBox[{"Length", "[", 
        RowBox[{"Dimensions", "[", "alignDataLB", "]"}], "]"}], ">", "1"}], 
      ",", 
      RowBox[{"disp", "=", 
       RowBox[{"table", "[", 
        RowBox[{"alignDataLB", ",", "thresh"}], "]"}]}]}], "]"}]}], ",", 
   "\[IndentingNewLine]", 
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
      ",", 
      RowBox[{"Control", "[", 
       RowBox[{"{", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{"make", ",", "False", ",", "\"\<\>\""}], "}"}], ",", 
         RowBox[{
          RowBox[{"Button", "[", 
           RowBox[{
            RowBox[{"Text", "[", "\"\<Calculate\\nAll\\nDistances\>\"", "]"}],
             ",", 
            RowBox[{"make", "=", "True"}]}], "]"}], "&"}]}], "}"}], "]"}], 
      ",", "\[IndentingNewLine]", 
      RowBox[{"Spacer", "[", "20", "]"}], ",", 
      RowBox[{"Control", "[", 
       RowBox[{"{", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{"thresh", ",", "1.5", ",", "\"\<Display\\nThreshold\>\""}], 
          "}"}], ",", "0.2", ",", "3"}], "}"}], "]"}], ",", 
      RowBox[{"Spacer", "[", "20", "]"}], ",", 
      RowBox[{"Button", "[", 
       RowBox[{
        RowBox[{"Text", "[", "\"\<Snapshot\>\"", "]"}], ",", 
        RowBox[{"snap", "=", "True"}]}], "]"}]}], "}"}], "]"}], ",", 
   RowBox[{"LocalizeVariables", "\[Rule]", "True"}], ",", 
   RowBox[{"SaveDefinitions", "\[Rule]", "False"}], ",", 
   "\[IndentingNewLine]", 
   RowBox[{"Initialization", "\[RuleDelayed]", 
    RowBox[{"(", "\[IndentingNewLine]", 
     RowBox[{
      RowBox[{"dir", "=", 
       RowBox[{"NotebookDirectory", "[", "]"}]}], ";", "\[IndentingNewLine]", 
      
      RowBox[{"thisDir", "=", 
       RowBox[{"NotebookDirectory", "[", "]"}]}], ";", "\[IndentingNewLine]", 
      
      RowBox[{"txtFiles", "=", 
       RowBox[{"outFile", "=", "\"\<select\>\""}]}], ";", 
      "\[IndentingNewLine]", 
      RowBox[{"alignDataLB", "=", 
       RowBox[{"{", "}"}]}], ";", 
      RowBox[{"dispMess", "=", 
       RowBox[{
       "txtImg", "=", "\"\<Select Folder of Marked Watermarks\>\""}]}], ";", 
      "\[IndentingNewLine]", 
      RowBox[{"snapCount", "=", "1"}], ";", "\[IndentingNewLine]", 
      RowBox[{
       RowBox[{"table", "[", 
        RowBox[{"align_", ",", "t_"}], "]"}], ":=", 
       RowBox[{"Module", "[", 
        RowBox[{
         RowBox[{"{", "}"}], ",", "\[IndentingNewLine]", 
         RowBox[{
          RowBox[{"names", "=", 
           RowBox[{"align", "[", 
            RowBox[{"[", 
             RowBox[{"All", ",", "1", ",", "1"}], "]"}], "]"}]}], ";", 
          "\[IndentingNewLine]", 
          RowBox[{"vals", "=", 
           RowBox[{"align", "[", 
            RowBox[{"[", 
             RowBox[{"All", ",", "All", ",", "4"}], "]"}], "]"}]}], ";", 
          RowBox[{"TableForm", "[", 
           RowBox[{
            RowBox[{
             RowBox[{"Round", "[", 
              RowBox[{
               RowBox[{
                RowBox[{"(", 
                 RowBox[{"vals", "+", 
                  RowBox[{"Transpose", "[", "vals", "]"}]}], ")"}], "/", 
                "2"}], ",", "0.01"}], "]"}], "/.", " ", 
             RowBox[{"{", 
              RowBox[{
               RowBox[{
                RowBox[{"i_", "/;", 
                 RowBox[{"i", "\[Equal]", "0"}]}], "\[RuleDelayed]", 
                RowBox[{"Style", "[", 
                 RowBox[{"i", ",", 
                  RowBox[{"Lighter", "[", "Gray", "]"}]}], "]"}]}], ",", 
               RowBox[{
                RowBox[{"i_", "/;", 
                 RowBox[{"0", "<", "i", "\[LessEqual]", "t"}]}], 
                "\[RuleDelayed]", 
                RowBox[{"Style", "[", 
                 RowBox[{"i", ",", 
                  RowBox[{"RGBColor", "[", 
                   RowBox[{"0.1", ",", "0.1", ",", "1"}], "]"}], ",", 
                  "Bold"}], "]"}]}], ",", 
               RowBox[{
                RowBox[{"i_", "/;", 
                 RowBox[{"t", "\[LessEqual]", "i"}]}], "\[RuleDelayed]", 
                RowBox[{"Style", "[", 
                 RowBox[{"i", ",", "Black"}], "]"}]}]}], "}"}]}], ",", 
            RowBox[{"TableSpacing", "\[Rule]", 
             RowBox[{"{", 
              RowBox[{"2.5", ",", "1"}], "}"}]}], ",", 
            RowBox[{"TableAlignments", "\[Rule]", "Center"}], ",", 
            RowBox[{"TableHeadings", "\[Rule]", 
             RowBox[{"{", 
              RowBox[{"names", ",", 
               RowBox[{
                RowBox[{
                 RowBox[{"Rotate", "[", 
                  RowBox[{"#", ",", 
                   RowBox[{"90", " ", "Degree"}]}], "]"}], "&"}], "/@", 
                "names"}]}], "}"}]}]}], "]"}]}]}], "]"}]}], ";", 
      "\[IndentingNewLine]", 
      RowBox[{
       RowBox[{"calculateAlignmentError", "[", 
        RowBox[{"thisImgA_", ",", "thisImgB_"}], "]"}], ":=", 
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
          RowBox[{"expA", "=", 
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
          RowBox[{"imgA", "=", 
           RowBox[{"Import", "[", 
            RowBox[{"imageNames", "[", 
             RowBox[{"[", "fileIndA", "]"}], "]"}], "]"}]}], ";", 
          "\[IndentingNewLine]", 
          RowBox[{"fileIndB", "=", 
           RowBox[{"First", "@", 
            RowBox[{"First", "@", 
             RowBox[{"Position", "[", 
              RowBox[{
               RowBox[{"StringPosition", "[", 
                RowBox[{"txtFiles", ",", 
                 RowBox[{"txtImg", "[", 
                  RowBox[{"[", "thisImgB", "]"}], "]"}]}], "]"}], ",", "List",
                ",", 
               RowBox[{"{", "3", "}"}]}], "]"}]}]}]}], ";", 
          "\[IndentingNewLine]", 
          RowBox[{"textB", "=", 
           RowBox[{"Import", "[", 
            RowBox[{"txtFiles", "[", 
             RowBox[{"[", "fileIndB", "]"}], "]"}], "]"}]}], ";", 
          "\[IndentingNewLine]", 
          RowBox[{"expB", "=", 
           RowBox[{"ToExpression", "[", 
            RowBox[{
             RowBox[{"StringSplit", "[", 
              RowBox[{"textB", ",", "\"\<\\n\>\""}], "]"}], "[", 
             RowBox[{"[", "1", "]"}], "]"}], "]"}]}], ";", 
          "\[IndentingNewLine]", 
          RowBox[{"fileIndB", "=", 
           RowBox[{"First", "@", 
            RowBox[{"First", "@", 
             RowBox[{"Position", "[", 
              RowBox[{
               RowBox[{"StringPosition", "[", 
                RowBox[{"imageNames", ",", 
                 RowBox[{"txtImg", "[", 
                  RowBox[{"[", "thisImgB", "]"}], "]"}]}], "]"}], ",", "List",
                ",", 
               RowBox[{"{", "3", "}"}]}], "]"}]}]}]}], ";", 
          "\[IndentingNewLine]", 
          RowBox[{"imgB", "=", 
           RowBox[{"Import", "[", 
            RowBox[{"imageNames", "[", 
             RowBox[{"[", "fileIndB", "]"}], "]"}], "]"}]}], ";", 
          "\[IndentingNewLine]", 
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
             RowBox[{"coordBBA", "=", 
              RowBox[{"CoordinateBoundingBox", "[", "selectedA", "]"}]}], ";",
              "\[IndentingNewLine]", 
             RowBox[{"coordBBB", "=", 
              RowBox[{"CoordinateBoundingBox", "[", "selectedB", "]"}]}], ";",
              "\[IndentingNewLine]", 
             RowBox[{"resolutionScaling", "=", 
              RowBox[{"Mean", "[", 
               RowBox[{
                RowBox[{"(", 
                 RowBox[{
                  RowBox[{"coordBBA", "[", 
                   RowBox[{"[", "2", "]"}], "]"}], "-", 
                  RowBox[{"coordBBA", "[", 
                   RowBox[{"[", "1", "]"}], "]"}]}], ")"}], "/", 
                RowBox[{"(", 
                 RowBox[{
                  RowBox[{"coordBBB", "[", 
                   RowBox[{"[", "2", "]"}], "]"}], "-", 
                  RowBox[{"coordBBB", "[", 
                   RowBox[{"[", "1", "]"}], "]"}]}], ")"}]}], "]"}]}], ";", 
             "\[IndentingNewLine]", 
             RowBox[{"expLow", "=", 
              RowBox[{"{", 
               RowBox[{
                RowBox[{"Min", "[", 
                 RowBox[{
                  RowBox[{"coordBBA", "[", 
                   RowBox[{"[", 
                    RowBox[{"1", ",", "1"}], "]"}], "]"}], ",", 
                  RowBox[{"coordBBB", "[", 
                   RowBox[{"[", 
                    RowBox[{"1", ",", "1"}], "]"}], "]"}]}], "]"}], ",", 
                RowBox[{"Min", "[", 
                 RowBox[{
                  RowBox[{"coordBBA", "[", 
                   RowBox[{"[", 
                    RowBox[{"1", ",", "2"}], "]"}], "]"}], ",", 
                  RowBox[{"coordBBB", "[", 
                   RowBox[{"[", 
                    RowBox[{"1", ",", "2"}], "]"}], "]"}]}], "]"}]}], "}"}]}],
              ";", 
             RowBox[{"coordBBAhigh", "=", 
              RowBox[{
               RowBox[{"ImageDimensions", "[", "imgA", "]"}], "-", 
               RowBox[{"coordBBA", "[", 
                RowBox[{"[", "2", "]"}], "]"}]}]}], ";", 
             "\[IndentingNewLine]", 
             RowBox[{"coordBBBhigh", "=", 
              RowBox[{
               RowBox[{"ImageDimensions", "[", "imgB", "]"}], "-", 
               RowBox[{"coordBBB", "[", 
                RowBox[{"[", "2", "]"}], "]"}]}]}], ";", 
             "\[IndentingNewLine]", 
             RowBox[{"expHigh", "=", 
              RowBox[{"{", 
               RowBox[{
                RowBox[{"Min", "[", 
                 RowBox[{
                  RowBox[{"coordBBAhigh", "[", 
                   RowBox[{"[", "1", "]"}], "]"}], ",", 
                  RowBox[{"coordBBBhigh", "[", 
                   RowBox[{"[", "1", "]"}], "]"}]}], "]"}], ",", 
                RowBox[{"Min", "[", 
                 RowBox[{
                  RowBox[{"coordBBAhigh", "[", 
                   RowBox[{"[", "2", "]"}], "]"}], ",", 
                  RowBox[{"coordBBBhigh", "[", 
                   RowBox[{"[", "2", "]"}], "]"}]}], "]"}]}], "}"}]}], ";", 
             "\[IndentingNewLine]", 
             RowBox[{"dataRangeA", "=", 
              RowBox[{"{", 
               RowBox[{
                RowBox[{
                 RowBox[{"Min", "/@", 
                  RowBox[{"Transpose", "[", "selectedA", "]"}]}], "-", 
                 "expLow", "+", "1"}], ",", 
                RowBox[{
                 RowBox[{"Max", "/@", 
                  RowBox[{"Transpose", "[", "selectedA", "]"}]}], "+", 
                 "expHigh", "-", "1"}]}], "}"}]}], ";", "\[IndentingNewLine]", 
             RowBox[{"dataRangeB", "=", 
              RowBox[{"{", 
               RowBox[{
                RowBox[{
                 RowBox[{"Min", "/@", 
                  RowBox[{"Transpose", "[", "selectedB", "]"}]}], "-", 
                 "expLow", "+", "1"}], ",", 
                RowBox[{
                 RowBox[{"Max", "/@", 
                  RowBox[{"Transpose", "[", "selectedB", "]"}]}], "+", 
                 "expHigh", "-", "1"}]}], "}"}]}], ";", "\[IndentingNewLine]", 
             RowBox[{"trimA", "=", 
              RowBox[{"ImageTrim", "[", 
               RowBox[{"imgA", ",", "dataRangeA"}], "]"}]}], ";", 
             "\[IndentingNewLine]", 
             RowBox[{"trimB", "=", 
              RowBox[{"ImageTrim", "[", 
               RowBox[{"imgB", ",", "dataRangeB"}], "]"}]}], ";", 
             "\[IndentingNewLine]", 
             RowBox[{"selectedTrimA", "=", 
              RowBox[{"selectedA", "-", 
               RowBox[{"ConstantArray", "[", 
                RowBox[{
                 RowBox[{"dataRangeA", "[", 
                  RowBox[{"[", "1", "]"}], "]"}], ",", 
                 RowBox[{"Length", "[", "selectedA", "]"}]}], "]"}]}]}], ";", 
             "\[IndentingNewLine]", 
             RowBox[{"selectedTrimB", "=", 
              RowBox[{"selectedB", "-", 
               RowBox[{"ConstantArray", "[", 
                RowBox[{
                 RowBox[{"dataRangeB", "[", 
                  RowBox[{"[", "1", "]"}], "]"}], ",", 
                 RowBox[{"Length", "[", "selectedB", "]"}]}], "]"}]}]}], ";", 
             "\[IndentingNewLine]", 
             RowBox[{
              RowBox[{"{", 
               RowBox[{"err", ",", "trans"}], "}"}], "=", 
              RowBox[{"FindGeometricTransform", "[", 
               RowBox[{"selectedTrimB", ",", "selectedTrimA", ",", 
                RowBox[{"Method", "\[Rule]", "\"\<Linear\>\""}], ",", 
                RowBox[{
                "TransformationClass", "\[Rule]", "\"\<Similarity\>\""}]}], 
               "]"}]}], ";", "\[IndentingNewLine]", 
             RowBox[{"scaledError", "=", 
              RowBox[{"err", "*", 
               RowBox[{"Sqrt", "[", "resolutionScaling", "]"}]}]}], ";", 
             "\[IndentingNewLine]", 
             RowBox[{"Clip", "[", 
              RowBox[{
               RowBox[{
                RowBox[{"{", 
                 RowBox[{"scaledError", ",", 
                  RowBox[{"scaledError", "/", 
                   RowBox[{"Length", "[", "selectedA", "]"}]}]}], "}"}], "-", 
                "0.00000001"}], ",", 
               RowBox[{"{", 
                RowBox[{"0", ",", "Infinity"}], "}"}]}], "]"}]}]}], 
           "\[IndentingNewLine]", "]"}]}]}], "\[IndentingNewLine]", "]"}]}]}],
      "\[IndentingNewLine]", ")"}]}]}], "\[IndentingNewLine]", "]"}]], "Input",\
ExpressionUUID->"5bda3336-02f8-45bd-beab-5a98e15fc19f"],

Cell[BoxData[
 TagBox[
  StyleBox[
   DynamicModuleBox[{$CellContext`make$$ = False, $CellContext`newDir$$ = 
    False, $CellContext`thresh$$ = 1.5, Typeset`show$$ = True, 
    Typeset`bookmarkList$$ = {}, Typeset`bookmarkMode$$ = "Menu", 
    Typeset`animator$$, Typeset`animvar$$ = 1, Typeset`name$$ = 
    "\"untitled\"", Typeset`specs$$ = {{{
       Hold[$CellContext`newDir$$], False, ""}, 
      Dynamic[Button[
        Text["Select\nLibrary\nFolder"], $CellContext`newDir$$ = True]& ]}, {{
      
       Hold[$CellContext`make$$], False, ""}, 
      Dynamic[Button[
        Text["Calculate\nAll\nDistances"], $CellContext`make$$ = True]& ]}, {{
      
       Hold[$CellContext`thresh$$], 1.5, "Display\nThreshold"}, 0.2, 3}, {
      Hold[
       Row[{
         Manipulate`Place[1], 
         Manipulate`Place[2], 
         Spacer[20], 
         Manipulate`Place[3], 
         Spacer[20], 
         Button[
          Text["Snapshot"], $CellContext`snap = True]}]], 
      Manipulate`Dump`ThisIsNotAControl}}, Typeset`size$$ = {267., {1., 10.}},
     Typeset`update$$ = 0, Typeset`initDone$$, Typeset`skipInitDone$$ = 
    False}, 
    DynamicBox[Manipulate`ManipulateBoxes[
     2, StandardForm, 
      "Variables" :> {$CellContext`make$$ = False, $CellContext`newDir$$ = 
        False, $CellContext`thresh$$ = 1.5}, "ControllerVariables" :> {}, 
      "OtherVariables" :> {
       Typeset`show$$, Typeset`bookmarkList$$, Typeset`bookmarkMode$$, 
        Typeset`animator$$, Typeset`animvar$$, Typeset`name$$, 
        Typeset`specs$$, Typeset`size$$, Typeset`update$$, Typeset`initDone$$,
         Typeset`skipInitDone$$}, 
      "Body" :> (If[$CellContext`snap == True, Export[
           FileNameJoin[{
             NotebookDirectory[], 
             StringJoin[
              FileBaseName[$CellContext`dir], "Snapshot", 
              ToString[$CellContext`snapCount], 
              ".pdf"]}], $CellContext`disp]; $CellContext`snap = 
          False; $CellContext`snapCount = $CellContext`snapCount + 1; Null]; 
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
                ""]]]]; $CellContext`alignDataLB = {}; $CellContext`newDir$$ = 
          False; Null]; 
       If[$CellContext`make$$ == 
         True, $CellContext`dispMess = 
          "Calculating distances..."; $CellContext`alignDataLB = 
          Table[$CellContext`errors = \
$CellContext`calculateAlignmentError[$CellContext`i, $CellContext`j]; 
            If[Length[$CellContext`errors] > 0, {
               Part[$CellContext`txtImg, $CellContext`i], 
               Part[$CellContext`txtImg, $CellContext`j], 
               Round[
                Part[$CellContext`errors, 1], 0.01], 
               Round[
                Part[$CellContext`errors, 2], 0.01]}, {
               Part[$CellContext`txtImg, $CellContext`i], 
               Part[$CellContext`txtImg, $CellContext`j], "xx", 
               "xx"}], {$CellContext`i, 
             Length[$CellContext`txtImg]}, {$CellContext`j, 
             Length[$CellContext`txtImg]}]; $CellContext`outFile = 
          FileNameJoin[{
             NotebookDirectory[], 
             StringJoin[{"alignmentError", "-", 
               FileBaseName[$CellContext`dir], "-", 
               FileBaseName[$CellContext`dir], 
               ".txt"}]}]; $CellContext`dispMess = ""; $CellContext`make$$ = 
          False; Null]; Which[Length[
           Dimensions[$CellContext`alignDataLB]] == 1, 
         Dynamic[$CellContext`dispMess], Length[
           Dimensions[$CellContext`alignDataLB]] > 
         1, $CellContext`disp = $CellContext`table[$CellContext`alignDataLB, \
$CellContext`thresh$$]]), 
      "Specifications" :> {{{$CellContext`newDir$$, False, ""}, 
         Dynamic[Button[
           Text["Select\nLibrary\nFolder"], $CellContext`newDir$$ = True]& ], 
         ControlPlacement -> 1}, {{$CellContext`make$$, False, ""}, 
         Dynamic[Button[
           Text["Calculate\nAll\nDistances"], $CellContext`make$$ = True]& ], 
         ControlPlacement -> 
         2}, {{$CellContext`thresh$$, 1.5, "Display\nThreshold"}, 0.2, 3, 
         ControlPlacement -> 3}, 
        Row[{
          Manipulate`Place[1], 
          Manipulate`Place[2], 
          Spacer[20], 
          Manipulate`Place[3], 
          Spacer[20], 
          Button[
           Text["Snapshot"], $CellContext`snap = True]}]}, 
      "Options" :> {LocalizeVariables -> True}, "DefaultOptions" :> {}],
     ImageSizeCache->{562., {72., 78.}},
     SingleEvaluation->True],
    Deinitialization:>None,
    DynamicModuleValues:>{},
    Initialization:>(($CellContext`dir = 
       NotebookDirectory[]; $CellContext`thisDir = 
       NotebookDirectory[]; $CellContext`txtFiles = ($CellContext`outFile = 
        "select"); $CellContext`alignDataLB = {}; $CellContext`dispMess = \
($CellContext`txtImg = 
        "Select Folder of Marked Watermarks"); $CellContext`snapCount = 
       1; $CellContext`table[
         Pattern[$CellContext`align, 
          Blank[]], 
         Pattern[$CellContext`t, 
          Blank[]]] := 
       Module[{}, $CellContext`names = 
          Part[$CellContext`align, All, 1, 1]; $CellContext`vals = 
          Part[$CellContext`align, All, All, 4]; TableForm[
           ReplaceAll[
            
            Round[($CellContext`vals + Transpose[$CellContext`vals])/2, 
             0.01], {Condition[
               Pattern[$CellContext`i, 
                Blank[]], $CellContext`i == 0] :> Style[$CellContext`i, 
               Lighter[Gray]], Condition[
               Pattern[$CellContext`i, 
                Blank[]], 
               Inequality[
               0, Less, $CellContext`i, LessEqual, $CellContext`t]] :> 
             Style[$CellContext`i, 
               RGBColor[0.1, 0.1, 1], Bold], Condition[
               Pattern[$CellContext`i, 
                Blank[]], $CellContext`t <= $CellContext`i] :> 
             Style[$CellContext`i, Black]}], TableSpacing -> {2.5, 1}, 
           TableAlignments -> Center, TableHeadings -> {$CellContext`names, 
             Map[
             Rotate[#, 90 
               Degree]& , $CellContext`names]}]]; \
$CellContext`calculateAlignmentError[
         Pattern[$CellContext`thisImgA, 
          Blank[]], 
         Pattern[$CellContext`thisImgB, 
          Blank[]]] := Module[{}, $CellContext`fileIndA = First[
            First[
             Position[
              StringPosition[$CellContext`txtFiles, 
               Part[$CellContext`txtImg, $CellContext`thisImgA]], List, {
              3}]]]; $CellContext`textA = Import[
            
            Part[$CellContext`txtFiles, $CellContext`fileIndA]]; \
$CellContext`expA = ToExpression[
            Part[
             StringSplit[$CellContext`textA, "\n"], 
             1]]; $CellContext`fileIndA = First[
            First[
             Position[
              StringPosition[$CellContext`imageNames, 
               Part[$CellContext`txtImg, $CellContext`thisImgA]], List, {
              3}]]]; $CellContext`imgA = Import[
            
            Part[$CellContext`imageNames, $CellContext`fileIndA]]; \
$CellContext`fileIndB = First[
            First[
             Position[
              StringPosition[$CellContext`txtFiles, 
               Part[$CellContext`txtImg, $CellContext`thisImgB]], List, {
              3}]]]; $CellContext`textB = Import[
            
            Part[$CellContext`txtFiles, $CellContext`fileIndB]]; \
$CellContext`expB = ToExpression[
            Part[
             StringSplit[$CellContext`textB, "\n"], 
             1]]; $CellContext`fileIndB = First[
            First[
             Position[
              StringPosition[$CellContext`imageNames, 
               Part[$CellContext`txtImg, $CellContext`thisImgB]], List, {
              3}]]]; $CellContext`imgB = Import[
            Part[$CellContext`imageNames, $CellContext`fileIndB]]; 
         If[Length[$CellContext`expA] == 
           Length[$CellContext`expB], $CellContext`ind = Flatten[
              Position[
              Map[Total, $CellContext`expA] Map[Total, $CellContext`expB], 
               PatternTest[
                Blank[], 0.01 < #& ]]]; $CellContext`selectedA = 
            Part[$CellContext`expA, $CellContext`ind]; $CellContext`selectedB = 
            Part[$CellContext`expB, $CellContext`ind]; $CellContext`coordBBA = 
            CoordinateBoundingBox[$CellContext`selectedA]; \
$CellContext`coordBBB = 
            CoordinateBoundingBox[$CellContext`selectedB]; \
$CellContext`resolutionScaling = 
            Mean[(Part[$CellContext`coordBBA, 2] - 
               Part[$CellContext`coordBBA, 1])/(
              Part[$CellContext`coordBBB, 2] - 
              Part[$CellContext`coordBBB, 1])]; $CellContext`expLow = {
              Min[
               Part[$CellContext`coordBBA, 1, 1], 
               Part[$CellContext`coordBBB, 1, 1]], 
              Min[
               Part[$CellContext`coordBBA, 1, 2], 
               Part[$CellContext`coordBBB, 1, 2]]}; $CellContext`coordBBAhigh = 
            ImageDimensions[$CellContext`imgA] - 
             Part[$CellContext`coordBBA, 2]; $CellContext`coordBBBhigh = 
            ImageDimensions[$CellContext`imgB] - 
             Part[$CellContext`coordBBB, 2]; $CellContext`expHigh = {
              Min[
               Part[$CellContext`coordBBAhigh, 1], 
               Part[$CellContext`coordBBBhigh, 1]], 
              Min[
               Part[$CellContext`coordBBAhigh, 2], 
               
               Part[$CellContext`coordBBBhigh, 
                2]]}; $CellContext`dataRangeA = {Map[Min, 
                Transpose[$CellContext`selectedA]] - $CellContext`expLow + 1, 
              Map[Max, 
                Transpose[$CellContext`selectedA]] + $CellContext`expHigh - 
              1}; $CellContext`dataRangeB = {Map[Min, 
                Transpose[$CellContext`selectedB]] - $CellContext`expLow + 1, 
              Map[Max, 
                Transpose[$CellContext`selectedB]] + $CellContext`expHigh - 
              1}; $CellContext`trimA = 
            ImageTrim[$CellContext`imgA, $CellContext`dataRangeA]; \
$CellContext`trimB = 
            ImageTrim[$CellContext`imgB, $CellContext`dataRangeB]; \
$CellContext`selectedTrimA = $CellContext`selectedA - ConstantArray[
              Part[$CellContext`dataRangeA, 1], 
              
              Length[$CellContext`selectedA]]; $CellContext`selectedTrimB = \
$CellContext`selectedB - ConstantArray[
              Part[$CellContext`dataRangeB, 1], 
              
              Length[$CellContext`selectedB]]; {$CellContext`err, \
$CellContext`trans} = 
            FindGeometricTransform[$CellContext`selectedTrimB, \
$CellContext`selectedTrimA, Method -> "Linear", TransformationClass -> 
              "Similarity"]; $CellContext`scaledError = $CellContext`err 
             Sqrt[$CellContext`resolutionScaling]; 
           Clip[{$CellContext`scaledError, $CellContext`scaledError/
               Length[$CellContext`selectedA]} - 1.*^-8, {0, Infinity}]]]); 
     Typeset`initDone$$ = True),
    SynchronousInitialization->True,
    UndoTrackedVariables:>{Typeset`show$$, Typeset`bookmarkMode$$},
    UnsavedVariables:>{Typeset`initDone$$},
    UntrackedVariables:>{Typeset`size$$}], "Manipulate",
   Deployed->True,
   StripOnInput->False],
  Manipulate`InterpretManipulate[1]]], "Output",ExpressionUUID->"82687f0e-\
32d5-40cd-94ba-df740cd5c1c6"]
}, {2}]]
}, Open  ]]
},
WindowSize->{1441, 960},
Visible->True,
ScrollingOptions->{"VerticalScrollRange"->Fit},
ShowCellBracket->Automatic,
Deployed->True,
TrackCellChangeTimes->False,
FrontEndVersion->"12.3 for Mac OS X x86 (64-bit) (May 11, 2021)",
StyleDefinitions->"Default.nb",
ExpressionUUID->"51782edf-c3f0-4eb5-a57d-9a417ccf3c3b"
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
Cell[1486, 35, 132, 0, 67, "Section",ExpressionUUID->"dc53fd55-0f5b-4946-b9cc-f5d37d9663aa"],
Cell[1621, 37, 564, 8, 58, "Text",ExpressionUUID->"550fee26-1fd1-493a-b9a6-b188ddf14466"],
Cell[CellGroupData[{
Cell[2210, 49, 22367, 535, 1543, "Input",ExpressionUUID->"5bda3336-02f8-45bd-beab-5a98e15fc19f"],
Cell[24580, 586, 12059, 256, 171, "Output",ExpressionUUID->"82687f0e-32d5-40cd-94ba-df740cd5c1c6"]
}, {2}]]
}, Open  ]]
}
]
*)

(* End of internal cache information *)

(* NotebookSignature VVk@Z44qOwKVNWNlJOD69AWW *)
