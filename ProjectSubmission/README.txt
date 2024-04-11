-- EECS4315 Final Project
-- Formal Modeling and Model Checking Using CADP
-- By Kedamwi Mengistu, Jay Sharma and Ruth Bezabeh
-- May, 2024 
------------------------------------------------------------------------------

The system modeled is TimeTree, a shared calendar application where users can 
create, update, comment on, and delete events or memos as well as view calendar 
and activities etc. 

------------------------------------------------------------------------------
                       Directory Contents and Description
------------------------------------------------------------------------------

This directory contains the final project code written in LNT as well as 
previous iterations. It also contains the properties used to verify the model.


Main Directory:
   Trialx4.lnt          	Last LNT specification version
   demo.svl             	Last iteration of SVL script for model checking
   standard.mcl			Library for macros used in demo.svl
   demosvlResults.txt		Results of the properties checked by demo.svl
				not including those that could not finish running
   
   Previously Submitted		Directory containing versions submitted with
				the first progress report
   New Versions			Directory containing versions created after
				the first progress report.
				Contains duplicates of the final version.


Other Directories:
 Previously Submitted 
      Files:
   	 uae.lnt               	First iteration with several syntax errors and 
				following the first model architecture.

   	 uae_version2.lnt      	Iteration with no syntax errors, an updated 
				architecture and a new TimeTree process for 
				easier synchronization.

   	 uae_version3.lnt      	Version with Activity process implemented and 
				newly added gated to activate and deactivate 
				calendars to denote creation.

   	 Trial6_1.lnt          	Version following a new architecture where Event
				, Memo, Activity processes were removed and 
				their functions abstracted into the calendar 
				process as well as two new manager processes.

   	 Trial6_4.lnt          	Version with SignIN, SignUp and SignOut
				implementation of the previously created model.
	
	 demo.svl		First iteration of a model checking SVL script

	 standard.mcl		Library for macros used in demo.svl
   
 New Versions
      Files:
   	 Trial641a0.lnt    	Version with additional implementation of 
				InviteToCalendar, InviteLinkToCalendar, 
				JoinCalendar and AddedToCalendar gates.

   	 Trial641a1.lnt      	Version with additional implementation of 
				ViewCalendar, DisplayCalendar, CalendarNotify, 
				Chat, Search, Result and CreateEvent gates.
				
   	 Trial641a2.lnt      	Version with additional implementation of 
				all event related gates with the exception of 
				EventNotify and EventActivityUpdate as well as
				CreateMemo and DeleteMemo.
				This version restricts the number of times 
				Search, CreateEvent, ChangeEventDateAndTime, 
				CommentOnEvent, ViewEvent , ViewCalendar and
				Chat can be executed.

   	 Trialx4.lnt          	Final version with all gates implemented, 
				including two new gates (ViewActivity and 
				DisplayActivity), most limits of how many times 
				some gates can run removed, and no errors but
				takes hours to compile.

	 demo.svl             	Last iteration of SVL script for model checking
	 standard.mcl		Library for macros used in demo.svl

------------------------------------------------------------------------------
                       Running The Model
------------------------------------------------------------------------------

The LNT code "Trialx4.lnt" can be compiled by typing:
$	lnt.open Trialx4.lnt generator Trialx4.bcg

It can also be run using OCIS interactive simulator by typing:
$ 	lnt.open Trialx4.lnt ocis

The file "demo.svl" describes the verification of the protocol.
You can execute it by typing:
$	svl demo.svl

