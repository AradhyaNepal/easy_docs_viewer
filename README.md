# easy_docs_viewer

Easily render online pdf, pptx, ppt and other docs.
Made thanks to webview_flutter and docs.google.com.

# How to use
## Powerpoint pptx or ppt

```   
 import 'package:easy_docs_viewer/lib/easy_docs_viewer.dart';
import 'package:flutter/material.dart';

class CustomPDFViewer extends StatelessWidget {
  const CustomPDFViewer({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 150,
      width: 150,
      child: EasyDocsViewer(
        url:"https://scholar.harvard.edu/files/torman_personal/files/samplepptx.pptx",

      ),
    );
  }
}

```

## PDF
```   
 import 'package:easy_docs_viewer/lib/easy_docs_viewer.dart';
import 'package:flutter/material.dart';

class CustomPPTViewer extends StatelessWidget {
  const CustomPDFViewer({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 150,
      width: 150,
      child: EasyDocsViewer(
        url:"https://www.tutorialspoint.com/flutter/flutter_tutorial.pdf",

      ),
    );
  }
}



```
## Or any other file you wanna open (Still on research phase)
```   
 import 'package:easy_docs_viewer/lib/easy_docs_viewer.dart';
import 'package:flutter/material.dart';

class CustomPPTViewer extends StatelessWidget {
  const CustomPDFViewer({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 150,
      width: 150,
      child: EasyDocsViewer(
        url: <AnyDocsToOpenLink>,

      ),
    );
  }
}



```



### Note
Since this package is still on development phase other documentation are coming soon