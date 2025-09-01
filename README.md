# WooCommerce REST API Docs #

Repository of documentation REST API WooCommerce.

This project is based on [Slate](https://github.com/tripit/slate).

## Usage ##

### Updating and building the docs

The docs for the latest version of the REST API (v3) are in `source/includes/wp-api-v3`. Each section of the docs has its own Markdown file. Once you have made changes, you can generate the docs locally with the following:

```bash
./build.sh
```

After the build script has finished, the generated docs can be found in the `build` directory. Open the `index.html` file in your browser to view the local version of the docs site.

### Deploying the docs

When you merge a PR to the trunk branch of this repository, a workflow runs that will automatically deploy the generated docs to the `gh-pages` branch. However, you can also deploy manually with the following:

```bash
./deploy.sh
```
