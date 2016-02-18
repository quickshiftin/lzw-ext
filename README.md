# lzw-ext
Native LZW encoding and decoding for PHP

WARNING: This is currently an alpha release.

Overview
--------

These functions use the LZW implementation from https://github.com/vapier/ncompress

```
/**
 * Compress $inputPath file using LZW compression.
 * Write the compressed output to $outputPath.
 */
bool function lzw_compress_file($inputPath, $outputPath);

/**
 * Decompress $outputPath file using LZW compression.
 * Write the decompressed file to $outputPath.
 */
bool function lzw_decompress_file($inputPath, $outputPath);
```

Installation
------------

Installation is the same as any PHP extension

* Download the source
* `cd` into the unpacked source directory
* `phpize`
* `./configure --enable-lzw`
* `make`
* `sudo make install`
