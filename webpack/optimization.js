const ImageMinimizerPlugin = require('image-minimizer-webpack-plugin')

module.exports = () => ({
  minimizer: [
    new ImageMinimizerPlugin({
      minimizer: {
        implementation: ImageMinimizerPlugin.imageminMinify,

        options: {
          plugins: [
            ['gifsicle', { interlaced: true       }],
            ['jpegtran', { progressive: true      }],
            ['optipng',  { optimizationLevel: 5   }],
            ['svgo',     { name: 'preset-default' }]
          ]
        }
      }
    })
  ],

  splitChunks: {
    chunks: 'all'
  }
})
