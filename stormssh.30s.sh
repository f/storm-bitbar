#!/usr/bin/env bash
#
# <bitbar.title>Storm SSH</bitbar.title>
# <bitbar.version>v0.0.1</bitbar.version>
# <bitbar.author>Fatih Kadir Akın</bitbar.author>
# <bitbar.author.github>f</bitbar.author.github>
# <bitbar.image>https://raw.githubusercontent.com/emre/storm/master/resources/logos/storm-logo-square.png</bitbar.image>
# <bitbar.desc>Connects to SSH via storm-ssh</bitbar.desc>
# <bitbar.dependencies>shell,ssh,storm</bitbar.dependencies>
#
# Storm SSH Plugin
# by Fatih Kadir Akın (@f)
#
# Shosw ssh connections and connects them via storm-ssh

export PATH="/usr/local/bin:/usr/bin:$PATH"
echo " | image=iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABGdBTUEAALGPC/xhBQAAAAlwSFlzAAALEwAACxMBAJqcGAAABCRpVFh0WE1MOmNvbS5hZG9iZS54bXAAAAAAADx4OnhtcG1ldGEgeG1sbnM6eD0iYWRvYmU6bnM6bWV0YS8iIHg6eG1wdGs9IlhNUCBDb3JlIDUuNC4wIj4KICAgPHJkZjpSREYgeG1sbnM6cmRmPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5LzAyLzIyLXJkZi1zeW50YXgtbnMjIj4KICAgICAgPHJkZjpEZXNjcmlwdGlvbiByZGY6YWJvdXQ9IiIKICAgICAgICAgICAgeG1sbnM6dGlmZj0iaHR0cDovL25zLmFkb2JlLmNvbS90aWZmLzEuMC8iCiAgICAgICAgICAgIHhtbG5zOmV4aWY9Imh0dHA6Ly9ucy5hZG9iZS5jb20vZXhpZi8xLjAvIgogICAgICAgICAgICB4bWxuczpkYz0iaHR0cDovL3B1cmwub3JnL2RjL2VsZW1lbnRzLzEuMS8iCiAgICAgICAgICAgIHhtbG5zOnhtcD0iaHR0cDovL25zLmFkb2JlLmNvbS94YXAvMS4wLyI+CiAgICAgICAgIDx0aWZmOlJlc29sdXRpb25Vbml0PjI8L3RpZmY6UmVzb2x1dGlvblVuaXQ+CiAgICAgICAgIDx0aWZmOkNvbXByZXNzaW9uPjU8L3RpZmY6Q29tcHJlc3Npb24+CiAgICAgICAgIDx0aWZmOlhSZXNvbHV0aW9uPjcyPC90aWZmOlhSZXNvbHV0aW9uPgogICAgICAgICA8dGlmZjpPcmllbnRhdGlvbj4xPC90aWZmOk9yaWVudGF0aW9uPgogICAgICAgICA8dGlmZjpZUmVzb2x1dGlvbj43MjwvdGlmZjpZUmVzb2x1dGlvbj4KICAgICAgICAgPGV4aWY6UGl4ZWxYRGltZW5zaW9uPjE2PC9leGlmOlBpeGVsWERpbWVuc2lvbj4KICAgICAgICAgPGV4aWY6Q29sb3JTcGFjZT4xPC9leGlmOkNvbG9yU3BhY2U+CiAgICAgICAgIDxleGlmOlBpeGVsWURpbWVuc2lvbj4xNjwvZXhpZjpQaXhlbFlEaW1lbnNpb24+CiAgICAgICAgIDxkYzpzdWJqZWN0PgogICAgICAgICAgICA8cmRmOkJhZy8+CiAgICAgICAgIDwvZGM6c3ViamVjdD4KICAgICAgICAgPHhtcDpNb2RpZnlEYXRlPjIwMTY6MDM6MjUgMTA6MDM6MTM8L3htcDpNb2RpZnlEYXRlPgogICAgICAgICA8eG1wOkNyZWF0b3JUb29sPlBpeGVsbWF0b3IgMy40LjI8L3htcDpDcmVhdG9yVG9vbD4KICAgICAgPC9yZGY6RGVzY3JpcHRpb24+CiAgIDwvcmRmOlJERj4KPC94OnhtcG1ldGE+Cgez/i8AAAGbSURBVDgRddLPK2ZRGMBxL4oxfqUmE9LMwoIVxiykxtjYioWtWNAsRpmFheJPENlYzMYOzZKyMKXwJ5Ai1ORH5Nf4sZgZzPd73fPW7e196nPPc+573nue+5ybyknGe6afUIdrPKMar3CFHazjABkxzJ1T+KcRlOAttuG9wDVfkYhmZg9w0QmqYPTiBlbzF+Eh9+SNyMn1QnTBMo1VHKMCpfgAN2jFdxhF6DHJ90K0vwzRDgtx/pFxE3vxfJ/xEIUoxhnSMUNmeTbJXd29H1aVQtYIFSyy4guW8Bv2wF260YRKXMINfmIXiXCXWXQiPNT+eKw2NTTP8RxWF0VeSBg9Bc/c7t7hAt/wDr7vP3i0NrADy0j0gXkUn7k2oA0uLIi9YRzFI6xkHOlyB8hrcQtL9mNxPg8XG5Y+hzGUwa81/YAWcptoTOMPtvAahv3wRPpgc40jL6FhP8iH4MJyTMS5723YK+/XOCF8jZUoiy8+aArufA3LzsZPehLR5imSEO4+iHr4tVl+OKUnck/pFzawBu9lRHi/jB+y3fgPn4temHEW8cYAAAAASUVORK5CYII= dropdown=false"
echo "---"
export STORM_CONNECTION=$(storm list | grep "\->" | wc -l)
echo "$STORM_CONNECTION connections"
echo "---"
storm list | grep "\->" | sed -rn "s/\s*(.*)\->.*/\1/p" | sed -r "s/\x1B\[([0-9]{1,2}(;[0-9]{1,2})?)?[mGK]//g" | sed -rn "s/(.*)/\1 | color=black bash=ssh param1=\1/p"
