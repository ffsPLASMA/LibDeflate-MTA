function compress(strInputFile, strOutputFile)
	if(not fileExists(strInputFile)) then
		outputDebugString("LibDeflate: Input file "..strInputFile.." not found!", 1);
		return false;
	end
	
	if(fileExists(strOutputFile)) then
		outputDebugString("LibDeflate: Output file "..strOutputFile.." exists already!", 1);
		return false;
	end
	
	local uFileHandle = fileOpen(strInputFile);
	local strFileData = "";
	
	if(uFileHandle) then
		strFileData = fileRead(uFileHandle, fileGetSize(uFileHandle));
		fileClose(uFileHandle);
	else
		outputDebugString("LibDeflate: Cannot open file "..strInputFile.."!", 1);
		return false;
	end
	
	if(#strFileData == 0) then
		outputDebugString("LibDeflate: Reading from "..strInputFile.." returned 0 bytes!", 1);
		return false;
	end
	
	local uNewFileHandle = fileCreate(strOutputFile);
	
	if(not uNewFileHandle) then
		outputDebugString("LibDeflate: Cannot create file "..strOutputFile.."!", 1);
		return false;
	end
	
	local strCompressedData = LibDeflate:CompressDeflate(strFileData);
	
	if(strCompressedData == nil) then
		outputDebugString("LibDeflate: Compression failed for "..strInputFile.."!", 1);
		return false;
	end
	
	fileWrite(uNewFileHandle, strCompressedData);
	fileClose(uNewFileHandle);
	
	outputDebugString("LibDeflate: Compression succeded for "..strInputFile.." - Output file: "..strOutputFile);
	
	return true;
end

function decompress(strInputFile, strOutputFile)
	if(not fileExists(strInputFile)) then
		outputDebugString("LibDeflate: Input file "..strInputFile.." not found!", 1);
		return false;
	end
	
	if(fileExists(strOutputFile)) then
		outputDebugString("LibDeflate: Output file "..strOutputFile.." exists already!", 1);
		return false;
	end
	
	local uFileHandle = fileOpen(strInputFile);
	local strFileData = "";
	
	if(uFileHandle) then
		strFileData = fileRead(uFileHandle, fileGetSize(uFileHandle));
		fileClose(uFileHandle);
	else
		outputDebugString("LibDeflate: Cannot open file "..strInputFile.."!", 1);
		return false;
	end
	
	if(#strFileData == 0) then
		outputDebugString("LibDeflate: Reading from "..strInputFile.." returned 0 bytes!", 1);
		return false;
	end
	
	local uNewFileHandle = fileCreate(strOutputFile);
	
	if(not uNewFileHandle) then
		outputDebugString("LibDeflate: Cannot create file "..strOutputFile.."!", 1);
		return false;
	end
	
	local strDecompressedData = LibDeflate:DecompressDeflate(strFileData);
	
	if(strDecompressedData == nil) then
		outputDebugString("LibDeflate: Decompression failed for "..strInputFile.."!", 1);
		return false;
	end
	
	fileWrite(uNewFileHandle, strDecompressedData);
	fileClose(uNewFileHandle);
	
	outputDebugString("LibDeflate: Decompression succeded for "..strInputFile.." - Output file: "..strOutputFile);
	
	return true;
end