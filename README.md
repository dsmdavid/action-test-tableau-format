# Tableau format validator - Docker Action

Tests whether a list of twb files conform to a format standard.

Based on: [Brian Crant's tableau style validator](https://github.com/bcrant/tableau-style-validator)

# Requirements:

## modified_files:
    A list of files to test (full paths; e.g.: 
    `folder1/myworkbook.twb folder2/myotherworkbook`
## path_to_json:
    Path to a file in the repository that contains the style guide. e.g.
    `style_guide/example_style_guide.json`

## logger-level:
    The level to set the python logger to. Must be one of: 
    `DEBUG, INFO, WARNING, ERROR, CRITICAL`

# Outputs:
    A file to the root folder of the repo called `outputs.txt`
    