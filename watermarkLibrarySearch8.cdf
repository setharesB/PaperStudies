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
NotebookDataLength[     74251,       1701]
NotebookOptionsPosition[     74372,       1689]
NotebookOutlinePosition[     74850,       1709]
CellTagsIndexPosition[     74807,       1706]
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
    RowBox[{"If", "[", 
     RowBox[{
      RowBox[{"make", "\[Equal]", "True"}], ",", 
      RowBox[{
       RowBox[{"If", "[", 
        RowBox[{
         RowBox[{"done", "\[Equal]", "True"}], ",", 
         RowBox[{
          RowBox[{"dispMake", "=", "\"\<Rendering overlay...\>\""}], ";", 
          RowBox[{"makeReal", "=", "True"}], ";"}]}], "]"}], ";", 
       RowBox[{"make", "=", "False"}]}]}], "]"}], ";", "\[IndentingNewLine]", 
    
    RowBox[{"If", "[", 
     RowBox[{
      RowBox[{"makeReal", "\[Equal]", "True"}], ",", "\[IndentingNewLine]", 
      RowBox[{
       RowBox[{"If", "[", 
        RowBox[{
         RowBox[{
          RowBox[{"Min", "[", "vals", "]"}], "\[Equal]", "0"}], ",", 
         RowBox[{"indexAdd", "=", "1"}], ",", 
         RowBox[{"indexAdd", "=", "0"}]}], "]"}], ";", "\[IndentingNewLine]", 
       
       RowBox[{"indBest", "=", 
        RowBox[{
         RowBox[{"Ordering", "[", "vals", "]"}], "[", 
         RowBox[{"[", 
          RowBox[{"1", "+", "indexAdd"}], "]"}], "]"}]}], ";", 
       "\[IndentingNewLine]", 
       RowBox[{"calculateAlignmentError", "[", 
        RowBox[{"indBest", ",", "1"}], "]"}], ";", "\[IndentingNewLine]", 
       RowBox[{"dispMake", "=", 
        RowBox[{
        "\"\<Rendering overlay between \>\"", "~~", "shortName", "~~", 
         "\"\< and \>\"", "~~", 
         RowBox[{"txtImg", "[", 
          RowBox[{"[", "indBest", "]"}], "]"}]}]}], ";", 
       "\[IndentingNewLine]", 
       RowBox[{"coordBBA", "=", 
        RowBox[{"CoordinateBoundingBox", "[", "selectedA", "]"}]}], ";", 
       "\[IndentingNewLine]", 
       RowBox[{"coordBBB", "=", 
        RowBox[{"CoordinateBoundingBox", "[", "selectedB", "]"}]}], ";", 
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
              RowBox[{"1", ",", "2"}], "]"}], "]"}]}], "]"}]}], "}"}]}], ";", 
       
       RowBox[{"coordBBAhigh", "=", 
        RowBox[{
         RowBox[{"ImageDimensions", "[", "imgA", "]"}], "-", 
         RowBox[{"coordBBA", "[", 
          RowBox[{"[", "2", "]"}], "]"}]}]}], ";", "\[IndentingNewLine]", 
       RowBox[{"coordBBBhigh", "=", 
        RowBox[{
         RowBox[{"ImageDimensions", "[", "imgB", "]"}], "-", 
         RowBox[{"coordBBB", "[", 
          RowBox[{"[", "2", "]"}], "]"}]}]}], ";", "\[IndentingNewLine]", 
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
            RowBox[{"Transpose", "[", "selectedA", "]"}]}], "-", "expLow", 
           "+", "1"}], ",", 
          RowBox[{
           RowBox[{"Max", "/@", 
            RowBox[{"Transpose", "[", "selectedA", "]"}]}], "+", "expHigh", 
           "-", "1"}]}], "}"}]}], ";", "\[IndentingNewLine]", 
       RowBox[{"dataRangeB", "=", 
        RowBox[{"{", 
         RowBox[{
          RowBox[{
           RowBox[{"Min", "/@", 
            RowBox[{"Transpose", "[", "selectedB", "]"}]}], "-", "expLow", 
           "+", "1"}], ",", 
          RowBox[{
           RowBox[{"Max", "/@", 
            RowBox[{"Transpose", "[", "selectedB", "]"}]}], "+", "expHigh", 
           "-", "1"}]}], "}"}]}], ";", "\[IndentingNewLine]", 
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
          RowBox[{"TransformationClass", "\[Rule]", "\"\<Similarity\>\""}]}], 
         "]"}]}], ";", 
       RowBox[{"imgTrans", "=", 
        RowBox[{"ImageTransformation", "[", 
         RowBox[{"trimB", ",", "trans", ",", 
          RowBox[{"DataRange", "\[Rule]", "Full"}]}], "]"}]}], ";", 
       "\[IndentingNewLine]", 
       RowBox[{"{", 
        RowBox[{
         RowBox[{"highA", "=", 
          RowBox[{"Image", "[", 
           RowBox[{"HighlightImage", "[", 
            RowBox[{"trimA", ",", 
             RowBox[{"{", 
              RowBox[{
               RowBox[{"Opacity", "[", "dots", "]"}], ",", "Red", ",", 
               "selectedTrimA"}], "}"}]}], "]"}], "]"}]}], ",", 
         RowBox[{"highTrans", "=", 
          RowBox[{"Image", "[", 
           RowBox[{"HighlightImage", "[", 
            RowBox[{"imgTrans", ",", 
             RowBox[{"{", 
              RowBox[{
               RowBox[{"Opacity", "[", "dots", "]"}], ",", "Red", ",", 
               RowBox[{
                RowBox[{"InverseFunction", "[", "trans", "]"}], "/@", 
                "selectedTrimB"}]}], "}"}]}], "]"}], "]"}]}]}], "}"}], ";", 
       "\[IndentingNewLine]", 
       RowBox[{"imgDim", "=", 
        RowBox[{"ImageDimensions", "@", "trimA"}]}], ";", 
       "\[IndentingNewLine]", 
       RowBox[{"imgCtr1", "=", 
        RowBox[{"Round", "[", 
         RowBox[{"{", 
          RowBox[{
           RowBox[{
            RowBox[{"imgDim", "[", 
             RowBox[{"[", "1", "]"}], "]"}], "/", "2"}], ",", "60"}], "}"}], 
         "]"}]}], ";", "\[IndentingNewLine]", 
       RowBox[{"imgCtr2", "=", 
        RowBox[{"Round", "[", 
         RowBox[{"{", 
          RowBox[{
           RowBox[{
            RowBox[{"imgDim", "[", 
             RowBox[{"[", "1", "]"}], "]"}], "/", "2"}], ",", 
           RowBox[{
            RowBox[{"imgDim", "[", 
             RowBox[{"[", "2", "]"}], "]"}], "-", "100"}]}], "}"}], "]"}]}], 
       ";", "\[IndentingNewLine]", 
       RowBox[{"fontScale", "=", 
        RowBox[{
         RowBox[{"Max", "[", 
          RowBox[{
           RowBox[{"ImageDimensions", "[", "highA", "]"}], ",", 
           RowBox[{"ImageDimensions", "[", "highTrans", "]"}]}], "]"}], "/", 
         "1200.0"}]}], ";", "\[IndentingNewLine]", 
       RowBox[{"step", "=", "0.03"}], ";", "\[IndentingNewLine]", 
       RowBox[{"range", "=", 
        RowBox[{"Flatten", "[", 
         RowBox[{"{", 
          RowBox[{
           RowBox[{"Range", "[", 
            RowBox[{"0", ",", "1", ",", "step"}], "]"}], ",", 
           RowBox[{"Range", "[", 
            RowBox[{"1", ",", "0", ",", 
             RowBox[{"-", "step"}]}], "]"}]}], "}"}], "]"}]}], ";", 
       "\[IndentingNewLine]", 
       RowBox[{"dispExample", "=", 
        RowBox[{"Show", "[", 
         RowBox[{
          RowBox[{"SetAlphaChannel", "[", 
           RowBox[{"highA", ",", 
            RowBox[{"1", "/", "2"}]}], "]"}], ",", 
          RowBox[{"Graphics", "[", 
           RowBox[{"{", 
            RowBox[{
             RowBox[{"Opacity", "[", 
              RowBox[{"1", "/", "2"}], "]"}], ",", 
             RowBox[{"Text", "[", 
              RowBox[{
               RowBox[{"Style", "[", 
                RowBox[{
                 RowBox[{"txtImg", "[", 
                  RowBox[{"[", "indBest", "]"}], "]"}], ",", "Gray"}], "]"}], 
               ",", "imgCtr1"}], "]"}]}], "}"}], "]"}], ",", 
          "\[IndentingNewLine]", 
          RowBox[{"SetAlphaChannel", "[", 
           RowBox[{"highTrans", ",", 
            RowBox[{"1", "/", "2"}]}], "]"}], ",", "\[IndentingNewLine]", 
          RowBox[{"Graphics", "[", 
           RowBox[{"{", 
            RowBox[{
             RowBox[{"Opacity", "[", 
              RowBox[{"1", "/", "2"}], "]"}], ",", 
             RowBox[{"Text", "[", 
              RowBox[{
               RowBox[{"Style", "[", 
                RowBox[{"shortName", ",", "Gray"}], "]"}], ",", "imgCtr2"}], 
              "]"}]}], "}"}], "]"}], ",", "\[IndentingNewLine]", 
          RowBox[{"ImageSize", "\[Rule]", "800"}], ",", 
          RowBox[{"Background", "\[Rule]", "Gray"}]}], "]"}]}], ";", 
       "\[IndentingNewLine]", 
       RowBox[{"If", "[", 
        RowBox[{
         RowBox[{
          RowBox[{"Mean", "[", 
           RowBox[{"Mean", "[", 
            RowBox[{"Mean", "[", 
             RowBox[{"ImageData", "[", "dispExample", "]"}], "]"}], "]"}], 
           "]"}], "<=", "0.5"}], ",", 
         RowBox[{
          RowBox[{"textColor", "=", "White"}], ";", 
          RowBox[{"backColor", "=", "Black"}], ";"}], ",", 
         RowBox[{
          RowBox[{"textColor", "=", "Black"}], ";", 
          RowBox[{"backColor", "=", "White"}], ";"}]}], "]"}], ";", 
       "\[IndentingNewLine]", 
       RowBox[{"If", "[", 
        RowBox[{
         RowBox[{"siz", "\[Equal]", "1"}], ",", 
         RowBox[{"fontScale", "=", 
          RowBox[{"14", " ", 
           RowBox[{
            RowBox[{
             RowBox[{"ImageDimensions", "[", "dispExample", "]"}], "[", 
             RowBox[{"[", "2", "]"}], "]"}], "/", "1200.0"}]}]}], ",", " ", 
         RowBox[{"fontScale", "=", 
          RowBox[{"25", " ", 
           RowBox[{
            RowBox[{
             RowBox[{"ImageDimensions", "[", "dispExample", "]"}], "[", 
             RowBox[{"[", "2", "]"}], "]"}], "/", "1200.0"}]}]}]}], "]"}], 
       ";", "\[IndentingNewLine]", 
       RowBox[{"If", "[", 
        RowBox[{
         RowBox[{"siz", "\[Equal]", "1"}], ",", 
         RowBox[{"imSiz", "=", "400"}], ",", 
         RowBox[{"imSiz", "=", "800"}]}], "]"}], ";", "\[IndentingNewLine]", 
       RowBox[{"frames", "=", 
        RowBox[{"Table", "[", 
         RowBox[{
          RowBox[{"Show", "[", 
           RowBox[{
            RowBox[{"SetAlphaChannel", "[", 
             RowBox[{"highA", ",", "s"}], "]"}], ",", 
            RowBox[{"Graphics", "[", 
             RowBox[{"{", 
              RowBox[{
               RowBox[{"Opacity", "[", "s", "]"}], ",", 
               RowBox[{"Text", "[", 
                RowBox[{
                 RowBox[{"Style", "[", 
                  RowBox[{
                   RowBox[{"txtImg", "[", 
                    RowBox[{"[", "indBest", "]"}], "]"}], ",", "textColor", 
                   ",", 
                   RowBox[{"FontSize", "\[Rule]", "fontScale"}]}], "]"}], ",",
                  "imgCtr1"}], "]"}]}], "}"}], "]"}], ",", 
            "\[IndentingNewLine]", 
            RowBox[{"SetAlphaChannel", "[", 
             RowBox[{"highTrans", ",", 
              RowBox[{"1", "-", "s"}]}], "]"}], ",", "\[IndentingNewLine]", 
            RowBox[{"Graphics", "[", 
             RowBox[{"{", 
              RowBox[{
               RowBox[{"Opacity", "[", 
                RowBox[{"1", "-", "s"}], "]"}], ",", 
               RowBox[{"Text", "[", 
                RowBox[{
                 RowBox[{"Style", "[", 
                  RowBox[{"shortName", ",", "textColor", ",", 
                   RowBox[{"FontSize", "\[Rule]", "fontScale"}]}], "]"}], ",",
                  "imgCtr2"}], "]"}]}], "}"}], "]"}], ",", 
            "\[IndentingNewLine]", 
            RowBox[{"ImageSize", "\[Rule]", "imSiz"}], ",", 
            RowBox[{"Background", "\[Rule]", "backColor"}]}], "]"}], ",", 
          RowBox[{"{", 
           RowBox[{"s", ",", "range"}], "}"}]}], "]"}]}], ";", 
       "\[IndentingNewLine]", 
       RowBox[{"duration", "=", 
        RowBox[{"1", "/", "5"}]}], ";", "\[IndentingNewLine]", 
       RowBox[{"Which", "[", 
        RowBox[{
         RowBox[{"dots", "\[Equal]", "1"}], ",", 
         RowBox[{"dotMess", "=", "\"\<s\>\""}], ",", 
         RowBox[{"dots", "\[Equal]", "0"}], ",", 
         RowBox[{"dotMess", "=", "\"\<h\>\""}]}], "]"}], ";", 
       "\[IndentingNewLine]", 
       RowBox[{"Which", "[", 
        RowBox[{
         RowBox[{"siz", "\[Equal]", "1"}], ",", 
         RowBox[{"sizMess", "=", "\"\<s\>\""}], ",", 
         RowBox[{"siz", "\[Equal]", "0"}], ",", 
         RowBox[{"sizMess", "=", "\"\<l\>\""}]}], "]"}], ";", 
       "\[IndentingNewLine]", 
       RowBox[{"outFile", "=", 
        RowBox[{"FileNameJoin", "[", 
         RowBox[{"{", 
          RowBox[{
           RowBox[{"NotebookDirectory", "[", "]"}], ",", 
           RowBox[{"StringJoin", "[", 
            RowBox[{"{", 
             RowBox[{"\"\<animation\>\"", ",", 
              RowBox[{"txtImg", "[", 
               RowBox[{"[", "indBest", "]"}], "]"}], ",", "\"\<-\>\"", ",", 
              "shortName", ",", "\"\<(\>\"", ",", "dotMess", ",", "sizMess", 
              ",", "\"\<).gif\>\""}], "}"}], "]"}]}], "}"}], "]"}]}], ";", 
       "\[IndentingNewLine]", 
       RowBox[{"expMess", "=", 
        RowBox[{"Export", "[", 
         RowBox[{"outFile", ",", "frames", ",", 
          RowBox[{"\"\<DisplayDurations\>\"", "\[Rule]", "duration"}], ",", 
          RowBox[{
          "\"\<AnimationRepetitions\>\"", "\[Rule]", "\[Infinity]"}]}], 
         "]"}]}], ";", "\[IndentingNewLine]", 
       RowBox[{"dispMake", "=", 
        RowBox[{"\"\<Overlay video saved to\\n\>\"", "<>", "expMess"}]}], ";",
        "\[IndentingNewLine]", 
       RowBox[{"makeReal", "=", "False"}], ";"}]}], "\[IndentingNewLine]", 
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
            RowBox[{"calculateAlignmentError", "[", 
             RowBox[{"i", ",", "1"}], "]"}]}], ";", "\[IndentingNewLine]", 
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
      RowBox[{"Column", "[", 
       RowBox[{"{", 
        RowBox[{
         RowBox[{"Control", "[", 
          RowBox[{"{", 
           RowBox[{
            RowBox[{"{", 
             RowBox[{"dots", ",", "1", ",", "\"\<\>\""}], "}"}], ",", 
            RowBox[{"{", 
             RowBox[{
              RowBox[{"1", "\[Rule]", "\"\<show dots\>\""}], ",", 
              RowBox[{"0", "\[Rule]", "\"\<hide dots\>\""}]}], "}"}]}], "}"}],
           "]"}], ",", "\[IndentingNewLine]", 
         RowBox[{"Control", "[", 
          RowBox[{"{", 
           RowBox[{
            RowBox[{"{", 
             RowBox[{"siz", ",", "1", ",", "\"\<\>\""}], "}"}], ",", 
            RowBox[{"{", 
             RowBox[{
              RowBox[{"1", "\[Rule]", "\"\<  smaller  \>\""}], ",", 
              RowBox[{"0", "\[Rule]", "\"\<  larger  \>\""}]}], "}"}]}], 
           "}"}], "]"}]}], "}"}], "]"}], ",", "\[IndentingNewLine]", 
      RowBox[{"Control", "[", 
       RowBox[{"{", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{"make", ",", "False", ",", "\"\<\>\""}], "}"}], ",", 
         RowBox[{
          RowBox[{"Button", "[", 
           RowBox[{
            RowBox[{"Text", "[", "\"\<Make\\nOverlay\>\"", "]"}], ",", 
            RowBox[{"make", "=", "True"}]}], "]"}], "&"}]}], "}"}], "]"}], 
      ",", 
      RowBox[{"Spacer", "[", "5", "]"}], ",", "\[IndentingNewLine]", 
      RowBox[{"Column", "[", 
       RowBox[{
        RowBox[{"{", 
         RowBox[{
          RowBox[{"Button", "[", 
           RowBox[{
            RowBox[{"Text", "[", "\"\<Play\>\"", "]"}], ",", 
            RowBox[{"play", "=", "True"}]}], "]"}], ",", 
          RowBox[{"Spacer", "[", "5", "]"}], ",", 
          RowBox[{"Button", "[", 
           RowBox[{
            RowBox[{"Text", "[", "\"\<Stop\>\"", "]"}], ",", 
            RowBox[{"stop", "=", "True"}]}], "]"}]}], "}"}], ",", 
        RowBox[{"Spacings", "\[Rule]", 
         RowBox[{"{", 
          RowBox[{"2", ",", 
           RowBox[{"-", "0.7"}]}], "}"}]}]}], "]"}], ",", 
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
           RowBox[{"Import", "[", 
            RowBox[{"imageNames", "[", 
             RowBox[{"[", "fileIndA", "]"}], "]"}], "]"}]}], ";", 
          "\[IndentingNewLine]", 
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
           RowBox[{"Import", "[", "thisFileJPG", "]"}]}], ";", 
          "\[IndentingNewLine]", 
          RowBox[{"resizeFactor", "=", 
           RowBox[{
            RowBox[{"Mean", "[", 
             RowBox[{
              RowBox[{"ImageDimensions", "[", "imgAraw", "]"}], "/", 
              RowBox[{"ImageDimensions", "[", "imgBraw", "]"}]}], "]"}], "//",
             "N"}]}], ";", "\[IndentingNewLine]", 
          RowBox[{"If", "[", 
           RowBox[{
            RowBox[{"siz", "\[Equal]", "1"}], ",", 
            RowBox[{
             RowBox[{"imgA", "=", "imgAraw"}], ";", 
             RowBox[{"imgB", "=", 
              RowBox[{"ImageResize", "[", 
               RowBox[{"imgBraw", ",", 
                RowBox[{"Scaled", "[", "resizeFactor", "]"}]}], "]"}]}], ";", 
             
             RowBox[{"expA", "=", "expAraw"}], ";", 
             RowBox[{"expB", "=", 
              RowBox[{"resizeFactor", " ", "expBraw"}]}], ";"}], ",", 
            RowBox[{
             RowBox[{"imgB", "=", "imgBraw"}], ";", 
             RowBox[{"imgA", "=", 
              RowBox[{"ImageResize", "[", 
               RowBox[{"imgAraw", ",", 
                RowBox[{"Scaled", "[", 
                 RowBox[{"1.0", "/", "resizeFactor"}], "]"}]}], "]"}]}], ";", 
             
             RowBox[{"expB", "=", "expBraw"}], ";", 
             RowBox[{"expA", "=", 
              RowBox[{"expAraw", "/", "resizeFactor"}]}], ";"}]}], "]"}], ";", 
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
   DynamicModuleBox[{$CellContext`dots$$ = 1, $CellContext`make$$ = 
    False, $CellContext`newDir$$ = False, $CellContext`newFile$$ = 
    False, $CellContext`siz$$ = 1, Typeset`show$$ = True, 
    Typeset`bookmarkList$$ = {}, Typeset`bookmarkMode$$ = "Menu", 
    Typeset`animator$$, Typeset`animvar$$ = 1, Typeset`name$$ = 
    "\"untitled\"", Typeset`specs$$ = {{{
       Hold[$CellContext`newDir$$], False, ""}, 
      Dynamic[Button[
        Text["Select\nLibrary\nFolder"], $CellContext`newDir$$ = True]& ]}, {{
      
       Hold[$CellContext`newFile$$], False, ""}, 
      Dynamic[Button[
        Text["Select\nMarked\nWatermark"], $CellContext`newFile$$ = 
        True]& ]}, {{
       Hold[$CellContext`dots$$], 1, ""}, {
      1 -> "show dots", 0 -> "hide dots"}}, {{
       Hold[$CellContext`siz$$], 1, ""}, {
      1 -> "  smaller  ", 0 -> "  larger  "}}, {{
       Hold[$CellContext`make$$], False, ""}, 
      Dynamic[Button[
        Text["Make\nOverlay"], $CellContext`make$$ = True]& ]}, {
      Hold[
       Row[{
         Manipulate`Place[1], 
         Manipulate`Place[2], 
         Spacer[30], 
         Column[{
           Manipulate`Place[3], 
           Manipulate`Place[4]}], 
         Manipulate`Place[5], 
         Spacer[5], 
         Column[{
           Button[
            Text["Play"], $CellContext`play = True], 
           Spacer[5], 
           Button[
            Text["Stop"], $CellContext`stop = True]}, Spacings -> {2, -0.7}], 
         
         Spacer[30], 
         Button[
          Text["Snapshot"], $CellContext`snap = True]}]], 
      Manipulate`Dump`ThisIsNotAControl}}, Typeset`size$$ = {487., {3., 10.}},
     Typeset`update$$ = 0, Typeset`initDone$$, Typeset`skipInitDone$$ = 
    False}, 
    DynamicBox[Manipulate`ManipulateBoxes[
     2, StandardForm, 
      "Variables" :> {$CellContext`dots$$ = 1, $CellContext`make$$ = 
        False, $CellContext`newDir$$ = False, $CellContext`newFile$$ = 
        False, $CellContext`siz$$ = 1}, "ControllerVariables" :> {}, 
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
         Null]; If[$CellContext`make$$ == True, 
         If[$CellContext`done == 
           True, $CellContext`dispMake = 
            "Rendering overlay..."; $CellContext`makeReal = True; 
           Null]; $CellContext`make$$ = False]; 
       If[$CellContext`makeReal == True, 
         If[Min[$CellContext`vals] == 0, $CellContext`indexAdd = 
           1, $CellContext`indexAdd = 0]; $CellContext`indBest = Part[
            Ordering[$CellContext`vals], 
            1 + $CellContext`indexAdd]; \
$CellContext`calculateAlignmentError[$CellContext`indBest, 
           1]; $CellContext`dispMake = 
          StringExpression[
           "Rendering overlay between ", $CellContext`shortName, " and ", 
            
            Part[$CellContext`txtImg, $CellContext`indBest]]; \
$CellContext`coordBBA = 
          CoordinateBoundingBox[$CellContext`selectedA]; \
$CellContext`coordBBB = 
          CoordinateBoundingBox[$CellContext`selectedB]; $CellContext`expLow = {
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
             Part[$CellContext`coordBBBhigh, 2]]}; $CellContext`dataRangeA = {
           Map[Min, 
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
            "Similarity"]; $CellContext`imgTrans = 
          ImageTransformation[$CellContext`trimB, $CellContext`trans, 
            DataRange -> Full]; {$CellContext`highA = Image[
             HighlightImage[$CellContext`trimA, {
               Opacity[$CellContext`dots$$], 
               Red, $CellContext`selectedTrimA}]], $CellContext`highTrans = 
           Image[
             HighlightImage[$CellContext`imgTrans, {
               Opacity[$CellContext`dots$$], Red, 
               Map[
                
                InverseFunction[$CellContext`trans], \
$CellContext`selectedTrimB]}]]}; $CellContext`imgDim = 
          ImageDimensions[$CellContext`trimA]; $CellContext`imgCtr1 = 
          Round[{Part[$CellContext`imgDim, 1]/2, 60}]; $CellContext`imgCtr2 = 
          Round[{Part[$CellContext`imgDim, 1]/2, Part[$CellContext`imgDim, 2] - 
             100}]; $CellContext`fontScale = Max[
             ImageDimensions[$CellContext`highA], 
             ImageDimensions[$CellContext`highTrans]]/
           1200.; $CellContext`step = 0.03; $CellContext`range = Flatten[{
             Range[0, 1, $CellContext`step], 
             Range[1, 0, -$CellContext`step]}]; $CellContext`dispExample = 
          Show[
            SetAlphaChannel[$CellContext`highA, 1/2], 
            Graphics[{
              Opacity[1/2], 
              Text[
               Style[
                Part[$CellContext`txtImg, $CellContext`indBest], 
                Gray], $CellContext`imgCtr1]}], 
            SetAlphaChannel[$CellContext`highTrans, 1/2], 
            Graphics[{
              Opacity[1/2], 
              Text[
               Style[$CellContext`shortName, Gray], $CellContext`imgCtr2]}], 
            ImageSize -> 800, Background -> Gray]; If[Mean[
             Mean[
              Mean[
               ImageData[$CellContext`dispExample]]]] <= 
           0.5, $CellContext`textColor = White; $CellContext`backColor = 
            Black; Null, $CellContext`textColor = 
            Black; $CellContext`backColor = White; Null]; 
         If[$CellContext`siz$$ == 1, $CellContext`fontScale = 14 (Part[
               ImageDimensions[$CellContext`dispExample], 2]/
             1200.), $CellContext`fontScale = 25 (Part[
               ImageDimensions[$CellContext`dispExample], 2]/1200.)]; 
         If[$CellContext`siz$$ == 1, $CellContext`imSiz = 
           400, $CellContext`imSiz = 800]; $CellContext`frames = Table[
            Show[
             SetAlphaChannel[$CellContext`highA, $CellContext`s], 
             Graphics[{
               Opacity[$CellContext`s], 
               Text[
                Style[
                 
                 Part[$CellContext`txtImg, $CellContext`indBest], \
$CellContext`textColor, 
                 FontSize -> $CellContext`fontScale], $CellContext`imgCtr1]}], 
             SetAlphaChannel[$CellContext`highTrans, 1 - $CellContext`s], 
             Graphics[{
               Opacity[1 - $CellContext`s], 
               Text[
                
                Style[$CellContext`shortName, $CellContext`textColor, 
                 FontSize -> $CellContext`fontScale], $CellContext`imgCtr2]}],
              ImageSize -> $CellContext`imSiz, 
             Background -> $CellContext`backColor], {$CellContext`s, \
$CellContext`range}]; $CellContext`duration = 1/5; 
         Which[$CellContext`dots$$ == 1, $CellContext`dotMess = 
           "s", $CellContext`dots$$ == 0, $CellContext`dotMess = "h"]; 
         Which[$CellContext`siz$$ == 1, $CellContext`sizMess = 
           "s", $CellContext`siz$$ == 0, $CellContext`sizMess = 
           "l"]; $CellContext`outFile = FileNameJoin[{
             NotebookDirectory[], 
             StringJoin[{"animation", 
               Part[$CellContext`txtImg, $CellContext`indBest], 
               "-", $CellContext`shortName, 
               "(", $CellContext`dotMess, $CellContext`sizMess, 
               ").gif"}]}]; $CellContext`expMess = 
          Export[$CellContext`outFile, $CellContext`frames, 
            "DisplayDurations" -> $CellContext`duration, 
            "AnimationRepetitions" -> Infinity]; $CellContext`dispMake = 
          StringJoin[
           "Overlay video saved to\n", $CellContext`expMess]; \
$CellContext`makeReal = False; Null]; Which[Sign[
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
$CellContext`calculateAlignmentError[$CellContext`i, 1]; 
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
           True]& ], ControlPlacement -> 2}, {{$CellContext`dots$$, 1, ""}, {
         1 -> "show dots", 0 -> "hide dots"}, ControlPlacement -> 
         3}, {{$CellContext`siz$$, 1, ""}, {
         1 -> "  smaller  ", 0 -> "  larger  "}, ControlPlacement -> 
         4}, {{$CellContext`make$$, False, ""}, 
         Dynamic[Button[
           Text["Make\nOverlay"], $CellContext`make$$ = True]& ], 
         ControlPlacement -> 5}, 
        Row[{
          Manipulate`Place[1], 
          Manipulate`Place[2], 
          Spacer[30], 
          Column[{
            Manipulate`Place[3], 
            Manipulate`Place[4]}], 
          Manipulate`Place[5], 
          Spacer[5], 
          Column[{
            Button[
             Text["Play"], $CellContext`play = True], 
            Spacer[5], 
            Button[
             Text["Stop"], $CellContext`stop = True]}, Spacings -> {2, -0.7}], 
          Spacer[30], 
          Button[
           Text["Snapshot"], $CellContext`snap = True]}]}, 
      "Options" :> {LocalizeVariables -> True}, "DefaultOptions" :> {}],
     ImageSizeCache->{597., {72., 78.}},
     SingleEvaluation->True],
    Deinitialization:>None,
    DynamicModuleValues:>{},
    Initialization:>({{$CellContext`shortName = "", $CellContext`dir = 
         "/Users/sethares/BillsMathematica/watermarks/watermarkLibrarySearch/\
", $CellContext`snapCount = 1, $CellContext`done = 
         False, $CellContext`dispMake = "", $CellContext`thisDir = 
         "/Users/sethares/BillsMathematica/watermarks/watermarkLibrarySearch/\
", $CellContext`txtFiles = "select", $CellContext`txtImg = 
         "", $CellContext`alignData = {}, $CellContext`thisFile = {}, \
$CellContext`calculateAlignmentError[
           Pattern[$CellContext`thisImgA$, 
            Blank[]], 
           Pattern[$CellContext`thisImgB$, 
            Blank[]]] := Module[{}, $CellContext`fileIndA = First[
              First[
               Position[
                StringPosition[$CellContext`txtFiles, 
                 Part[$CellContext`txtImg, $CellContext`thisImgA$]], List, {
                3}]]]; $CellContext`textA = Import[
              
              Part[$CellContext`txtFiles, $CellContext`fileIndA]]; \
$CellContext`expAraw = ToExpression[
              Part[
               StringSplit[$CellContext`textA, "\n"], 
               1]]; $CellContext`fileIndA = First[
              First[
               Position[
                StringPosition[$CellContext`imageNames, 
                 Part[$CellContext`txtImg, $CellContext`thisImgA$]], List, {
                3}]]]; $CellContext`imgAraw = Import[
              
              Part[$CellContext`imageNames, $CellContext`fileIndA]]; \
$CellContext`textB = Import[$CellContext`thisFileTXT]; $CellContext`expBraw = 
            ToExpression[
              Part[
               StringSplit[$CellContext`textB, "\n"], 
               1]]; $CellContext`imgBraw = 
            Import[$CellContext`thisFileJPG]; $CellContext`resizeFactor = N[
              Mean[
              ImageDimensions[$CellContext`imgAraw]/
               ImageDimensions[$CellContext`imgBraw]]]; 
           If[FE`siz$$1258 == 
             1, $CellContext`imgA = $CellContext`imgAraw; $CellContext`imgB = 
              ImageResize[$CellContext`imgBraw, 
                
                Scaled[$CellContext`resizeFactor]]; $CellContext`expA = \
$CellContext`expAraw; $CellContext`expB = $CellContext`resizeFactor \
$CellContext`expBraw; 
             Null, $CellContext`imgB = $CellContext`imgBraw; \
$CellContext`imgA = ImageResize[$CellContext`imgAraw, 
                Scaled[
                1./$CellContext`resizeFactor]]; $CellContext`expB = \
$CellContext`expBraw; $CellContext`expA = \
$CellContext`expAraw/$CellContext`resizeFactor; Null]; 
           If[Length[$CellContext`expA] == 
             Length[$CellContext`expB], $CellContext`ind = Flatten[
                Position[
                Map[Total, $CellContext`expA] Map[Total, $CellContext`expB], 
                 PatternTest[
                  Blank[], 0.01 < #& ]]]; $CellContext`selectedA = 
              Part[$CellContext`expA, $CellContext`ind]; \
$CellContext`selectedB = 
              Part[$CellContext`expB, $CellContext`ind]; \
$CellContext`coordBBA = 
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
                 
                 Part[$CellContext`coordBBB, 1, 
                  2]]}; $CellContext`coordBBAhigh = 
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
                  Transpose[$CellContext`selectedA]] - $CellContext`expLow + 
                1, Map[Max, 
                  Transpose[$CellContext`selectedA]] + $CellContext`expHigh - 
                1}; $CellContext`dataRangeB = {Map[Min, 
                  Transpose[$CellContext`selectedB]] - $CellContext`expLow + 
                1, Map[Max, 
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
                 Length[$CellContext`selectedA]} - 1.*^-8, {0, Infinity}]]], 
         Attributes[$CellContext`thisImgA$] = {Temporary}, 
         Attributes[$CellContext`thisImgB$] = {Temporary}, FE`siz$$1258 = 
         1, $CellContext`outFile = "select", $CellContext`message1 = 
         "Select a marked watermark and a library folder to compare with", \
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
              FileBaseName[$CellContext`dir]]]]}; ($CellContext`dir = 
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
           Pattern[$CellContext`thisImgA$, 
            Blank[]], 
           Pattern[$CellContext`thisImgB$, 
            Blank[]]] := Module[{}, $CellContext`fileIndA = First[
              First[
               Position[
                StringPosition[$CellContext`txtFiles, 
                 Part[$CellContext`txtImg, $CellContext`thisImgA$]], List, {
                3}]]]; $CellContext`textA = Import[
              
              Part[$CellContext`txtFiles, $CellContext`fileIndA]]; \
$CellContext`expAraw = ToExpression[
              Part[
               StringSplit[$CellContext`textA, "\n"], 
               1]]; $CellContext`fileIndA = First[
              First[
               Position[
                StringPosition[$CellContext`imageNames, 
                 Part[$CellContext`txtImg, $CellContext`thisImgA$]], List, {
                3}]]]; $CellContext`imgAraw = Import[
              
              Part[$CellContext`imageNames, $CellContext`fileIndA]]; \
$CellContext`textB = Import[$CellContext`thisFileTXT]; $CellContext`expBraw = 
            ToExpression[
              Part[
               StringSplit[$CellContext`textB, "\n"], 
               1]]; $CellContext`imgBraw = 
            Import[$CellContext`thisFileJPG]; $CellContext`resizeFactor = N[
              Mean[
              ImageDimensions[$CellContext`imgAraw]/
               ImageDimensions[$CellContext`imgBraw]]]; 
           If[$CellContext`siz$$ == 
             1, $CellContext`imgA = $CellContext`imgAraw; $CellContext`imgB = 
              ImageResize[$CellContext`imgBraw, 
                
                Scaled[$CellContext`resizeFactor]]; $CellContext`expA = \
$CellContext`expAraw; $CellContext`expB = $CellContext`resizeFactor \
$CellContext`expBraw; 
             Null, $CellContext`imgB = $CellContext`imgBraw; \
$CellContext`imgA = ImageResize[$CellContext`imgAraw, 
                Scaled[
                1./$CellContext`resizeFactor]]; $CellContext`expB = \
$CellContext`expBraw; $CellContext`expA = \
$CellContext`expAraw/$CellContext`resizeFactor; Null]; 
           If[Length[$CellContext`expA] == 
             Length[$CellContext`expB], $CellContext`ind = Flatten[
                Position[
                Map[Total, $CellContext`expA] Map[Total, $CellContext`expB], 
                 PatternTest[
                  Blank[], 0.01 < #& ]]]; $CellContext`selectedA = 
              Part[$CellContext`expA, $CellContext`ind]; \
$CellContext`selectedB = 
              Part[$CellContext`expB, $CellContext`ind]; \
$CellContext`coordBBA = 
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
                 
                 Part[$CellContext`coordBBB, 1, 
                  2]]}; $CellContext`coordBBAhigh = 
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
                  Transpose[$CellContext`selectedA]] - $CellContext`expLow + 
                1, Map[Max, 
                  Transpose[$CellContext`selectedA]] + $CellContext`expHigh - 
                1}; $CellContext`dataRangeB = {Map[Min, 
                  Transpose[$CellContext`selectedB]] - $CellContext`expLow + 
                1, Map[Max, 
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
                 Length[$CellContext`selectedA]} - 1.*^-8, {0, Infinity}]]])}; 
     Typeset`initDone$$ = True),
    SynchronousInitialization->True,
    UndoTrackedVariables:>{Typeset`show$$, Typeset`bookmarkMode$$},
    UnsavedVariables:>{Typeset`initDone$$},
    UntrackedVariables:>{Typeset`size$$}], "Manipulate",
   Deployed->True,
   StripOnInput->False],
  Manipulate`InterpretManipulate[1]]], "Output",ExpressionUUID->"111a7314-\
9456-437e-9631-fd9c048b98e4"]
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
ExpressionUUID->"4cdb021a-ffd2-4a39-8256-8dc3e74f741d"
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
Cell[2246, 52, 42407, 1024, 3034, "Input",ExpressionUUID->"5bda3336-02f8-45bd-beab-5a98e15fc19f"],
Cell[44656, 1078, 29691, 607, 171, "Output",ExpressionUUID->"111a7314-9456-437e-9631-fd9c048b98e4"]
}, {2}]]
}, Open  ]]
}
]
*)

(* End of internal cache information *)

(* NotebookSignature HU5AXnPtvFYH@X4O#XCK89hN *)
