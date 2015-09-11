Ever thought about embedding your web based widgets into any website? This is a powerful [brunch][lk-brunchio] boilerplate that allows you to create such widgets very efficiently. It encourages best practices in all aspects and assumes coffee-script for js and jade for html. You can use any css framework / pre-processor of your choice.


Definition
----------
What is a web widget?

A web widget is basically a web-based application that is designed to be embedded anywhere. Use cases include but aren't limited to

- An insurance company's travel product purchase flow inside an airline's online purchase flow as a middle step
- A hardware spec comparison widget inside an online hardware store
- An investment product selection and purchase flow inside a bank's post login dashboard
- A chat window inside a product catalogue

Your imagination is the limit.


Usage
-----
###### 1. Be sure you have [brunch][lk-brunch-io] installed
```shell
sudo npm install -g brunch
```

###### 2. Get this project
```shell
# either
git clone https://github.com/githistory/web-widget.git
# or
brunch new gh:githistory/web-widget
```

###### 3. ```cd``` into your project directory and initialize it
```shell
npm install
bower install
```

###### 4. Start developing
```shell
brunch watch
```
This watches any changes in your source code, regenerates target code in dist folder and [livereload][lk-livereload-com]s any connected browser sessions.

If you don't already have a server started to serve static files, you can simply do
```shell
brunch watch --server
```
For more commands / options consult brunch documentation.


Testing
-------
You can start testing right away as you code. Unit testing is as simple as running
```shell
npm test
```
This starts [karma][lk-karma-io] with Chrome as the js engine. It watches for changes in source code and auto-runs test cases under test folder. [Jasmine][lk-jasmine-io] is the default assertion library.


Notes
-----
- All .coffee files in your source, along with js files from bower_components are compiled and merged into dist/js/widget.js
- All style related files are compiled and merged into dist/css/widget.css
- Files with .jade extension are considered dynamic templates and compiled and merged into widget.js as angular templates. Those with .static.jade extension are compiled and copied as is to dist folder with .static.jade replaced with .html.
- No CSS libraries, such as bootstrap or foundation, are included. You can install whichever you want using bower.
- No CSS pre-processor is assumed. You're free to choose your favorite. Less, Sass, Stylus compilers are included.


Copyright
---------
Copyright © 2015 by William Huang

All rights reserved. No part of this publication may be reproduced, distributed, or transmitted in any form or by any means, including photocopying, recording, or other electronic or mechanical methods, without the prior written permission of the publisher, except in the case of brief quotations embodied in critical reviews and certain other noncommercial uses permitted by copyright law.












[lk-brunch-io]: http://brunch.io 'Brunch.IO'
[lk-livereload-com]: http://livereload.com 'LiveReload.com'
[lk-karma-io]: http://karma-runner.github.io 'Karma.IO'
[lk-jasmine-io]: http://jasmine.github.io 'Jasmine.IO'
