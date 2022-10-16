## Lodestar-Components

Lodestar Components repo is a collection of styles, javascript, and elm components that are used across all of Lodestar's frontend properties.

The Lodestar team forked this repository from Compound, and we are open-sourcing all our code additions as a result.

## Sample App

This repository is mostly used as a pure component library, but there is a very basic sample app for helping test connect Eth.

To get started, first clone this repo:

```bash
> git clone https://github.com/LodestarFinance/lodestar-components.git && cd lodestar-components
```

Next, install yarn dependencies (note, you should not use `npm` instead of `yarn` during `install` because `npm` does not respect `yarn.lock`.):

```bash
> yarn install
```

Next, start your development server for the sample app:

```bash
> yarn start
```

Lastly navigate to this url; for some reason webpack dev server isn't serving as default :(

```
http://localhost:3000/app.html
```
