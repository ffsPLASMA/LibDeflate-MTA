function testCompress(strCommand, strInput, strOutput)
	compress(strInput, strOutput);
end
addCommandHandler("c-com", testCompress);

function testDecompress(strCommand, strInput, strOutput)
	decompress(strInput, strOutput);
end
addCommandHandler("c-decom", testDecompress);