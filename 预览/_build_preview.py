# -*- coding: utf-8 -*-
"""把 README.md 渲染成适合 A4 打印的预览 HTML（仅用于检查图片尺寸/排版效果）。

用法：python _build_preview.py
"""
import io
import os
import re

import markdown

HERE = os.path.dirname(os.path.abspath(__file__))
SRC = os.path.join(HERE, os.pardir, "README.md")
OUT = os.path.join(HERE, "EXP3_打印预览.html")

CSS = """
@page { size: A4; margin: 18mm 16mm; }
* { box-sizing: border-box; }
html { -webkit-print-color-adjust: exact; print-color-adjust: exact; }
body {
  font-family: "Microsoft YaHei", "PingFang SC", "Hiragino Sans GB", sans-serif;
  font-size: 10.5pt; line-height: 1.75; color: #1f2328;
  max-width: 620px; margin: 0 auto; padding: 28px 20px 60px;
  background: #fff;
}
h1, h2 { line-height: 1.35; }
h2 {
  font-size: 15pt; margin: 26px 0 12px; padding-bottom: 6px;
  border-bottom: 2px solid #d0d7de;
}
h3 { font-size: 12.5pt; margin: 20px 0 8px; color: #0a4d8c; }
h3::before { content: ""; display: inline-block; width: 4px; height: 0.95em;
  background: #0a4d8c; margin-right: 8px; vertical-align: -0.12em; border-radius: 2px; }
pre {
  background: #f6f8fa; border: 1px solid #d0d7de; border-left: 3px solid #0a4d8c;
  border-radius: 6px; padding: 10px 14px; margin: 10px 0 18px;
  font-family: Consolas, "Courier New", monospace; font-size: 8.6pt;
  line-height: 1.5; white-space: pre-wrap; word-break: break-word; overflow-wrap: anywhere;
}
code { font-family: Consolas, "Courier New", monospace; }
figure { margin: 16px 0 20px; page-break-inside: avoid; break-inside: avoid; }
figcaption { font-size: 9.5pt; color: #4a5560; margin-top: 6px; }
img { border: 1px solid #e2e6ea; border-radius: 4px; }
@media print {
  body { max-width: none; padding: 0; font-size: 10.5pt; }
  pre { page-break-inside: auto; break-inside: auto; }
  h2, h3 { page-break-after: avoid; break-after: avoid; }
  figure { page-break-inside: avoid; break-inside: avoid; }
}
"""

md_text = io.open(SRC, encoding="utf-8").read()
body = markdown.markdown(md_text, extensions=["fenced_code", "tables", "sane_lists"])

# 输出文件在 预览/ 下，图片在 ../图片/ 下，需要补上相对前缀
body = re.sub(
    r'src="(?!\.\./|https?:|data:|/)([^"]+)"',
    lambda m: 'src="../' + m.group(1) + '"',
    body,
)

html = (
    "<!DOCTYPE html>\n<html lang=\"zh-CN\">\n<head>\n"
    "<meta charset=\"utf-8\">\n"
    "<meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n"
    "<title>EXP3 打印预览</title>\n<style>" + CSS + "</style>\n"
    "</head>\n<body>\n" + body + "\n</body>\n</html>\n"
)
io.open(OUT, "w", encoding="utf-8").write(html)
print("written:", OUT)
