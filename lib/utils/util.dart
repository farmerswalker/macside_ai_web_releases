// ignore_for_file: avoid_web_libraries_in_flutter

import 'dart:html' as html;

void downloadMacSideAI() {
  const url =
      'https://github.com/farmerswalker/macside_ai_web_releases/releases/latest/download/MacSideAI-macos.zip';
  final anchor = html.AnchorElement(href: url)
    ..setAttribute('download', 'MacSideAI-macos.zip')
    ..style.display = 'none';
  html.document.body?.append(anchor);
  anchor.click();
  anchor.remove();
}
