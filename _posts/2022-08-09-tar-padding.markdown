---
layout: post
title:  tar padding
date:   2022-08-09 16:25:41 +0200
categories: TIL
---
Today I noticed a curious thing[^1] about `tar`:
```
$ wc -c example.txt
    1600 example.txt
$ tar czf example.txt.tar.gz example.txt
$ wc -c example.txt.tar.gz
     996 example.txt.tar.gz
$ tar cz example.txt | wc -c
   10240
```
What is going on? Let's check the manual.
```
$ man tar
...
     All archive output is written in correctly-sized blocks, even if the
     output is being compressed.  Whether or not the last output block is
     padded to a full block size varies depending on the format and the output
     device.  For tar and cpio formats, the last block of output is padded to a
     full block size if the output is being written to standard output or to a
     character or block device such as a tape drive.  If the output is being
     written to a regular file, the last block will not be padded.
```
It turns out that `tar` pads the last block with NULs in some (most) cases!
```
$ tar cz example.txt | hexdump -v
0000000 8b1f 0008 df71 68cd 0300 55ed 6ecd 46db
0000010 5610 1402 dd45 7b73 c01e c907 c481 a252
0000020 3944 7401 eb90 16b6 53f2 1237 168a 6041
...
0002740 0000 0000 0000 0000 0000 0000 0000 0000
0002750 0000 0000 0000 0000 0000 0000 0000 0000
0002760 0000 0000 0000 0000 0000 0000 0000 0000
0002770 0000 0000 0000 0000 0000 0000 0000 0000
0002780 0000 0000 0000 0000 0000 0000 0000 0000
0002790 0000 0000 0000 0000 0000 0000 0000 0000
00027a0 0000 0000 0000 0000 0000 0000 0000 0000
00027b0 0000 0000 0000 0000 0000 0000 0000 0000
00027c0 0000 0000 0000 0000 0000 0000 0000 0000
00027d0 0000 0000 0000 0000 0000 0000 0000 0000
00027e0 0000 0000 0000 0000 0000 0000 0000 0000
00027f0 0000 0000 0000 0000 0000 0000 0000 0000
0002800
```

[^1]: `wc -c` prints the file size in bytes
