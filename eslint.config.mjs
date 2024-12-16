import eslintPluginAstro from 'eslint-plugin-astro'
import tseslint from 'typescript-eslint'
import typescript from '@typescript-eslint/eslint-plugin'
import stylistic from '@stylistic/eslint-plugin'

export default [
  ...tseslint.configs.recommended,
  ...eslintPluginAstro.configs.recommended,
  {
    files: ['**/*.mjs', '**/*.js', '**/*.jsx', '**/*.ts', '**/*.tsx', '**/*.astro'], 
    plugins: {
      '@stylistic': stylistic,
      'astro': eslintPluginAstro,
    },
    rules: {
      ...typescript.configs.recommended.rules, 

      'no-unused-vars': 'off', 
      'indent': ['error', 2],
      'semi': ['error', 'never'],
      'quotes': ['error', 'single'],

      'astro/semi': ['error', 'never'],

      '@stylistic/indent': ['error', 2],
      '@stylistic/eol-last': ['error', 'always'],
      '@stylistic/semi': ['error', 'never'],
      '@stylistic/quotes': ['error', 'single'],
      
      '@typescript-eslint/no-explicit-any': 'off',
      '@typescript-eslint/no-this-alias': 'off',
      '@typescript-eslint/no-namespace': 'off',
      '@typescript-eslint/no-unused-vars': [
        'warn',
        {
          'argsIgnorePattern': '^_',
          'varsIgnorePattern': '^_',
          'caughtErrorsIgnorePattern': '^_'
        }
      ]
    },
  }
]
