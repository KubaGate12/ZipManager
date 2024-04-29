Hi! Using my ZipManager you must know:

You can't just start it by doubble click. Use 'zipmanager.exe -pack <folderToPack> <zipname>.zip [-quiet]' to create *.zip archive.
If you must UNPACK a zip use 'zipmanager.exe -unpack <pathToZIP>.zip <pathToUnpack> [-quiet]

Arguments:

 - zipmanager.exe - Main executable
 - -pack - create zip
 - -unpack - unpack a zip
 - -quiet - optional, but recommended for bigger projects

Example:

Process proc = new Process();
proc.StartInfo.FileName = @"zipmanager.exe";
proc.StartInfo.Arguments = @"-unpack C:\Users\MyUser\Downloads\DriverSet3.zip C:\DriverSet3 -quiet";
proc.StartInfo.Verb = @"runas"; //Optional, if you want to run as administrator
proc.Start();
proc.WaitForExit(); //Good for installers

-----------------------------------------------------------------------------------------------------------
For easier use, I recommend to create a method.

Thanks for choosing my project!
