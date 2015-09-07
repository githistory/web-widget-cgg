Ever thought about embedding your web based widgets into any website? This is a powerful [brunch][lk-brunchio] boilerplate that allows you to create such widgets very efficiently. It assumes coffee-script for js and jade for html. You can use any css pre-processor of your choice.


Usage
-----

Be sure you have [brunch][lk-brunchio] installed

To setup, ```cd``` into your project directory and type

```
brunch new gh:githistory/web-widget
npm install
bower install
```

To start developing

```
brunch watch
```

This watches any changes in your source code, regenerates target code in dist folder and [livereload][lk-livereloadcom]s any connected browser sessions.

If you don't already have a server started to serve static files, you can simply do

```
brunch watch --server
```

For more commands / options consult brunch documentation.


Notes
-----

- All .coffee files in your source, along with js files from bower_components are compiled and merged into dist/js/widget.js
- All style related files are compiled and merged into dist/css/widget.css
- Files with .jade extension are considered dynamic templates and compiled and merged into widget.js as angular templates. Those with .static.jade extension are compiled and copied as is to dist folder with .static.jade replaced with .html.
- No CSS libraries, such as bootstrap or foundation, are included. You can install whichever you want using bower.
- No CSS pre-processor is assumed. You're free to choose your favorite. Less, Sass, Stylus compilers are included.



Copyright © 2015 by William Huang

All rights reserved. No part of this publication may be reproduced, distributed, or transmitted in any form or by any means, including photocopying, recording, or other electronic or mechanical methods, without the prior written permission of the publisher, except in the case of brief quotations embodied in critical reviews and certain other noncommercial uses permitted by copyright law.














[lk-brunchio]: http://brunch.io 'Brunch.IO'
[lk-livereloadcom]: http://livereload.com 'LiveReload.com'

