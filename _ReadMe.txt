Interested in Watermarks or Chain Lines?

Perhaps you have a collection of watermarks that you want to study with an eye towards identifying moldmates? Maybe you would like to try out the watermark/chainline software and see how they might be useful to you? If so, this is the place.

Software Overview

We've been studying the internal structure of historical papers for a while now, and the three main features are watermarks, chain lines, and laid lines, as discussed at length in some of our publications listed below. At the present time, software is available to help study the watermarks and chain lines, while the laid line programs are still under development. This page provides an overview of what is available and downloadable and is intended to give an idea of exactly what you need to do to run the software.

There are two basic work-flows, and which you choose will depend on what you wish to accomplish. The first is the coding method, where the software is used to extract numerical codes for the watermarks and chain lines (and eventually laid lines), and the methods can be used synergistically to examine the moldmate status of the paper. The second direct method provides tools to examine the watermarks and to create animated overlays -- direct examination of these overlays is often enough to establish the moldmate status of candidate watermarks. The direct method can also be used to coordinate and conduct a library search, in which moldmates of the same type can be rapidly and (semi-automatically) searched in order to locate good candidates for moldmate status.

What You Need to Run the Software

Our software modules are written in Mathematica (sometimes called the Wolfram Language) and can be run on most PCs, Macs, and Linux machines. To run the software, download the free Wolfram Player. Once this is installed, the program modules should run by either double clicking on the program icon or by opening the Player and selecting the desired program from the Files menu. All our programs are released under and open source license, and all are available in both source code and in the "Computable Data Format" (*.cdf) which can be run directly from the free Mathematica Player. Alternatively, if you have access to the full Mathematica, you can download (and edit) the source code "Notebooks" (*.nb) for these modules. 

Coding Software

In the program watermarkMarker, the user picks pairs of points that are joined to form lines. For example, the scissors watermark on the right can be annotated using the seven lines shown. The program then calculates and displays all the ratios of the lengths between all the lines, and these form the basis of a code that precisely describes the watermark. Details on the use of the program, including a tutorial, can be found in the User's Guide.

In the program chainlineMarker, the user selects a straight line (as shown in green below) and then picks points along that line that intersect the chain lines. For example, the three excerpts below each show small red plus signs at intersections with the seven chain lines. The program then calculates and displays all the ratios of the lengths between all the chainlines, and these form the basis of a code that precisely describes the pattern of the chain lines. Details on the use of the program, including a tutorial, can be found in the User's Guide.

Direct-Method Software

In the modules watermarkPointMarker, the user selects and marks a series of points that can be precisely located. For example, in the Eaqgle watermark at the right, 14 points are chosen; most lie at the intersections of two features, at corners, or at other precisely locatable spots. This is done for two (or more) watermarks of the same type (for example, two Eagles or two Cardinal's Hats). The program then calculates the transformation that best maps all the marked points on one image onto all the marked points on the second. In the sister program visualizeOverlays, the output of watermarkPointMarker is used to superimpose the two images and an overlay video is created. The overlay videos are ideal for observing minute differences in the two watermark images; if no differences are found, the watermarks likely form a moldmate pair. All the overlay videos throughout the LeoCode site were made using this software. Details on the use of the programs, including tutorials, can be found in the User's Guide. 

Library Building and Search

Once a collection of watermarks of the same type have been marked by watermarkPointMarker, an exciting extension becomes possible: semi-automated search of a library of watermarks. This is implemented in two closely related software modules. watermarkLibraryBuilder calculates the distance between all watermarks in two folders. This can be ideal for an initial parsing of a data base of watermarks of the same type in order to divide them into groups that are identical (moldmates), similar (possible twins), and dissimilar. The second module, watermarkLibrarySearch, calculates the distance between a selected watermark and all those in a specified folder. The output displays a bar graph like that on the right where short bars mean very similar and larger bars mean quite different. Values less than about one indicate probable moldmate status. Details on the use of the programs, including tutorials, can be found in the User's Guides. Download all the files in the folder UsersGuide -- the images will be useful in following the descriptions in the Guides. 

All of the above program modules are released as open source software and are available directly for download. If you are a programmer and would like to consider contributing to this effort, we welcome help, as both source code and executables can be found at the GitHub site.

Related Publications

Johnson, Jr., C. Richard, William A. Sethares, and Margaret Holben Ellis. “Paper Moldmate Verification Protocol.” January 26, 2021. https://people.ece.cornell.edu/johnson/MoldmateVerificationProtocol-1-26-21.pdf.

Johnson, Jr., C. Richard, William A. Sethares, and Margaret Holben Ellis. “Automated Overlay Videos for Accurate Rembrandt Watermark Comparisons.” Originally submitted to the Journal of Historians of Netherlandish Art, December 2020, revised/extended, January 2021. https://people.ece.cornell.edu/johnson/AOV-JHNA-1-19-21wAuthors.pdf.

Johnson, Jr., C. Richard, William A. Sethares, Margaret Holben Ellis, and Saira Haqqi. “Hunting for Paper Moldmates among Rembrandt’s Prints.” IEEE Signal Processing Magazine: Art Investigation 32, no. 4 (July 2015): 28–37

Sethares, William A., Margaret Holben Ellis, and C. Richard Johnson, Jr. “Computational Watermark Enhancement in Leonardo’s Codex Leicester.” Journal of the American Institute for Conservation 59, no. 2 (March 2020): 87-96. https://doi.org/10.1080/01971360.2019.1703483

Credits:

Much of this project has been made possible with support from the Getty Foundation through its grants "Applying Digital Image Processing Algorithms to the Study of Prints and Drawings" and "Computational Characterization of Historic Papers via Watermarks, Chain Lines, and Laid Lines." We also thank Fred Schroeder (Gates Collection) – who shared and nurtured our investigations. Images from the Codex Leicester are courtesy of the Gates Collection. Images from the Codex Arundel are © British Library Board: Arundel MS 263.
