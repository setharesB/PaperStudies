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
NotebookDataLength[     52688,       1232]
NotebookOptionsPosition[     52811,       1220]
NotebookOutlinePosition[     53289,       1240]
CellTagsIndexPosition[     53246,       1237]
WindowFrame->Normal*)

(* Beginning of Notebook Content *)
Notebook[{

Cell[CellGroupData[{
Cell["Animate Two Watermark Images", "Section",ExpressionUUID->"dc53fd55-0f5b-4946-b9cc-f5d37d9663aa"],

Cell["\<\
Much of this project has been made possible with support from the Getty \
Foundation through its grants \[OpenCurlyDoubleQuote]Applying Digital Image \
Processing Algorithms to the Study of Prints and Drawings\
\[CloseCurlyDoubleQuote] and \[OpenCurlyDoubleQuote]Computational \
Characterization of Historic Papers via Watermarks, Chain Lines, and Laid \
Lines.\[CloseCurlyDoubleQuote] We also thank Fred Schroeder (Gates \
Collection) \[Dash] who shared and nurtured our investigations . \
\>", "Text",ExpressionUUID->"7bc6c8c9-7726-447d-b84d-83b2a9b69d21"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"Manipulate", "[", "\[IndentingNewLine]", 
  RowBox[{
   RowBox[{
    RowBox[{"If", "[", 
     RowBox[{
      RowBox[{"newDir", "\[Equal]", "True"}], ",", 
      RowBox[{
       RowBox[{"thisChoice", "=", 
        RowBox[{"SystemDialogInput", "[", 
         RowBox[{"\"\<Directory\>\"", ",", 
          RowBox[{"NotebookDirectory", "[", "]"}], ",", 
          RowBox[{
          "WindowTitle", "\[Rule]", 
           "\"\<Please locate a folder of watermark Points\>\""}]}], "]"}]}], 
       ";", "\[IndentingNewLine]", 
       RowBox[{"If", "[", 
        RowBox[{
         RowBox[{"UnsameQ", "[", 
          RowBox[{"thisChoice", ",", "$Canceled"}], "]"}], ",", 
         "\[IndentingNewLine]", 
         RowBox[{
          RowBox[{"thisDir", "=", "thisChoice"}], ";", 
          RowBox[{"dir", "=", "thisDir"}], ";", "\[IndentingNewLine]", 
          RowBox[{"txtFilesTest", "=", 
           RowBox[{"FileNames", "[", 
            RowBox[{"\"\<*.txt\>\"", ",", "dir"}], "]"}]}], ";", 
          "\[IndentingNewLine]", 
          RowBox[{"If", "[", 
           RowBox[{
            RowBox[{
             RowBox[{"Length", "[", "txtFilesTest", "]"}], ">", "0"}], ",", 
            "\[IndentingNewLine]", 
            RowBox[{
             RowBox[{"txts", "=", 
              RowBox[{
               RowBox[{
                RowBox[{"StringDrop", "[", 
                 RowBox[{"#", ",", 
                  RowBox[{"{", 
                   RowBox[{
                    RowBox[{"-", "29"}], ",", 
                    RowBox[{"-", "24"}]}], "}"}]}], "]"}], "&"}], "/@", 
               "txtFilesTest"}]}], ";", "\[IndentingNewLine]", 
             RowBox[{"correspondingJPGs", "=", 
              RowBox[{
               RowBox[{
                RowBox[{"StringInsert", "[", 
                 RowBox[{"#", ",", "\"\<SnapWMImg\>\"", ",", 
                  RowBox[{"-", "24"}]}], "]"}], "&"}], "/@", "txts"}]}], ";", 
             "\[IndentingNewLine]", 
             RowBox[{"imageNamesCalc", "=", 
              RowBox[{"Table", "[", 
               RowBox[{
                RowBox[{
                 RowBox[{
                  RowBox[{"(", 
                   RowBox[{
                    RowBox[{
                    RowBox[{"StringDrop", "[", 
                    RowBox[{"#", ",", 
                    RowBox[{"-", "4"}]}], "]"}], "&"}], "/@", 
                    "correspondingJPGs"}], ")"}], "[", 
                  RowBox[{"[", "i", "]"}], "]"}], "<>", "\"\<.jpg\>\""}], ",", 
                RowBox[{"{", 
                 RowBox[{"i", ",", 
                  RowBox[{"Length", "[", "correspondingJPGs", "]"}]}], 
                 "}"}]}], "]"}]}], ";", "\[IndentingNewLine]", 
             RowBox[{"imageNames", "=", 
              RowBox[{"Table", "[", 
               RowBox[{
                RowBox[{"If", "[", 
                 RowBox[{
                  RowBox[{
                   RowBox[{"FileExistsQ", "[", 
                    RowBox[{"imageNamesCalc", "[", 
                    RowBox[{"[", "i", "]"}], "]"}], "]"}], "==", "True"}], 
                  ",", 
                  RowBox[{"imageNamesCalc", "[", 
                   RowBox[{"[", "i", "]"}], "]"}], ",", "Nothing"}], "]"}], 
                ",", 
                RowBox[{"{", 
                 RowBox[{"i", ",", 
                  RowBox[{"Length", "[", "imageNamesCalc", "]"}]}], "}"}]}], 
               "]"}]}], ";", "\[IndentingNewLine]", 
             RowBox[{"txtFiles", "=", 
              RowBox[{"Table", "[", 
               RowBox[{
                RowBox[{"If", "[", 
                 RowBox[{
                  RowBox[{
                   RowBox[{"FileExistsQ", "[", 
                    RowBox[{"imageNamesCalc", "[", 
                    RowBox[{"[", "i", "]"}], "]"}], "]"}], "==", "True"}], 
                  ",", 
                  RowBox[{"txtFilesTest", "[", 
                   RowBox[{"[", "i", "]"}], "]"}], ",", "Nothing"}], "]"}], 
                ",", 
                RowBox[{"{", 
                 RowBox[{"i", ",", 
                  RowBox[{"Length", "[", "imageNamesCalc", "]"}]}], "}"}]}], 
               "]"}]}], ";", "\[IndentingNewLine]", 
             RowBox[{"imageNamesDisp", "=", 
              RowBox[{"FileBaseName", "/@", "imageNames"}]}], ";", 
             "\[IndentingNewLine]", 
             RowBox[{"waterName", "=", 
              RowBox[{
               RowBox[{
                RowBox[{"StringDrop", "[", 
                 RowBox[{"#", ",", 
                  RowBox[{"-", "28"}]}], "]"}], "&"}], "/@", 
               "imageNamesDisp"}]}], ";", "\[IndentingNewLine]", 
             RowBox[{"thisImgAOld", "=", 
              RowBox[{"thisImgBOld", "=", 
               RowBox[{"sizOld", "=", "0"}]}]}], ";", 
             RowBox[{"thisImgA", "=", "1"}], ";", 
             RowBox[{"If", "[", 
              RowBox[{
               RowBox[{
                RowBox[{"Length", "[", "imageNames", "]"}], ">", "1"}], ",", 
               RowBox[{"thisImgB", "=", "2"}], ",", 
               RowBox[{"thisImgB", "=", "1"}]}], "]"}], ";"}]}], "]"}], ";", 
          "\[IndentingNewLine]", 
          RowBox[{"newDir", "=", "False"}], ";", 
          RowBox[{"startup", "=", "False"}], ";"}]}], "]"}], ";"}]}], "]"}], 
    ";", "\[IndentingNewLine]", 
    RowBox[{"If", "[", 
     RowBox[{
      RowBox[{"(", 
       RowBox[{"thisImgA", "\[NotEqual]", "thisImgAOld"}], ")"}], ",", 
      "\[IndentingNewLine]", 
      RowBox[{
       RowBox[{"textA", "=", 
        RowBox[{"Import", "[", 
         RowBox[{"txtFiles", "[", 
          RowBox[{"[", "thisImgA", "]"}], "]"}], "]"}]}], ";", 
       "\[IndentingNewLine]", 
       RowBox[{"expAraw", "=", 
        RowBox[{"ToExpression", "[", 
         RowBox[{
          RowBox[{"StringSplit", "[", 
           RowBox[{"textA", ",", "\"\<\\n\>\""}], "]"}], "[", 
          RowBox[{"[", "1", "]"}], "]"}], "]"}]}], ";", "\[IndentingNewLine]", 
       RowBox[{"imgAraw", "=", 
        RowBox[{"Import", "[", 
         RowBox[{"imageNames", "[", 
          RowBox[{"[", "thisImgA", "]"}], "]"}], "]"}]}], ";", 
       "\[IndentingNewLine]", 
       RowBox[{"If", "[", 
        RowBox[{
         RowBox[{"ImageQ", "[", "imgBraw", "]"}], ",", 
         RowBox[{
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
            "\[IndentingNewLine]", 
            RowBox[{
             RowBox[{"imgB", "=", "imgBraw"}], ";", 
             RowBox[{"imgA", "=", 
              RowBox[{"ImageResize", "[", 
               RowBox[{"imgAraw", ",", 
                RowBox[{"Scaled", "[", 
                 RowBox[{"1.0", "/", "resizeFactor"}], "]"}]}], "]"}]}], ";", 
             
             RowBox[{"expB", "=", "expBraw"}], ";", 
             RowBox[{"expA", "=", 
              RowBox[{"expAraw", "/", "resizeFactor"}]}], ";"}]}], "]"}], 
          ";"}]}], "]"}], ";", "\[IndentingNewLine]", 
       RowBox[{"mostRecent", "=", "\"\<newFile\>\""}], ";", 
       RowBox[{"thisImgAOld", "=", "thisImgA"}]}]}], "]"}], ";", "\n", 
    RowBox[{"If", "[", 
     RowBox[{
      RowBox[{"(", 
       RowBox[{"thisImgB", "\[NotEqual]", "thisImgBOld"}], ")"}], ",", 
      "\[IndentingNewLine]", 
      RowBox[{
       RowBox[{"textB", "=", 
        RowBox[{"Import", "[", 
         RowBox[{"txtFiles", "[", 
          RowBox[{"[", "thisImgB", "]"}], "]"}], "]"}]}], ";", 
       "\[IndentingNewLine]", 
       RowBox[{"expBraw", "=", 
        RowBox[{"ToExpression", "[", 
         RowBox[{
          RowBox[{"StringSplit", "[", 
           RowBox[{"textB", ",", "\"\<\\n\>\""}], "]"}], "[", 
          RowBox[{"[", "1", "]"}], "]"}], "]"}]}], ";", "\[IndentingNewLine]", 
       RowBox[{"imgBraw", "=", 
        RowBox[{"Import", "[", 
         RowBox[{"imageNames", "[", 
          RowBox[{"[", "thisImgB", "]"}], "]"}], "]"}]}], ";", 
       "\[IndentingNewLine]", 
       RowBox[{"If", "[", 
        RowBox[{
         RowBox[{"ImageQ", "[", "imgAraw", "]"}], ",", 
         RowBox[{
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
            "\[IndentingNewLine]", 
            RowBox[{
             RowBox[{"imgB", "=", "imgBraw"}], ";", 
             RowBox[{"imgA", "=", 
              RowBox[{"ImageResize", "[", 
               RowBox[{"imgAraw", ",", 
                RowBox[{"Scaled", "[", 
                 RowBox[{"1.0", "/", "resizeFactor"}], "]"}]}], "]"}]}], ";", 
             
             RowBox[{"expB", "=", "expBraw"}], ";", 
             RowBox[{"expA", "=", 
              RowBox[{"expAraw", "/", "resizeFactor"}]}], ";"}]}], "]"}], 
          ";"}]}], "]"}], ";", "\[IndentingNewLine]", 
       RowBox[{"mostRecent", "=", "\"\<newFile\>\""}], ";", 
       RowBox[{"thisImgBOld", "=", "thisImgB"}]}]}], "]"}], ";", 
    "\[IndentingNewLine]", 
    RowBox[{"If", "[", 
     RowBox[{
      RowBox[{"mostRecent", "\[Equal]", "\"\<making\>\""}], ",", 
      "\[IndentingNewLine]", 
      RowBox[{
       RowBox[{"dispMake", "=", "\"\<Working on animation...\>\""}], ";", 
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
                 RowBox[{"waterName", "[", 
                  RowBox[{"[", "thisImgA", "]"}], "]"}], ",", "Gray"}], "]"}],
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
                RowBox[{
                 RowBox[{"waterName", "[", 
                  RowBox[{"[", "thisImgB", "]"}], "]"}], ",", "Gray"}], "]"}],
                ",", "imgCtr2"}], "]"}]}], "}"}], "]"}], ",", 
          "\[IndentingNewLine]", 
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
         RowBox[{"imSiz", "=", "800"}]}], "]"}], ";", 
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
                   RowBox[{"waterName", "[", 
                    RowBox[{"[", "thisImgA", "]"}], "]"}], ",", "textColor", 
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
                  RowBox[{
                   RowBox[{"waterName", "[", 
                    RowBox[{"[", "thisImgB", "]"}], "]"}], ",", "textColor", 
                   ",", 
                   RowBox[{"FontSize", "\[Rule]", "fontScale"}]}], "]"}], ",",
                  "imgCtr2"}], "]"}]}], "}"}], "]"}], ",", 
            "\[IndentingNewLine]", 
            RowBox[{"ImageSize", "\[Rule]", "imSiz"}], ",", 
            RowBox[{"Background", "\[Rule]", "backColor"}]}], "]"}], ",", 
          RowBox[{"{", 
           RowBox[{"s", ",", "range"}], "}"}]}], "]"}]}], ";", 
       "\[IndentingNewLine]", 
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
              RowBox[{"waterName", "[", 
               RowBox[{"[", "thisImgA", "]"}], "]"}], ",", "\"\<-\>\"", ",", 
              RowBox[{"waterName", "[", 
               RowBox[{"[", "thisImgB", "]"}], "]"}], ",", "\"\<(\>\"", ",", 
              "dotMess", ",", "sizMess", ",", "\"\<).gif\>\""}], "}"}], 
            "]"}]}], "}"}], "]"}]}], ";", "\[IndentingNewLine]", 
       RowBox[{"expMess", "=", 
        RowBox[{"Export", "[", 
         RowBox[{"outFile", ",", "frames", ",", 
          RowBox[{"\"\<DisplayDurations\>\"", "\[Rule]", 
           RowBox[{"1", "/", "5"}]}], ",", 
          RowBox[{
          "\"\<AnimationRepetitions\>\"", "\[Rule]", "\[Infinity]"}]}], 
         "]"}]}], ";", "\[IndentingNewLine]", 
       RowBox[{"dispMake", "=", 
        RowBox[{"\"\<Overlay video saved to \>\"", "<>", "expMess"}]}], ";", 
       "\[IndentingNewLine]", 
       RowBox[{"mostRecent", "=", "\"\<make\>\""}], ";", 
       "\[IndentingNewLine]", 
       RowBox[{"make", "=", "False"}], ";"}]}], "]"}], ";", 
    "\[IndentingNewLine]", 
    RowBox[{"If", "[", 
     RowBox[{
      RowBox[{
       RowBox[{
        RowBox[{"Length", "[", "expA", "]"}], "\[Equal]", 
        RowBox[{"Length", "[", "expB", "]"}]}], "&&", 
       RowBox[{
        RowBox[{"Length", "[", "expA", "]"}], ">", "0"}]}], ",", 
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
               RowBox[{"0.01", "<", "#"}], ")"}], "&"}], ")"}]}]}], "]"}], 
         "]"}]}], ";", "\[IndentingNewLine]", 
       RowBox[{"selectedA", "=", 
        RowBox[{"expA", "[", 
         RowBox[{"[", "ind", "]"}], "]"}]}], ";", "\[IndentingNewLine]", 
       RowBox[{"selectedB", "=", 
        RowBox[{"expB", "[", 
         RowBox[{"[", "ind", "]"}], "]"}]}], ";", "\[IndentingNewLine]", 
       RowBox[{"images", "=", 
        RowBox[{"{", 
         RowBox[{"imgA", ",", "imgB"}], "}"}]}], ";", "\[IndentingNewLine]", 
       RowBox[{"matches", "=", 
        RowBox[{"{", 
         RowBox[{"selectedA", ",", "selectedB"}], "}"}]}], ";", 
       "\[IndentingNewLine]", 
       RowBox[{"displayMatches", "=", 
        RowBox[{"{", 
         RowBox[{"expA", ",", "expB"}], "}"}]}], ";", "\[IndentingNewLine]", 
       RowBox[{"imAll", "=", 
        RowBox[{"Image", "/@", 
         RowBox[{"ImageData", "/@", "images"}]}]}], ";", "\n", 
       RowBox[{"dispFile", "=", 
        RowBox[{"GraphicsRow", "[", 
         RowBox[{"MapThread", "[", 
          RowBox[{
           RowBox[{
            RowBox[{"Show", "[", 
             RowBox[{"#1", ",", 
              RowBox[{"Graphics", "[", 
               RowBox[{"{", 
                RowBox[{"Yellow", ",", 
                 RowBox[{"MapIndexed", "[", 
                  RowBox[{
                   RowBox[{
                    RowBox[{"Inset", "[", 
                    RowBox[{
                    RowBox[{"#2", "[", 
                    RowBox[{"[", "1", "]"}], "]"}], ",", "#1"}], "]"}], "&"}],
                    " ", ",", "#2"}], "]"}]}], "}"}], "]"}]}], "]"}], "&"}], 
           ",", 
           RowBox[{"{", 
            RowBox[{"imAll", ",", "displayMatches"}], "}"}]}], "]"}], "]"}]}],
        ";"}], ",", 
      RowBox[{"If", "[", 
       RowBox[{
        RowBox[{"startup", "\[Equal]", "True"}], ",", 
        RowBox[{
         RowBox[{"dispFile", "=", "\"\<\>\""}], ";"}], ",", 
        RowBox[{"dispFile", "=", 
         RowBox[{"\"\<The number of points in \>\"", "<>", 
          RowBox[{"ToString", "[", 
           RowBox[{"waterName", "[", 
            RowBox[{"[", "thisImgA", "]"}], "]"}], "]"}], "<>", 
          "\"\< must equal the number of points in \>\"", "<>", 
          RowBox[{"ToString", "[", 
           RowBox[{"waterName", "[", 
            RowBox[{"[", "thisImgB", "]"}], "]"}], "]"}]}]}]}], "]"}]}], 
     "]"}], ";", "\[IndentingNewLine]", 
    RowBox[{"If", "[", 
     RowBox[{
      RowBox[{"make", "\[Equal]", "True"}], ",", 
      RowBox[{
       RowBox[{"mostRecent", "=", "\"\<making\>\""}], ";"}]}], "]"}], ";", 
    "\[IndentingNewLine]", 
    RowBox[{"Which", "[", 
     RowBox[{
      RowBox[{"mostRecent", "\[Equal]", "\"\<newFile\>\""}], ",", "dispFile", 
      ",", 
      RowBox[{"mostRecent", "\[Equal]", "\"\<make\>\""}], ",", "dispMake", 
      ",", 
      RowBox[{"mostRecent", "\[Equal]", "\"\<making\>\""}], ",", 
      "\"\<Now making animation...\>\"", ",", 
      RowBox[{"mostRecent", "==", "\"\<starting\>\""}], ",", 
      "\"\<Please select a directory of watermarks\>\""}], "]"}]}], ",", "\n", 
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
            RowBox[{"Text", "[", "\"\<Select\\nDirectory\>\"", "]"}], ",", 
            RowBox[{"newDir", "=", "True"}]}], "]"}], "&"}]}], "}"}], "]"}], 
      ",", 
      RowBox[{"Column", "[", 
       RowBox[{"{", 
        RowBox[{
         RowBox[{"Control", "[", 
          RowBox[{"{", 
           RowBox[{
            RowBox[{"{", 
             RowBox[{"thisImgA", ",", "1", ",", "\"\<\>\""}], "}"}], ",", 
            RowBox[{"Dynamic", "[", 
             RowBox[{"Thread", "[", 
              RowBox[{
               RowBox[{"Range", "[", 
                RowBox[{"Length", "@", "imageNames"}], "]"}], "\[Rule]", 
               "imageNamesDisp"}], "]"}], "]"}], ",", 
            RowBox[{"ControlType", "\[Rule]", "PopupMenu"}]}], "}"}], "]"}], 
         ",", 
         RowBox[{"Control", "[", 
          RowBox[{"{", 
           RowBox[{
            RowBox[{"{", 
             RowBox[{"thisImgB", ",", "1", ",", "\"\<\>\""}], "}"}], ",", 
            RowBox[{"Dynamic", "[", 
             RowBox[{"Thread", "[", 
              RowBox[{
               RowBox[{"Range", "[", 
                RowBox[{"Length", "@", "imageNames"}], "]"}], "\[Rule]", 
               "imageNamesDisp"}], "]"}], "]"}], ",", 
            RowBox[{"ControlType", "\[Rule]", "PopupMenu"}]}], "}"}], "]"}]}],
         "}"}], "]"}], ",", 
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
           "}"}], "]"}]}], "}"}], "]"}], ",", 
      RowBox[{"Control", "[", 
       RowBox[{"{", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{"make", ",", "False", ",", "\"\<\>\""}], "}"}], ",", 
         RowBox[{
          RowBox[{"Button", "[", 
           RowBox[{
            RowBox[{"Text", "[", "\"\<Make\\nOverlay\>\"", "]"}], ",", 
            RowBox[{"make", "=", "True"}]}], "]"}], "&"}]}], "}"}], "]"}]}], 
     "}"}], "]"}], ",", 
   RowBox[{"FrameLabel", "\[Rule]", 
    RowBox[{"Style", "[", 
     RowBox[{
      RowBox[{"Dynamic", "[", 
       RowBox[{"\"\<Current directory is: \>\"", "<>", "dir"}], "]"}], ",", 
      "Medium"}], "]"}]}], ",", 
   RowBox[{"SynchronousUpdating", "\[Rule]", "False"}], ",", 
   RowBox[{"SaveDefinitions", "\[Rule]", "True"}], ",", "\[IndentingNewLine]", 
   RowBox[{"Initialization", "\[RuleDelayed]", 
    RowBox[{"(", "\[IndentingNewLine]", 
     RowBox[{
      RowBox[{"startup", "=", "True"}], ";", 
      RowBox[{"thisImgAOld", "=", "1"}], ";", 
      RowBox[{"thisImgBOld", "=", "1"}], ";", 
      RowBox[{"sizOld", "=", "0"}], ";", 
      RowBox[{"snapCount", "=", "1"}], ";", 
      RowBox[{"dir", "=", 
       RowBox[{"NotebookDirectory", "[", "]"}]}], ";", 
      RowBox[{"mostRecent", "=", "\"\<starting\>\""}], ";", 
      "\[IndentingNewLine]", 
      RowBox[{"dispFile", "=", "\"\<\>\""}], ";", 
      RowBox[{"thisDir", "=", 
       RowBox[{"NotebookDirectory", "[", "]"}]}], ";"}], "\n", ")"}]}]}], 
  "]"}]], "Input",ExpressionUUID->"8b149e8d-f2c4-4aea-83ee-1be0c159fbb6"],

Cell[BoxData[
 TagBox[
  StyleBox[
   DynamicModuleBox[{$CellContext`dots$$ = 1, $CellContext`make$$ = 
    False, $CellContext`newDir$$ = False, $CellContext`siz$$ = 
    1, $CellContext`thisImgA$$ = 1, $CellContext`thisImgB$$ = 1, 
    Typeset`show$$ = True, Typeset`bookmarkList$$ = {}, 
    Typeset`bookmarkMode$$ = "Menu", Typeset`animator$$, Typeset`animvar$$ = 
    1, Typeset`name$$ = "\"untitled\"", Typeset`specs$$ = {{{
       Hold[$CellContext`newDir$$], False, ""}, 
      Dynamic[Button[
        Text["Select\nDirectory"], $CellContext`newDir$$ = True]& ]}, {{
       Hold[$CellContext`thisImgA$$], 1, ""}, 
      Dynamic[
       Thread[Range[
          
          Length[$CellContext`imageNames]] -> $CellContext`imageNamesDisp]]}, \
{{
       Hold[$CellContext`thisImgB$$], 1, ""}, 
      Dynamic[
       Thread[Range[
          
          Length[$CellContext`imageNames]] -> $CellContext`imageNamesDisp]]}, \
{{
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
         Column[{
           Manipulate`Place[2], 
           Manipulate`Place[3]}], 
         Column[{
           Manipulate`Place[4], 
           Manipulate`Place[5]}], 
         Manipulate`Place[6]}]], Manipulate`Dump`ThisIsNotAControl}}, 
    Typeset`size$$ = {306., {3., 10.}}, Typeset`update$$ = 0, 
    Typeset`initDone$$, Typeset`skipInitDone$$ = False}, 
    DynamicBox[Manipulate`ManipulateBoxes[
     2, StandardForm, 
      "Variables" :> {$CellContext`dots$$ = 1, $CellContext`make$$ = 
        False, $CellContext`newDir$$ = False, $CellContext`siz$$ = 
        1, $CellContext`thisImgA$$ = 1, $CellContext`thisImgB$$ = 1}, 
      "ControllerVariables" :> {}, 
      "OtherVariables" :> {
       Typeset`show$$, Typeset`bookmarkList$$, Typeset`bookmarkMode$$, 
        Typeset`animator$$, Typeset`animvar$$, Typeset`name$$, 
        Typeset`specs$$, Typeset`size$$, Typeset`update$$, Typeset`initDone$$,
         Typeset`skipInitDone$$}, 
      "Body" :> (
       If[$CellContext`newDir$$ == 
         True, $CellContext`thisChoice = SystemDialogInput["Directory", 
            NotebookDirectory[], WindowTitle -> 
            "Please locate a folder of watermark Points"]; 
         If[$CellContext`thisChoice =!= $Canceled, $CellContext`thisDir = \
$CellContext`thisChoice; $CellContext`dir = $CellContext`thisDir; \
$CellContext`txtFilesTest = FileNames["*.txt", $CellContext`dir]; 
           If[Length[$CellContext`txtFilesTest] > 
             0, $CellContext`txts = 
              Map[StringDrop[#, {-29, -24}]& , $CellContext`txtFilesTest]; \
$CellContext`correspondingJPGs = 
              Map[StringInsert[#, 
                 "SnapWMImg", -24]& , $CellContext`txts]; \
$CellContext`imageNamesCalc = Table[
                StringJoin[
                 Part[
                  Map[
                  StringDrop[#, -4]& , $CellContext`correspondingJPGs], \
$CellContext`i], ".jpg"], {$CellContext`i, 
                 
                 Length[$CellContext`correspondingJPGs]}]; \
$CellContext`imageNames = Table[
                If[FileExistsQ[
                   Part[$CellContext`imageNamesCalc, $CellContext`i]] == True, 
                 Part[$CellContext`imageNamesCalc, $CellContext`i], 
                 Nothing], {$CellContext`i, 
                 Length[$CellContext`imageNamesCalc]}]; $CellContext`txtFiles = 
              Table[
                If[FileExistsQ[
                   Part[$CellContext`imageNamesCalc, $CellContext`i]] == True, 
                 Part[$CellContext`txtFilesTest, $CellContext`i], 
                 Nothing], {$CellContext`i, 
                 
                 Length[$CellContext`imageNamesCalc]}]; \
$CellContext`imageNamesDisp = 
              Map[FileBaseName, $CellContext`imageNames]; \
$CellContext`waterName = 
              Map[StringDrop[#, -28]& , $CellContext`imageNamesDisp]; \
$CellContext`thisImgAOld = ($CellContext`thisImgBOld = ($CellContext`sizOld = 
                0)); $CellContext`thisImgA$$ = 1; 
             If[Length[$CellContext`imageNames] > 1, $CellContext`thisImgB$$ = 
               2, $CellContext`thisImgB$$ = 1]; Null]; $CellContext`newDir$$ = 
            False; $CellContext`startup = False; Null]; Null]; 
       If[$CellContext`thisImgA$$ != $CellContext`thisImgAOld, \
$CellContext`textA = Import[
            
            Part[$CellContext`txtFiles, $CellContext`thisImgA$$]]; \
$CellContext`expAraw = ToExpression[
            Part[
             StringSplit[$CellContext`textA, "\n"], 1]]; $CellContext`imgAraw = 
          Import[
            Part[$CellContext`imageNames, $CellContext`thisImgA$$]]; If[
           ImageQ[$CellContext`imgBraw], $CellContext`resizeFactor = N[
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
           Null]; $CellContext`mostRecent = 
          "newFile"; $CellContext`thisImgAOld = $CellContext`thisImgA$$]; 
       If[$CellContext`thisImgB$$ != $CellContext`thisImgBOld, \
$CellContext`textB = Import[
            
            Part[$CellContext`txtFiles, $CellContext`thisImgB$$]]; \
$CellContext`expBraw = ToExpression[
            Part[
             StringSplit[$CellContext`textB, "\n"], 1]]; $CellContext`imgBraw = 
          Import[
            Part[$CellContext`imageNames, $CellContext`thisImgB$$]]; If[
           ImageQ[$CellContext`imgAraw], $CellContext`resizeFactor = N[
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
           Null]; $CellContext`mostRecent = 
          "newFile"; $CellContext`thisImgBOld = $CellContext`thisImgB$$]; 
       If[$CellContext`mostRecent == 
         "making", $CellContext`dispMake = 
          "Working on animation..."; $CellContext`coordBBA = 
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
                Part[$CellContext`waterName, $CellContext`thisImgA$$], 
                Gray], $CellContext`imgCtr1]}], 
            SetAlphaChannel[$CellContext`highTrans, 1/2], 
            Graphics[{
              Opacity[1/2], 
              Text[
               Style[
                Part[$CellContext`waterName, $CellContext`thisImgB$$], 
                Gray], $CellContext`imgCtr2]}], ImageSize -> 800, Background -> 
            Gray]; If[Mean[
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
                 
                 Part[$CellContext`waterName, $CellContext`thisImgA$$], \
$CellContext`textColor, 
                 FontSize -> $CellContext`fontScale], $CellContext`imgCtr1]}], 
             SetAlphaChannel[$CellContext`highTrans, 1 - $CellContext`s], 
             Graphics[{
               Opacity[1 - $CellContext`s], 
               Text[
                Style[
                 
                 Part[$CellContext`waterName, $CellContext`thisImgB$$], \
$CellContext`textColor, 
                 FontSize -> $CellContext`fontScale], $CellContext`imgCtr2]}],
              ImageSize -> $CellContext`imSiz, 
             Background -> $CellContext`backColor], {$CellContext`s, \
$CellContext`range}]; 
         Which[$CellContext`dots$$ == 1, $CellContext`dotMess = 
           "s", $CellContext`dots$$ == 0, $CellContext`dotMess = "h"]; 
         Which[$CellContext`siz$$ == 1, $CellContext`sizMess = 
           "s", $CellContext`siz$$ == 0, $CellContext`sizMess = 
           "l"]; $CellContext`outFile = FileNameJoin[{
             NotebookDirectory[], 
             StringJoin[{"animation", 
               Part[$CellContext`waterName, $CellContext`thisImgA$$], "-", 
               Part[$CellContext`waterName, $CellContext`thisImgB$$], 
               "(", $CellContext`dotMess, $CellContext`sizMess, 
               ").gif"}]}]; $CellContext`expMess = 
          Export[$CellContext`outFile, $CellContext`frames, 
            "DisplayDurations" -> 1/5, "AnimationRepetitions" -> 
            Infinity]; $CellContext`dispMake = 
          StringJoin[
           "Overlay video saved to ", $CellContext`expMess]; \
$CellContext`mostRecent = "make"; $CellContext`make$$ = False; Null]; If[
         And[
         Length[$CellContext`expA] == Length[$CellContext`expB], 
          Length[$CellContext`expA] > 0], $CellContext`ind = Flatten[
            Position[
            Map[Total, $CellContext`expA] Map[Total, $CellContext`expB], 
             PatternTest[
              Blank[], 0.01 < #& ]]]; $CellContext`selectedA = 
          Part[$CellContext`expA, $CellContext`ind]; $CellContext`selectedB = 
          Part[$CellContext`expB, $CellContext`ind]; $CellContext`images = \
{$CellContext`imgA, $CellContext`imgB}; $CellContext`matches = \
{$CellContext`selectedA, $CellContext`selectedB}; $CellContext`displayMatches = \
{$CellContext`expA, $CellContext`expB}; $CellContext`imAll = Map[Image, 
            Map[ImageData, $CellContext`images]]; $CellContext`dispFile = 
          GraphicsRow[
            MapThread[Show[#, 
              Graphics[{Yellow, 
                MapIndexed[Inset[
                  Part[#2, 
                   1], #]& , #2]}]]& , {$CellContext`imAll, \
$CellContext`displayMatches}]]; Null, 
         If[$CellContext`startup == True, $CellContext`dispFile = ""; 
          Null, $CellContext`dispFile = StringJoin["The number of points in ", 
            ToString[
             Part[$CellContext`waterName, $CellContext`thisImgA$$]], 
            " must equal the number of points in ", 
            ToString[
             Part[$CellContext`waterName, $CellContext`thisImgB$$]]]]]; 
       If[$CellContext`make$$ == True, $CellContext`mostRecent = "making"; 
         Null]; Which[$CellContext`mostRecent == 
         "newFile", $CellContext`dispFile, $CellContext`mostRecent == 
         "make", $CellContext`dispMake, $CellContext`mostRecent == "making", 
         "Now making animation...", $CellContext`mostRecent == "starting", 
         "Please select a directory of watermarks"]), 
      "Specifications" :> {{{$CellContext`newDir$$, False, ""}, 
         Dynamic[Button[
           Text["Select\nDirectory"], $CellContext`newDir$$ = True]& ], 
         ControlPlacement -> 1}, {{$CellContext`thisImgA$$, 1, ""}, 
         Dynamic[
          Thread[Range[
             
             Length[$CellContext`imageNames]] -> \
$CellContext`imageNamesDisp]], ControlType -> PopupMenu, ControlPlacement -> 
         2}, {{$CellContext`thisImgB$$, 1, ""}, 
         Dynamic[
          Thread[Range[
             
             Length[$CellContext`imageNames]] -> \
$CellContext`imageNamesDisp]], ControlType -> PopupMenu, ControlPlacement -> 
         3}, {{$CellContext`dots$$, 1, ""}, {
         1 -> "show dots", 0 -> "hide dots"}, ControlPlacement -> 
         4}, {{$CellContext`siz$$, 1, ""}, {
         1 -> "  smaller  ", 0 -> "  larger  "}, ControlPlacement -> 
         5}, {{$CellContext`make$$, False, ""}, 
         Dynamic[Button[
           Text["Make\nOverlay"], $CellContext`make$$ = True]& ], 
         ControlPlacement -> 6}, 
        Row[{
          Manipulate`Place[1], 
          Column[{
            Manipulate`Place[2], 
            Manipulate`Place[3]}], 
          Column[{
            Manipulate`Place[4], 
            Manipulate`Place[5]}], 
          Manipulate`Place[6]}]}, "Options" :> {FrameLabel -> Style[
          Dynamic[
           StringJoin["Current directory is: ", $CellContext`dir]], Medium], 
        SynchronousUpdating -> False}, "DefaultOptions" :> {}],
     ImageSizeCache->{352., {73., 79.}},
     SingleEvaluation->True],
    Deinitialization:>None,
    DynamicModuleValues:>{},
    Initialization:>({{$CellContext`thisDir = 
         "/Users/sethares/BillsMathematica/watermarks/overlayAnimation/", \
$CellContext`dir = 
         "/Users/sethares/BillsMathematica/watermarks/overlayAnimation/", \
$CellContext`thisImgAOld = 1, $CellContext`thisImgBOld = 
         1, $CellContext`sizOld = 0, $CellContext`startup = 
         True, $CellContext`mostRecent = "starting", $CellContext`dispFile = 
         ""}; ($CellContext`startup = True; $CellContext`thisImgAOld = 
         1; $CellContext`thisImgBOld = 1; $CellContext`sizOld = 
         0; $CellContext`snapCount = 1; $CellContext`dir = 
         NotebookDirectory[]; $CellContext`mostRecent = 
         "starting"; $CellContext`dispFile = ""; $CellContext`thisDir = 
         NotebookDirectory[]; Null)}; Typeset`initDone$$ = True),
    SynchronousInitialization->True,
    UndoTrackedVariables:>{Typeset`show$$, Typeset`bookmarkMode$$},
    UnsavedVariables:>{Typeset`initDone$$},
    UntrackedVariables:>{Typeset`size$$}], "Manipulate",
   Deployed->True,
   StripOnInput->False],
  Manipulate`InterpretManipulate[1]]], "Output",ExpressionUUID->"81ff977f-\
e9ee-496a-bb20-770ca2741c14"]
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
ExpressionUUID->"a35d061f-5c12-47fc-8e08-d03f39eedaf2"
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
Cell[1486, 35, 102, 0, 67, "Section",ExpressionUUID->"dc53fd55-0f5b-4946-b9cc-f5d37d9663aa"],
Cell[1591, 37, 568, 8, 58, "Text",ExpressionUUID->"7bc6c8c9-7726-447d-b84d-83b2a9b69d21"],
Cell[CellGroupData[{
Cell[2184, 49, 32054, 785, 2047, "Input",ExpressionUUID->"8b149e8d-f2c4-4aea-83ee-1be0c159fbb6"],
Cell[34241, 836, 18545, 380, 174, "Output",ExpressionUUID->"81ff977f-e9ee-496a-bb20-770ca2741c14"]
}, {2}]]
}, Open  ]]
}
]
*)

(* End of internal cache information *)

(* NotebookSignature dU5xOTXWjZyOUU4C0y#FcviU *)
