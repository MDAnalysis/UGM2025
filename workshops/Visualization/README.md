## Visualization workshop @ MDAnalysis UGM2025

> [!WARNING]
> Bring your laptop charger!
> Blender really loves to drain your battery. If you don't bring your laptop charger you will probably run out of battery!

## Data files

> [!TIP]
> Bring your own data!
> We encourage you bringing your own data to visualize. If MDAnalysis can read your topology & trajectory - you _should_ be able to import it into Molecular Nodes!

If you want to work with some of the example data from MDAnalysisData, you can use this code to download it into your `~/MDAnalysis_data/`:

```py
# pip install MDAnalysisData
from MDAnalysisData import datasets
adk = datasets.fetch_adk_equilibrium()
```


## Install Blender

You'll need to [download and install Blender](https://www.blender.org/download/). 
The current version is 4.5.4. Please make sure you have the latest version installed.

In 1.5 weeks after this workshop Blender 5.0 will be released.
Some aspects will change in the 5.0 series but the fundamentals learnt in this workshop will remain relevant.

## Molecular Nodes Documentation

Documentation for Molecular Nodes can be found [on the website](https://bradyajohnston.github.io/MolecularNodes/).

Installation will be covered in the workshop - but feel free to follow the [installation instructions](https://bradyajohnston.github.io/MolecularNodes/installation.html) beforehand to have it installed.

The currently released version of Molecular Nodes is `4.5.5`.

## Workshop Materials

For the workshop, we will mostly be covering material described in the [Blender's Interface](https://bradyajohnston.github.io/MolecularNodes/tutorials/interface.html) and [Trajectories](https://bradyajohnston.github.io/MolecularNodes/tutorials/trajectories.html) tutorials.

There are additionally a series of YouTube videos introducing and covering different aspects of Molecular Nodes. They are quite outdated now but a lot of the central ideas of working in node trees remains the same and are still useful.

![https://youtu.be/CvmFaRVmZRU](https://img.youtube.com/vi/CvmFaRVmZRU/0.jpg)

## Additional Resources: 

Scientific Vizualisation course with Blender: https://surf-visualization.github.io/blender-course/

Links to additional miscenllaneous resources: https://github.com/BradyAJohnston/MolecularNodes/issues/734#issue-2847207357
