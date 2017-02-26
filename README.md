# kondakia

Troparion, kondakion, and magnification texts for major orthodox christian holidays.

Тропари, кондаки и величания на все крупные православные праздники.

Please see http://kondakia.kroutikov.net for the ready-to-print PDF documents. Готовые к печати PDF
файлы опубликованы на http://kondakia.kroutikov.net

## Requirements

* TeX installed (LiveTeX or other major recent TeX distribution that includes `xelatex`)
* `churchslavonic` CTAN package installed. In LiveTeX just do `tlmgr install churchslavonic`
* `make` tool available

## Building

```
make
```

To build black-and-white version of documents, do

```
make bw
```

To build and publish generated PDF files, do

```
make install
git add docs/files
git commit -m 'thoughtful notes'
git push
```
