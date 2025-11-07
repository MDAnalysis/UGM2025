## OpenADMET workshop @ MDAnalysis UGM2025

The OpenADMET Demos are a hands-on way to explore the OpenADMET ecosystem in action. The overall arc of the demos follows a typical situation in computational modelling for ADMET. Curating data for an ADMET endpoint of interest, training and comparing a series of machine learning models and then inferring on an unseen set of molecules. Each demo is designed to highlight key capabilities, from data curation, basic featurization and model training to more advanced workflows such as deep learning and active learning for ADMET prediction.


### Content

We are going to work through a typical situation in ADMET modeling where we wish to construct a model for an ADMET endpoint of choice and apply it on a series of molecules.

For these tutorials, we will focus on Cytochrome P450 (CYP450) inhibition as our case study, particularly CYP3A4, the most pharmaceutically relevant isoform and the most abundant in the liver. CYP3A4 is responsible for metabolizing roughly 50% of marketed drugs and plays a central role in drug–drug interactions (DDIs). Inhibition of CYP3A4 can lead to elevated plasma levels of co-administered drugs, potentially causing toxicity or therapeutic failure, making it a critical ADMET endpoint in early-stage drug discovery.

The OpenADMET showcase notebook brings everything together into a complete, compact, end-to-end workflow. It demonstrates how to:

* Ingest and curate datasets from internal or external sources.
* Apply featurization to transform chemical matter into model-ready representations.
* Train multiple models using Anvil with reproducible YAML-based recipes.
* Evaluate performance across standard metrics and generate comparative reports.
* Run inference on new compounds to support decision-making in real research contexts.



### Installing

Create a new conda environment for this workshop with:

```bash
micromamba create -f environment.yaml
micromamba activate openadmet_demos
```

You can also try the notebook on [Google Colab](https://try.openadmet.org/) without installing anything locally.


See the [openadmet-models git repo](https://github.com/OpenADMET/openadmet-models), our [demos](https://demos.openadmet.org) and [documentation](https://docs.openadmet.org) to learn more!


### Get Connected

We are early in our journey at OpenADMET and are eager to collaborate with others in the community. Get in touch via our [website](https://openadmet.org).