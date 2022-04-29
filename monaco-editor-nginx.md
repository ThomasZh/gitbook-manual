# Monaco Editor Nginx

Nginx language plugin for the [Monaco Editor](https://github.com/microsoft/monaco-editor). It provides the following features when editing [Nginx](https://nginx.org/) config files:

- Syntax highlighting

## Quick Start

```bash
npm install monaco-editor-nginx
```

[![Open in CodeSandbox](https://img.shields.io/badge/Open%20in-CodeSandbox-blue?logo=codesandbox)](https://codesandbox.io/s/github/jaywcjlove/nginx-editor)
[![Open in Github gh-pages](https://img.shields.io/badge/Open%20In-Github%20gh--pages-blue?logo=github)](https://jaywcjlove.github.io/nginx-editor/)

```jsx
import MonacoEditor from "@uiw/react-monacoeditor";
import "monaco-editor-nginx";

<MonacoEditor
  theme="nginx-theme"
  language="nginx"
  value={nginxStr}
  height="100vh"
  options={{
    theme: "vs-dark",
  }}
/>;
```

or, Integrating the ESM version of the Monaco Editor

```js
import * as monaco from "monaco-editor";
import "monaco-editor-nginx";

monaco.editor.create(document.getElementById("container"), {
  theme: "nginx-theme",
  value: "nginx code.....",
  language: "nginx",
});
```

## Development

Runs the project in development mode.

```bash
# Step 1, run first, listen to the component compile and output the .js file
# listen for compilation output type .d.ts file
npm run watch
# Step 2, development mode, listen to compile preview website instance
npm run start
```

Builds the app for production to the build folder.

```bash
npm run build
```

The build is minified and the filenames include the hashes.
Your app is ready to be deployed!

### Related

- [@uiw/react-monacoeditor](https://github.com/jaywcjlove/react-monacoeditor): Monaco Editor component for React.
- [@uiw/react-codemirror](https://github.com/uiwjs/react-codemirror): CodeMirror component for React. @codemirror
- [@uiw/react-markdown-editor](https://github.com/uiwjs/react-markdown-editor): A markdown editor with preview, implemented with React.js and TypeScript.
- [@uiw/react-md-editor](https://github.com/uiwjs/react-md-editor): A simple markdown editor with preview, implemented with React.js and TypeScript.
- [@uiw/react-markdown-preview](https://github.com/jaywcjlove/react-monacoeditor): React component preview markdown text in web browser.

## Contributors

As always, thanks to our amazing contributors!

<a href="https://github.com/jaywcjlove/nginx-editor/graphs/contributors">
  <img src="https://jaywcjlove.github.io/nginx-editor/CONTRIBUTORS.svg" />
</a>

Made with [github-action-contributors](https://github.com/jaywcjlove/github-action-contributors).

## License

Licensed under the MIT License.
