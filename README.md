[![CircleCI](https://circleci.com/gh/IgorShkidchenko/lazy_navigator/tree/master.svg?style=svg)](https://circleci.com/gh/IgorShkidchenko/lazy_navigator/tree/master) [![Maintainability](https://api.codeclimate.com/v1/badges/25e47f7e18c7de8dffbb/maintainability)](https://codeclimate.com/github/IgorShkidchenko/lazy_navigator/maintainability) [![Gem Version](https://badge.fury.io/rb/lazy_navigator.svg)](https://badge.fury.io/rb/lazy_navigator)
# LazyNavigator
###### Gem that generates bash script which opens your IDE and terminal in last project folder(which you point out in constant), and if you want executes some additional bash commands, after that script closes old terminal

## Installation
```~$ cd ~```

``` $ gem install lazy_navigator ```

##### create scripts files by runnig this commands in your terminal:

```~$ irb```

```> require 'lazy_navigator'```

```> LazyNavigator::Generator.g```

 ```> exit ```

##### then edit constants in generated lazy_navigator/last_project.rb file
PATH_TO_LAST_PROJECT = 'your last project path'

IDE = your ide name in bash, for example Visual Studio Code = 'code'
## Usage

in your home folder run

```~$ ./l```
##### also you can pass argument 'command:' in lead method which executes bash command in opening terminal
for example:
```LazyNavigator::Opener.lead(path: PATH_TO_LAST_PROJECT, ide: IDE, command: 'echo hello world')```

##### if you want you can add this script to autoload when OS starts up

https://askubuntu.com/questions/228304/how-do-i-run-a-script-at-start-up

##### if you want you can add this script to autostart when your OS
## License
The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
