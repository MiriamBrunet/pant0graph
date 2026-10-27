# Thesis Code

## Table of Contents 
1. [Pantograph](#pantograph)
2. [Pant0graph](#pant0graph)

## Pantograph

_Taken from the README for the original Pantograph_

[This](https://github.com/jeprinz/pantograph) is the source code for Pantograph, a structure editor.
It was written by [Jacob Prinz](https://jeprinz.github.io/) and [Henry Blanchette](https://rybl.net).

POPL 2025 paper: [Pantograph: A Fluid and Typed Structure Editor](https://arxiv.org/pdf/2411.16571).

[Watch the Pantograph presentation](https://www.youtube.com/live/Jff0pIbj8PM?t=6092s).

[Try Pantograph online](https://pantographeditor.github.io/Pantograph/).


### Development

To develop Pantograph, you need the following command line tools installed:
- [pnpm](https://pnpm.io/installation)

To build the project:
```sh
pnpm install
pnpm build
```

To serve the web application:
```sh
pnpm serve
```

### Design

This implementation is designed to be language-generic.
The `Language.Pantograph.Generic.*` modules implement the mechanics of a Pantograph editor given an editor specification.
**To define a new editor**, you must define a term of the type `Language.Pantograph.Generic.Rendering.Base.EditorSpec l r`, where `l` is the type of _sort_ labels, and `r` is the type of _derivation_ labels.
Additionally, `l` and `r` must instantiate `Language.Pantograph.Generic.Grammar.IsRuleLabel l r`.

One complete specific editor is given in the codebase, and can be found in `Language.Pantograph.Specific.Currying`.
The editor implemented here is the same as the one demonstrated in the Pantograph paper, used in the Pantograph paper's user study, and available in the runnable artifact (and hosted online at `jeprinz.github.com/pantograph`).
This is a good place to start in order to understand how to define a new editor.
Other related editor fragments can be found among the other `Language.Pantograph.Specific.*` modules.

The general paradigm behind how languages are implemented is described in Section 5 of the paper.
A language consists of a set of _sorts_ (which are encoded trees of _sort labels_; see `Language.Pantograph.Generic.Grammar.Sort`), which are essentially the possible judgements, while a program is a derivation (which are encoded as trees of _derivation labels_, which are pairs of a _derivation rule label_ and a _rule variable substitution_; see `Language.Pantograph.Generic.Grammar.DerivTerm`) of a sort.

### Organization

The implementation in `src/` is organized as follows:
- `Data.*` modules contain miscelleneous generic data types
- `Halogen.*` modules contain extra Halogen-related functionalities
- `Language.Pantograph.Generic.*` modules contain the language-generic implementation of Pantograph
- `Language.Pantograph.Specific.*` modules contain editor instances for specific languages
  - in particular, in the current version of the repository, only `Language.Pantograph.Specific.Currying` is fully implemented
- `Language.Pantograph.Lib.*` modules contain useful functionalities for defining specific editor instances (for example, language-generically deriving the propagation rules as mentioned in the paper)
- `Tutorial.*` contains all the functionalities specific to the Pantograph tutorial (e.g. defining the tutorial UI and lessons)


  journal = {POPL},
  year = {2025},
  doi = {10.1145/3704864}
}

## Pant0graph
Pant0graph is a version of Pantograph that allows error insertion rather than just preserving text as an error. This is to remedy the issue discussed in the 
paper where Pantograph will force the user to edit in a certain order, always defining the variable before use and disallowing insertion of incorrect types. My 
changes involve allowing these errors to be inserted as errors and provided the user with a quick way to resolve them. My name for the modified version is a play on words of the original version and the concepts I have added, since in a program where `pantograph` is defined, `pant0graph` would be a hard-to-catch undefined variable.

### Additions
- Created the `CurrString` module, adding string support and several built in string functions to Currying.
- Allowed insertion of undeclared variables. They occur at the bottom of the buffer's suggested entries in red, separating `extraQueryEdits` into literals and errors.
- Added `Backpack`, which contains declarations for any free variables (above listed undeclared variables)
- Created shortened tutorial with `Backpack` and exercises to test if it provides increased usability.

