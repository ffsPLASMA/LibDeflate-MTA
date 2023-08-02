function testCompress(uSource, strCommand, strInput, strOutput)
	compress(strInput, strOutput);
end
addCommandHandler("s-com", testCompress);

function testDecompress(uSource, strCommand, strInput, strOutput)
	decompress(strInput, strOutput);
end
addCommandHandler("s-decom", testDecompress);