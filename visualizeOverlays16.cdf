(* Content-type: application/vnd.wolfram.cdf.text *)

(*** Wolfram CDF File ***)
(* http://www.wolfram.com/cdf *)

(* CreatedBy='Mathematica 13.0' *)

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
NotebookDataLength[     71441,       1645]
NotebookOptionsPosition[     71651,       1634]
NotebookOutlinePosition[     72133,       1654]
CellTagsIndexPosition[     72090,       1651]
WindowFrame->Normal*)

(* Beginning of Notebook Content *)
Notebook[{

Cell[CellGroupData[{
Cell["Animate Two Watermark Images", "Section",ExpressionUUID->"dc53fd55-0f5b-4946-b9cc-f5d37d9663aa"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"Manipulate", "[", "\[IndentingNewLine]", 
  RowBox[{
   RowBox[{
    RowBox[{"If", "[", 
     RowBox[{
      RowBox[{"newDirA", "\[Equal]", "True"}], ",", 
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
          RowBox[{"thisDirA", "=", "thisChoice"}], ";", 
          RowBox[{"dirA", "=", "thisDirA"}], ";", "\[IndentingNewLine]", 
          RowBox[{"txtFilesTest", "=", 
           RowBox[{"FileNames", "[", 
            RowBox[{"\"\<*.txt\>\"", ",", "dirA"}], "]"}]}], ";", 
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
             RowBox[{"imageNamesA", "=", 
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
             RowBox[{"txtFilesA", "=", 
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
             RowBox[{"imageNamesDispA", "=", 
              RowBox[{"FileBaseName", "/@", "imageNamesA"}]}], ";", 
             "\[IndentingNewLine]", 
             RowBox[{"waterNameA", "=", 
              RowBox[{
               RowBox[{
                RowBox[{"StringDrop", "[", 
                 RowBox[{"#", ",", 
                  RowBox[{"-", "28"}]}], "]"}], "&"}], "/@", 
               "imageNamesDispA"}]}], ";", "\[IndentingNewLine]", 
             RowBox[{"thisImgAOld", "=", "0"}], ";", 
             RowBox[{"thisImgA", "=", "1"}], ";"}]}], "\[IndentingNewLine]", 
           "]"}], ";", "\[IndentingNewLine]", 
          RowBox[{"If", "[", 
           RowBox[{
            RowBox[{"imageNamesB", "==", "\"\<\>\""}], ",", 
            RowBox[{
             RowBox[{"newDirB", "=", "True"}], ";"}]}], "]"}], ";", 
          "\[IndentingNewLine]", 
          RowBox[{"newDirA", "=", "False"}], ";", 
          RowBox[{"startup", "=", "False"}], ";"}]}], "\[IndentingNewLine]", 
        "]"}], ";"}]}], "\[IndentingNewLine]", "]"}], ";", 
    "\[IndentingNewLine]", 
    RowBox[{"If", "[", 
     RowBox[{
      RowBox[{"newDirB", "\[Equal]", "True"}], ",", 
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
          RowBox[{"thisDirB", "=", "thisChoice"}], ";", 
          RowBox[{"dirB", "=", "thisDirB"}], ";", "\[IndentingNewLine]", 
          RowBox[{"txtFilesTest", "=", 
           RowBox[{"FileNames", "[", 
            RowBox[{"\"\<*.txt\>\"", ",", "dirB"}], "]"}]}], ";", 
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
             RowBox[{"imageNamesB", "=", 
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
             RowBox[{"txtFilesB", "=", 
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
             RowBox[{"imageNamesDispB", "=", 
              RowBox[{"FileBaseName", "/@", "imageNamesB"}]}], ";", 
             "\[IndentingNewLine]", 
             RowBox[{"waterNameB", "=", 
              RowBox[{
               RowBox[{
                RowBox[{"StringDrop", "[", 
                 RowBox[{"#", ",", 
                  RowBox[{"-", "28"}]}], "]"}], "&"}], "/@", 
               "imageNamesDispB"}]}], ";", "\[IndentingNewLine]", 
             RowBox[{"thisImgBOld", "=", "0"}], ";", 
             RowBox[{"thisImgB", "=", "1"}], ";"}]}], "\[IndentingNewLine]", 
           "]"}], ";", "\[IndentingNewLine]", 
          RowBox[{"If", "[", 
           RowBox[{
            RowBox[{"imageNamesA", "==", "\"\<\>\""}], ",", 
            RowBox[{
             RowBox[{"newDirA", "=", "True"}], ";"}]}], "]"}], ";", 
          "\[IndentingNewLine]", 
          RowBox[{"newDirB", "=", "False"}], ";", 
          RowBox[{"startup", "=", "False"}], ";"}]}], "\[IndentingNewLine]", 
        "]"}], ";"}]}], "\[IndentingNewLine]", "]"}], ";", 
    "\[IndentingNewLine]", 
    RowBox[{"If", "[", 
     RowBox[{
      RowBox[{"(", 
       RowBox[{"thisImgA", "\[NotEqual]", "thisImgAOld"}], ")"}], ",", 
      "\[IndentingNewLine]", 
      RowBox[{
       RowBox[{"textA", "=", 
        RowBox[{"Import", "[", 
         RowBox[{"txtFilesA", "[", 
          RowBox[{"[", "thisImgA", "]"}], "]"}], "]"}]}], ";", 
       "\[IndentingNewLine]", 
       RowBox[{"expAraw", "=", 
        RowBox[{"ToExpression", "[", 
         RowBox[{
          RowBox[{"StringSplit", "[", 
           RowBox[{"textA", ",", "\"\<\\n\>\""}], "]"}], "[", 
          RowBox[{"[", "1", "]"}], "]"}], "]"}]}], ";", "\[IndentingNewLine]", 
       RowBox[{"imgAraw", "=", 
        RowBox[{"ColorConvert", "[", 
         RowBox[{
          RowBox[{"Import", "[", 
           RowBox[{"imageNamesA", "[", 
            RowBox[{"[", "thisImgA", "]"}], "]"}], "]"}], ",", 
          "\"\<Grayscale\>\""}], "]"}]}], ";", "\[IndentingNewLine]", 
       RowBox[{"inDim", " ", "=", " ", 
        RowBox[{"Max", "[", 
         RowBox[{"ImageDimensions", "[", "imgAraw", "]"}], "]"}]}], ";", 
       "\[IndentingNewLine]", 
       RowBox[{"If", "[", 
        RowBox[{
         RowBox[{
          RowBox[{"Max", "[", "inDim", "]"}], ">", "1000"}], ",", 
         RowBox[{"rescaleF", "=", 
          RowBox[{"1000.0", "/", "inDim"}]}], ",", 
         RowBox[{
          RowBox[{"rescaleF", "=", "1"}], ";"}]}], "]"}], ";", 
       "\[IndentingNewLine]", 
       RowBox[{"imgA", "=", 
        RowBox[{"ImageResize", "[", 
         RowBox[{"imgAraw", ",", 
          RowBox[{"Scaled", "[", "rescaleF", "]"}]}], "]"}]}], ";", 
       "\[IndentingNewLine]", 
       RowBox[{"imgAraw", " ", "=", " ", "imgA"}], ";", "\[IndentingNewLine]", 
       RowBox[{"expA", "=", 
        RowBox[{"rescaleF", " ", "expAraw"}]}], ";", "\[IndentingNewLine]", 
       RowBox[{"expAraw", "=", "expA"}], ";", "\[IndentingNewLine]", 
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
         RowBox[{"txtFilesB", "[", 
          RowBox[{"[", "thisImgB", "]"}], "]"}], "]"}]}], ";", 
       "\[IndentingNewLine]", 
       RowBox[{"expBraw", "=", 
        RowBox[{"ToExpression", "[", 
         RowBox[{
          RowBox[{"StringSplit", "[", 
           RowBox[{"textB", ",", "\"\<\\n\>\""}], "]"}], "[", 
          RowBox[{"[", "1", "]"}], "]"}], "]"}]}], ";", "\[IndentingNewLine]", 
       RowBox[{"imgBraw", "=", 
        RowBox[{"ColorConvert", "[", 
         RowBox[{
          RowBox[{"Import", "[", 
           RowBox[{"imageNamesB", "[", 
            RowBox[{"[", "thisImgB", "]"}], "]"}], "]"}], ",", 
          "\"\<Grayscale\>\""}], "]"}]}], ";", "\[IndentingNewLine]", 
       RowBox[{"inDim", " ", "=", " ", 
        RowBox[{"Max", "[", 
         RowBox[{"ImageDimensions", "[", "imgBraw", "]"}], "]"}]}], ";", 
       "\[IndentingNewLine]", 
       RowBox[{"If", "[", 
        RowBox[{
         RowBox[{
          RowBox[{"Max", "[", "inDim", "]"}], ">", "1000"}], ",", 
         RowBox[{"rescaleF", "=", 
          RowBox[{"1000.0", "/", "inDim"}]}], ",", 
         RowBox[{
          RowBox[{"rescaleF", "=", "1"}], ";"}]}], "]"}], ";", 
       "\[IndentingNewLine]", 
       RowBox[{"imgB", "=", 
        RowBox[{"ImageResize", "[", 
         RowBox[{"imgBraw", ",", 
          RowBox[{"Scaled", "[", "rescaleF", "]"}]}], "]"}]}], ";", 
       "\[IndentingNewLine]", 
       RowBox[{"imgBraw", " ", "=", " ", "imgB"}], ";", "\[IndentingNewLine]", 
       RowBox[{"expB", "=", 
        RowBox[{"rescaleF", " ", "expBraw"}]}], ";", "\[IndentingNewLine]", 
       RowBox[{"expBraw", "=", "expB"}], ";", "\[IndentingNewLine]", 
       RowBox[{"mostRecent", "=", "\"\<newFile\>\""}], ";", 
       RowBox[{"thisImgBOld", "=", "thisImgB"}]}]}], "]"}], ";", 
    "\[IndentingNewLine]", 
    RowBox[{"If", "[", 
     RowBox[{
      RowBox[{"mostRecent", "\[Equal]", "\"\<making\>\""}], ",", 
      "\[IndentingNewLine]", 
      RowBox[{
       RowBox[{"imgAMod", "=", 
        RowBox[{"If", "[", 
         RowBox[{
          RowBox[{"invertA", "==", "True"}], ",", 
          RowBox[{"ColorNegate", "[", "imgA", "]"}], ",", "imgA"}], "]"}]}], 
       ";", "\[IndentingNewLine]", 
       RowBox[{"imgBMod", "=", 
        RowBox[{"If", "[", 
         RowBox[{
          RowBox[{"invertB", "==", "True"}], ",", 
          RowBox[{"ColorNegate", "[", "imgB", "]"}], ",", "imgB"}], "]"}]}], 
       ";", "\[IndentingNewLine]", 
       RowBox[{"If", "[", 
        RowBox[{
         RowBox[{"a2b", "==", "1"}], ",", 
         RowBox[{"making", "[", 
          RowBox[{
          "imgAMod", ",", "imgBMod", ",", "selectedA", ",", "selectedB", ",", 
           
           RowBox[{"waterNameA", "[", 
            RowBox[{"[", "thisImgA", "]"}], "]"}], ",", 
           RowBox[{"waterNameB", "[", 
            RowBox[{"[", "thisImgB", "]"}], "]"}], ",", "dots"}], "]"}]}], 
        "]"}], ";", "\[IndentingNewLine]", 
       RowBox[{"If", "[", 
        RowBox[{
         RowBox[{"a2b", "==", "0"}], ",", 
         RowBox[{"making", "[", 
          RowBox[{
          "imgBMod", ",", "imgAMod", ",", "selectedB", ",", "selectedA", ",", 
           
           RowBox[{"waterNameB", "[", 
            RowBox[{"[", "thisImgB", "]"}], "]"}], ",", 
           RowBox[{"waterNameA", "[", 
            RowBox[{"[", "thisImgA", "]"}], "]"}], ",", "dots"}], "]"}]}], 
        "]"}], ";"}]}], "\[IndentingNewLine]", "]"}], ";", 
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
       RowBox[{"imgAMod", "=", 
        RowBox[{"If", "[", 
         RowBox[{
          RowBox[{"invertA", "==", "True"}], ",", 
          RowBox[{"ColorNegate", "[", "imgA", "]"}], ",", "imgA"}], "]"}]}], 
       ";", "\[IndentingNewLine]", 
       RowBox[{"imgBMod", "=", 
        RowBox[{"If", "[", 
         RowBox[{
          RowBox[{"invertB", "==", "True"}], ",", 
          RowBox[{"ColorNegate", "[", "imgB", "]"}], ",", "imgB"}], "]"}]}], 
       ";", "\[IndentingNewLine]", 
       RowBox[{"images", "=", 
        RowBox[{"{", 
         RowBox[{"imgAMod", ",", "imgBMod"}], "}"}]}], ";", 
       "\[IndentingNewLine]", 
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
           RowBox[{"waterNameA", "[", 
            RowBox[{"[", "thisImgA", "]"}], "]"}], "]"}], "<>", 
          "\"\< must equal the number of points in \>\"", "<>", 
          RowBox[{"ToString", "[", 
           RowBox[{"waterNameB", "[", 
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
      "\"\<Please select directories where the watermarks are located. The \
menu selector will appear twice, once for directory A and once for directory \
B.\>\""}], "]"}]}], ",", "\n", 
   RowBox[{"Row", "[", 
    RowBox[{"{", 
     RowBox[{
      RowBox[{"Column", "[", 
       RowBox[{"{", 
        RowBox[{
         RowBox[{"Control", "[", 
          RowBox[{"{", 
           RowBox[{
            RowBox[{"{", 
             RowBox[{"newDirA", ",", "False", ",", "\"\<\>\""}], "}"}], ",", 
            RowBox[{
             RowBox[{"Button", "[", 
              RowBox[{
               RowBox[{"Text", "[", 
                RowBox[{"\"\<Select Directory A\>\"", ",", 
                 RowBox[{"Background", "\[Rule]", "colorBack"}]}], "]"}], ",", 
               RowBox[{"newDirA", "=", "True"}]}], "]"}], "&"}]}], "}"}], 
          "]"}], ",", 
         RowBox[{"Control", "[", 
          RowBox[{"{", 
           RowBox[{
            RowBox[{"{", 
             RowBox[{"newDirB", ",", "False", ",", "\"\<\>\""}], "}"}], ",", 
            RowBox[{
             RowBox[{"Button", "[", 
              RowBox[{
               RowBox[{"Text", "[", 
                RowBox[{"\"\<Select Directory B\>\"", ",", 
                 RowBox[{"Background", "\[Rule]", "colorBack"}]}], "]"}], ",", 
               RowBox[{"newDirB", "=", "True"}]}], "]"}], "&"}]}], "}"}], 
          "]"}]}], "}"}], "]"}], ",", 
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
                RowBox[{"Length", "@", "imageNamesA"}], "]"}], "\[Rule]", 
               "imageNamesDispA"}], "]"}], "]"}], ",", 
            RowBox[{"ControlType", "\[Rule]", "PopupMenu"}], ",", 
            RowBox[{"Background", "\[Rule]", "colorBack"}]}], "}"}], "]"}], 
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
                RowBox[{"Length", "@", "imageNamesB"}], "]"}], "\[Rule]", 
               "imageNamesDispB"}], "]"}], "]"}], ",", 
            RowBox[{"ControlType", "\[Rule]", "PopupMenu"}], ",", 
            RowBox[{"Background", "\[Rule]", "colorBack"}]}], "}"}], "]"}]}], 
        "}"}], "]"}], ",", 
      RowBox[{"Control", "[", 
       RowBox[{"{", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{"a2b", ",", "1", ",", "\"\<\>\""}], "}"}], ",", 
         RowBox[{"{", 
          RowBox[{
           RowBox[{"1", "\[Rule]", 
            RowBox[{"DownArrow", "[", 
             RowBox[{"\"\<\>\"", ",", "\"\<\>\""}], "]"}]}], ",", 
           RowBox[{"0", "\[Rule]", 
            RowBox[{"UpArrow", "[", 
             RowBox[{"\"\<\>\"", ",", "\"\<\>\""}], "]"}]}]}], "}"}], ",", 
         RowBox[{"Background", "\[Rule]", "colorBack"}]}], "}"}], "]"}], ",", 
      
      RowBox[{"Spacer", "[", "10", "]"}], ",", "\[IndentingNewLine]", 
      RowBox[{"Column", "[", 
       RowBox[{"{", 
        RowBox[{
         RowBox[{"Control", "[", 
          RowBox[{"{", 
           RowBox[{
            RowBox[{"{", 
             RowBox[{"invertA", ",", "False", ",", "\"\<Invert A\>\""}], 
             "}"}], ",", 
            RowBox[{"{", 
             RowBox[{"False", ",", " ", "True"}], "}"}], ",", 
            RowBox[{"Background", "\[Rule]", "colorBack"}]}], "}"}], "]"}], 
         ",", 
         RowBox[{"Control", "[", 
          RowBox[{"{", 
           RowBox[{
            RowBox[{"{", 
             RowBox[{"invertB", ",", "False", ",", "\"\<Invert B\>\""}], 
             "}"}], ",", 
            RowBox[{"{", 
             RowBox[{"False", ",", " ", "True"}], "}"}], ",", 
            RowBox[{"Background", "\[Rule]", "colorBack"}]}], "}"}], "]"}]}], 
        "}"}], "]"}], ",", 
      RowBox[{"Control", "[", 
       RowBox[{"{", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{"dots", ",", "1", ",", "\"\<\>\""}], "}"}], ",", 
         RowBox[{"{", 
          RowBox[{
           RowBox[{"1", "\[Rule]", "\"\<show dots\>\""}], ",", 
           RowBox[{"0", "\[Rule]", "\"\<hide dots\>\""}]}], "}"}], ",", 
         RowBox[{"Background", "\[Rule]", "colorBack"}]}], "}"}], "]"}], ",", 
      "\[IndentingNewLine]", 
      RowBox[{"Control", "[", 
       RowBox[{"{", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{"make", ",", "False", ",", "\"\<\>\""}], "}"}], ",", 
         RowBox[{
          RowBox[{"Button", "[", 
           RowBox[{
            RowBox[{"Text", "[", 
             RowBox[{"\"\<Make\\nOverlay\>\"", ",", 
              RowBox[{"Background", "\[Rule]", "colorBack"}]}], "]"}], ",", 
            RowBox[{"make", "=", "True"}]}], "]"}], "&"}]}], "}"}], "]"}]}], 
     "}"}], "]"}], ",", 
   RowBox[{"SynchronousUpdating", "\[Rule]", "False"}], ",", 
   RowBox[{"SaveDefinitions", "\[Rule]", "True"}], ",", "\[IndentingNewLine]", 
   RowBox[{"Initialization", "\[RuleDelayed]", 
    RowBox[{"(", "\[IndentingNewLine]", 
     RowBox[{
      RowBox[{"startup", "=", "True"}], ";", 
      RowBox[{"thisImgAOld", "=", "1"}], ";", 
      RowBox[{"thisImgBOld", "=", "1"}], ";", 
      RowBox[{"snapCount", "=", "1"}], ";", 
      RowBox[{"dirA", "=", 
       RowBox[{"dirB", "=", 
        RowBox[{"NotebookDirectory", "[", "]"}]}]}], ";", 
      RowBox[{"mostRecent", "=", "\"\<starting\>\""}], ";", 
      "\[IndentingNewLine]", 
      RowBox[{"dispFile", "=", "\"\<\>\""}], ";", 
      RowBox[{"thisDirA", "=", 
       RowBox[{"thisDirB", "=", 
        RowBox[{"NotebookDirectory", "[", "]"}]}]}], ";", 
      RowBox[{"imageNamesA", "=", 
       RowBox[{"imageNamesB", "=", "\"\<\>\""}]}], ";", "\[IndentingNewLine]", 
      RowBox[{"colorBack", "=", 
       RowBox[{"Lighter", "[", "Green", "]"}]}], ";", "\[IndentingNewLine]", 
      RowBox[{
       RowBox[{"making", "[", 
        RowBox[{
        "iA_", ",", "iB_", ",", "selA_", ",", "selB_", ",", "nameA_", ",", 
         "nameB_", ",", "d_"}], "]"}], ":=", 
       RowBox[{"Module", "[", 
        RowBox[{
         RowBox[{"{", "}"}], ",", 
         RowBox[{
          RowBox[{"dispMake", "=", "\"\<Working on animation...\>\""}], ";", 
          "\[IndentingNewLine]", 
          RowBox[{"coordBBA", "=", 
           RowBox[{"CoordinateBoundingBox", "[", "selA", "]"}]}], ";", 
          "\[IndentingNewLine]", 
          RowBox[{"coordBBB", "=", 
           RowBox[{"CoordinateBoundingBox", "[", "selB", "]"}]}], ";", 
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
            RowBox[{"ImageDimensions", "[", "iA", "]"}], "-", 
            RowBox[{"coordBBA", "[", 
             RowBox[{"[", "2", "]"}], "]"}]}]}], ";", "\[IndentingNewLine]", 
          RowBox[{"coordBBBhigh", "=", 
           RowBox[{
            RowBox[{"ImageDimensions", "[", "iB", "]"}], "-", 
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
               RowBox[{"Transpose", "[", "selA", "]"}]}], "-", "expLow", "+", 
              "1"}], ",", 
             RowBox[{
              RowBox[{"Max", "/@", 
               RowBox[{"Transpose", "[", "selA", "]"}]}], "+", "expHigh", "-",
               "1"}]}], "}"}]}], ";", "\[IndentingNewLine]", 
          RowBox[{"dataRangeB", "=", 
           RowBox[{"{", 
            RowBox[{
             RowBox[{
              RowBox[{"Min", "/@", 
               RowBox[{"Transpose", "[", "selB", "]"}]}], "-", "expLow", "+", 
              "1"}], ",", 
             RowBox[{
              RowBox[{"Max", "/@", 
               RowBox[{"Transpose", "[", "selB", "]"}]}], "+", "expHigh", "-",
               "1"}]}], "}"}]}], ";", "\[IndentingNewLine]", 
          RowBox[{"trimA", "=", 
           RowBox[{"ImageTrim", "[", 
            RowBox[{"iA", ",", "dataRangeA"}], "]"}]}], ";", 
          "\[IndentingNewLine]", 
          RowBox[{"trimB", "=", 
           RowBox[{"ImageTrim", "[", 
            RowBox[{"iB", ",", "dataRangeB"}], "]"}]}], ";", 
          "\[IndentingNewLine]", 
          RowBox[{"selectedTrimA", "=", 
           RowBox[{"selA", "-", 
            RowBox[{"ConstantArray", "[", 
             RowBox[{
              RowBox[{"dataRangeA", "[", 
               RowBox[{"[", "1", "]"}], "]"}], ",", 
              RowBox[{"Length", "[", "selA", "]"}]}], "]"}]}]}], ";", 
          "\[IndentingNewLine]", 
          RowBox[{"selectedTrimB", "=", 
           RowBox[{"selB", "-", 
            RowBox[{"ConstantArray", "[", 
             RowBox[{
              RowBox[{"dataRangeB", "[", 
               RowBox[{"[", "1", "]"}], "]"}], ",", 
              RowBox[{"Length", "[", "selB", "]"}]}], "]"}]}]}], ";", 
          "\[IndentingNewLine]", 
          RowBox[{
           RowBox[{"{", 
            RowBox[{"err", ",", "trans"}], "}"}], "=", 
           RowBox[{"FindGeometricTransform", "[", 
            RowBox[{"selectedTrimB", ",", "selectedTrimA", ",", 
             RowBox[{"Method", "\[Rule]", "\"\<Linear\>\""}], ",", 
             RowBox[{
             "TransformationClass", "\[Rule]", "\"\<Similarity\>\""}]}], 
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
                  RowBox[{"Opacity", "[", "d", "]"}], ",", "Red", ",", 
                  "selectedTrimA"}], "}"}]}], "]"}], "]"}]}], ",", 
            RowBox[{"highTrans", "=", 
             RowBox[{"Image", "[", 
              RowBox[{"HighlightImage", "[", 
               RowBox[{"imgTrans", ",", 
                RowBox[{"{", 
                 RowBox[{
                  RowBox[{"Opacity", "[", "d", "]"}], ",", "Red", ",", 
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
                RowBox[{"[", "1", "]"}], "]"}], "/", "2"}], ",", "60"}], 
             "}"}], "]"}]}], ";", "\[IndentingNewLine]", 
          RowBox[{"imgCtr2", "=", 
           RowBox[{"Round", "[", 
            RowBox[{"{", 
             RowBox[{
              RowBox[{
               RowBox[{"imgDim", "[", 
                RowBox[{"[", "1", "]"}], "]"}], "/", "2"}], ",", 
              RowBox[{
               RowBox[{"imgDim", "[", 
                RowBox[{"[", "2", "]"}], "]"}], "-", "100"}]}], "}"}], 
            "]"}]}], ";", "\[IndentingNewLine]", 
          RowBox[{"fontScale", "=", 
           RowBox[{
            RowBox[{"Max", "[", 
             RowBox[{
              RowBox[{"ImageDimensions", "[", "highA", "]"}], ",", 
              RowBox[{"ImageDimensions", "[", "highTrans", "]"}]}], "]"}], 
            "/", "1200.0"}]}], ";", "\[IndentingNewLine]", 
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
                   RowBox[{"nameA", ",", "Gray"}], "]"}], ",", "imgCtr1"}], 
                 "]"}]}], "}"}], "]"}], ",", "\[IndentingNewLine]", 
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
                   RowBox[{"nameB", ",", "Gray"}], "]"}], ",", "imgCtr2"}], 
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
          RowBox[{"fontScale", "=", 
           RowBox[{"14", " ", 
            RowBox[{
             RowBox[{
              RowBox[{"ImageDimensions", "[", "dispExample", "]"}], "[", 
              RowBox[{"[", "2", "]"}], "]"}], "/", "1200.0"}]}]}], ";", 
          "\[IndentingNewLine]", 
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
                    RowBox[{"nameA", ",", "textColor", ",", 
                    RowBox[{"FontSize", "\[Rule]", "fontScale"}]}], "]"}], 
                    ",", "imgCtr1"}], "]"}]}], "}"}], "]"}], ",", 
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
                    RowBox[{"nameB", ",", "textColor", ",", 
                    RowBox[{"FontSize", "\[Rule]", "fontScale"}]}], "]"}], 
                    ",", "imgCtr2"}], "]"}]}], "}"}], "]"}], ",", 
               "\[IndentingNewLine]", 
               RowBox[{"ImageSize", "\[Rule]", "400"}], ",", 
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
          RowBox[{"outFile", "=", 
           RowBox[{"FileNameJoin", "[", 
            RowBox[{"{", 
             RowBox[{
              RowBox[{"NotebookDirectory", "[", "]"}], ",", 
              RowBox[{"StringJoin", "[", 
               RowBox[{"{", 
                RowBox[{
                "\"\<animation\>\"", ",", "nameA", ",", "\"\<-\>\"", ",", 
                 "nameB", ",", "\"\<(\>\"", ",", "dotMess", ",", 
                 "\"\<).gif\>\""}], "}"}], "]"}]}], "}"}], "]"}]}], ";", 
          "\[IndentingNewLine]", 
          RowBox[{"expMess", "=", 
           RowBox[{"Export", "[", 
            RowBox[{"outFile", ",", "frames", ",", 
             RowBox[{"\"\<DisplayDurations\>\"", "\[Rule]", 
              RowBox[{"1", "/", "5"}]}], ",", 
             RowBox[{
             "\"\<AnimationRepetitions\>\"", "\[Rule]", "\[Infinity]"}]}], 
            "]"}]}], ";", "\[IndentingNewLine]", 
          RowBox[{"dispMake", "=", 
           RowBox[{"\"\<Overlay video saved to \>\"", "<>", "expMess"}]}], 
          ";", "\[IndentingNewLine]", 
          RowBox[{"mostRecent", "=", "\"\<make\>\""}], ";", 
          "\[IndentingNewLine]", 
          RowBox[{"make", "=", "False"}], ";"}]}], "]"}]}], ";"}], "\n", 
     ")"}]}]}], "]"}]], "Input",ExpressionUUID->"8b149e8d-f2c4-4aea-83ee-\
1be0c159fbb6"],

Cell[BoxData[
 TagBox[
  StyleBox[
   DynamicModuleBox[{$CellContext`a2b$$ = 1, $CellContext`dots$$ = 
    1, $CellContext`invertA$$ = False, $CellContext`invertB$$ = 
    False, $CellContext`make$$ = False, $CellContext`newDirA$$ = 
    False, $CellContext`newDirB$$ = False, $CellContext`thisImgA$$ = 
    1, $CellContext`thisImgB$$ = 1, Typeset`show$$ = True, 
    Typeset`bookmarkList$$ = {}, Typeset`bookmarkMode$$ = "Menu", 
    Typeset`animator$$, Typeset`animvar$$ = 1, Typeset`name$$ = 
    "\"untitled\"", Typeset`specs$$ = {{{
       Hold[$CellContext`newDirA$$], False, ""}, 
      Dynamic[Button[
        Text[
        "Select Directory A", 
         Background -> $CellContext`colorBack], $CellContext`newDirA$$ = 
        True]& ]}, {{
       Hold[$CellContext`newDirB$$], False, ""}, 
      Dynamic[Button[
        Text[
        "Select Directory B", 
         Background -> $CellContext`colorBack], $CellContext`newDirB$$ = 
        True]& ]}, {{
       Hold[$CellContext`thisImgA$$], 1, ""}, 
      Dynamic[
       Thread[Range[
          
          Length[$CellContext`imageNamesA]] -> \
$CellContext`imageNamesDispA]]}, {{
       Hold[$CellContext`thisImgB$$], 1, ""}, 
      Dynamic[
       Thread[Range[
          
          Length[$CellContext`imageNamesB]] -> \
$CellContext`imageNamesDispB]]}, {{
       Hold[$CellContext`a2b$$], 1, ""}, {
      1 -> DownArrow["", ""], 0 -> UpArrow["", ""]}}, {{
       Hold[$CellContext`invertA$$], False, "Invert A"}, {False, True}}, {{
       Hold[$CellContext`invertB$$], False, "Invert B"}, {False, True}}, {{
       Hold[$CellContext`dots$$], 1, ""}, {
      1 -> "show dots", 0 -> "hide dots"}}, {{
       Hold[$CellContext`make$$], False, ""}, 
      Dynamic[Button[
        Text[
        "Make\nOverlay", 
         Background -> $CellContext`colorBack], $CellContext`make$$ = 
        True]& ]}, {
      Hold[
       Row[{
         Column[{
           Manipulate`Place[1], 
           Manipulate`Place[2]}], 
         Column[{
           Manipulate`Place[3], 
           Manipulate`Place[4]}], 
         Manipulate`Place[5], 
         Spacer[10], 
         Column[{
           Manipulate`Place[6], 
           Manipulate`Place[7]}], 
         Manipulate`Place[8], 
         Manipulate`Place[9]}]], Manipulate`Dump`ThisIsNotAControl}}, 
    Typeset`size$$ = {1118., {3., 10.}}, Typeset`update$$ = 0, 
    Typeset`initDone$$, Typeset`skipInitDone$$ = False}, 
    DynamicBox[Manipulate`ManipulateBoxes[
     2, StandardForm, 
      "Variables" :> {$CellContext`a2b$$ = 1, $CellContext`dots$$ = 
        1, $CellContext`invertA$$ = False, $CellContext`invertB$$ = 
        False, $CellContext`make$$ = False, $CellContext`newDirA$$ = 
        False, $CellContext`newDirB$$ = False, $CellContext`thisImgA$$ = 
        1, $CellContext`thisImgB$$ = 1}, "ControllerVariables" :> {}, 
      "OtherVariables" :> {
       Typeset`show$$, Typeset`bookmarkList$$, Typeset`bookmarkMode$$, 
        Typeset`animator$$, Typeset`animvar$$, Typeset`name$$, 
        Typeset`specs$$, Typeset`size$$, Typeset`update$$, Typeset`initDone$$,
         Typeset`skipInitDone$$}, 
      "Body" :> (
       If[$CellContext`newDirA$$ == 
         True, $CellContext`thisChoice = SystemDialogInput["Directory", 
            NotebookDirectory[], WindowTitle -> 
            "Please locate a folder of watermark Points"]; 
         If[$CellContext`thisChoice =!= $Canceled, $CellContext`thisDirA = \
$CellContext`thisChoice; $CellContext`dirA = $CellContext`thisDirA; \
$CellContext`txtFilesTest = FileNames["*.txt", $CellContext`dirA]; 
           If[Length[$CellContext`txtFilesTest] > 
             0, $CellContext`txts = 
              Map[StringDrop[#, {-29, -24}]& , $CellContext`txtFilesTest]; \
$CellContext`correspondingJPGs = 
              Map[StringInsert[#, 
                 "SnapWMImg", -24]& , $CellContext`txts]; \
$CellContext`imageNamesCalc = Table[Part[
                  Map[
                  StringDrop[#, -4]& , $CellContext`correspondingJPGs], \
$CellContext`i] <> ".jpg", {$CellContext`i, 
                 
                 Length[$CellContext`correspondingJPGs]}]; \
$CellContext`imageNamesA = Table[
                If[FileExistsQ[
                   Part[$CellContext`imageNamesCalc, $CellContext`i]] == True, 
                 Part[$CellContext`imageNamesCalc, $CellContext`i], 
                 Nothing], {$CellContext`i, 
                 
                 Length[$CellContext`imageNamesCalc]}]; \
$CellContext`txtFilesA = Table[
                If[FileExistsQ[
                   Part[$CellContext`imageNamesCalc, $CellContext`i]] == True, 
                 Part[$CellContext`txtFilesTest, $CellContext`i], 
                 Nothing], {$CellContext`i, 
                 
                 Length[$CellContext`imageNamesCalc]}]; \
$CellContext`imageNamesDispA = 
              Map[FileBaseName, $CellContext`imageNamesA]; \
$CellContext`waterNameA = 
              Map[StringDrop[#, -28]& , $CellContext`imageNamesDispA]; \
$CellContext`thisImgAOld = 0; $CellContext`thisImgA$$ = 1; Null]; 
           If[$CellContext`imageNamesB == "", $CellContext`newDirB$$ = True; 
             Null]; $CellContext`newDirA$$ = False; $CellContext`startup = 
            False; Null]; Null]; 
       If[$CellContext`newDirB$$ == 
         True, $CellContext`thisChoice = SystemDialogInput["Directory", 
            NotebookDirectory[], WindowTitle -> 
            "Please locate a folder of watermark Points"]; 
         If[$CellContext`thisChoice =!= $Canceled, $CellContext`thisDirB = \
$CellContext`thisChoice; $CellContext`dirB = $CellContext`thisDirB; \
$CellContext`txtFilesTest = FileNames["*.txt", $CellContext`dirB]; 
           If[Length[$CellContext`txtFilesTest] > 
             0, $CellContext`txts = 
              Map[StringDrop[#, {-29, -24}]& , $CellContext`txtFilesTest]; \
$CellContext`correspondingJPGs = 
              Map[StringInsert[#, 
                 "SnapWMImg", -24]& , $CellContext`txts]; \
$CellContext`imageNamesCalc = Table[Part[
                  Map[
                  StringDrop[#, -4]& , $CellContext`correspondingJPGs], \
$CellContext`i] <> ".jpg", {$CellContext`i, 
                 
                 Length[$CellContext`correspondingJPGs]}]; \
$CellContext`imageNamesB = Table[
                If[FileExistsQ[
                   Part[$CellContext`imageNamesCalc, $CellContext`i]] == True, 
                 Part[$CellContext`imageNamesCalc, $CellContext`i], 
                 Nothing], {$CellContext`i, 
                 
                 Length[$CellContext`imageNamesCalc]}]; \
$CellContext`txtFilesB = Table[
                If[FileExistsQ[
                   Part[$CellContext`imageNamesCalc, $CellContext`i]] == True, 
                 Part[$CellContext`txtFilesTest, $CellContext`i], 
                 Nothing], {$CellContext`i, 
                 
                 Length[$CellContext`imageNamesCalc]}]; \
$CellContext`imageNamesDispB = 
              Map[FileBaseName, $CellContext`imageNamesB]; \
$CellContext`waterNameB = 
              Map[StringDrop[#, -28]& , $CellContext`imageNamesDispB]; \
$CellContext`thisImgBOld = 0; $CellContext`thisImgB$$ = 1; Null]; 
           If[$CellContext`imageNamesA == "", $CellContext`newDirA$$ = True; 
             Null]; $CellContext`newDirB$$ = False; $CellContext`startup = 
            False; Null]; Null]; 
       If[$CellContext`thisImgA$$ != $CellContext`thisImgAOld, \
$CellContext`textA = Import[
            
            Part[$CellContext`txtFilesA, $CellContext`thisImgA$$]]; \
$CellContext`expAraw = ToExpression[
            Part[
             StringSplit[$CellContext`textA, "\n"], 1]]; $CellContext`imgAraw = 
          ColorConvert[
            Import[
             Part[$CellContext`imageNamesA, $CellContext`thisImgA$$]], 
            "Grayscale"]; $CellContext`inDim = Max[
            ImageDimensions[$CellContext`imgAraw]]; 
         If[Max[$CellContext`inDim] > 1000, $CellContext`rescaleF = 
           1000./$CellContext`inDim, $CellContext`rescaleF = 1; 
           Null]; $CellContext`imgA = ImageResize[$CellContext`imgAraw, 
            
            Scaled[$CellContext`rescaleF]]; $CellContext`imgAraw = \
$CellContext`imgA; $CellContext`expA = $CellContext`rescaleF \
$CellContext`expAraw; $CellContext`expAraw = $CellContext`expA; \
$CellContext`mostRecent = 
          "newFile"; $CellContext`thisImgAOld = $CellContext`thisImgA$$]; 
       If[$CellContext`thisImgB$$ != $CellContext`thisImgBOld, \
$CellContext`textB = Import[
            
            Part[$CellContext`txtFilesB, $CellContext`thisImgB$$]]; \
$CellContext`expBraw = ToExpression[
            Part[
             StringSplit[$CellContext`textB, "\n"], 1]]; $CellContext`imgBraw = 
          ColorConvert[
            Import[
             Part[$CellContext`imageNamesB, $CellContext`thisImgB$$]], 
            "Grayscale"]; $CellContext`inDim = Max[
            ImageDimensions[$CellContext`imgBraw]]; 
         If[Max[$CellContext`inDim] > 1000, $CellContext`rescaleF = 
           1000./$CellContext`inDim, $CellContext`rescaleF = 1; 
           Null]; $CellContext`imgB = ImageResize[$CellContext`imgBraw, 
            
            Scaled[$CellContext`rescaleF]]; $CellContext`imgBraw = \
$CellContext`imgB; $CellContext`expB = $CellContext`rescaleF \
$CellContext`expBraw; $CellContext`expBraw = $CellContext`expB; \
$CellContext`mostRecent = 
          "newFile"; $CellContext`thisImgBOld = $CellContext`thisImgB$$]; 
       If[$CellContext`mostRecent == 
         "making", $CellContext`imgAMod = If[$CellContext`invertA$$ == True, 
            
            ColorNegate[$CellContext`imgA], $CellContext`imgA]; \
$CellContext`imgBMod = If[$CellContext`invertB$$ == True, 
            ColorNegate[$CellContext`imgB], $CellContext`imgB]; 
         If[$CellContext`a2b$$ == 1, 
           $CellContext`making[$CellContext`imgAMod, $CellContext`imgBMod, \
$CellContext`selectedA, $CellContext`selectedB, 
            Part[$CellContext`waterNameA, $CellContext`thisImgA$$], 
            
            Part[$CellContext`waterNameB, $CellContext`thisImgB$$], \
$CellContext`dots$$]]; If[$CellContext`a2b$$ == 0, 
           $CellContext`making[$CellContext`imgBMod, $CellContext`imgAMod, \
$CellContext`selectedB, $CellContext`selectedA, 
            Part[$CellContext`waterNameB, $CellContext`thisImgB$$], 
            
            Part[$CellContext`waterNameA, $CellContext`thisImgA$$], \
$CellContext`dots$$]]; Null]; If[
         And[
         Length[$CellContext`expA] == Length[$CellContext`expB], 
          Length[$CellContext`expA] > 0], $CellContext`ind = Flatten[
            Position[
            Map[Total, $CellContext`expA] Map[Total, $CellContext`expB], 
             PatternTest[
              Blank[], 0.01 < #& ]]]; $CellContext`selectedA = 
          Part[$CellContext`expA, $CellContext`ind]; $CellContext`selectedB = 
          Part[$CellContext`expB, $CellContext`ind]; $CellContext`imgAMod = 
          If[$CellContext`invertA$$ == True, 
            
            ColorNegate[$CellContext`imgA], $CellContext`imgA]; \
$CellContext`imgBMod = If[$CellContext`invertB$$ == True, 
            
            ColorNegate[$CellContext`imgB], $CellContext`imgB]; \
$CellContext`images = {$CellContext`imgAMod, $CellContext`imgBMod}; \
$CellContext`matches = {$CellContext`selectedA, $CellContext`selectedB}; \
$CellContext`displayMatches = {$CellContext`expA, $CellContext`expB}; \
$CellContext`imAll = Map[Image, 
            Map[ImageData, $CellContext`images]]; $CellContext`dispFile = 
          GraphicsRow[
            MapThread[Show[#, 
              Graphics[{Yellow, 
                MapIndexed[Inset[
                  
                  Part[#2, 
                   1], #]& , #2]}]]& , {$CellContext`imAll, \
$CellContext`displayMatches}]]; Null, 
         If[$CellContext`startup == True, $CellContext`dispFile = ""; 
          Null, $CellContext`dispFile = (("The number of points in " <> 
             ToString[
               Part[$CellContext`waterNameA, $CellContext`thisImgA$$]]) <> 
            " must equal the number of points in ") <> ToString[
             Part[$CellContext`waterNameB, $CellContext`thisImgB$$]]]]; 
       If[$CellContext`make$$ == True, $CellContext`mostRecent = "making"; 
         Null]; Which[$CellContext`mostRecent == 
         "newFile", $CellContext`dispFile, $CellContext`mostRecent == 
         "make", $CellContext`dispMake, $CellContext`mostRecent == "making", 
         "Now making animation...", $CellContext`mostRecent == "starting", 
         "Please select directories where the watermarks are located. The \
menu selector will appear twice, once for directory A and once for directory \
B."]), "Specifications" :> {{{$CellContext`newDirA$$, False, ""}, 
         Dynamic[Button[
           Text[
           "Select Directory A", 
            Background -> $CellContext`colorBack], $CellContext`newDirA$$ = 
           True]& ], ControlPlacement -> 
         1}, {{$CellContext`newDirB$$, False, ""}, 
         Dynamic[Button[
           Text[
           "Select Directory B", 
            Background -> $CellContext`colorBack], $CellContext`newDirB$$ = 
           True]& ], ControlPlacement -> 
         2}, {{$CellContext`thisImgA$$, 1, ""}, 
         Dynamic[
          Thread[Range[
             
             Length[$CellContext`imageNamesA]] -> \
$CellContext`imageNamesDispA]], ControlType -> PopupMenu, Background -> 
         RGBColor[
           Rational[1, 3], 1, 
           Rational[1, 3]], ControlPlacement -> 
         3}, {{$CellContext`thisImgB$$, 1, ""}, 
         Dynamic[
          Thread[Range[
             
             Length[$CellContext`imageNamesB]] -> \
$CellContext`imageNamesDispB]], ControlType -> PopupMenu, Background -> 
         RGBColor[
           Rational[1, 3], 1, 
           Rational[1, 3]], ControlPlacement -> 
         4}, {{$CellContext`a2b$$, 1, ""}, {
         1 -> DownArrow["", ""], 0 -> UpArrow["", ""]}, Background -> RGBColor[
           Rational[1, 3], 1, 
           Rational[1, 3]], ControlPlacement -> 
         5}, {{$CellContext`invertA$$, False, "Invert A"}, {False, True}, 
         Background -> RGBColor[
           Rational[1, 3], 1, 
           Rational[1, 3]], ControlPlacement -> 
         6}, {{$CellContext`invertB$$, False, "Invert B"}, {False, True}, 
         Background -> RGBColor[
           Rational[1, 3], 1, 
           Rational[1, 3]], ControlPlacement -> 
         7}, {{$CellContext`dots$$, 1, ""}, {
         1 -> "show dots", 0 -> "hide dots"}, Background -> RGBColor[
           Rational[1, 3], 1, 
           Rational[1, 3]], ControlPlacement -> 
         8}, {{$CellContext`make$$, False, ""}, 
         Dynamic[Button[
           Text[
           "Make\nOverlay", 
            Background -> $CellContext`colorBack], $CellContext`make$$ = 
           True]& ], ControlPlacement -> 9}, 
        Row[{
          Column[{
            Manipulate`Place[1], 
            Manipulate`Place[2]}], 
          Column[{
            Manipulate`Place[3], 
            Manipulate`Place[4]}], 
          Manipulate`Place[5], 
          Spacer[10], 
          Column[{
            Manipulate`Place[6], 
            Manipulate`Place[7]}], 
          Manipulate`Place[8], 
          Manipulate`Place[9]}]}, "Options" :> {SynchronousUpdating -> False},
       "DefaultOptions" :> {}],
     ImageSizeCache->{1162., {70., 76.}},
     SingleEvaluation->True],
    Deinitialization:>None,
    DynamicModuleValues:>{},
    Initialization:>({$CellContext`thisDirA = 
       "/Users/sethares/BillsMathematica/watermarks/overlayAnimation/", \
$CellContext`dirA = 
       "/Users/sethares/BillsMathematica/watermarks/overlayAnimation/", \
$CellContext`imageNamesA = "", $CellContext`thisImgAOld = 
       1, $CellContext`imageNamesB = "", $CellContext`startup = 
       True, $CellContext`thisDirB = 
       "/Users/sethares/BillsMathematica/watermarks/overlayAnimation/", \
$CellContext`dirB = 
       "/Users/sethares/BillsMathematica/watermarks/overlayAnimation/", \
$CellContext`thisImgBOld = 1, $CellContext`mostRecent = 
       "starting", $CellContext`making[
         Pattern[$CellContext`iA$, 
          Blank[]], 
         Pattern[$CellContext`iB$, 
          Blank[]], 
         Pattern[$CellContext`selA$, 
          Blank[]], 
         Pattern[$CellContext`selB$, 
          Blank[]], 
         Pattern[$CellContext`nameA$, 
          Blank[]], 
         Pattern[$CellContext`nameB$, 
          Blank[]], 
         Pattern[$CellContext`d$, 
          Blank[]]] := 
       Module[{}, $CellContext`dispMake = 
          "Working on animation..."; $CellContext`coordBBA = 
          CoordinateBoundingBox[$CellContext`selA$]; $CellContext`coordBBB = 
          CoordinateBoundingBox[$CellContext`selB$]; $CellContext`expLow = {
            Min[
             Part[$CellContext`coordBBA, 1, 1], 
             Part[$CellContext`coordBBB, 1, 1]], 
            Min[
             Part[$CellContext`coordBBA, 1, 2], 
             Part[$CellContext`coordBBB, 1, 2]]}; $CellContext`coordBBAhigh = 
          ImageDimensions[$CellContext`iA$] - 
           Part[$CellContext`coordBBA, 2]; $CellContext`coordBBBhigh = 
          ImageDimensions[$CellContext`iB$] - 
           Part[$CellContext`coordBBB, 2]; $CellContext`expHigh = {
            Min[
             Part[$CellContext`coordBBAhigh, 1], 
             Part[$CellContext`coordBBBhigh, 1]], 
            Min[
             Part[$CellContext`coordBBAhigh, 2], 
             Part[$CellContext`coordBBBhigh, 2]]}; $CellContext`dataRangeA = {
           Map[Min, 
              Transpose[$CellContext`selA$]] - $CellContext`expLow + 1, 
            Map[Max, 
              Transpose[$CellContext`selA$]] + $CellContext`expHigh - 
            1}; $CellContext`dataRangeB = {Map[Min, 
              Transpose[$CellContext`selB$]] - $CellContext`expLow + 1, 
            Map[Max, 
              Transpose[$CellContext`selB$]] + $CellContext`expHigh - 
            1}; $CellContext`trimA = 
          ImageTrim[$CellContext`iA$, $CellContext`dataRangeA]; \
$CellContext`trimB = 
          ImageTrim[$CellContext`iB$, $CellContext`dataRangeB]; \
$CellContext`selectedTrimA = $CellContext`selA$ - ConstantArray[
            Part[$CellContext`dataRangeA, 1], 
            
            Length[$CellContext`selA$]]; $CellContext`selectedTrimB = \
$CellContext`selB$ - ConstantArray[
            Part[$CellContext`dataRangeB, 1], 
            
            Length[$CellContext`selB$]]; {$CellContext`err, \
$CellContext`trans} = 
          FindGeometricTransform[$CellContext`selectedTrimB, \
$CellContext`selectedTrimA, Method -> "Linear", TransformationClass -> 
            "Similarity"]; $CellContext`imgTrans = 
          ImageTransformation[$CellContext`trimB, $CellContext`trans, 
            DataRange -> Full]; {$CellContext`highA = Image[
             HighlightImage[$CellContext`trimA, {
               Opacity[$CellContext`d$], 
               Red, $CellContext`selectedTrimA}]], $CellContext`highTrans = 
           Image[
             HighlightImage[$CellContext`imgTrans, {
               Opacity[$CellContext`d$], Red, 
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
               Style[$CellContext`nameA$, Gray], $CellContext`imgCtr1]}], 
            SetAlphaChannel[$CellContext`highTrans, 1/2], 
            Graphics[{
              Opacity[1/2], 
              Text[
               Style[$CellContext`nameB$, Gray], $CellContext`imgCtr2]}], 
            ImageSize -> 800, Background -> Gray]; If[Mean[
             Mean[
              Mean[
               ImageData[$CellContext`dispExample]]]] <= 
           0.5, $CellContext`textColor = White; $CellContext`backColor = 
            Black; Null, $CellContext`textColor = 
            Black; $CellContext`backColor = White; 
           Null]; $CellContext`fontScale = 14 (Part[
              ImageDimensions[$CellContext`dispExample], 2]/
            1200.); $CellContext`frames = Table[
            Show[
             SetAlphaChannel[$CellContext`highA, $CellContext`s], 
             Graphics[{
               Opacity[$CellContext`s], 
               Text[
                
                Style[$CellContext`nameA$, $CellContext`textColor, 
                 FontSize -> $CellContext`fontScale], $CellContext`imgCtr1]}], 
             SetAlphaChannel[$CellContext`highTrans, 1 - $CellContext`s], 
             Graphics[{
               Opacity[1 - $CellContext`s], 
               Text[
                
                Style[$CellContext`nameB$, $CellContext`textColor, 
                 FontSize -> $CellContext`fontScale], $CellContext`imgCtr2]}],
              ImageSize -> 400, 
             Background -> $CellContext`backColor], {$CellContext`s, \
$CellContext`range}]; 
         Which[FE`dots$$923 == 1, $CellContext`dotMess = "s", FE`dots$$923 == 
           0, $CellContext`dotMess = "h"]; $CellContext`outFile = 
          FileNameJoin[{
             NotebookDirectory[], 
             
             StringJoin[{
              "animation", $CellContext`nameA$, "-", $CellContext`nameB$, 
               "(", $CellContext`dotMess, ").gif"}]}]; $CellContext`expMess = 
          Export[$CellContext`outFile, $CellContext`frames, 
            "DisplayDurations" -> 1/5, "AnimationRepetitions" -> 
            Infinity]; $CellContext`dispMake = 
          "Overlay video saved to " <> $CellContext`expMess; \
$CellContext`mostRecent = "make"; FE`make$$923 = False; Null], 
       Attributes[$CellContext`iA$] = {Temporary}, 
       Attributes[$CellContext`iB$] = {Temporary}, 
       Attributes[$CellContext`selA$] = {Temporary}, 
       Attributes[$CellContext`selB$] = {Temporary}, 
       Attributes[$CellContext`nameA$] = {Temporary}, 
       Attributes[$CellContext`nameB$] = {Temporary}, 
       Attributes[$CellContext`d$] = {Temporary}, $CellContext`dispFile = 
       "", $CellContext`colorBack = 
       RGBColor[1/3, 1, 1/3], $CellContext`startup = 
        True; $CellContext`thisImgAOld = 1; $CellContext`thisImgBOld = 
        1; $CellContext`snapCount = 
        1; $CellContext`dirA = ($CellContext`dirB = 
         NotebookDirectory[]); $CellContext`mostRecent = 
        "starting"; $CellContext`dispFile = 
        ""; $CellContext`thisDirA = ($CellContext`thisDirB = 
         NotebookDirectory[]); $CellContext`imageNamesA = \
($CellContext`imageNamesB = ""); $CellContext`colorBack = 
        Lighter[Green]; $CellContext`making[
          Pattern[$CellContext`iA$, 
           Blank[]], 
          Pattern[$CellContext`iB$, 
           Blank[]], 
          Pattern[$CellContext`selA$, 
           Blank[]], 
          Pattern[$CellContext`selB$, 
           Blank[]], 
          Pattern[$CellContext`nameA$, 
           Blank[]], 
          Pattern[$CellContext`nameB$, 
           Blank[]], 
          Pattern[$CellContext`d$, 
           Blank[]]] := 
        Module[{}, $CellContext`dispMake = 
           "Working on animation..."; $CellContext`coordBBA = 
           CoordinateBoundingBox[$CellContext`selA$]; $CellContext`coordBBB = 
           CoordinateBoundingBox[$CellContext`selB$]; $CellContext`expLow = {
             Min[
              Part[$CellContext`coordBBA, 1, 1], 
              Part[$CellContext`coordBBB, 1, 1]], 
             Min[
              Part[$CellContext`coordBBA, 1, 2], 
              Part[$CellContext`coordBBB, 1, 2]]}; $CellContext`coordBBAhigh = 
           ImageDimensions[$CellContext`iA$] - 
            Part[$CellContext`coordBBA, 2]; $CellContext`coordBBBhigh = 
           ImageDimensions[$CellContext`iB$] - 
            Part[$CellContext`coordBBB, 2]; $CellContext`expHigh = {
             Min[
              Part[$CellContext`coordBBAhigh, 1], 
              Part[$CellContext`coordBBBhigh, 1]], 
             Min[
              Part[$CellContext`coordBBAhigh, 2], 
              
              Part[$CellContext`coordBBBhigh, 
               2]]}; $CellContext`dataRangeA = {Map[Min, 
               Transpose[$CellContext`selA$]] - $CellContext`expLow + 1, 
             Map[Max, 
               Transpose[$CellContext`selA$]] + $CellContext`expHigh - 
             1}; $CellContext`dataRangeB = {Map[Min, 
               Transpose[$CellContext`selB$]] - $CellContext`expLow + 1, 
             Map[Max, 
               Transpose[$CellContext`selB$]] + $CellContext`expHigh - 
             1}; $CellContext`trimA = 
           ImageTrim[$CellContext`iA$, $CellContext`dataRangeA]; \
$CellContext`trimB = 
           ImageTrim[$CellContext`iB$, $CellContext`dataRangeB]; \
$CellContext`selectedTrimA = $CellContext`selA$ - ConstantArray[
             Part[$CellContext`dataRangeA, 1], 
             
             Length[$CellContext`selA$]]; $CellContext`selectedTrimB = \
$CellContext`selB$ - ConstantArray[
             Part[$CellContext`dataRangeB, 1], 
             
             Length[$CellContext`selB$]]; {$CellContext`err, \
$CellContext`trans} = 
           FindGeometricTransform[$CellContext`selectedTrimB, \
$CellContext`selectedTrimA, Method -> "Linear", TransformationClass -> 
             "Similarity"]; $CellContext`imgTrans = 
           ImageTransformation[$CellContext`trimB, $CellContext`trans, 
             DataRange -> Full]; {$CellContext`highA = Image[
              HighlightImage[$CellContext`trimA, {
                Opacity[$CellContext`d$], 
                Red, $CellContext`selectedTrimA}]], $CellContext`highTrans = 
            Image[
              HighlightImage[$CellContext`imgTrans, {
                Opacity[$CellContext`d$], Red, 
                Map[
                 
                 InverseFunction[$CellContext`trans], \
$CellContext`selectedTrimB]}]]}; $CellContext`imgDim = 
           ImageDimensions[$CellContext`trimA]; $CellContext`imgCtr1 = 
           Round[{Part[$CellContext`imgDim, 1]/2, 60}]; $CellContext`imgCtr2 = 
           Round[{Part[$CellContext`imgDim, 1]/2, 
              Part[$CellContext`imgDim, 2] - 100}]; $CellContext`fontScale = 
           Max[
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
                Style[$CellContext`nameA$, Gray], $CellContext`imgCtr1]}], 
             SetAlphaChannel[$CellContext`highTrans, 1/2], 
             Graphics[{
               Opacity[1/2], 
               Text[
                Style[$CellContext`nameB$, Gray], $CellContext`imgCtr2]}], 
             ImageSize -> 800, Background -> Gray]; If[Mean[
              Mean[
               Mean[
                ImageData[$CellContext`dispExample]]]] <= 
            0.5, $CellContext`textColor = White; $CellContext`backColor = 
             Black; Null, $CellContext`textColor = 
             Black; $CellContext`backColor = White; 
            Null]; $CellContext`fontScale = 14 (Part[
               ImageDimensions[$CellContext`dispExample], 2]/
             1200.); $CellContext`frames = Table[
             Show[
              SetAlphaChannel[$CellContext`highA, $CellContext`s], 
              Graphics[{
                Opacity[$CellContext`s], 
                Text[
                 
                 Style[$CellContext`nameA$, $CellContext`textColor, 
                  FontSize -> $CellContext`fontScale], \
$CellContext`imgCtr1]}], 
              SetAlphaChannel[$CellContext`highTrans, 1 - $CellContext`s], 
              Graphics[{
                Opacity[1 - $CellContext`s], 
                Text[
                 
                 Style[$CellContext`nameB$, $CellContext`textColor, 
                  FontSize -> $CellContext`fontScale], \
$CellContext`imgCtr2]}], ImageSize -> 400, 
              Background -> $CellContext`backColor], {$CellContext`s, \
$CellContext`range}]; 
          Which[$CellContext`dots$$ == 1, $CellContext`dotMess = 
            "s", $CellContext`dots$$ == 0, $CellContext`dotMess = 
            "h"]; $CellContext`outFile = FileNameJoin[{
              NotebookDirectory[], 
              
              StringJoin[{
               "animation", $CellContext`nameA$, "-", $CellContext`nameB$, 
                "(", $CellContext`dotMess, ").gif"}]}]; $CellContext`expMess = 
           Export[$CellContext`outFile, $CellContext`frames, 
             "DisplayDurations" -> 1/5, "AnimationRepetitions" -> 
             Infinity]; $CellContext`dispMake = 
           "Overlay video saved to " <> $CellContext`expMess; \
$CellContext`mostRecent = "make"; $CellContext`make$$ = False; Null]; Null}; 
     Typeset`initDone$$ = True),
    SynchronousInitialization->True,
    UndoTrackedVariables:>{Typeset`show$$, Typeset`bookmarkMode$$},
    UnsavedVariables:>{Typeset`initDone$$},
    UntrackedVariables:>{Typeset`size$$}], "Manipulate",
   Deployed->True,
   StripOnInput->False],
  Manipulate`InterpretManipulate[1]]], "Output",ExpressionUUID->"c1aa64d0-\
4fe8-4008-8fdf-434f17268081"]
}, {2}]]
}, Open  ]]
},
WindowSize->{1441, 960},
Visible->True,
ScrollingOptions->{"VerticalScrollRange"->Fit},
ShowCellBracket->Automatic,
Deployed->True,
TrackCellChangeTimes->False,
FrontEndVersion->"13.0 for Mac OS X x86 (64-bit) (February 4, 2022)",
StyleDefinitions->"Default.nb",
ExpressionUUID->"02602b1e-89a7-47e2-a747-c69bc0b11d0f"
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
Cell[CellGroupData[{
Cell[1613, 39, 40020, 954, 3874, "Input",ExpressionUUID->"8b149e8d-f2c4-4aea-83ee-1be0c159fbb6"],
Cell[41636, 995, 29990, 635, 166, "Output",ExpressionUUID->"c1aa64d0-4fe8-4008-8fdf-434f17268081"]
}, {2}]]
}, Open  ]]
}
]
*)

(* End of internal cache information *)

(* NotebookSignature 8XOxhPYLNNSeBWzzjcXM5cI4 *)
