//
// Vivado(TM)
// rundef.js: a Vivado-generated Runs Script for WSH 5.1/5.6
<<<<<<< HEAD
<<<<<<< HEAD
// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
=======
// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
>>>>>>> master
=======
// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
>>>>>>> 5ec567faa533c067fd38e29ea17d6632d7cd74e8
//

var WshShell = new ActiveXObject( "WScript.Shell" );
var ProcEnv = WshShell.Environment( "Process" );
var PathVal = ProcEnv("PATH");
if ( PathVal.length == 0 ) {
<<<<<<< HEAD
<<<<<<< HEAD
  PathVal = "C:/Xilinx/SDK/2018.2/bin;C:/Xilinx/Vivado/2018.2/ids_lite/ISE/bin/nt64;C:/Xilinx/Vivado/2018.2/ids_lite/ISE/lib/nt64;C:/Xilinx/Vivado/2018.2/bin;";
} else {
  PathVal = "C:/Xilinx/SDK/2018.2/bin;C:/Xilinx/Vivado/2018.2/ids_lite/ISE/bin/nt64;C:/Xilinx/Vivado/2018.2/ids_lite/ISE/lib/nt64;C:/Xilinx/Vivado/2018.2/bin;" + PathVal;
=======
  PathVal = "C:/Xilinx/SDK/2017.4/bin;C:/Xilinx/Vivado/2017.4/ids_lite/ISE/bin/nt64;C:/Xilinx/Vivado/2017.4/ids_lite/ISE/lib/nt64;C:/Xilinx/Vivado/2017.4/bin;";
} else {
  PathVal = "C:/Xilinx/SDK/2017.4/bin;C:/Xilinx/Vivado/2017.4/ids_lite/ISE/bin/nt64;C:/Xilinx/Vivado/2017.4/ids_lite/ISE/lib/nt64;C:/Xilinx/Vivado/2017.4/bin;" + PathVal;
>>>>>>> master
=======
  PathVal = "C:/Xilinx/SDK/2017.4/bin;C:/Xilinx/Vivado/2017.4/ids_lite/ISE/bin/nt64;C:/Xilinx/Vivado/2017.4/ids_lite/ISE/lib/nt64;C:/Xilinx/Vivado/2017.4/bin;";
} else {
  PathVal = "C:/Xilinx/SDK/2017.4/bin;C:/Xilinx/Vivado/2017.4/ids_lite/ISE/bin/nt64;C:/Xilinx/Vivado/2017.4/ids_lite/ISE/lib/nt64;C:/Xilinx/Vivado/2017.4/bin;" + PathVal;
>>>>>>> 5ec567faa533c067fd38e29ea17d6632d7cd74e8
}

ProcEnv("PATH") = PathVal;

var RDScrFP = WScript.ScriptFullName;
var RDScrN = WScript.ScriptName;
var RDScrDir = RDScrFP.substr( 0, RDScrFP.length - RDScrN.length - 1 );
var ISEJScriptLib = RDScrDir + "/ISEWrap.js";
eval( EAInclude(ISEJScriptLib) );


ISEStep( "vivado",
         "-log top.vds -m64 -product Vivado -mode batch -messageDb vivado.pb -notrace -source top.tcl" );



function EAInclude( EAInclFilename ) {
  var EAFso = new ActiveXObject( "Scripting.FileSystemObject" );
  var EAInclFile = EAFso.OpenTextFile( EAInclFilename );
  var EAIFContents = EAInclFile.ReadAll();
  EAInclFile.Close();
  return EAIFContents;
}
