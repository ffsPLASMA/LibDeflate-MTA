# LibDeflate-MTA

## Pure Lua compressor and decompressor for Multi Theft Auto (MTA) with high compression ratio using DEFLATE/zlib format.

Copyright (C) 2018-2023 Haoqian He

## Introduction

LibDeflate is pure Lua compressor and decompressor with high compression ratio, which compresses almost as good as zlib.
It has been modified to work with Lua environment of Multi Theft Auto.

## Usage

The library is shared across server and client and provides two exported functions:

compress(input_file, output_file)

decompress(input_file, output_file)

## Limitation

This is lua, expect it to be slow. The performance can also vary depending on the clients hardware!
There is also a limitation on the file size, 6 MB to compress seems to be fine, anything higher will be aborted by MTA due to infinite running script.

## Source

https://github.com/SafeteeWoW/LibDeflate

## License

LibDeflate is licensed under the zlib license.

## Credits and Disclaimer

This library rewrites the code from the algorithm and the ideas of the following projects,
and uses their code to help to test the correctness of this library,
but their code is not included directly in the library itself.
Their original licenses shall be complied when used.

1. [zlib](http://www.zlib.net), by Jean-loup Gailly (compression) and Mark Adler (decompression). Licensed under [zlib License](http://www.zlib.net/zlib_license.html).
2. [puff](https://github.com/madler/zlib/tree/master/contrib/puff), by Mark Adler. Licensed under zlib License.
3. [LibCompress](https://www.wowace.com/projects/libcompress), by jjsheets and Galmok of European Stormrage (Horde). Licensed under GPLv2.
4. [WeakAuras2](https://github.com/WeakAuras/WeakAuras2). Licensed under GPLv2.