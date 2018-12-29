[![CircleCI](https://circleci.com/gh/IgorShkidchenko/lazy_navigator/tree/master.svg?style=svg)](https://circleci.com/gh/IgorShkidchenko/lazy_navigator/tree/master) [![Maintainability](https://api.codeclimate.com/v1/badges/25e47f7e18c7de8dffbb/maintainability)](https://codeclimate.com/github/IgorShkidchenko/lazy_navigator/maintainability)
# LazyNavigator
###### Gem that generates bash script which opens terminal and your IDE in last project folder(which you point out in constant), and if you want executes some additional bash commands

## Installation
``` $ gem install lazy_navigator ```

##### create scripts files by runnig this commands in your terminal:
```~$ cd ~```
```~$ irb```
```> require 'lazy_navigator'```
```> LazyNavigator::Generator.g```
 ```> exit ```
##### then edit constants in generated lazy_navigator/last_project.rb file
PATH_TO_LAST_PROJECT = 'your last project path'
IDE = your ide name in bash
## Usage

in your home folder run
```~$ ./l```
##### also you can pass argument command: in lead method which execute bash command in opening terminal
for example: .lead(path: PATH_TO_LAST_PROJECT, command: 'echo hello world')
## License
The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
