package com.xtdstudios.DMT.persistency.impl
{
	import com.xtdstudios.common.FileUtils;
	
	import flash.filesystem.File;

	public class ByteArrayToFilePersistencyManagerFactory
	{
		public static function generate(filePath:String=null):ByteArrayToFilePersistencyManager
		{
			var baseDir : File;
			
			if (filePath)
				baseDir = new File(filePath);
			else
				baseDir = FileUtils.getCacheDir();
			
			return new ByteArrayToFilePersistencyManager(baseDir);
		}
	}
}