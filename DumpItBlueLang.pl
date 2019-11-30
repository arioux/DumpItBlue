#!/usr/bin/perl
# Perl - v: 5.16.3
#------------------------------------------------------------------------------#
# DumpItBlueLang.p l  : Strings for DumpItBlue
# WebSite             : http://le-tools.com/DumpItBlue.html
# Documentation       : http://le-tools.com/DumpItBlueDoc.html
# SourceForge         : https://sourceforge.net/p/dumpitblue
# GitHub              : https://github.com/arioux/DumpItBlue
# Creation            : 2015-08-01
# Modified            : 2019-04-08
# Author              : Alain Rioux (admin@le-tools.com)
#
# Copyright (C) 2015-2019  Alain Rioux (le-tools.com)
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <http://www.gnu.org/licenses/>.
#
#------------------------------------------------------------------------------#
# Modules
#------------------------------------------------------------------------------#
use strict;
use warnings;

#------------------------------------------------------------------------------#
sub loadStr
#------------------------------------------------------------------------------#
{
  # Local variables
  my ($refSTR, $LANG_FILE) = @_;
  # Open and load string values
  open(LANG, "<:encoding(UTF-8)", $LANG_FILE);
  my @tab = <LANG>;
  close(LANG);
  # Store values  
  foreach (@tab) {
    chomp($_);
    s/[^\w\=\s\.\!\,\-\)\(\']//g;
    my ($key, $value) = split(/ = /, $_);
    $value = encode("iso-8859-1", $value); # Revaluate with different language encoding
    if ($key) { $$refSTR{$key}  = $value; }
  }
  
}  #--- End loadStr

#------------------------------------------------------------------------------#
sub loadDefaultStr
#------------------------------------------------------------------------------#
{
  # Local variables
  my $refSTR = shift;
  
  # Set default strings
  
  # General strings
  $$refSTR{'Filename'}    = 'Filename';
  $$refSTR{'Directory'}   = 'Directory';
  $$refSTR{'SelectDir'}   = 'Select a directory';
  $$refSTR{'Dump'}        = 'Dump';
  $$refSTR{'DumpNow'}     = 'Dump now';
  $$refSTR{'AddToQueue'}  = 'Add to queue';
  $$refSTR{'Ok'}          = 'Ok';
  $$refSTR{'Include'}     = 'Include';
  $$refSTR{'Options'}     = 'Options';
  $$refSTR{'Cancel'}      = 'Cancel';
  $$refSTR{'cancelled'}   = 'cancelled';
  $$refSTR{'Opening'}     = 'Opening';
  $$refSTR{'Process'}     = 'Process';
  $$refSTR{'Processing'}  = 'Processing';
  $$refSTR{'Writing'}     = 'Writing';
  $$refSTR{'Enable'}      = 'Enable';
  $$refSTR{'Scrolling'}   = 'Scrolling';
  $$refSTR{'ScrollExpand'} = 'Scroll and Expand';
  $$refSTR{'Downloading'} = 'Downloading';
  $$refSTR{'thePage'}     = 'the page';
  $$refSTR{'Saving'}      = 'Saving';
  $$refSTR{'Parsing'}     = 'Parsing';
  $$refSTR{'Finishing'}   = 'Finishing';
  $$refSTR{'finished'}    = 'finished';
  $$refSTR{'Creating'}    = 'Creating';
  $$refSTR{'outputFile'}  = 'output file';
  $$refSTR{'sheet'}       = 'sheet';
  $$refSTR{'page'}        = 'page';
  $$refSTR{'Pages'}       = 'Pages';
  $$refSTR{'textFile'}    = 'text file';
  $$refSTR{'inProgress'}  = 'in progress';
  $$refSTR{'List'}        = 'List';
  $$refSTR{'Category'}    = 'Category';
  $$refSTR{'Lists'}       = 'Lists';
  $$refSTR{'ProfileID'}   = 'Profile ID';
  $$refSTR{'Image'}       = 'Image';
  $$refSTR{'url'}         = 'URL';
  $$refSTR{'Name'}        = 'Name';
  $$refSTR{'Details'}     = 'Details';
  $$refSTR{'Path'}        = 'Path';
  $$refSTR{'imgPath'}     = 'Image Path';
  $$refSTR{'imgPath2'}    = 'Image Path or URL';
  $$refSTR{'originURL'}   = 'Origin URL';
  $$refSTR{'Count'}       = 'Count';
  $$refSTR{'Date'}        = 'Date';
  $$refSTR{'Dates'}       = 'Dates';
  $$refSTR{'Start'}       = 'Start';
  $$refSTR{'Time'}        = 'Time';
  $$refSTR{'End'}         = 'End';
  $$refSTR{'files'}       = 'files';
  $$refSTR{'profileIcons'}    = 'profile icons';
  $$refSTR{'Help'}            = 'Help';
  $$refSTR{'Quit'}            = 'Quit';
  $$refSTR{'Warning'}         = 'Warning';
  $$refSTR{'warn1'}           = 'Not enough parameters to load process.';
  $$refSTR{'warn3'}           = 'You are not in the right page.';
  $$refSTR{'warn4'}           = 'You are not on Facebook.';
  $$refSTR{'Error'}           = 'Error';
  $$refSTR{'errChrome'}       = 'You must start Google Chrome in remote debug mode before using DumpItBlue.';
  $$refSTR{'processRunning'}  = 'A process is already running. Wait until it stops or restart the program.';
  $$refSTR{'processCrash'}    = 'Process crash';
  $$refSTR{'browseFolder'}    = 'Browse folder in Explorer';
  $$refSTR{'Progress'}        = 'Progress';
  $$refSTR{'ReloadPage'}      = 'Reload the page';
  $$refSTR{'noProfileDumped'} = 'No profile were dumped';
  $$refSTR{'AutoScroll'}      = "Auto scroll";
  $$refSTR{'NotFound'}        = 'Not found';
  $$refSTR{'waitProcess'}     = 'Please wait while loading the';
  $$refSTR{'interface'}       = 'interface';
  $$refSTR{'dumpProcess'}     = 'Dump process';  
  # Dump Windows
  $$refSTR{'Albums'}        = 'Albums';
  $$refSTR{'albumNames'}    = 'Album name';
  $$refSTR{'albumURLs'}     = 'Album url';
  $$refSTR{'albumID'}       = 'Album ID';
  $$refSTR{'loadAlbum'}     = 'Loading the album page';
  $$refSTR{'gatherAlbums'}  = 'Gathering albums details';
  $$refSTR{'loadAlbumFail'} = 'No album title found.';
  $$refSTR{'chPublishDate'} = 'Publication date';
  $$refSTR{'openAlbumDir'}  = 'Open album folder';
  $$refSTR{'SmallPic'}      = 'Small pictures';
  $$refSTR{'LargePic'}      = 'Large pictures';
  $$refSTR{'browsePicPage'} = 'Browsing picture pages';
  $$refSTR{'pictures'}      = 'pictures';
  $$refSTR{'pictureID'}     = 'Picture/Video ID';
  $$refSTR{'picturePage'}   = 'Picture/Video Page URL';
  $$refSTR{'smallPicURL'}   = 'Small picture URL';
  $$refSTR{'largePicURL'}   = 'Large picture URL';
  $$refSTR{'dumpAlbumError'} = 'Some pictures may have not been downloaded.';
  $$refSTR{'Friends'}        = 'Friends';
  $$refSTR{'gatherFriendsLists'} = 'Gathering friend lists';
  $$refSTR{'MutualFriends'} = 'Mutual friends';
  $$refSTR{'contributors'}  = 'Contributors';
  $$refSTR{'Types'}         = 'Types';
  $$refSTR{'Comments'}      = 'Comments';
  $$refSTR{'Likes'}         = 'Likes';
  $$refSTR{'LikesPage'}     = 'Likes page';
  $$refSTR{'groupMembers'}  = 'Group Members';
  $$refSTR{'Admins'}        = 'Admins';
  $$refSTR{'Members'}       = 'Members';
  $$refSTR{'Joined'}        = 'Joined';
  $$refSTR{'Images'}        = 'Images';
  $$refSTR{'CurrPage'}      = 'Current page';
  $$refSTR{'PicPages'}      = 'Picture pages (People profile only)';
  $$refSTR{'browseAllPagesURLs'} = 'Browsing all pages';
  $$refSTR{'noCommentsDumped'}   = 'No comment were dumped';
  # Queue
  $$refSTR{'ShowQueue'}       = 'Show queue';
  $$refSTR{'Queue'}           = 'Queue';
  $$refSTR{'MoveUp'}          = 'Move up';
  $$refSTR{'MoveDown'}        = 'Move down';
  $$refSTR{'GoToPage'}        = 'Go to page';
  $$refSTR{'Delete'}          = 'Delete';
  $$refSTR{'Refresh'}         = 'Refresh';
  $$refSTR{'ProcessQueue'}    = 'Process all selected jobs';
  $$refSTR{'addingQueue'}     = 'Creating and adding processes to queue';
  $$refSTR{'addedQueue'}      = 'Process(es) added to queue';
  $$refSTR{'errAddQueue'}     = 'Error(s) while adding process(es) to queue';
  $$refSTR{'pendingJob'}      = 'There are pending jobs in queue, load them';
  $$refSTR{'pendingJobWarn'}  = 'Note: If you select No, all pending jobs will be deleted';
  $$refSTR{'queueExists'}     = 'There is job with the same filename in queue. If you continue, the report may be replaced. Continue anyway';
  # Config
  $$refSTR{'Settings'}        = 'Settings';
  $$refSTR{'lblGenOpt'}       = 'General';
  $$refSTR{'Tool'}            = 'Tool';
  $$refSTR{'btnExportLang'}   = 'Export Lang.ini';
  $$refSTR{'OpenUserDir'}     = 'Open user dir';
  $$refSTR{'chAutoUpdate'}    = 'Check for update at startup';
  $$refSTR{'Functions'}       = 'Functions';
  $$refSTR{'chRememberPos'}   = 'Remember position of all windows';
  $$refSTR{'lblTimeToWait'}   = 'Time for loading';
  $$refSTR{'seconds'}         = 'seconds';
  $$refSTR{'Charset'}         = 'Charset';
  $$refSTR{'Logging'}         = 'Logging';
  $$refSTR{'OpenLog'}         = 'Open log file';
  $$refSTR{'ClearLog'}        = 'Clear log file';
  $$refSTR{'tfTimeToWaitTip'} = 'When loading page or scrolling, time to wait before any action. Increase this time for more stability. Default is 2.';
  $$refSTR{'WhenLoading'}     = 'When loading';
  $$refSTR{'AutoLoadScroll'}  = 'Load and scroll automatically';
  $$refSTR{'chOptScrollTop'}  = 'Scroll back to top when loaded';
  $$refSTR{'RememberSaveDir'} = 'Remember folder used for report';
  $$refSTR{'WhenProcessing'}  = 'When processing';
  $$refSTR{'SilentProgress'}  = 'Silent progression when using queue';
  $$refSTR{'WhenFinished'}    = 'When finished';
  $$refSTR{'OpenReport'}      = 'Open report';
  $$refSTR{'DontOpenReport'}  = 'Disable opening when using queue';
  $$refSTR{'chDelTempFiles'}  = 'Delete temp files';
  # Update Window
  $$refSTR{'update1'}       = 'You have the latest version installed.';
  $$refSTR{'update2'}       = 'Check for update';
  $$refSTR{'update3'}       = 'Update';
  $$refSTR{'update4'}       = 'Version';
  $$refSTR{'update5'}       = 'is available. Download it';
  $$refSTR{'errConnection'} = 'Error connection';
  $$refSTR{'returnedCode'}  = 'Returned code';
  $$refSTR{'returnedError'} = 'Returned error';
  # About
  $$refSTR{'about'}             = 'About';
  $$refSTR{'author'}            = 'Author';
  $$refSTR{'translatedBy'}      = 'Translated by';
  $$refSTR{'website'}           = 'Website';
  $$refSTR{'translatorName'}    = '-';
  $$refSTR{'chStartMinimized'}  = "Don't show this window on startup";
  $$refSTR{'lblText4'}          = 'Use taskbar icon to access functions';

}  #--- End loadStrings

#------------------------------------------------------------------------------#
1;