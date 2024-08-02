const path = require('path');

module.exports = {
  resolve: {
    fallback: {
      util: require.resolve('util/')
    }
  },
  devtool: false, // Disable source maps
  ignoreWarnings: [
    {
      module: /node_modules\/starknet-types-07\/dist\/.*/,
      message: /Failed to parse source map/
    }
  ],
  // Other configurations can go here
};
