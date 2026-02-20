+++
date = '{{ .Date }}'
draft = true
title = '{{ replace .File.ContentBaseName "-" " " | title }}'
author = "{{ site.Params.author }}"
tags = []

fingerprint = "{{ site.Params.fingerprint }}"
+++

---

## Archivos de verificación
- [Texto(s) claro(s)](/posts/{{ .File.ContentBaseName }}/{{ .File.ContentBaseName }}.txt)
- [Checksum](/posts/{{ .File.ContentBaseName }}/{{ .File.ContentBaseName }}.txt.sha256)
- [Firma del archivo](/posts/{{ .File.ContentBaseName }}/{{ .File.ContentBaseName }}.txt.sha256.sig)
- [Clave usada](/keys/change_me)