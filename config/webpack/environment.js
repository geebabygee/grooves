const { environment } = require('@rails/webpacker')

const nodeModulesLoader = environment.loaders.get('nodeModules')
if (!Array.isArray(nodeModulesLoader.exclude)) {
  nodeModulesLoader.exclude = (nodeModulesLoader.exclude == null)
    ? []
    : [nodeModulesLoader.exclude]
}
nodeModulesLoader.exclude.push(/mapbox-gl/) // replace `some-library` with
                                               // the actual path to exclude
module.exports = environment
