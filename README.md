# [Odoo](https://www.odoo.com "Odoo's Homepage") Install Script

1. Ubah Permission dari Read Write (RW) menjadi Read Write Execute (RWX)

```
chmod +x install.sh
```

2. Jalankan Script untuk install

```
./install.sh
```

## Kendala :
WkhtmltoPdf
library WhtmltoPdf akan digunakan Odoo untuk print file PDF. Kadang ditemukan banyak kendala instalasi Wkhtml ini dikarenakan library WkhtmltoPDF yang selalu berubah dan berkembang.

Untuk Odoo 12 pada Ubuntu 18.04, diharuskan memakai Wkhtmltopdf versi 0.12.5 bukan 0.12.1. Dan karena versi o.12.5 masih dev, maka kadang kita temukan Link Download pada suatu tutorial dengan versi 0.12.5-dev atau 0.12.6-dev


## Referensi : 
1. [Yenthe Install Script](https://github.com/Yenthe666/InstallScript)
2. [Wkhtmltopdf Issue on Ubuntu](https://github.com/Yenthe666/InstallScript/issues/102)
3. [Wkhtmltopdf Repo Download](https://builds.wkhtmltopdf.org/)
 
