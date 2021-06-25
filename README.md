# Tableau format validator - Docker Action

Tests whether a list of twb files conform to a format standard.

For info on how to build your first Container action, see the [toolkit docs folder](https://github.com/actions/toolkit/blob/master/docs/container-action.md).

Based on: [Brian Crant's tableau style validator](https://github.com/bcrant/tableau-style-validator)

# Requirements:

## modified_files:
    A list of files to test (full paths; e.g.: `folder1/myworkbook.twb folder2/myotherworkbook`)
## path_to_json:
    Path to a file in the repository that contains the style guide (e.g. `style_guide/example_style_guide.json`)

# Outputs:
    A file to the root folder of the repo called `outputs.txt`
    