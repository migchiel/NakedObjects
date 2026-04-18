# Pharo Naked Objects
Experiments in the context of the NakedObjects architecture (http://www.nakedobjects.org/book/)


## Installation

You can load the code into Pharo using Metacello. The script below will load everything, including the tests and examples.

```Smalltalk
Metacello new
  repository: 'github://migchiel/NakedObjects';
  baseline: 'NakedObjects';
  load.
```


The script below will load the core framework only.

```Smalltalk
Metacello new
  repository: 'github://migchiel/NakedObjects';
  baseline: 'NakedObjects';
  load: 'Core'
```

