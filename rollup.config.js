import imba from 'imba/rollup.js';
import commonjs from 'rollup-plugin-commonjs';
import resolve from 'rollup-plugin-node-resolve';
import postcss from 'rollup-plugin-postcss';

export default {
  input: './src/docs.imba',
  output: {
    file: './public/bundle.js',
    format: 'esm',
    name: 'bundle',
    sourcemap: true,
  },
  plugins: [
    imba({ target: 'web' }),
    resolve({
      extensions: [
        '.imba2',
        '.imba',
        '.mjs',
        '.js',
        '.json',
        '.scss',
        '.css',
      ],
    }),
    commonjs(),
    postcss({
      modules: false,
      extract: true,
      use: [
        [
          'sass',
          {
            includePaths: ['./node_modules'],
          },
        ],
      ],
    }),
  ],
};
