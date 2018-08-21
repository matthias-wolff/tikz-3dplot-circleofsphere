### The tikz-3dplot-circleofsphere Package: Drawing Circles of a Sphere with tikz-3dplot

#### Abstract
A _circle of a sphere_ is a circle drawn on a spherical surface like, for instance, circles of latitude or longitude. 
Circles in arbitrary 3D positions can be drawn with TikZ [2] very easily using a transformed coordinate system provided 
by the `tikz-3dplot` package [1] (that is because TikZ can only draw circles on the _xy_-plane). However, automatically 
distinguishing the parts of the circle lying on the front and back sides of the sphere, e.g. by drawing a solid arc on 
the front side and a dashed one on the back side, is a somewhat tricky feat. The `tikz-3dplot-circleofsphere` package 
will perform that feat for you.

__Examples__ 
<table>
  <tr>
    <td style="vertical-align:middle"><img alt="Example 1" src="https://rawgit.com/matthias-wolff/tikz-3dplot-circleofsphere/master/images/example_frontpage1.png"></td>
    <td style="vertical-align:middle"><img alt="Example 2" src="https://rawgit.com/matthias-wolff/tikz-3dplot-circleofsphere/master/images/example_frontpage2.png"></td>
  </tr>
  <tr>
    <td style="text-align:center; border:none; vertical-align:top"><a href="https://rawgit.com/matthias-wolff/tikz-3dplot-circleofsphere/master/example_frontpage1.tex">Example 1</a>: Latitude-longitude grid</td>
    <td style="text-align:center; border:none; vertical-align:top"><a href="https://rawgit.com/matthias-wolff/tikz-3dplot-circleofsphere/master/example_frontpage2.tex">Example 2</a>: Bunch of great circles</td>
  </tr>
</table>

#### Package Documentation
[Click here to read package documentation](tikz-3dplot-circleofsphere.pdf).

#### Installation
Download the [`tikz-3dplot-circleofsphere.sty`](https://rawgit.com/matthias-wolff/tikz-3dplot-circleofsphere/master/tikz-3dplot-circleofsphere.sty) file into your project folder and include the package with 
`\usepackage{tikz-3dplot-circleofsphere}`.

#### References
1. Jeff Hein. The tikz-3dplot package. http://mirror.ctan.org/graphics/pgf/contrib/tikz-3dplot/tikz-3dplot_documentation.pdf, 2012 Retrieved July 27, 2018.
2. Till Tantau. Tikz & pgf - manual for version 3.0.1a. http://mirror.ctan.org/graphics/pgf/base/doc/pgfmanual.pdf, 2015. Retrieved July 27, 2018.
