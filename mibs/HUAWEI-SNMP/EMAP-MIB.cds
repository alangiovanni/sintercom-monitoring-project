     "Description."              9"This integer value represents running status of the system. 
                                                     Depending on situation there may be limits on allowed values.
                                                     Operational values:
                                                     (1) unknown - status has not yet been defined
                                                     (2) normal - there are no activated alarms
                                                     (3) alarm - alarm status
                                             "               "Description."               "Description."               "Description."               "Description."                                     �"IP address of the system.
                  It'd better not to modify this address when out-band NMS is used.
                  It will take no effect to separately configure IP address or IP address mask."                       �"IP address mask of the system.
                  This object can take effect only when hwSysIpAddr is also set.
                "                       "/"                          b"The index of this table is hwFrameTable.
                                Shelf description table that describes basic information of a shelf.
                                You can obtain the shelf information, including the shelf type,
                                number of slots, and the shelf running status, and the shelf management status."                      b"The index of this table is hwFrameTable.
                                Shelf description table that describes basic information of a shelf.
                                You can obtain the shelf information, including the shelf type,
                                number of slots, and the shelf running status, and the shelf management status."                       6"The index of a shelf in the device.
                "                       D"The type of a shelf, which can be obtained from HUAWEI-TC-MIB.mib."                      t"The administration status of frame.
                                Options:
                                1. nooperation(-1) -  default state of the system
                                2. disable(1)      -  indicates that the frame administration state is disable
                                3. enable(2)       -  indicates that the frame administration state is enable
                                4. reset(3)        -  reset the shelf. If you need to reset the shelf immediately,
                                                      perform the operation only. If you need to reset the shelf after a certain period,
                                                      you also need to set hwFrameResetTimeout.
                                                      If you need to reset the control shelf, the entire system is reset;
                                                      otherwise, the control board in the specified shelf is reset
                                5. test(4)         -  test the frame
                                6. confirm(5)      -  confirm the frame
                                7. delete(6)       -  delete the frame info
                                8. batchconfirm(7) -  confirm the boards in a shelf in batches
                                9. bind(8)         -  bind ont serial number with the extended frame ID"                      �"The board description table, used to manage the running status of
                                boards and board information, such as description of boards,
                                daughter board quantity and board type.
                                The indexes of this table are hwFrameIndex and hwSlotIndex.
                                For the hwFrameIndex object, refer to hwFrameTable.
                                For example, 0.2 indicates that the board is in slot 2, shelf 0."                      �"The board description table, used to manage the running status of
                                boards and board information, such as description of boards,
                                daughter board quantity and board type.
                                The indexes of this table are hwFrameIndex and hwSlotIndex.
                                For the hwFrameIndex object, refer to hwFrameTable.
                                For example, 0.2 indicates that the board is in slot 2, shelf 0."                      {"Board type, which is defined in HUAWEI-TC-MIB.mib.
                                The board type supported by a slot varies. For example, a slot can be inserted with a power board only,
                                but certain slots can be inserted with voice service boards and broadband service boards.
                                When adding a board by using the hwSlotRowStatus,
                                you need to specify the board information such as board type and slot number.
                                When adding a board, you need to check whether the board can be inserted in the specified slot."                      	B"Board working mode that describes whether the board is
                                working in main state or in standby with loadshare, nullbackup, voice, satop state.
                                Options:
                                1. main(1)                 - indicates that the active control board, supporting the get operation only
                                2. standby(2)              - indicates that the standby control board, supporting the get operation only
                                3. loadshare(3)            - indicates that the board working mode is load sharing
                                4. nullbackup(4)           - indicates that the board working mode is backup
                                5. voice(5)                - indicates to get and set the working mode of an EDT service board
                                6. satop(6)                - indicates to get and set the working mode of an EDT service board or TOPB service board
                                7. pots(7)                 - indicates to get and set the working mode of an VDM service board
                                8. isdn(8)                 - indicates to get and set the working mode of an VDM service board
                                9. bonding(9)              - indicates to get and set the working mode of an ADP service board
                                10. retransmission(10)      - indicates to get and set the working mode of an ADP service board
                                11. nativetdm(11)          - indicates to get and set the working mode of a TOPB service board
                                12. other(255)             - indicates other working mode
                                An EDT service board can be running either in voice mode, that is, voice(5), or in broadband mode, that is, satop(6).
                                Setting the working mode of the EDT service board causes board resetting.
                                An VDM service board can be running either in pots mode, that is, pots(7), or in isdn mode, that is, isdn(8).
                                Setting the working mode of the VDM service board causes board resetting.
                                Setting the board working mode may cause board resetting.
                                When you ar"                      	R"The running status of a board.
                                Options:
                                1. null(1)                  -indicates that the board is null
                                2. normal(2)                -indicates that the board is running normally
                                3. fault(3)                 -indicates that the board is faulty but in position
                                4. forbidden(4)             -indicates that the board is in position but disabled
                                5. autofind(5)              -indicates that the board is in the autofind state. If a board is added through
                                                             hwSlotRowStatus and the board is not confirmed, the board is in the autofind state.
                                                             If a board is inserted in an idle slot, after the report of automatic registration,
                                                             the board is also in the autofind state
                                6. config(6)                -indicates that the board is in the configuration state.
                                                             After a board that is in the auto discovery.
                                                             state is confirmed, data needs to be configured on the board.
                                                             The board is in the configuration state during data configuration.
                                                             After a board is successfully configured, its status is changed from config(6)
                                                             to normal(2). If the configuration fails, the board status is changed from config(6) to fault(3)
                                7. offline(7)               -indicates that the board is faulty and is not in position
                                8. abnormal(8)              -indicates that the board is abnormal
                                9. versionerr(9)            -indicates that the board version is error
                
                                10. autoload(10)            -indicates that the board is in the auto loading state. If detecting a software update,
                                                             the board automa"                           "/"                       "/"                       "/"                       "/"                       "/"                       "/"                              *"Load parameter table, used to load various files to the host
                                through the NMS. The indexes of this table are hwFrameIndex and hwSlotIndex of the board.
                                For example, to load files to the board in slot 3 of frame 0, the index is 0.3."                      *"Load parameter table, used to load various files to the host
                                through the NMS. The indexes of this table are hwFrameIndex and hwSlotIndex of the board.
                                For example, to load files to the board in slot 3 of frame 0, the index is 0.3."                        "The IP address of file server."                      	"Load protocol.
                              Options:
                              1.tftp(1)   -indicates that the Trivial File Transfer Protocol (TFTP) is used to perform
                                           the loading through the network port. Select tftp(1) when the transmission mode
                                           of the server is configured to TFTP. When TFTP is used for the loading, you need
                                           not enter the user name (hwLoadUserName) and password (hwLoadPassword).
                              2.modem(2)  -indicates that the XMODEM protocol is used to perform the loading through
                                           the serial port. When you use the HyperTerminal of the OS to perform serial
                                           port configuration on the server, select modem(2). Loading through the serial port
                                           does not require networking and maintenance through the command line interface
                                           does not require NM software.
                              3.ftp(3)    -indicates that the File Transfer Protocol (FTP) is used to perform loading
                                           through the network port. When the transmission mode of the server is configured to FTP,
                                           select ftp(3). When FTP is used for the loading, you need to enter the user name (hwLoadUserName)
                                           and password (hwLoadPassword).
                              4.smbLoadAnyBoards(4)-smbLoadAnyBoards.
                              5.sftp(5)   -indicates that the Secure File Transfer Protocol (SFTP) is used to perform the loading through
                                           the network port. Select sftp(5) when the transmission mode of the server is configured to SFTP.
                                           When SFTP is used for the loading, you need to enter the user name (hwLoadUserName)
                                           and password (hwLoadPassword). The instructions and data are encrypted during transmission.
                              6.other(255)-other.
                              The SFTP transmission mode is recommended."                       $"The name of the file to be loaded."                      	�"Type of the loaded file.
                                Options:
                                1.noloadcontent(-1)               -no file.
                                2.program(1)                      -program file.
                                3.database(2)                     -database file.
                                4.patch(3)                        -patch file.
                                5.shellMacro(4)                   -shell macro file.
                                6.resLocal(5)                     -local resource file.
                                7.resGeneral(6)                   -general resource file.
                                8.cpeDrive(7)                     -cpe drive.
                                9.programDatabase(8)              -database file.
                                10.programBios(9)                 -bios file.
                                11.programApp(10)                 -application program.
                                12.logicFpga(11)                  -fpga logic file.
                                13.logicCpld(12)                  -Cpld logic file.
                                14.logicPci(13)                   -pci logic file.
                                15.logicAfc(14)                   -afc logic file.
                                16.programMicroCode(15)           -micro code file.
                                17.programFirmware(16)            -application program of pinch board.
                                18.programHelp(17)                -program help file.
                                19.programDataFlow(18)            -flow file of card management point.
                                20.programBootFile(19)            -Boot program file of board.
                                21.logciPa(20)                    -Boot program file of board start.
                                22.webExp(21)                     -web exp file.
                                23.webNev(22)                     -web nev file.
                                24.webHelp(23)                    -web help file.
                                25.programBsp(24)                 -bsp program file.
                                26.verBinFile(25)                 -packet file.
                                27.configurationFile(26)          -configuration file.
                                28.configurationIni(40)           -configuration file of ini formatini.
                   "                       L"The type of the board to be loaded, which is defined in HUAWEI-TC-MIB.mib."                       �"The name of load user, which is required in FTP mode and SFTP mode
                                but is not required in any other modes."                       �"The load user password, which is required in FTP mode and SFTP mode
                                but is not required in any other modes."                      {"The loading request ID, which identifies the loading request delivered by the NMS.
                                According to the ID, you can query hwOperationInfoTable to obtain the status and
                                results of each loading operation.
                                A request ID can be any integer in the range of 0-0xFFFFFFFF,
                                but the IDs of different loading requests are not duplicate.
                                This object cannot be set independently.
                                The hwLoadRequestId value of -1 indicates there is no loading operation."                       �"Monitoring port on the SFTP server.
                                Range: 0-65535
                                Default: 22
                                The invalid value is 65535."                      �"Backup parameter table, used to back up various files of the host through the NMS.
                  This table is used to back up important system data. Therefore, configure a high
                  access permission for this table.
                  The indexes of this table are hwFrameIndex and hwSlotIndex of the board.
                  For example, to back up the files of the board in slot 3 of frame 0, the index is 0.3.
                  
                "                      �"Backup parameter table, used to back up various files of the host through the NMS.
                  This table is used to back up important system data. Therefore, configure a high
                  access permission for this table.
                  The indexes of this table are hwFrameIndex and hwSlotIndex of the board.
                  For example, to back up the files of the board in slot 3 of frame 0, the index is 0.3.
                  
                "                        "The IP address of file server."                      �"Load protocol.
                  Options:
                  1.tftp(1)  -indicates that the backup is performed by using TFTP through the
                              network port. Select tftp(1) when the transmission mode of the server is
                              configured to TFTP.When TFTP is used in the backup, you need not enter the
                              user name and password.
                  2.modem(2) -indicates that the backup is performed by using the Xmodem serial
                              port protocol through the serial port. When you use the HyperTerminal of
                              the OS to configure the serial port on the server, select modem(2).
                              Loading through the serial port does not require networking and maintenance
                              through the command line interface does not require NM software.
                  3.ftp(3)   -indicates that the backup is performed by using FTP through the network
                              port. Select ftp when the transmission mode of the server is configured to FTP.
                              When FTP is used for file backup, you need to enter the user name and password.
                  4.sftp(5)  -indicates that the backup is performed by using SFTP through the network port.
                              Select sftp(5) when the transmission mode of the server is configured to SFTP.
                              When SFTP is used for file backup, the instructions and data are encrypted
                              during transmission.
                  5.other(6) -other.
                  The SFTP transmission mode is recommended."                       "The name of backup file."                      
R"Type of the backup file.
                  Options:
                  1.nobackupcontent(-1)             -no file.
                  2.database(1)                     -database file.
                  3.shellMacro(2)                   -shell macro file.
                  4.log(3)                          -log file.
                  5.bill(4)                         -bill file.
                  6.alarm(5)                        -alarm file.
                  7.configurationFile(14)           -configuration file.
                  8.program(15)                     -program file.
                  9.reslocal(16)                    -local resource file.
                  10.resgeneral(17)                 -general resource file.
                  11.patch(18)                      -patch file.
                  12.programDatabase(19)            -database file.
                  13.programBios(20)                -bios file.
                  14.programApp(21)                 -application file.
                  15.logicFpga(22)                  -fpga logic file.
                  16.logicCpld(23)                  -Cpld logic file.
                  17.logicPci(24)                   -pci logic file.
                  18.logicAfc(25)                   -afc logic file.
                  19.programMicroCode(26)           -micro-code file.
                  20.programFireware(27)            -application program of pinch board.
                  21.programDataFlow(28)            -flow file of card management point.
                  22.programBootFile(29)            -boot program file of the board start.
                  23.logciPa(30)                    -fpga logic file of the pinch board.
                  24.webExp(31)                     -web exp file.
                  25.webNev(32)                     -web nev file.
                  26.webHelp(33)                    -web help file.
                  27.programBsp(34)                 -bsp program file.
                  28.configurationIni(40)           -not supported.
                  29.configurationEfs(41)           -not supported.
                  30.configurationCli(42)           -not supported.
                  31.programCurrent(45)             -not supported.
                  32.programOther(46)               -not supported.
                  33.bcdcInfo(47)                   -bcdc description system in ini file.
                  34.license(49)                    -license file.
                  35.programExtendedBios(51)        -extended bios file.
                  36.boardinfo(60)                 "                       �"The backup user name, which is required in FTP mode and SFTP mode
                  but is not required in TFTP mode.
                 "                       |"The backup user password, which is required in FTP mode and SFTP mode
                  but is not required in TFTP mode."                      *"The backup request ID, which identifies a backup request delivered by the NMS.
                  According to the ID, you can query hwOperationInfoTable to obtain
                  the status and results of each backup operation.
                  An backup request ID can be any integer in the range of 0-0xFFFFFFFF.
                  But, the IDs of different backup requests cannot duplicate.
                  This object cannot be set independently.
                  The hwBackupRequestID value of -1 indicates there is no backup operation."                       �"SFTP server listen port.
                  Range: 0-65535
                  Default: 22
                  The invalid value is 65535."                          �"Operation information table. Through this table,
                                you can query the status and results of data saving, loading,
                                backup, upgrading without service interruption, patch rollback,
                                and cloning operations on the NMS. The index of this table is hwOperationReqID.
                                hwOperationReqID is an operation request ID."                      �"Operation information table. Through this table,
                                you can query the status and results of data saving, loading,
                                backup, upgrading without service interruption, patch rollback,
                                and cloning operations on the NMS. The index of this table is hwOperationReqID.
                                hwOperationReqID is an operation request ID."                       �"The requestID of this operation. This object together with hwOperationReqType,
                                identifies different operations of different types."                      	�"Current status of an operation request.
                                Options:
                                1.initial(1)     -indicates that the operation is in the preparation phase.
                                2.datascanning(2)-indicates that the operation is in the data collection phase.
                                3.transferring(3)-indicates that the operation is in the data transmission phase.
                                4.saving(4)      -indicates that the operation is in the data saving phase.
                                5.success(5)     -indicates that the operation is successful.
                                6.fail(6)        -indicates that the operation fails.
                                7.uninterruptedAutoUpgradeResetStandby(7)
                                 -indicates that automatic upgrade without service interruption is in the following state:
                                  the standby control board is being started after reset.
                                8.uninterruptedAutoUpgradeBatchHotBackupFirst(8)
                                 -indicates that automatic upgrade without service interruption is in the following state:
                                  the standby control board is restarted and hot backup on the host is under way.
                                9.uninterruptedAutoUpgradeSwitchOver(9)
                                 -indicates that automatic upgrade without service interruption is in the following state:
                                  the active control board switches to the standby one and is being restarted.
                               10.uninterruptedAutoUpgradeBatchHotBackupSecond(10)
                                 -indicates that automatic upgrade without service interruption is in the following state:
                                  the current standby control board is already restarted and hot backup on the host is being performed.
                               11.ioupgrade(11)   -indicates that automatic upgrade is in the following state:
                                  the upgrade of the service board.
                               12.systemreboot(12)-indicates that automatic upgrade with service interruption is in the following state:
                                  the system is rebooting.
                               13.serviceboardloading(13)--indicates that aut"                       O"The progress of the operation.
                                Range: 0-100."                      �"The error code of this operation. The returned error code is an NMS error code.
                                The value 0 means 'No error';
                                The value 6561510 means 'Failed to transfer the file';
                                The value 6561553 means 'Username or password error';
                                The value 6561620 means 'The server is unreachable';
                                The value 6561623 means 'Failed to operate the remote file';
                                The value 6561625 means 'The SSH key is incorrect';
                                The value 6561626 means 'The path does not exist';
                                The value 6561627 means 'The file does not exist'."                                      -"Site ID, default value: 000,000.Naming rule of the site device ID (six digits): 
                The first three digits indicate the device name and the last three digits indicate the serial number (SN) of the device. 
                If the last three digits are 000, it indicates a virtual device."                       �"Site name, which users can configure, is used to specify a site.  Otherwise, the configured character can not be any other languages except English."                       �"Site administrant address, which users can assigned, is the unique ID of a site. 
                It is used for device management by NMS, and value range is 0 to 65535. "                       �"Site description. It is of the character string type. It is used to describe the site information such as the site location, which users can configure.  
                Otherwise, the configured character can not be any other languages except English."                       �"NE ID. It is of the character string type. It is the unique ID of the site (an independent network element (NE)) on the network. 
                Otherwise, the configured character can not be any other languages except English."                       ^"Site IP address, default value is 192.168.0.10. Users need to configure the site IP address."                       Y"Site netmask, default value is 255.255.255.0. Users need to configure the site netmask."                       U"Site gateway, default value: 192.168.0.1. Users need to configure the site gateway."                      "State of the site alarm state. It is an enumeration type: 
                  If the enumeration value is 1, it indicates that the site is in the normal state;
                  If the enumeration value is 2, it indicates that the site is in the alarm state."                          �"Site device event trap serial number (SN) is the unique ID of the device event trap. It is used to resend and synchronize event traps.
                Its value range is 0 to 4294967295. When the value exceeds the maximum value, the system automatically clears the value and numbers the alarm from 0 to 4294967295.   
                If the network management system (NMS) recieve the alarm number is not consequential, in such case that it notifies the SNMP agent the event trap number required.  
                So the monitor send the 100 event trap messages in maximum, after consequencial number required by NMS again. Specially, if NMS set the value to 0, the agent would clear the alarm queue automatically."                      �"Site alarm serial number (SN) is the unique ID of the alarm Trap. It is used to resend and synchronize alarms. Its value range is 0 to 4294967295. When the value exceeds the maximum value, the system automatically clears the value and numbers the alarm from 0 to 4294967295.  
                If the network management system (NMS) recieve the alarm number is not consequential, in such case that it notifies the SNMP agent the alarm number required.  So the monitor send the 100 alarm messages in maximum, after consequencial number required by NMS again. Specially, if NMS set the value to 0, the agent would clear the alarm queue automatically."                       �"Alarm number in site alarm list which are support. 
                It is used for alarm list management by NMS, and value range is 0 to 65535. "                       ""                       ""                       G"Site active alarm table index. It is the unique ID of the site alarm."                       o"Active alarm name. It is of the character string type, and used to specify the content of a specific alarm.  "                      �"Active alarm level, which users can configure the alarm severity, is an enumeration type:
                    If the enumeration value is 1, it indicates a critical alarm;
                    If the enumeration value is 2, it indicates a major alarm;
                    If the enumeration value is 3, it indicates a minor alarm;
                    If the enumeration value is 4, it indicates a warning;
                    If the enumeration value is 255, it indicates a unknown;"                       �"Active alarm signal description. It is used to add and describe alarm content. Users can define the description of the alarm.
                  Otherwise, the configured character can not be any other languages except English."                       o"Active alarm time. It is of the character string type, and used to specify the content of a specific alarm.  "                       ""Rowstatus of active alarm table."                       �"Site name, which users can configure, is used to specify a site.  Otherwise, the configured character can not be any other languages except English."                       �"Site administrant address, which users can assigned, is the unique ID of a site. It is used for device management by NMS, and value range is 0 to 65535. "                       �"NE ID. It is of the character string type. It is the unique ID of the site (an independent network element (NE)) on the network. Otherwise, the configured character can not be any other languages except English."                       �"Site description. It is of the character string type. It is used to describe the site information such as the site location, which users can configure.  Otherwise, the configured character can not be any other languages except English."                       �"Equipment ID. Value range: 000,000 to 000,100, in which the first three digits indicate the device type and the last three digits indicate the device SN. "                       �"Equipment name. It is of the character string type, and users can set the name of the monitor. 
                Otherwise, the configured character can not be any other languages except English."                       "/"                       "/"                       @"Site alarm table index. It is the unique ID of the site alarm."                       h"Alarm name. It is of the character string type, and used to specify the content of a specific alarm.  "                      �"Alarm level, which users can configure the alarm severity, is an enumeration type:
                  If the enumeration value is 1, it indicates a critical alarm;
                  If the enumeration value is 2, it indicates a major alarm;
                  If the enumeration value is 3, it indicates a minor alarm;
                  If the enumeration value is 4, it indicates a warning; "                       �"Alarm signal description. It is used to add and describe alarm content. Users can define the description of the alarm. 
                Otherwise, the configured character can not be any other languages except English."                       !"RowStatus of site alarms table."                               ?"Site monitor group ID, is the unique ID of the site monitors."                       �"Site monitor group name is of the character string type, used to specify the monitor group. Users can configure it. Otherwise, the configured character can not be any other languages except English."                       -"Total site intelligent monitors. Units:pcs."                           "/"                       "/"                       �"Table index of the site monitors (hwSiteMonitorTable) is restricted by the quantity of the site monitors (hwMonsQuantity). 
                Value range: 1 to 100."                       �"Site monitor ID. 
                Value range: 001,001 to 001,100, in which the first three digits indicate the device type and the last three digits indicate the device SN. "                       �"Monitor name. It is of the character string type, and users can set the name of the monitor.   
                Otherwise, the configured character can not be any other languages except English."                       �"Monitor description. It is of the character string type. Users can set the description of the monitor. 
                 Otherwise, the configured character can not be any other languages except English."                       ?"Monitor software version. It is of the character string type."                       f"Monitor manufacture. It is of the character string type, and is an inherent attribute of the device."                      "Monitor control status. It is an enumeration type:
                  If the enumeration value is 1, it indicates the background control;
                  If the enumeration value is 2, it indicates the automatic control.
                  If the enumeration value is 255, it indicates monitor module operation status unknown. 
                  In manual state, monitor works under background commands; while monitors runs well automatically in auto state. 
                  For details, see the corresponding user manual of the monitor."                      �"Warm-reset control of the monitor. It is an enumeration type:
                  If the enumeration value is 1, it indicates the Warm-reset control of the monitor is normal;
                  If the enumeration value is 2, it indicates the Warm-reset control of the monitor is reset.
                  If the enumeration value is 255, it indicates the Warm-reset control of the monito is unknown. "                      �"State of the site monitor module. It is an enumeration type: 
                  If the enumeration value is 1, it indicates that the site monitor module is in the normal state;
                  If the enumeration value is 2, it indicates that the monitor module RS485 port communication failed; 
                  If the enumeration value is 3, it indicates that the monitor module net port communication failed;  
                  If the enumeration value is 4, it indicates that a fault occurs on the monitor module; 
                  If the enumeration value is 254, it indicates monitor module alarm resume;  
                  If the enumeration value is 255, it indicates monitor module operation status unknown. "                       "RowStatus of site monitor."                              ."Device group ID of the rectifier module. It is the unique ID of the rectifier module group, and its default value: 002,000. 
                  The first digits indicate the device type and the last three digits indicate the device SN. If the last three digits are 000, it indicates a virtual device. "                       �"Name of the rectifier module group, character string type, is used to specify the rectifier module group. Users can configure it.  
                Otherwise, the configured character can not be any other languages except English."                      y"Total current of the rectifier module group on the site. It indicates the real-time statistics of the rectifier module group on the site. 
                Default value: 0 to 20000, 
                units: A, 
                and the value is accurate to one decimal place (.1). 
                If the value is 2147483647(0x7FFFFFFF), it indicates that the value is invalid."                       ]"Total quantity of the rectifier modules. 
                Value range: 0 to 256. Units:pcs."                      7"Rated voltage of the rectifier module group. It is an inherent attribute. 
                Value range: 42 to 58.3,
                Units: V, 
                and the value is accurate to one decimal place (.1). 
                 If the value is 2147483647(0x7FFFFFFF), it indicates that the value is invalid."                      �"Voltage adjustment of the rectifier module, which users can configure it. 
                Value range: 36 to 65,
                Units: V, 
                and the value is accurate to one decimal space (.1). 
                Based on the actual requirements, users can modify the output voltage of the rectifier module by modifying the value of the node. 
                If the value is 2147483647(0x7FFFFFFF), it indicates that the value is invalid.
                NOTES: Be cautious about changing the value of the node.  Only the system in manual mode, this parameter can be configured successfully. If the setting returns an error, it means that the current setting value is not supported."                      �"Sleep function of the rectifier module group on the site. It is an enumeration value:
                If the NMS notifies the SNMP agent that this node is set to 1, it means to disable the sleep function of the rectifier module group;
                If the NMS notifies the SNMP agent that this node is set to 2, it means to enable the sleep function of the rectifier module group.
                If NMS get the node value is 3, it indicates that this function is not support, 
                and in such case the value set to the agent is invalid.
                Default value: to disable the sleep function of the rectifier module group. For details, see the corresponding user manual of the monitor."                      g"Power-on or power-off of the rectifier module group (all the rectifier modules) on the site. It is an enumeration value:
                If the NMS notifies the SNMP agent that this node is set to 1, it indicates power-on of all rectifier modules;
                If the NMS notifies the SNMP agent that this node is set to 2, it indicates power-off of all the rectifier modules;
                If the NMS notifies the SNMP agent that this node is set to 255, it indicates nullOper of all the rectifier modules.
                NOTE: Only the system in manual mode, this parameter can be configured successfully."                       "Total power of the direct current output.
                Value range: 0 to 100000000,
                units: W, 
                and the value is an integer.
                If the value is 2147483647(0x7FFFFFFF), it indicates that the value is invalid."                       �"Load Usage.
                Value range: 0 to 150, 
                units: %, 
                and the value is an integer. 
                If the value is 2147483647(0x7FFFFFFF), it indicates that the value is invalid."                      "Total power of the direct current output. 
                Value range: 0 to 100000000, 
                units: W, 
                and the value is an integer. 
                If the value is 2147483647(0x7FFFFFFF), it indicates that the value is invalid."                       �"High rectifier capacity. 
                Value range: 0 to 150, 
                units: %, 
                and the value is an integer. 
                If the value is 2147483647(0x7FFFFFFF), it indicates that the value is invalid."                       �"Low rectifier capacity. 
                Value range: 0 to 150, 
                units: %, 
                and the value is an integer. 
                If the value is 2147483647(0x7FFFFFFF), it indicates that the value is invalid."                      "Overvoltage protection threshold. 
                Value range: 56.0 to 60.5, 
                units: V, 
                and the value is accurate to one decimal space (.1). 
                If the value is 2147483647(0x7FFFFFFF), it indicates that the value is invalid."                          %"Rectifier config information table. Use this table to get rectifiers equipment ID, software version, manufacturer, rated current, efficency, AC input type, and to control equipment on or off. 
                This table's index is hwRectConfigIndex, clone Rectifier config information table."                      %"Rectifier config information table. Use this table to get rectifiers equipment ID, software version, manufacturer, rated current, efficency, AC input type, and to control equipment on or off. 
                This table's index is hwRectConfigIndex, clone Rectifier config information table."                       �"Index of the device configuration list for the rectifier modules, which value range: 28672to 30719(To the actual subject). Lines of the device list are restricted by the total quantity of the rectifier modules (hwRectsTotalQuantity)."                       �"Rectifier module ID. Value range: 002'001 to 002'255. The first digits indicate the device type and last three digits indicate the device SN. "                       �"Device name of the rectifier module, character string type, is used to specify the rectifier module. Users can configure it.  
                Otherwise, the configured character can not be any other languages except English."                       `"Software version of the rectifier module. It indicates the software version ID of the module. "                       F"Rectifier module SN. It indicates the electronic tag of the product."                       �"Rated voltage of the rectifier module, is an inherent attribute. 
                Value range: 0 to 200, Units: A, and the value is accurate to one decimal place (.1). If the value is 2147483647(0x7FFFFFFF), it indicates that the value is invalid. "                      )"Efficiency of the rectifier module, is an inherent attribute. 
                Value range: 0 to 100, 
                Units: %, 
                and the value is accurate to one decimal place (.1). 
                If the value is 2147483647(0x7FFFFFFF), it indicates that the value is invalid."                      �"Power-on or power-off of the rectifier module, is an enumeration value. Users can modify the enumeration value of this node, thus controlling of the power-on or power-off of the rectifier module:
                  If the NMS notifies the SNMP agent that this node is set to 1, it indicates power-on of the rectifier module;
                  If the NMS notifies the SNMP agent that this node is set to 2, it indicates power-off of the rectifier module. "                       &"RowStatus of rectifier config table."                       �"Rectifier runing information table. Use this table to get rectifiers output current, output voltage, totle runing time, and current run status. 
                This table's index is hwRectRunIndex, clone rectifier runing information table."                       �"Rectifier runing information table. Use this table to get rectifiers output current, output voltage, totle runing time, and current run status. 
                This table's index is hwRectRunIndex, clone rectifier runing information table."                       �"Table index of the running rectifier modules, 
                which value range: 29672 to 30719(To the actual subject). 
                Lines of the device list are restricted by the total quantity of the rectifier modules (hwRectsTotalQuantity)."                      7"Output current of the rectifier module. It is a real-time analog parameter. 
                Value range: 0 to 300, 
                Units: A, 
                and the value is accurate to one decimal place (.1). 
                If the value is 2147483647(0x7FFFFFFF), it indicates that the value is invalid."                      3"Output voltage of the rectifier module. It is a real-time analog parameter. 
                Value range: 0 to 65, 
                Units: V, 
                the value is accurate to one decimal place (.1). 
                If the value is 2147483647(0x7FFFFFFF), it indicates that the value is invalid. "                       �"DC output power. 
                Value range: 0 to 30000, 
                units: W, 
                and the value is an integer.(1). 
                If the value is 2147483647(0x7FFFFFFF), it indicates that the value is invalid."                       �"AC input voltage. 
                Value range: 0 to 600, 
                units: V, 
                and the value is accurate to one decimal space (.1).
                If the value is 2147483647(0x7FFFFFFF), it indicates that the value is invalid."                       �"Rated Efficiency. 
                Value range: 0 to 100, 
                units: %, 
                and the value is an integer.(1). 
                If the value is 2147483647(0x7FFFFFFF), it indicates that the value is invalid."                      "Rectifier Temperature. 
                Value range: -300 to 300, 
                units: degC, 
                and the value is accurate to one decimal space (.1). 
                If the value is 2147483647(0x7FFFFFFF), it indicates that the value is invalid."                      �"State of the rectifier module. It is an enumeration type: 
                  If the enumeration value is 1, the rectifier module is in the normal state;
                  If the enumeration value is 2, a fault occurs on the rectifier module; 
                  If the enumeration value is 3, automatic protection of the rectifier module;
                  If the enumeration value is 4, communication of the rectifier module fails;
                  If the enumeration value is 5, the rectifier module is shut down; 
                  If the enumeration value is 6, the rectifier module is invalid; 
                  If the enumeration value is 7, this rectifier is not configured; 
                If the enumeration value is 8, this rectifier is ac off;
                If the enumeration value is 9, this rectifier is rectLost;
                  If the enumeration value is 254, rectifier alarm resume; 
                  If the enumeration value is 255, rectifier operation status unknown."                       &"RowStatus of rectifier runing table."                              "Battery group ID. It is the unique ID of the battery group device. 
                The first digits indicate the device type and the last three digits indicate the device SN. 
                If the last three digits are 000, it indicates a virtual device. "                       �"Device name of the battery group. It is of the character string type, which can be configured by users. 
                Otherwise, the configured character can not be any other languages except English."                       r"Total quantity of battery strings, 
                which value range: 0 to 100. 
                Units:strings."                      �"Battery high-temperature protection mode. It is an enumeration value, and can be configured. 
                If the enumeration value is 1, it indicates the power-off protection mode;
                If the enumeration value is 2, it indicates the protection mode of lowering the output voltage of the rectifier module. 
                If the enumeration value is 255, it indicates do nothing. "                      <"Battery protection voltage under high temperature. It works with the low-voltage power-off protection in battery high-temperature protection mode, which can be configured by users. 
                If the low-voltage power-off protection mode (that is, the enumeration value is 1) is selected, the node is a low-voltage power-off node. 
                Value range: 42 to 53, 
                units: V, 
                and the value is accurate to one decimal place (.1).  
                If the value is 2147483647(0x7FFFFFFF), it indicates that the value is invalid."                      �"Upper threshold of the battery high temperature disconnection(HTD), can be configured by users. 
                Value range: 25 to 80, 
                Units: centigrade (degC), 
                and the value is an integer (1). 
                If the value is 2147483647(0x7FFFFFFF), it indicates that the value is invalid.
                NOTE: There is linkage between hwSetBattsHTDLimit and hwSetBattsTempUpperLimit"                      �"Battery high temperature disconnection enable. It is an enumeration type:
                  If the enumeration value is 1, enable the operation of the battery disconnection in high temperature; 
                  If the enumeration value is 2, disable the operation of the battery disconnection in high temperature. 
                  The operation of the battery disconnection in high temperature is disabled by default. "                      �"Float charge voltage of the batteries, can be configured by users. 
                Value range: 42 to 58, 
                units: V, 
                and the value is accurate to one decimal place (.1) 
                If the value is 2147483647(0x7FFFFFFF), it indicates that the value is invalid.
                NOTE: There is linkage between hwSetBattsFloatVoltage and hwSetBattsBoostVoltage
                "                      �"Boostcharge voltage of the batteries, can be configured by users. 
                Value range: 42 to 58, 
                units: V, 
                and the value is accurate to one decimal place (.1). 
                If the value is 2147483647(0x7FFFFFFF), it indicates that the value is invalid.
                NOTE: There is linkage between hwSetBattsFloatVoltage and hwSetBattsBoostVoltage"                      /"Current-limiting point coefficient of the batteries, can be configured by users. 
                Value range: 0.05 to 0.5, 
                units: C10, 
                and the value is accurate to two decimal places (.01). 
                If the value is 2147483647(0x7FFFFFFF), it indicates that the value is invalid.
                There is linkage between  hwSetBattsChargeOvercurAlmThreshold and  hwSetBattsCurrLimitCoefficient.
                Current-limiting point coefficient must be less than or equal to the charge overcurrent alarm threshold."                      8"Temperature compensated coefficient of the batteries, can be configured by user. 
                Value range: 0 to 150, 
                units: mv per centigrade, 
                and the value is an integer (1). 
                If the value is 2147483647(0x7FFFFFFF), it indicates that the value is invalid."                      4"Control batteries charge mode between boost and float. It is an enumeration value. 
                  Users actively control the conversion. 
                  If the NMS notifies the SNMP agent that this node is set to 1, it means to start the float charge mode of the batteries; 
                  If the NMS notifies the SNMP agent that this node is set to 2, it means to start the boost charge mode of the batteries. 
                  If the NMS notifies the SNMP agent that this node is set to 255, it means to start the mode of the batteries is nullOper. "                      ;"Set batteries rated capacity. It is an analog parameter collected by the battery string in real time.
                Value range: 5 to 10000, 
                units: Ah, 
                the value is an integer (1). 
                If the value is 2147483647(0x7FFFFFFF), it indicates that the value is invalid."                      g"Timed Boost Charge Enabled. It is an enumeration value, and can be configured. 
                If the enumeration value is 1, it indicates timed boost charge is disabled;
                If the enumeration value is 2, it indicates timed boost charge is enabled. 
                If the enumeration value is 255, it indicates timed boost charge is unknown. "                       �"Timed Boost Charge Interval. 
                Value range: 1 to 365, 
                units: Day, 
                and the value is an integer.(1). 
                If the value is 2147483647(0x7FFFFFFF), it indicates that the value is invalid."                       �"Maximum Timed Boost Charge Duration. 
                Value range: 1 to 24, 
                units: h, 
                and the value is an integer.(1). 
                If the value is 2147483647(0x7FFFFFFF), it indicates that the value is invalid."                      �"Charge Overcurrent Alarm Threshold. 
                Value range: 0.05 to 1, 
                units: C10, 
                and the value is accurate to two decimal space (.01). 
                If the value is 2147483647(0x7FFFFFFF), it indicates that the value is invalid.
                There is linkage between  hwSetBattsChargeOvercurAlmThreshold and  hwSetBattsCurrLimitCoefficient.
                Current-limiting point coefficient must be less than or equal to the charge overcurrent alarm threshold."                       �"Low Capacity Alarm Threshold. 
                Value range: 0 to 90, 
                units: %, 
                and the value is an integer. (1)
                If the value is 2147483647(0x7FFFFFFF), it indicates that the value is invalid."                          b"Total current of the battery group. It indicates the real-time statistics of the battery group on the site. 
                Value range: -400000 to +400000, 
                units: A, 
                and the value is accurate to one decimal place (.1).  
                If the value is 2147483647(0x7FFFFFFF), it indicates that the value is invalid."                      >"Battery group backup time. It indicates the real-time statistics of the battery group. 
                Value range: 0 to 15360, 
                Units: minutes (min),  
                and the value is an integer (1).  
                If the value is 2147483647(0x7FFFFFFF), it indicates that the value is invalid."                      �"Battery charging state, indicates the charging and discharging information about the battery group. It is an enumeration type. 
                If the enumeration value is 1, it indicates a battery group in the float charging state. 
                If the enumeration value is 2, it indicates a battery group in the boost charging state. 
                If the enumeration value is 3, it indicates a battery group in the discharging state. 
                If the enumeration value is 4, it indicates a battery group in the hibernating state.
                If the enumeration value is 7, it indicates a battery group in the Offline state.
                If the enumeration value is 7, it indicates a battery group in the Offline state. "                      �"Battery group current-limiting state, indicates the state information about the battery group. It is an enumeration value. 
                  If the enumeration value is 1, it indicates that the current of the battery group is not limited. 
                  If the enumeration value is 2, it indicates the current of the battery group is limited.
                  If the enumeration value is 2, it indicates the current of the battery group is unknown. "                      D"Battery temperature. It is a battery parameter collected in real time. 
                Value range: -300 to 200, 
                unit: centigrade (degC), 
                and the value is an integer .
                If the value is 2147483647(0x7FFFFFFF), it indicates that battery temperature sensor is not configured."                      O"Batteries actual capacity. 
                It is an analog parameter collected by the battery string in real time.
                Value range: 0 to 2147483647, 
                units: Ah, 
                the value is an integer (1).  
                If the value is 2147483647(0x7FFFFFFF), it indicates that the value is invalid."                      c"Remaining capacity of all of the battery. 
                It is an analog parameter collected by the battery string in real time. 
                Value range: 0 to 2147483647, 
                units: Ah, 
                and the value is an integer (1).  
                If the value is 2147483647(0x7FFFFFFF), it indicates that the value is invalid."                       �"Total Remaining Capacity Percent. 
                Value range: 0 to 100, units: %, 
                and the value is an integer.(1). 
                If the value is 2147483647(0x7FFFFFFF), it indicates that the value is invalid."                          m"Battery standard test time, It can be configured by users,
                value range defines between 1 to 6000, 
                units: minutes(min).  
                and its value is an integer (1). 
                Here, if battery manual test is standard mode, 
                If the value is 2147483647(0x7FFFFFFF), it indicates that the value is invalid."                      `"Battery short test time, It can be configured by users,
                value range defines between 1 to 240,  
                units: minutes(min).
                and its value is an integer (1).
                If battery manual test is simple mode,  
                If the value is 2147483647(0x7FFFFFFF), it indicates that the value is invalid."                      u"Voltage when the battery short test is ended, can be configured by users. Here, if battery manual test is standard mode, 
                value range defines between 44.2 to 53, 
                Units: V, 
                and the value is accurate to one decimal place (.1). 
                If the value is 2147483647(0x7FFFFFFF), it indicates that the value is invalid."                      �"Battery manualtest start and stop. It is an enumeration value. 
                  If the value is 1, it means to start a standard manual test; 
                  If the value is 2, it means to start a short manual test; 
                  If the value is 3, it means to stop the battery test.
                If the value is 255, it means null operate(can't set to smu);  
                  Set the parameters, such as battery test time, and voltage when the battery test stops before the node controls the start of the battery test. If the parameters are not set this time, the system uses the configuration parameters by default; and if the battery test is started at the first time, the system uses the default value. 
                  Battery test can only start up in some conditions, so that the reason of Start of battery short test failed may be as follow:
                  1. Interval between this test and the latest AC outage or test is longer than the preset duration.
                  2. No major alarm is raised.
                  3. The number of healthy modules is greater than 0.
                  4. The number of battery strings is greater than 0."                      j"Battery test result record table. 
                Use this table to get battery test inital time, test result, battery efficiency, battery discharge time, terminated voltage, average current, discharge AH value, test temperature and test terminated course. 
                This table's index is hwBattsTestResultIndex, clone Battery test result record table."                      j"Battery test result record table. 
                Use this table to get battery test inital time, test result, battery efficiency, battery discharge time, terminated voltage, average current, discharge AH value, test temperature and test terminated course. 
                This table's index is hwBattsTestResultIndex, clone Battery test result record table."                       v"Table index of the battery test results. Currently up to 10 times of the battery test results are saved by default. "                      i"Record test type of the battery test. It is an enumeration value: 
                  If the NMS notifies the SNMP agent that this node is set to 1, it indicates a manual test; 
                  If the NMS notifies the SNMP agent that this node is set to 2, it indicates a simplified test;
                  If the NMS notifies the SNMP agent that this node is set to 3, it indicates a timed test;
                  If the NMS notifies the SNMP agent that this node is set to 4, it indicates a short test;
                  If the NMS notifies the SNMP agent that this node is set to 255, it indicates a other test."                       X"Test start time of the record in the battery test. It is of the character string type."                      s"Battery test result. It is an enumeration value.
                  If the enumeration value of the node is 1, it indicates that the battery test has no result: 
                  If the enumeration value of the node is 2, it indicates that the battery is in the normal state: 
                  If the enumeration value of the node is 3, it indicates that the battery is in the minor abnormal state, 
                  If the enumeration value of the node is 4, it indicates that the battery is in the alarm state,
                  If the enumeration value of the node is 255, it indicates that the battery state is unknown,"                      :"Battery efficiency test. 
                Value range: 0 to 100, 
                Units: %, 
                and the value is an integer (1).
                  If the value is -1, it indicates that the test value is inefficient.
                  If the value is 255, it indicates that the test value is invalid."                      !"Discharge time of the battery test records. 
                Value range: 0 to 100, 
                units: hour (h), 
                and the value is accurate to two decimal places (.01).  
                If the value is 2147483647(0x7FFFFFFF), it indicates that the value is invalid."                      "Discharge termination voltage of the battery test. 
                Value range: 0 to 60, 
                units: V, 
                and the value is accurate to one decimal place (.1).  
                If the value is 2147483647(0x7FFFFFFF), it indicates that the value is invalid."                       "Average discharge current of the battery test. 
                Value range: -1000 to 1000, 
                units: A, 
                and the value is accurate to one decimal place (.1).  
                If the value is 2147483647(0x7FFFFFFF), it indicates that the value is invalid."                      "Discharge ampere per hour the battery test. 
                Value range: 0 to 5000, 
                Units: Ah, 
                and the value is an integer (1).   
                If the value is 2147483647(0x7FFFFFFF), it indicates that the value is invalid."                      )"Battery temperature of the battery test termination. 
                Value range: -50 to +100, 
                Units: centigrade (degC), 
                and the value is an integer (1). 
                If the value is -1024, it indicates that no battery temperature value sensor is detected."                      �"Termination factors of the battery test. It is an enumeration value. 
                  If the enumeration value is 1, it indicates that the voltage value of the battery test reaches the set termination voltage; 
                  If the enumeration value is 2, it indicates that the voltage value of the battery test reaches the timing limit; 
                  If the enumeration value is 3, it indicates that an alarm related to the battery leads to the stop of the battery test; 
                  If the enumeration value is 4, it indicates that a battery test is stopped manually,
                  If the enumeration value is 5, it indicates that battery fault alarm happened,
                If the enumeration value is 6, it indicates that battery low capacity happened,
                If the enumeration value is 7, it indicates that battery low temp happened,
                  If the enumeration value is 255, it indicates that battery test end for other courses."                       ""RowStatus of battery test table."                       �"Battery constant current test function enable or disable. It is an enumeration value. 
                  If the value is 1, it means the function is disabled; 
                  If the value is 2, it means the function is enabled."                       �"The battery discharge current in the constant current test. 
                It is an integer value(range:1A~9999A) and the value is accurate to 1A."                      "Battery constant current test function enable or disable. 
                It is an enumeration value.
                If the value is 1, it means to disable the timed test of battery; 
                If the value is 3, it means to enable the scheduled test of battery."                       �"Scheduled Test Period. 
                Value range: 2 to 999, 
                units: Day, 
                and the value is an integer.(1). 
                If the value is 2147483647(0x7FFFFFFF), it indicates that the value is invalid."                       �"Test End Capacity.  
                Value range: 0 to 99, 
                units: %, 
                and the value is an integer. 
                If the value is 2147483647(0x7FFFFFFF), it indicates that the value is invalid."                       �"Test End Temperature. 
                Value range: -5 to 15, 
                units: degC, 
                and the value is an integer.(1). 
                If the value is 2147483647(0x7FFFFFFF), it indicates that the value is invalid."                      "Battery short test enable.
                It is an enumeration value, and can be configured. 
                If the enumeration value is 1, it indicates battery short test is disabled;
                If the enumeration value is 2, it indicates battery short test is enabled. "                       �"Short Test Period. 
                Value range: 1 to 360, 
                units: Day, 
                and the value is an integer.(1). 
                If the value is 2147483647(0x7FFFFFFF), it indicates that the value is invalid."                           �"Battery string config table. Use this table to get battery string equipment ID and equipment name, to set battery standard capacity and battery install time as well. This table's index is hwBattStringConfigIndex, clone battery string config table."                       �"Battery string config table. Use this table to get battery string equipment ID and equipment name, to set battery standard capacity and battery install time as well. This table's index is hwBattStringConfigIndex, clone battery string config table."                       i"Device table index of the battery string,
                value range: 1 to 100(To the actual subject)."                       �"Batteries device ID, can be configured by users. Value range: 003,001 to 003,100, in which the first three digits specify the device type and the last three specify the device SN."                       �"Batteries device name, of the character string type, is used to specify the batteries. Users can configure it. Otherwise, the configured character can not be any other languages except English."                      �"Upper threshold of the battery temperature alarm, can be configured by users. 
                Value range: 25 to 80, 
                Units: centigrade (degC), 
                and the value is an integer (1).  
                If the value is 2147483647(0x7FFFFFFF), it indicates that the value is invalid.
                NOTE: There is linkage between hwSetBattsHTDLimit and hwSetBattsTempUpperLimit"                      7"Lower threshold of the battery temperature alarm, can be configured by users. 
                Value range: -20 to 20, 
                Units: centigrade (degC), 
                and the value is an integer (1).  
                If the value is 2147483647(0x7FFFFFFF), it indicates that the value is invalid."                      "Set battery standard capacity, is an inherent attribute of the device. 
                Value range: 5 to 10000, 
                units: Ah, 
                the value is an integer (1).   
                If the value is 2147483647(0x7FFFFFFF), it indicates that the value is invalid."                       +"RowStatus of battery string config table."                      "Battery string runing table. Use this table to get battery string current, persent of remain capacity, battery remain capacity, battery actual capacity, as well as  battery temperature. 
                This table's index is hwBattStringRunIndex, clone battery string runing table."                      "Battery string runing table. Use this table to get battery string current, persent of remain capacity, battery remain capacity, battery actual capacity, as well as  battery temperature. 
                This table's index is hwBattStringRunIndex, clone battery string runing table."                       p"Device table index of the battery string, 
                which value range: 1 to 100(To the actual subject)."                      M"Batteries current. It is an analog parameter collected by the battery string in real time. 
                Value range: -1000 to +1000, 
                units: A, 
                and the value is accurate to one decimal place (.1).  
                If the value is 2147483647(0x7FFFFFFF), it indicates that the value is invalid."                      !"Remaining capacity percentage of the battery string. 
                Value range: 0 to 100, 
                units: %, 
                and the value is accurate to one decimal place (.1).  
                If the value is 2147483647(0x7FFFFFFF), it indicates that the value is invalid."                      M"Remaining capacity of the battery string. It is an analog parameter collected by the battery string in real time. 
                Value range: 0 to 10000, 
                units: Ah, 
                and the value is an integer (1).  
                If the value is 2147483647(0x7FFFFFFF), it indicates that the value is invalid."                      \"Battery temperature. It is a battery parameter collected in real time. 
                Value range: -300 to +200, 
                unit: centigrade (degC), 
                and the value is accurate to one decimal place (.1).
                If the value is 2147483647(0x7FFFFFFF), it indicates that battery temperature sensor is not configured."                       �"Batteries midpoint voltage. It is an analog parameter collected by the battery string in real time. 
                Value range: -90 to +90, 
                unit: V, 
                and the value is accurate to one decimal place (.1)."                      �"State of the site battery string module. It is an enumeration type: 
                  If the enumeration value is 1, it indicates that the site battery string is in the normal state; 
                  If the enumeration value is 2, it indicates that the battery string is over upper alarm threshold of temperature; 
                  If the enumeration value is 3, it indicates that the battery string is under lower alarm threshold of temperature;  
                  If the enumeration value is 4, it indicates that battery string loop has disconnected;  
                  If the enumeration value is 5, it indicates that the current of batery is over upper charging threshold;
                  If the enumeration value is 6, it indicates that the battery string is unbalance;  
                  If the enumeration value is 7, it indicates that battery string is discharge;  
                  If the enumeration value is 8, it indicates that battery string is fuseBreak;
                  If the enumeration value is 254, it indicates battery string alarm resume; 
                  If the enumeration value is 255, it indicates battery string operation status unknown. "                       +"RowStatus of battery string runing table."                               �"AC group ID, is the unique ID of the AC group. The first three digits indicate the device type and the last three indicate the device SN. If the last three digits are 000, it indicates a virtual device. "                       �"Device name of the AC group. It is of the character string type, and can be configured by users. Otherwise, the configured character can not be any other languages except English."                      B"Total current of the AC group. It indicates the real-time statistics of the AC group. 
                Value range: 0 to 1000, 
                units: A, 
                and the value is accurate to one decimal place (.1). 
                If the value is 2147483647(0x7FFFFFFF), it indicates that the value is invalid."                       :"Total quantity of the site ACUs. Value range: 0 to 100. "                      ~"Upper threshold of the AC voltage alarm, can be configured by users. 
                Value range: 60 to300, 
                units: V, 
                and the value is an integer (1).  
                If the value is 2147483647(0x7FFFFFFF), it indicates that the value is invalid.
                NOTE: There is linkage between hwSetAcsUpperVoltLimit and hwSetAcsLowerVoltLimit"                      "Lower threshold of the AC voltage alarm, can be configured by users. 
                Value range: 60 to 300, 
                units: V, 
                and the value is an integer (1).  
                If the value is 2147483647(0x7FFFFFFF), it indicates that the value is invalid.
                NOTE: There is linkage between hwSetAcsUpperVoltLimit and hwSetAcsLowerVoltLimit"                       �"hwAcsPowerConsumption of the AC. Value range:0 to 10000, units:KWh ,the value is accurate to two decimal place (.01). If the value is 2147483647(0x7FFFFFFF), it indicates that the value is invalid."                          n"AC input table. Use this table to get AC distribution unit ID, AC distribution unit name, A phase or AB line voltage, B phase or BC line voltage, C phase or CA line voltage, AC input breaker status, 
                as well as AC output breakers quantity, which defines hwAcOutputBreakerTable row number. This table's index is hwAcInputIndex, clone AC input table."                      n"AC input table. Use this table to get AC distribution unit ID, AC distribution unit name, A phase or AB line voltage, B phase or BC line voltage, C phase or CA line voltage, AC input breaker status, 
                as well as AC output breakers quantity, which defines hwAcOutputBreakerTable row number. This table's index is hwAcInputIndex, clone AC input table."                       �"ACU device table index, 
                which value range: 1 to 100. 
                Lines of the device list are restricted by the total quantity of ACUs (hwAcsInputQuantity)."                       �"ACU device ID, which users can configure. Value range: 004,001 to 004,100, 
                in which The first digits indicate the device type and the last three digits indicate the device SN."                       �"ACU device name, of the character string type, is used to specify the alternating current unit (ACU). 
                Users can configure it. Otherwise, the configured character can not be any other languages except English."                      "ACU A-phase or AB-line voltage. 
                Value range: 0 to 600, 
                units: V, 
                and the value is accurate to one decimal place (.1).  
                If the value is 2147483647(0x7FFFFFFF), it indicates that the value is invalid."                      "ACU B-phase or BC-line voltage. 
                Value range: 0 to 600, 
                units: V, 
                and the value is accurate to one decimal place (.1).  
                If the value is 2147483647(0x7FFFFFFF), it indicates that the value is invalid."                      "ACU C-phase or CA-line voltage. 
                Value range: 0 to 600, 
                units: V, 
                and the value is accurate to one decimal place (.1).  
                If the value is 2147483647(0x7FFFFFFF), it indicates that the value is invalid."                      @"ACU A-phase current. It is an analog parameter collected by the ACU in real time. 
                Value range: 0 to 20000, 
                units: A, 
                and the value is accurate to one decimal place (.1).  
                If the value is 2147483647(0x7FFFFFFF), it indicates that the value is invalid."                      ?"ACU B-phase current. It is an analog parameter collected by the ACU in real time. 
                Value range: 0 to 20000, 
                units: A, 
                and the value is accurate to one decimal place (.1). 
                If the value is 2147483647(0x7FFFFFFF), it indicates that the value is invalid."                      @"ACU C-phase current. It is an analog parameter collected by the ACU in real time. 
                Value range: 0 to 20000, 
                units: A, 
                and the value is accurate to one decimal place (.1).  
                If the value is 2147483647(0x7FFFFFFF), it indicates that the value is invalid."                      �"State of the site AC distribution uint. It is an enumeration type: 
                  If the enumeration value is 1, it indicates that the site AC distribution uint is in the normal state; 
                  If the enumeration value is 2, it indicates that AC distribution uint power off; 
                  If the enumeration value is 3, it indicates that AC input phase absent;
                  If the enumeration value is 4, it indicates that AC voltage is over upper alarm threshold;  
                  If the enumeration value is 5, it indicates that AC voltage is under lower alarm threshold;  
                  If the enumeration value is 6, it indicates that AC voltage is freqHigh;  
                  If the enumeration value is 7, it indicates that AC voltage is freqLow;  
                  If the enumeration value is 254, it indicates AC distribution uint alarm resume; 
                  If the enumeration value is 255, it indicates AC distribution uint operation status unknown. "                       "RowStatus of ACU."                               �"DC group ID: unique ID of the DC group. in which The first digits indicate the device type and the last three digits indicate the device SN. If the last three digits are 000, it indicates a virtual device."                       �"Device name of the DC group, of the character string type, can be configured by users. Otherwise, the configured character can not be any other languages except English."                      "Total voltage of the DC group. 
                Value range: 0 to 100, 
                units: V, 
                and the value is accurate to one decimal place (.1).  
                If the value is 2147483647(0x7FFFFFFF), it indicates that the value is invalid."                      "Total current of the DC group. 
                Value range: -30000 to 30000, 
                units: A, 
                and the value is accurate to one decimal place (.1).   
                If the value is 2147483647(0x7FFFFFFF), it indicates that the value is invalid."                       �"Total power of the DC group. 
                Value range: 0 to 3000000, 
                units: W, 
                and the value is an integer (1).  
                If the value is 2147483647(0x7FFFFFFF), it indicates that the value is invalid."                       @"Total quantity of the DC units, and its Value range: 0 to 100."                      �"Upper threshold of the DC voltage alarm, can be configued by users. 
                Value range: 53 to 60, 
                units: V, 
                and the value is accurate to one decimal space (.1).  
                If the value is 2147483647(0x7FFFFFFF), it indicates that the value is invalid.
                NOTE: There is linkage between hwSetDcsUpperVoltLimit and hwSetDcsLowerVoltLimit"                      �"Lower threshold of the DC voltage alarm, can be configued by users. 
                Value range: 35 to 57, 
                units: V, 
                and the value is accurate to one decimal space (.1).  
                If the value is 2147483647(0x7FFFFFFF), it indicates that the value is invalid.
                NOTE: There is linkage between hwSetDcsUpperVoltLimit and hwSetDcsLowerVoltLimit"                       �"PerfoLoad Consume of the DC,
                Value range:  0 to 429467295, 
                units: KWh, 
                and the value is an integer (1).
                If the value is 2147483647(0x7FFFFFFF), it indicates that the value is invalid."                           "/"                       "/"                       �"Device table index of the DC units, which value range: 1 to 100. Lines of the device list are restricted by the total quantity of DC units (hwDcsQuantity)."                       �"DC unit device ID, which value range: 006,001 to 006,100. The first digits indicate the device type and the last three digits indicate the device SN. "                       �"DC unit device name, of the character string type, can be configued by users.  Otherwise, the configured character can not be any other languages except English."                      A"DC output voltage. It is an analog parameter collected by the DC power in real time. 
                Value range: 0 to 100, 
                units: V, 
                and the value is accurate to one decimal space (.1).  
                If the value is 2147483647(0x7FFFFFFF), it indicates that the value is invalid."                      G"DC output current. It is an analog parameter collected by the DC power in real time. 
                Value range: -30000 to 30000, 
                units: A, 
                and the value is accurate to one decimal space (.1). 
                If the value is 2147483647(0x7FFFFFFF), it indicates that the value is invalid."                      /"DC output power. It is an analog parameter collected by the DC power in real time. 
                Value range: 0 to 3000000, 
                units: W, 
                and the value is an integer (1).  
                If the value is 2147483647(0x7FFFFFFF), it indicates that the value is invalid."                       �"Quantity of the DC load output branches, 
                which value range: 0 to 100.  
                As the DC unit lower-level subset, the node indicates the quantity of the DC load output branches contained by each DC unit lower-level subset."                       �"The load usage of rated rectifier capacity. 
                Value range: 0 to 100, 
                units: %, 
                and the value is an integer (1)."                      !"State of the site DC distribution uint. It is an enumeration type: 
                If the enumeration value is 1, it indicates that the site DC distribution uint is in the normal state; 
                If the enumeration value is 2, it indicates that DC voltage is over the upper alarm threshold;
                If the enumeration value is 3, it indicates that DC voltage is under the lower alarm threshold; 
                If the enumeration value is 4, it indicates that DC voltage is dcAbsent; 
                If the enumeration value is 5, it indicates that DC voltage is overload; 
                If the enumeration value is 254, it indicates DC distribution uint alarm resume; 
                If the enumeration value is 255, it indicates DC distribution uint operation status unknown. "                       $"RowStatus of Dc output equipments."                               �"LVD unit group ID. It is the unique ID of the LVD unit group. The first digits indicate the device type. The last three digits indicate the device SN. If the last three digits are 000, it indicates a virtual device."                       �"Low-voltage power-off unit group name, of the character string type, can be configured by users.
                Otherwise, the configured character can not be any other languages except English."                       ;"Total quantity of power-off units. Value range: 0 to 100."                          ,"Power-off unit table. Use this table to get Lvd unit equipment ID and power-off unit equipment name, set power-off enable and power-off voltage, as well as control power-off unit disconnected. This table's index is hwLvdBranchIndex, which qualificated by hwLvdsQuantity, clone power-off unit table."                      ,"Power-off unit table. Use this table to get Lvd unit equipment ID and power-off unit equipment name, set power-off enable and power-off voltage, as well as control power-off unit disconnected. This table's index is hwLvdBranchIndex, which qualificated by hwLvdsQuantity, clone power-off unit table."                       �"Device table index of a power-off unit. 
                Value range: 1 to 100. Lines of the device list are restricted by the total quantity of the power-off units (hwLvdsTotalQuantity). "                       �"Device ID of a power-off unit. Value range: 8001 to 8100. The first digits indicate the device type and the last three digits indicate the device SN. "                       �"Device name of a power-off unit, of the character string type, is used to specify the low-voltage power-off unit. Users can configure it. Otherwise, the configured character can not be any other languages except English. "                      |"Control power-off unit enabling. It is an enumeration value, and users actively set it. 
                  If the enumeration value is 1, it means to enable the power-off unit; 
                  If the enumeration value is 2, it means to disable the power-off unit. 
                  When the power-off unit control is not configured, the power-off unit is enabled by default."                      �"Low-voltage power-off voltage of a power-off unit can be configured by users. 
                Its value range: 35 to 56, 
                units: V, 
                and the value is accurate to one decimal space (.1).  
                If the value is 2147483647(0x7FFFFFFF), it indicates that the value is invalid.
                NOTE: There is linkage between hwSetLvdVoltage and hwSetLvdReconnectedVoltage"                      z"Select the control mode of the power-off unit. It is an enumeration value, users can configure it manually. 
                    If the NMS notifies the SNMP agent that the node is set to 1, it means to select the voltage power off mode; 
                    If the NMS notifies the SNMP agent that the node is set to 2, it means to select the time power off mode;  
                    If the NMS notifies the SNMP agent that the node is set to 3, it means to select the capacity power off mode;
                    If the NMS notifies the SNMP agent that the node is set to 255, it means to select the capacity power unknown mode;"                      �"Low-voltage power-off recover of a power-off unit can be configured by users. 
                Its value range: 37.0 to 58.0, 
                unit: V, 
                and the value is accurate to one decimal space (.1).  
                If the value is 2147483647(0x7FFFFFFF), it indicates that the value is invalid.
                The default value is 51.5
                NOTE: There is linkage between hwSetLvdVoltage and hwSetLvdReconnectedVoltage"                      �"Low-voltage power-off disconnected time, It can be configured by users,
                value range defines between 0 to 6000, 
                unit: minutes(min) £¬
                and its value is an integer (1). 
                Here, if battery manual test is standard mode, 
                If the value is 2147483647(0x7FFFFFFF), it indicates that the value is invalid.
                NOTE: Only the lvd in time power off mode, this parameter can be configured successfully."                      �"Power-off unit control the power off, when Remaining capacity percentage of the battery strings is below the calue. 
                Value range: 0 to 99, 
                unit: %, 
                and the value is accurate to one decimal space (.1). 
                If the value is 2147483647(0x7FFFFFFF), it indicates that the value is invalid.
                NOTE: Only the lvd in capacity power off mode, this parameter can be configured successfully."                      F"State of the site LVD uint. It is an enumeration type: 
                  If the enumeration value is 1, the site LVD uint is in the normal state;
                  If the enumeration value is 2, the power-off uint disconnect for low voltage;  
                  If the enumeration value is 3, the power-off uint disconnect bakeground;   
                  If the enumeration value is 4, the power-off uint local disconnect manually;  
                  If the enumeration value is 5, the power-off uint disconnect for under temperature; 
                  If the enumeration value is 6, the power-off uint disconnect for over temperature; 
                  If the enumeration value is 7, the ower-off uint disconnect for time;
                If the enumeration value is 8, the power-off uint disconnect for capacity;
                If the enumeration value is 9, the power-off uint disconnect for force;
                  If the enumeration value is 254, the power-off uint alarm resume; 
                  If the enumeration value is 255, it indicates LVD uint operation status unknown. "                       "RowStatus of lvd table."                              "Unit group ID of the site environment. It is the unique ID of the unit group on the site. 
                The first digits indicate the device type. The last three digits indicate the device SN. If the last three digits are 000, it indicates a virtual device. "                       �"Unit group name of the site environment, of the character string type, can be configured by users.
                Otherwise, the configured character can not be any other languages except English."                      "Smoke sensor reset. It manually controls clearance of the smoke sensor alarm, and this node is of the enumeration type. 
                If the enumeration value of the node is 1, it indicates that the reset of the smoke sensor is not required. 
                If the enumeration value of the node is 2, it indicates that the background controls the reset of the smoke sensor. 
                If the enumeration value of the node is 255, it indicates that the background controls the unknown of the smoke sensor. "                       Q"Quantity of the environment temperature sensors, and its value range: 0 to 256."                       N"Quantity of the environment humidity sensors, and its value range: 0 to 256."                       @"Quantity of the Spare digitals, and its value range: 0 to 256."                       G"Quantity of the Spare digitals Output, and its value range: 0 to 256."                          �"Site environment temperature table. 
                Use this table to get environment temperature equipment ID, environment temperature equipment name, and environment temperature, set environment temperature upper limit, environment temperature lower limit, and environment temperature alarm enable. 
                This table's index is hwEnvTempSensorIndex, which qualificated by hwEnvTempSensorsQuantity, clone site environment temperature table."                      �"Site environment temperature table. 
                Use this table to get environment temperature equipment ID, environment temperature equipment name, and environment temperature, set environment temperature upper limit, environment temperature lower limit, and environment temperature alarm enable. 
                This table's index is hwEnvTempSensorIndex, which qualificated by hwEnvTempSensorsQuantity, clone site environment temperature table."                       �"Table index of the environment temperature sensors.
                Value range: 1 to 256. 
                Lines of the device table are restricted by the quantity of environment temperature sensors (hwEnvTempSensorsTotalQuantity). "                       �"Environment temperature sensor ID. Value range: 009'001 to 009'255, in which the first digits indicate the device type and the last three digits indicate the device SN. "                       �"Environment temperature sensor name, of the character string type,  is used to specify an environment temperature sensor. 
                Users can configure it. Otherwise, the configured character can not be any other languages except English. "                      C"Environment temperature. It is an environment parameter collected in real time. 
                Value range: -50 to +100, 
                units: centigrade (degC), 
                and the value is an integer (1).  
                If the value is 2147483647, it indicates that the temperature sensor is not configured."                      �"Upper threshold of the environment temperature alarm, can be configured by users. 
                Value range: 25 to 80, 
                units: centigrade (degC), 
                and the value is an integer (1). 
                If the value is 2147483647(0x7FFFFFFF), it indicates that the value is invalid.
                NOTE: There is linkage between hwSetEnvTempUpperLimit and hwSetEnvTempLowerLimit, All Sensors are set and get the same limit signal;"                      �"Lower threshold of the environment temperature alarm, can be configured by users. 
                Value range: -20 to 20, 
                units: centigrade (degC), 
                and the value is an integer (1).  
                If the value is 2147483647(0x7FFFFFFF), it indicates that the value is invalid.
                NOTE: There is linkage between hwSetEnvTempUpperLimit and hwSetEnvTempLowerLimit, All Sensors are set and get the same limit signal;"                      �"Threshold of the environment ultra high temperature measurement, can be configured by users.
                Value range: 25 to 80,
                unit: centigrade (degC),
                and the value is an integer (1).
                If the value is 2147483647(0x7FFFFFFF), it indicates that the value is invalid, All Sensors are set and get the same limit signal;
                "                      ("State of the site environment temperature sensor. It is an enumeration type: 
                  If the enumeration value is 1, it indicates that the site environment temperature sensor is in the normal state; 
                  If the enumeration value is 2, it indicates that the environment temperature sensor is over temperature; 
                  If the enumeration value is 3, it indicates that the environment temperature sensor is under temperature; 
                  If the enumeration value is 4, it indicates that the environment temperature sensor is not in slot;
                  If the enumeration value is 254, it indicates that environment temperature alarm resume; 
                  If the enumeration value is 255, it indicates environment temperature sensor operation status unknown. "                      7"Spare digital table. Use this table to get Spare digital equipment ID , Spare digital equipment name, and current Spare digital alarm tension, ae well as to set Spare digital alarm enable. This table's index is hwSpareDigitalIndex, which qualificated by hwSpareDigitalsTotalQuantity, clone switch input table."                      7"Spare digital table. Use this table to get Spare digital equipment ID , Spare digital equipment name, and current Spare digital alarm tension, ae well as to set Spare digital alarm enable. This table's index is hwSpareDigitalIndex, which qualificated by hwSpareDigitalsTotalQuantity, clone switch input table."                       �"Spare digital table index, which 
                value range: 1 to 256. 
                Lines of the device list are restricted by the quantity of Spare digitals (hwSpareDigitalsTotalQuantity). "                       �"Spare digital device ID. Value range: 011'001 to 011'255, in which the first digits indicate the device type and the last three digits indicate the device SN. "                       �"Spare digital name, of the character string type, is used to specify Spare digitals. Users can configure it. Otherwise, the configured character can not be any other languages except English. "                       �"Spare digital alarm state. It is an enumeration value.  
                  If the value of the node is 1, it indicates a low-tension alarm;
                  If the value of the node is 2, it indicates a high-tension alarm. "                      �"State of the site Spare digital. It is an enumeration type: 
                  If the enumeration value is 1, it indicates that the Spare digital operation state is normal; 
                  If the enumeration value is 2, it indicates that a alarm occurs on the Spare digital;  
                  If the enumeration value is 254, it indicates that spare digital alarm resume;  
                  If the enumeration value is 255, it indicates Spare digital operation status unknown."                      7"Spare digital table. Use this table to get Spare digital equipment ID , Spare digital equipment name, and current Spare digital alarm tension, ae well as to set Spare digital alarm enable. This table's index is hwSpareDigitalIndex, which qualificated by hwSpareDigitalsTotalQuantity, clone switch input table."                      7"Spare digital table. Use this table to get Spare digital equipment ID , Spare digital equipment name, and current Spare digital alarm tension, ae well as to set Spare digital alarm enable. This table's index is hwSpareDigitalIndex, which qualificated by hwSpareDigitalsTotalQuantity, clone switch input table."                       �"Spare digital table index, which 
                value range: 1 to 256. 
                Lines of the device list are restricted by the quantity of Spare digitals (hwSpareDigitalsTotalQuantity). "                       �"Spare digital device ID. Value range: 012'001 to 012'255, in which the first digits indicate the device type and the last three digits indicate the device SN. "                       �"Spare digital name, of the character string type, is used to specify Spare digitals. Users can configure it. Otherwise, the configured character can not be any other languages except English. "                       �"Spare digital alarm state. It is an enumeration value.  
                  If the value of the node is 1, it indicates a low-tension alarm;
                  If the value of the node is 2, it indicates a high-tension alarm. "                      �"State of the site Spare digital. It is an enumeration type: 
                  If the enumeration value is 1, it indicates that the Spare digital operation state is normal; 
                  If the enumeration value is 2, it indicates that a alarm occurs on the Spare digital;  
                  If the enumeration value is 254, it indicates that spare digital alarm resume;  
                  If the enumeration value is 255, it indicates Spare digital operation status unknown."                               ""                       ""                       y"Dc aircondition table index,which value range: 1 to 256.Lines of the device list are restricted by the quantity of Fan."                       �"Dc aircondition device ID. Value range: 021'001 to 021'255, in which the first digits indicate the device type and the last three digits indicate the device SN. "                       �"Dc aircondition name, of the character string type, is used to specify Fans. Users can configure it.
                Otherwise, the configured character can not be any other languages except English. "                      �"State of the Dc aircondition ctrl mode. It is an enumeration type: 
                If the enumeration value is 1, it indicates that the Dc aircondition is in autoControl state;
                If the enumeration value is 2, it indicates that the Dc aircondition is in manualControl state;
                If the enumeration value is 255, it indicates that the Dc aircondition is in unknown state;"                      "State of the Dc aircondition control on or off. It is an enumeration type: 
                If the enumeration value is 1, it indicates that the Dc aircondition is in on state;
                If the enumeration value is 2, it indicates that the Dc aircondition is in off state;"                      �"State of the Dc aircondition run status. It is an enumeration type: 
                If the enumeration value is 1, it indicates that the Dc aircondition is in standby state;
                If the enumeration value is 2, it indicates that the Dc aircondition is in run state;
                If the enumeration value is 3, it indicates that the Dc aircondition is in fault state;
                If the enumeration value is 255, it indicates that the Dc aircondition is other state."                      �"State of the Dc air compressor run status. It is an enumeration type: 
                If the enumeration value is 1, it indicates that the Dc aircondition is in standby state;
                If the enumeration value is 2, it indicates that the Dc aircondition is in run state;
                If the enumeration value is 3, it indicates that the Dc aircondition is in fault state;
                If the enumeration value is 255, it indicates that the Dc aircondition is unknown state."                       �"Dc aircondition innr speed, 
                Value range: 0 to 60000.
                Unit: rpm,
                and the value is an integer (1).
                If the value is 2147483647(0x7FFFFFFF), it indicates that the value is invalid."                       �"Dc aircondition outer speed, 
                Value range: 0.0 to 60000.0.
                Unit: rpm,
                and the value is an integer (1).
                If the value is 2147483647(0x7FFFFFFF), it indicates that the value is invalid."                       �"Dc aircondition compressor run time, 
                Value range: 0 to 175200.
                Unit: h,
                the value is an integer (1). 
                If the value is 2147483647(0x7FFFFFFF), it indicates that the value is invalid."                       �"Dc aircondition run time, 
                Value range: 0 to 175200.
                Unit: H,
                the value is an integer (1). 
                If the value is 2147483647(0x7FFFFFFF), it indicates that the value is invalid."                      "Dc aircondition enter channel temperature, 
                Value range:-500.0 to 1000.0.
                Unit: degC.
                and the value is an integer (1).   
                If the value is 2147483647(0x7FFFFFFF), it indicates that the value is invalid."                      ;"State of the dc aircondition. It is an enumeration type: 
                If the enumeration value is 1, it indicates that the Inverter is in the standby state;
                If the enumeration value is 2, it indicates that the Inverter is in the run state;  
                If the enumeration value is 3, it indicates that the Inverter is in the fault state;
                If the enumeration value is 254, it indicates that the Inverter is in the resume state;     
                If the enumeration value is 255, it indicates Inverter operation status unknown. "                       %"RowStatus fo dc aircondition table."                               "/"                       "/"                       ~"Ac Ammeter table index,which value range:4096 to 20479. Lines of the device list are restricted by the quantity of AcAmmeter"                       �"Ac Ammeter device ID. Value range: 022'001 to 022'255, in which the first digits indicate the device type and the last three digits indicate the device SN."                       �"Ac Ammeter name, of the character string type, is used to specify Fans. Users can configure it.
                Otherwise, the configured character can not be any other languages except English.
                "                      "Ac Ammeter frequency, 
                Value range: 0.00 to 1000.00.
                Unit: Hz.
                and the value is accurate to two decimal space (.01). 
                If the value is 2147483647(0x7FFFFFFF), it indicates that the value is invalid."                      "Ac Ammeter phase a voltage, 
                Value range: 0.00 to 2000.00.
                Unit: V.
                and the value is accurate to two decimal space (.01). 
                If the value is 2147483647(0x7FFFFFFF), it indicates that the value is invalid."                      
"Ac Ammeter phase b voltage, 
                Value range: 0.00 to 2000.0.
                Unit: V.
                and the value is accurate to two decimal space (.01).
                If the value is 2147483647(0x7FFFFFFF), it indicates that the value is invalid."                      "Ac Ammeter phase c voltage, 
                Value range: 0.00 to 2000.0.
                Unit: V.
                and the value is accurate to two decimal space (.01). 
                If the value is 2147483647(0x7FFFFFFF), it indicates that the value is invalid."                       �"Ac Ammeter set channel number, 
                Value range: 1 to 4. 
                Unit: NA.
                and the value is an integer (1).
                If the value is 2147483647(0x7FFFFFFF), it indicates that the value is invalid."                       �"Ac Ammeter clear communication failure . It is an enumeration type: 
                If the enumeration value is 1, it indicates that the ac ammeter clear communication failure alarm;"                       K"Ac Ammeter type, Value range: 0 to 65535. And the value is an integer(1)."                       n"Ac Ammeter version, of the character string type, is used to specify Ac Ammeter. Users can not configure it."                      "Ac Ammeter phase a current of channel 1, 
                Value range: 0.00 to 1000.0.
                Unit: A.
                and the value is accurate to two decimal space (.01). 
                If the value is 2147483647(0x7FFFFFFF), it indicates that the value is invalid."                      "Ac Ammeter phase b current of channel 1, 
                Value range: 0.00 to 1000.0.
                Unit: A.
                and the value is accurate to two decimal space (.01). 
                If the value is 2147483647(0x7FFFFFFF), it indicates that the value is invalid."                      "Ac Ammeter phase c current of channel 1, 
                Value range: 0.00 to 1000.0.
                Unit: A.
                and the value is accurate to two decimal space (.01).
                If the value is 2147483647(0x7FFFFFFF), it indicates that the value is invalid."                      $"Ac Ammeter phase c current of channel 1, 
                Value range: -1000000.00 to 1000000.00.
                Unit: kW.
                and the value is accurate to two decimal space (.01). 
                If the value is 2147483647(0x7FFFFFFF), it indicates that the value is invalid."                      "Ac Ammeter total power factor of channel 1, 
                Value range: -10.00 to 10.00.
                and the value is accurate to two decimal space (.01). 
                If the value is 2147483647(0x7FFFFFFF), it indicates that the value is invalid."                      ("Ac Ammeter total active engry acc of channel 1, 
                Value range: 0.00 to 1000000000.00.
                Unit: kWh.
                and the value is accurate to two decimal space (.01). 
                If the value is 2147483647(0x7FFFFFFF), it indicates that the value is invalid."                      "Ac Ammeter phase a current of channel 2, 
                Value range: 0.00 to 1000.00.
                Unit: A.
                and the value is accurate to two decimal space (.01).
                If the value is 2147483647(0x7FFFFFFF), it indicates that the value is invalid."                      "Ac Ammeter phase b current of channel 2, 
                Value range: 0.00 to 1000.00.
                Unit: A.
                and the value is accurate to two decimal space (.01).
                If the value is 2147483647(0x7FFFFFFF), it indicates that the value is invalid."                      "Ac Ammeter phase c current of channel 2, 
                Value range: 0.00 to 1000.00.
                Unit: A.
                and the value is accurate to two decimal space (.01). 
                If the value is 2147483647(0x7FFFFFFF), it indicates that the value is invalid."                      $"Ac Ammeter phase c current of channel 2, 
                Value range: -1000000.00 to 1000000.00.
                Unit: kW.
                and the value is accurate to two decimal space (.01). 
                If the value is 2147483647(0x7FFFFFFF), it indicates that the value is invalid."                      "Ac Ammeter total power factor of channel 2, 
                Value range: -10.00 to 10.00.
                and the value is accurate to two decimal space (.01). 
                If the value is 2147483647(0x7FFFFFFF), it indicates that the value is invalid."                      &"Ac Ammeter total active engry acc of channel 2, 
                Value range: 0.00 to 1000000000.00.
                Unit: A.
                and the value is accurate to two decimal space (.01). 
                If the value is 2147483647(0x7FFFFFFF), it indicates that the value is invalid."                      "Ac Ammeter phase a current of channel 3, 
                Value range: 0.00 to 1000.00.
                Unit: A.
                and the value is accurate to two decimal space (.01). 
                If the value is 2147483647(0x7FFFFFFF), it indicates that the value is invalid."                      "Ac Ammeter phase b current of channel 3, 
                Value range: 0.00 to 1000.00.
                Unit: A.
                and the value is accurate to two decimal space (.01). 
                If the value is 2147483647(0x7FFFFFFF), it indicates that the value is invalid."                      "Ac Ammeter phase c current of channel 3, 
                Value range: 0.00 to 1000.00.
                Unit: A.
                and the value is accurate to two decimal space (.01). 
                If the value is 2147483647(0x7FFFFFFF), it indicates that the value is invalid."                      $"Ac Ammeter phase c current of channel 3, 
                Value range: -1000000.00 to 1000000.00.
                Unit: kW.
                and the value is accurate to two decimal space (.01). 
                If the value is 2147483647(0x7FFFFFFF), it indicates that the value is invalid."                      "Ac Ammeter total power factor of channel 3, 
                Value range: -10.00 to 10.00.
                and the value is accurate to two decimal space (.01).
                If the value is 2147483647(0x7FFFFFFF), it indicates that the value is invalid."                      ("Ac Ammeter total active engry acc of channel 3, 
                Value range: 0.00 to 1000000000.00.
                Unit: kWh.
                and the value is accurate to two decimal space (.01). 
                If the value is 2147483647(0x7FFFFFFF), it indicates that the value is invalid."                      "Ac Ammeter phase a current of channel 4, 
                Value range: 0 to 1000.
                Unit: A.
                and the value is accurate to two decimal space (.01). 
                If the value is 2147483647(0x7FFFFFFF), it indicates that the value is invalid."                      "Ac Ammeter phase b current of channel 4, 
                Value range: 0 to 1000.
                Unit: A.
                and the value is accurate to two decimal space (.01). 
                If the value is 2147483647(0x7FFFFFFF), it indicates that the value is invalid."                      "Ac Ammeter phase c current of channel 4, 
                Value range: 0 to 1000.
                Unit: A.
                and the value is accurate to two decimal space (.01). 
                If the value is 2147483647(0x7FFFFFFF), it indicates that the value is invalid."                      "Ac Ammeter phase c current of channel 4, 
                Value range: -1000000 to 1000000.
                Unit: kW.
                and the value is accurate to two decimal space (.01). 
                If the value is 2147483647(0x7FFFFFFF), it indicates that the value is invalid."                      "Ac Ammeter total power factor of channel 4, 
                Value range: -10.00 to 10.00.
                and the value is accurate to two decimal space (.01).
                If the value is 2147483647(0x7FFFFFFF), it indicates that the value is invalid."                      ""Ac Ammeter total active engry acc of channel 4, 
                Value range: 0 to 1000000000.
                Unit: kWh.
                and the value is accurate to two decimal space (.01). 
                If the value is 2147483647(0x7FFFFFFF), it indicates that the value is invalid."                      t"State of the Ac Ammeter. It is an enumeration type: 
                If the enumeration value is 1, it indicates that the Ac Ammeter is in the normal state;
                If the enumeration value is 2, it indicates that the Ac Ammeter is in the fault state;  
                If the enumeration value is 255, it indicates that the Ac Ammeter is in the unknown state;  "                        "RowStatus fo Ac Ammeter table."                               "Device group ID of the SSU module. It is the unique ID of the SSU module group, and its default value: 024,000. 
                The first digits indicate the device type and the last three digits indicate the device SN. If the last three digits are 000, it indicates a virtual device. "                       �"Name of the SSU module group, character string type, is used to specify the SSU module group. 
                Otherwise, the configured character can not be any other languages except English."                       �"The total output current of SSU. 
                Value range: 0 to 1000, 
                units: A, 
                and the value is one decimal space (.1)."                       �"The total output current of SSU. 
                Value range: 0 to 10000000, 
                units: kWh, 
                and the value is one decimal space (.1)."                           "/"                       "/"                       m"SSU table index,which value range:1 to 256. Lines of the device list are restricted by the quantity of SSU."                       �"SSU device ID. Value range: 024'001 to 024'255, in which the first digits indicate the device type and the last three digits indicate the device SN."                       �"Device name of the SSU module, character string type, is used to specify the SSU module. 
                Otherwise, the configured character can not be any other languages except English."                       �"The input voltage of SSU, 
                Value range: 0 to 200, 
                units: V, 
                and the value is one decimal space (.1)."                       �"The output voltage of SSU, 
                Value range: 0 to 200, 
                units: V, 
                and the value is one decimal space (.1)."                       �"The output current of SSU, 
                Value range: 0 to 1000, 
                units: A, 
                and the value is one decimal space (.1)."                           "/"                       "/"                        "The battery group equip Index."                        "The battery group equip ID no."                       "The battery group equip name."                      W"State of the Battery group unit running state. It is an enumeration type: 
                  If the enumeration value is 1, it indicates the Battery is first on line; 
                  If the enumeration value is 2, it indicates that Battery power off; 
                  If the enumeration value is 3, it indicates  that Battery is on float charging; 
                  If the enumeration value is 4, it indicates that Battery is on equal charging; 
                  If the enumeration value is 5, it indicates that Battery is on discharge; 
                  If the enumeration value is 6, it indicates that Battery is on charge; 
                  If the enumeration value is 7, it indicates that Battery is on test; 
                  If the enumeration value is 255,  it indicates Battery uint operation status unknown. 
                "                       �"The battery volt; Value range: 0 to 100, 
                units: V. 
                and the value is accurate to one decimal place (.1).  
                If the value is 2147483647(0x7FFFFFFF), it indicates that the value is invalid."                       �"The battery current; Value range: -4000 to 4000, 
                units: A. 
                and the value is accurate to one decimal place (.1).  
                If the value is 2147483647(0x7FFFFFFF), it indicates that the value is invalid."                       �"The battery total capacity; Value range: 0 to 10000, 
                units: Ah. 
                and the value is accurate to one decimal place (.1).   
                If the value is 2147483647(0x7FFFFFFF), it indicates that the value is invalid."                      "The battery total remain capacity; Value range:0 to 100, 
                units: %. 
                and the value is accurate to one decimal place (.1).   
                If the value is 2147483647(0x7FFFFFFF), it indicates that the value is invalid."                       �"The battery temperature; Value range:-50 to 100, 
                units: degC. 
                and the value is accurate to one decimal place (.1).   
                If the value is 2147483647(0x7FFFFFFF), it indicates that the value is invalid."                       �"The battery backup time; Value range: 0 to 256, 
                units: h.
                and the value is accurate to one decimal place (.1).   
                If the value is 2147483647(0x7FFFFFFF), it indicates that the value is invalid."                       �"The esmu communicate number; 
                Value range: 0 to 100.   
                If the value is 2147483647(0x7FFFFFFF), it indicates that the value is invalid."                       �"The battery soh: 0 to 100,  
                units: %. 
                and the value is accurate to one decimal place (1).   
                If the value is 2147483647(0x7FFFFFFF), it indicates that the value is invalid."                       "/"                       "/"                       �"Battery cell number, can be configued by users. 
                Value range: 1 to 16, 
                If the value is 2147483647(0x7FFFFFFF), it indicates that the value is invalid. 
                The default value is 16."                      W"Battery equalcharge  voltage, can be configued by users. 
                Value range: 42 to 58, 
                units: v, 
                and the value is accurate to one decimal space (.1).  
                If the value is 2147483647(0x7FFFFFFF), it indicates that the value is invalid. 
                The default value is 56.4. "                      V"Battery floatcharge voltage, can be configued by users. 
                Value range: 42 to 58, 
                units: v, 
                and the value is accurate to one decimal space (.1).  
                If the value is 2147483647(0x7FFFFFFF), it indicates that the value is invalid. 
                The default value is 54.5. "                      �"Battery charge limited threhold , can be configued by users. 
                Value range: 0.05 to 2, 
                units: C10, 
                and the value is accurate to one decimal space (.01).  
                If the value is 2147483647(0x7FFFFFFF), it indicates that the value is invalid. 
                The default value is 0.4. 
                If the setting returns an error, it means that the current setting value is not supported."                      m"Battery over charge current limited threhold , can be configued by users. 
                Value range: 0.15 to 1.2, 
                units: C10, 
                and the value is accurate to one decimal space (.01).  
                If the value is 2147483647(0x7FFFFFFF), it indicates that the value is invalid.
                The default value is 0.75. "                      j"Upper threshold of the environment temperature alarm, can be configured by users. 
                Value range: 35 to 70, 
                units: centigrade (¡ãC), 
                and the value is an integer (1).  
                If the value is 2147483647(0x7FFFFFFF), it indicates that the value is invalid. 
                The default value is 50."                      i"Lower threshold of the environment temperature alarm, can be configured by users. 
                Value range: -50 to 10, 
                units: centigrade (degC), 
                and the value is an integer (1).  
                If the value is 2147483647(0x7FFFFFFF), it indicates that the value is invalid. 
                The default value is 0."                           "/"                       "/"                       3"The battery equip Index.Value range: 3668..3715  "                       8"The battery equip ID no.Value range: 31001 to 31032.  "                       "The battery equip name."                        "The battery communica address."                       "The Battery software version."                       "/"                       "/"                      H"voltage of the battery. It indicates the real-time statistics of the battery on the site. 
                Value range: 0 to 60, 
                unit: V, 
                and the value is accurate to one decimal place (.1).  
                If the value is 2147483647(0x7FFFFFFF), it indicates that the value is invalid."                      L"Current of the battery. It indicates the real-time statistics of the battery on the site. 
                Value range: -200 to 200, 
                unit: A, 
                and the value is accurate to one decimal place (.1).  
                If the value is 2147483647(0x7FFFFFFF), it indicates that the value is invalid."                      �"Battery charging state, indicates the charging and discharging information about the battery group. It is an enumeration type. 
                If the enumeration value is 1, it indicates a battery  in the Offline state. 
                If the enumeration value is 2, it indicates a battery  in the online state. 
                If the enumeration value is 3, it indicates a battery  in the Sleep state. 
                If the enumeration value is 4, it indicates a battery  in the disconnect state. 
                If the enumeration value is 5, it indicates a battery  in the Charge state. 
                If the enumeration value is 6, it indicates a battery  in the Discharge state. 
                If the enumeration value is 7, it indicates a battery  in the Standby state. 
                If the enumeration value is 255, it indicates a battery group in the unknown state. "                      D"Soh of the battery. It indicates the real-time statistics of the battery on the site. 
                Value range: 0 to 100, 
                unit: %,
                and the value is accurate to two decimal place (1).   
                If the value is 2147483647(0x7FFFFFFF), it indicates that the value is invalid."                      "Capacity of the battery.
                Value range: 0 to 10000, 
                unit: Ah, 
                and the value is accurate to two decimal place (.01).  
                If the value is 2147483647(0x7FFFFFFF), it indicates that the value is invalid."                      L"Voltage of the battery cell. It indicates the real-time statistics of the battery on the site. 
                Value range: 0 to 5, 
                unit: V, 
                and the value is accurate to one decimal place (.1).  
                If the value is 2147483647(0x7FFFFFFF), it indicates that the value is invalid."                      L"Voltage of the battery cell. It indicates the real-time statistics of the battery on the site. 
                Value range: 0 to 5, 
                unit: V, 
                and the value is accurate to one decimal place (.1).  
                If the value is 2147483647(0x7FFFFFFF), it indicates that the value is invalid."                      L"Voltage of the battery cell. It indicates the real-time statistics of the battery on the site. 
                Value range: 0 to 5, 
                unit: V, 
                and the value is accurate to one decimal place (.1).  
                If the value is 2147483647(0x7FFFFFFF), it indicates that the value is invalid."                      L"Voltage of the battery cell. It indicates the real-time statistics of the battery on the site. 
                Value range: 0 to 5, 
                unit: V, 
                and the value is accurate to one decimal place (.1).  
                If the value is 2147483647(0x7FFFFFFF), it indicates that the value is invalid."                      L"Voltage of the battery cell. It indicates the real-time statistics of the battery on the site. 
                Value range: 0 to 5, 
                unit: V, 
                and the value is accurate to one decimal place (.1).  
                If the value is 2147483647(0x7FFFFFFF), it indicates that the value is invalid."                      L"Voltage of the battery cell. It indicates the real-time statistics of the battery on the site. 
                Value range: 0 to 5, 
                unit: V, 
                and the value is accurate to one decimal place (.1).  
                If the value is 2147483647(0x7FFFFFFF), it indicates that the value is invalid."                      L"Voltage of the battery cell. It indicates the real-time statistics of the battery on the site. 
                Value range: 0 to 5, 
                unit: V, 
                and the value is accurate to one decimal place (.1).  
                If the value is 2147483647(0x7FFFFFFF), it indicates that the value is invalid."                      L"Voltage of the battery cell. It indicates the real-time statistics of the battery on the site. 
                Value range: 0 to 5, 
                unit: V, 
                and the value is accurate to one decimal place (.1).  
                If the value is 2147483647(0x7FFFFFFF), it indicates that the value is invalid."                      L"Voltage of the battery cell. It indicates the real-time statistics of the battery on the site. 
                Value range: 0 to 5, 
                unit: V, 
                and the value is accurate to one decimal place (.1).  
                If the value is 2147483647(0x7FFFFFFF), it indicates that the value is invalid."                      L"Voltage of the battery cell. It indicates the real-time statistics of the battery on the site. 
                Value range: 0 to 5, 
                unit: V, 
                and the value is accurate to one decimal place (.1).  
                If the value is 2147483647(0x7FFFFFFF), it indicates that the value is invalid."                      L"Voltage of the battery cell. It indicates the real-time statistics of the battery on the site. 
                Value range: 0 to 5, 
                unit: V, 
                and the value is accurate to one decimal place (.1).  
                If the value is 2147483647(0x7FFFFFFF), it indicates that the value is invalid."                      L"Voltage of the battery cell. It indicates the real-time statistics of the battery on the site. 
                Value range: 0 to 5, 
                unit: V, 
                and the value is accurate to one decimal place (.1).  
                If the value is 2147483647(0x7FFFFFFF), it indicates that the value is invalid."                      L"Voltage of the battery cell. It indicates the real-time statistics of the battery on the site. 
                Value range: 0 to 5, 
                unit: V, 
                and the value is accurate to one decimal place (.1).  
                If the value is 2147483647(0x7FFFFFFF), it indicates that the value is invalid."                      L"Voltage of the battery cell. It indicates the real-time statistics of the battery on the site. 
                Value range: 0 to 5, 
                unit: V, 
                and the value is accurate to one decimal place (.1).  
                If the value is 2147483647(0x7FFFFFFF), it indicates that the value is invalid."                      L"Voltage of the battery cell. It indicates the real-time statistics of the battery on the site. 
                Value range: 0 to 5, 
                unit: V, 
                and the value is accurate to one decimal place (.1).  
                If the value is 2147483647(0x7FFFFFFF), it indicates that the value is invalid."                      L"Voltage of the battery cell. It indicates the real-time statistics of the battery on the site. 
                Value range: 0 to 5, 
                unit: V, 
                and the value is accurate to one decimal place (.1).  
                If the value is 2147483647(0x7FFFFFFF), it indicates that the value is invalid."                      X"Temperature of the battery cell. It indicates the real-time statistics of the battery on the site. 
                Value range: -100 to 100, 
                unit: degC, 
                and the value is accurate to one decimal place (.1).  
                If the value is 2147483647(0x7FFFFFFF), it indicates that the value is invalid."                      X"Temperature of the battery cell. It indicates the real-time statistics of the battery on the site. 
                Value range: -100 to 100, 
                unit: degC, 
                and the value is accurate to one decimal place (.1).  
                If the value is 2147483647(0x7FFFFFFF), it indicates that the value is invalid."                      X"Temperature of the battery cell. It indicates the real-time statistics of the battery on the site. 
                Value range: -100 to 100, 
                unit: degC, 
                and the value is accurate to one decimal place (.1).  
                If the value is 2147483647(0x7FFFFFFF), it indicates that the value is invalid."                      X"Temperature of the battery cell. It indicates the real-time statistics of the battery on the site. 
                Value range: -100 to 100, 
                unit: degC, 
                and the value is accurate to one decimal place (.1).  
                If the value is 2147483647(0x7FFFFFFF), it indicates that the value is invalid."                      X"Temperature of the battery cell. It indicates the real-time statistics of the battery on the site. 
                Value range: -100 to 100, 
                unit: degC, 
                and the value is accurate to one decimal place (.1).  
                If the value is 2147483647(0x7FFFFFFF), it indicates that the value is invalid."                      X"Temperature of the battery cell. It indicates the real-time statistics of the battery on the site. 
                Value range: -100 to 100, 
                unit: degC, 
                and the value is accurate to one decimal place (.1).  
                If the value is 2147483647(0x7FFFFFFF), it indicates that the value is invalid."                      X"Temperature of the battery cell. It indicates the real-time statistics of the battery on the site. 
                Value range: -100 to 100, 
                unit: degC, 
                and the value is accurate to one decimal place (.1).  
                If the value is 2147483647(0x7FFFFFFF), it indicates that the value is invalid."                      X"Temperature of the battery cell. It indicates the real-time statistics of the battery on the site. 
                Value range: -100 to 100, 
                unit: degC, 
                and the value is accurate to one decimal place (.1).  
                If the value is 2147483647(0x7FFFFFFF), it indicates that the value is invalid."                      X"Temperature of the battery cell. It indicates the real-time statistics of the battery on the site. 
                Value range: -100 to 100, 
                unit: degC, 
                and the value is accurate to one decimal place (.1).  
                If the value is 2147483647(0x7FFFFFFF), it indicates that the value is invalid."                      X"Temperature of the battery cell. It indicates the real-time statistics of the battery on the site. 
                Value range: -100 to 100, 
                unit: degC, 
                and the value is accurate to one decimal place (.1).  
                If the value is 2147483647(0x7FFFFFFF), it indicates that the value is invalid."                      X"Temperature of the battery cell. It indicates the real-time statistics of the battery on the site. 
                Value range: -100 to 100, 
                unit: degC, 
                and the value is accurate to one decimal place (.1).  
                If the value is 2147483647(0x7FFFFFFF), it indicates that the value is invalid."                      X"Temperature of the battery cell. It indicates the real-time statistics of the battery on the site. 
                Value range: -100 to 100, 
                unit: degC, 
                and the value is accurate to one decimal place (.1).  
                If the value is 2147483647(0x7FFFFFFF), it indicates that the value is invalid."                      X"Temperature of the battery cell. It indicates the real-time statistics of the battery on the site. 
                Value range: -100 to 100, 
                unit: degC, 
                and the value is accurate to one decimal place (.1).  
                If the value is 2147483647(0x7FFFFFFF), it indicates that the value is invalid."                      X"Temperature of the battery cell. It indicates the real-time statistics of the battery on the site. 
                Value range: -100 to 100, 
                unit: degC, 
                and the value is accurate to one decimal place (.1).  
                If the value is 2147483647(0x7FFFFFFF), it indicates that the value is invalid."                      X"Temperature of the battery cell. It indicates the real-time statistics of the battery on the site. 
                Value range: -100 to 100, 
                unit: degC, 
                and the value is accurate to one decimal place (.1).  
                If the value is 2147483647(0x7FFFFFFF), it indicates that the value is invalid."                      X"Temperature of the battery cell. It indicates the real-time statistics of the battery on the site. 
                Value range: -100 to 100, 
                unit: degC, 
                and the value is accurate to one decimal place (.1).  
                If the value is 2147483647(0x7FFFFFFF), it indicates that the value is invalid."                      e"Temperature of the battery cell. It indicates the real-time statistics of the battery on the site. 
                Value range: -100 to 100, 
                units: centigrade(degC), 
                and the value is accurate to one decimal place (.1).  
                If the value is 2147483647(0x7FFFFFFF), it indicates that the value is invalid."                      e"Temperature of the battery cell. It indicates the real-time statistics of the battery on the site. 
                Value range: -100 to 100, 
                units: centigrade(degC), 
                and the value is accurate to one decimal place (.1).  
                If the value is 2147483647(0x7FFFFFFF), it indicates that the value is invalid."                      e"Temperature of the battery cell. It indicates the real-time statistics of the battery on the site. 
                Value range: -100 to 100, 
                units: centigrade(degC), 
                and the value is accurate to one decimal place (.1).  
                If the value is 2147483647(0x7FFFFFFF), it indicates that the value is invalid."                      e"Temperature of the battery cell. It indicates the real-time statistics of the battery on the site. 
                Value range: -100 to 100, 
                units: centigrade(degC), 
                and the value is accurate to one decimal place (.1).  
                If the value is 2147483647(0x7FFFFFFF), it indicates that the value is invalid."                      e"Temperature of the battery cell. It indicates the real-time statistics of the battery on the site. 
                Value range: -100 to 100, 
                units: centigrade(degC), 
                and the value is accurate to one decimal place (.1).  
                If the value is 2147483647(0x7FFFFFFF), it indicates that the value is invalid."                      e"Temperature of the battery cell. It indicates the real-time statistics of the battery on the site. 
                Value range: -100 to 100, 
                units: centigrade(degC), 
                and the value is accurate to one decimal place (.1).  
                If the value is 2147483647(0x7FFFFFFF), it indicates that the value is invalid."                      L"Voltage of the battery cell. It indicates the real-time statistics of the battery on the site. 
                Value range: 0 to 5, 
                unit: V, 
                and the value is accurate to one decimal place (.1).  
                If the value is 2147483647(0x7FFFFFFF), it indicates that the value is invalid."                      L"Voltage of the battery cell. It indicates the real-time statistics of the battery on the site. 
                Value range: 0 to 5, 
                unit: V, 
                and the value is accurate to one decimal place (.1).  
                If the value is 2147483647(0x7FFFFFFF), it indicates that the value is invalid."                      L"Voltage of the battery cell. It indicates the real-time statistics of the battery on the site. 
                Value range: 0 to 5, 
                unit: V, 
                and the value is accurate to one decimal place (.1).  
                If the value is 2147483647(0x7FFFFFFF), it indicates that the value is invalid."                      L"Voltage of the battery cell. It indicates the real-time statistics of the battery on the site. 
                Value range: 0 to 5, 
                unit: V, 
                and the value is accurate to one decimal place (.1).  
                If the value is 2147483647(0x7FFFFFFF), it indicates that the value is invalid."                      L"Voltage of the battery cell. It indicates the real-time statistics of the battery on the site. 
                Value range: 0 to 5, 
                unit: V, 
                and the value is accurate to one decimal place (.1).  
                If the value is 2147483647(0x7FFFFFFF), it indicates that the value is invalid."                      L"Voltage of the battery cell. It indicates the real-time statistics of the battery on the site. 
                Value range: 0 to 5, 
                unit: V, 
                and the value is accurate to one decimal place (.1).  
                If the value is 2147483647(0x7FFFFFFF), it indicates that the value is invalid."                           "/"                       "/"                       "The elock equip Index."                       "The elock  equip ID no."                       " The elock equip name."                           "/"                       "/"                       "The tem_hum equip Index."                       "The tem_hum  equip ID no."                       " The tem_hum equip name."                                  �"When rectifiers fault alarms happen, a alarm trap will be send. Its correlation binding parameters: Site ID, Site name, Site description, NE ID, Alarm name, Alarm single description, Alarm port description, Alarm severity, and Site alarm SN. 
                Additionally, in order to identify the device, rectifier equipment ID and equipment name are also include in VB(variable bondings)."                V"Rectifier Fault alarm resolved.Its correlation binding parameters: Site ID, Site name, Site description, NE ID, Alarm name, Alarm single description, Alarm port description, Alarm severity, and Site alarm SN. Additionally, in order to identify the device, rectifier equipment ID and equipment name are also include in VB(variable bondings)."                �"Rectifier abnormal alarm, because of communication failure, module protection, or turnoff. Its correlation binding parameters:  
                Site ID, Site name, Site description, NE ID, Alarm name, Alarm single description, Alarm port description, Alarm severity, and Site alarm SN. Additionally, in order to identify the device, rectifier equipment ID and equipment name are also include in VB(variable bondings)."                e"Rectifier abnormal alarm resume. Description.Its correlation binding parameters:  Site ID, Site name, Site description, NE ID, Alarm name, Alarm single description, Alarm port description, Alarm severity, and Site alarm SN. Additionally, in order to identify the device, rectifier equipment ID and equipment name are also include in VB(variable bondings)."                V"Battery loop disconnect. Its correlation binding parameters:  Site ID, Site name, Site description, NE ID, Alarm name, Alarm single description, Alarm port description, Alarm severity, and Site alarm SN. Additionally, in order to identify the device, battery string equipment ID and equipment name are also include in VB(variable bondings)."                ^"Battery loop break alarm resume. Its correlation binding parameters:  Site ID, Site name, Site description, NE ID, Alarm name, Alarm single description, Alarm port description, Alarm severity, and Site alarm SN. Additionally, in order to identify the device, battery string equipment ID and equipment name are also include in VB(variable bondings)."                t"Battery disconnect for low voltage. Its correlation binding parameters:  Site ID, Site name, Site description, NE ID, Alarm name, Alarm single description, Alarm port description, Alarm severity, and Site alarm SN. 
                Additionally, in order to identify the device, battery LVD unit equipment ID and equipment name are also include in VB(variable bondings)."                Y"Battery LVD alarm resume. Its correlation binding parameters:  Site ID, Site name, Site description, NE ID, Alarm name, Alarm single description, Alarm port description, Alarm severity, and Site alarm SN. Additionally, in order to identify the device, battery LVD unit equipment ID and equipment name are also include in VB(variable bondings)."                ^"Batterys charge in over current. Its correlation binding parameters:  Site ID, Site name, Site description, NE ID, Alarm name, Alarm single description, Alarm port description, Alarm severity, and Site alarm SN. Additionally, in order to identify the device, battery string equipment ID and equipment name are also include in VB(variable bondings)."                a"Batterys over current alarm resume. Its correlation binding parameters:  Site ID, Site name, Site description, NE ID, Alarm name, Alarm single description, Alarm port description, Alarm severity, and Site alarm SN. Additionally, in order to identify the device, battery string equipment ID and equipment name are also include in VB(variable bondings)."                a"Battery string temperature is too high or too low. Its correlation binding parameters:  Site ID, Site name, Site description, NE ID, Alarm name, Alarm single description, Alarm port description, Alarm severity, and Site alarm SN. Additionally, in order to identify the device, battery group ID and group name are also include in VB(variable bondings)."                W"Battery string temperature alarm resume. Its correlation binding parameters:  Site ID, Site name, Site description, NE ID, Alarm name, Alarm single description, Alarm port description, Alarm severity, and Site alarm SN. Additionally, in order to identify the device, battery group ID and group name are also include in VB(variable bondings)."                M"Battery group discharge alarm. Its correlation binding parameters:  Site ID, Site name, Site description, NE ID, Alarm name, Alarm single description, Alarm port description, Alarm severity, and Site alarm SN. Additionally, in order to identify the device, battery group ID and group name are also include in VB(variable bondings)."                T"Battery group discharge alarm resume. Its correlation binding parameters:  Site ID, Site name, Site description, NE ID, Alarm name, Alarm single description, Alarm port description, Alarm severity, and Site alarm SN. Additionally, in order to identify the device, battery group ID and group name are also include in VB(variable bondings)."                \"AC absent or AC power off alarms happened. Its correlation binding parameters:  Site ID, Site name, Site description, NE ID, Alarm name, Alarm single description, Alarm port description, Alarm severity, and Site alarm SN. Additionally, in order to identify the device, AC equipment ID and equipment name are also include in VB(variable bondings)."                I"AC input alarm resumed. Its correlation binding parameters:  Site ID, Site name, Site description, NE ID, Alarm name, Alarm single description, Alarm port description, Alarm severity, and Site alarm SN. Additionally, in order to identify the device, AC equipment ID and equipment name are also include in VB(variable bondings)."                C"DC voltage alarm. Its correlation binding parameters:  Site ID, Site name, Site description, NE ID, Alarm name, Alarm single description, Alarm port description, Alarm severity, and Site alarm SN. Additionally, in order to identify the device, AC equipment ID and equipment name are also include in VB(variable bondings)."                J"DC voltage alarm resume. Its correlation binding parameters:  Site ID, Site name, Site description, NE ID, Alarm name, Alarm single description, Alarm port description, Alarm severity, and Site alarm SN. Additionally, in order to identify the device, DC equipment ID and equipment name are also include in VB(variable bondings)."                ^"Loads disconnect for low voltage. Its correlation binding parameters:  Site ID, Site name, Site description, NE ID, Alarm name, Alarm single description, Alarm port description, Alarm severity, and Site alarm SN. Additionally, in order to identify the device, load LVD unit equipment ID and equipment name are also include in VB(variable bondings)."                S"Load LVD alarm resume. Its correlation binding parameters:  Site ID, Site name, Site description, NE ID, Alarm name, Alarm single description, Alarm port description, Alarm severity, and Site alarm SN. Additionally, in order to identify the device, load LVD unit equipment ID and equipment name are also include in VB(variable bondings)."                T"Load fuse broken down. Its correlation binding parameters:  Site ID, Site name, Site description, NE ID, Alarm name, Alarm single description, Alarm port description, Alarm severity, and Site alarm SN. Additionally, in order to identify the device, battery string equipment ID and equipment name are also include in VB(variable bondings)."                U"Load fuse alarm resume. Its correlation binding parameters:  Site ID, Site name, Site description, NE ID, Alarm name, Alarm single description, Alarm port description, Alarm severity, and Site alarm SN. Additionally, in order to identify the device, battery string equipment ID and equipment name are also include in VB(variable bondings)."                }"Environment temperature is too high or too low. Its correlation binding parameters:  Site ID, Site name, Site description, NE ID, Alarm name, Alarm single description, Alarm port description, Alarm severity, and Site alarm SN. Additionally, in order to identify the device, envirenment temperature sensor equipment ID and equipment name are also include in VB(variable bondings)."                s"Environment temperature alarm resume. Its correlation binding parameters:  Site ID, Site name, Site description, NE ID, Alarm name, Alarm single description, Alarm port description, Alarm severity, and Site alarm SN. Additionally, in order to identify the device, envirenment temperature sensor equipment ID and equipment name are also include in VB(variable bondings)."                Q"Spare digital fault. Its correlation binding parameters:  Site ID, Site name, Site description, NE ID, Alarm name, Alarm single description, Alarm port description, Alarm severity, and Site alarm SN. Additionally, in order to identify the device, Spare digital equipment ID and equipment name are also include in VB(variable bondings)."                W"Spare digital alarm resume.Its correlation binding parameters:  Site ID, Site name, Site description, NE ID, Alarm name, Alarm single description, Alarm port description, Alarm severity, and Site alarm SN. Additionally, in order to identify the device, Spare digital equipment ID and equipment name are also include in VB(variable bondings)."                B"Door open. Its correlation binding parameters:  Site ID, Site name, Site description, NE ID, Alarm name, Alarm single description, Alarm port description, Alarm severity, and Site alarm SN. Additionally, in order to identify the device, envirenment unit group ID and group name are also include in VB(variable bondings)."                J"Door alarm resume. Its correlation binding parameters:  Site ID, Site name, Site description, NE ID, Alarm name, Alarm single description, Alarm port description, Alarm severity, and Site alarm SN. Additionally, in order to identify the device, envirenment unit group ID and group name are also include in VB(variable bondings)."                D"Water alarm. Its correlation binding parameters:  Site ID, Site name, Site description, NE ID, Alarm name, Alarm single description, Alarm port description, Alarm severity, and Site alarm SN. Additionally, in order to identify the device, envirenment unit group ID and group name are also include in VB(variable bondings)."                K"Water alarm resume. Its correlation binding parameters:  Site ID, Site name, Site description, NE ID, Alarm name, Alarm single description, Alarm port description, Alarm severity, and Site alarm SN. Additionally, in order to identify the device, envirenment unit group ID and group name are also include in VB(variable bondings)."                l"Site is on fire, which is detected by smoke sensors. Its correlation binding parameters:  Site ID, Site name, Site description, NE ID, Alarm name, Alarm single description, Alarm port description, Alarm severity, and Site alarm SN. Additionally, in order to identify the device, envirenment unit group ID and group name are also include in VB(variable bondings)."                K"Smoke alarm resume. Its correlation binding parameters:  Site ID, Site name, Site description, NE ID, Alarm name, Alarm single description, Alarm port description, Alarm severity, and Site alarm SN. Additionally, in order to identify the device, envirenment unit group ID and group name are also include in VB(variable bondings)."                p"More than one rectifier reported fault alarms in the same time. Its correlation binding parameters:  Site ID, Site name, Site description, NE ID, Alarm name, Alarm single description, Alarm port description, Alarm severity, and Site alarm SN. Additionally, in order to identify the device, rectifier group ID and group name are also include in VB(variable bondings)."                U"Multi-rectifiers fault alarm resume. Its correlation binding parameters:  Site ID, Site name, Site description, NE ID, Alarm name, Alarm single description, Alarm port description, Alarm severity, and Site alarm SN. Additionally, in order to identify the device, rectifier group ID and group name are also include in VB(variable bondings)."                �"Rectifiers work redundantly, in this case that some of rectifiers will going to sleep. Its correlation binding parameters:  Site ID, Site name, Site description, NE ID, Alarm name, Alarm single description, Alarm port description, Alarm severity, and Site alarm SN. Additionally, in order to identify the device, rectifier group ID and group name are also include in VB(variable bondings)."                �"Rectifiers redundant alarm resume, when the power supply and requirement were in balance. Its correlation binding parameters:  Site ID, Site name, Site description, NE ID, Alarm name, Alarm single description, Alarm port description, Alarm severity, and Site alarm SN. Additionally, in order to identify the device, rectifier group ID and group name are also include in VB(variable bondings)."                _"Battery works in unbalance state. Its correlation binding parameters:  Site ID, Site name, Site description, NE ID, Alarm name, Alarm single description, Alarm port description, Alarm severity, and Site alarm SN. Additionally, in order to identify the device, battery string equipment ID and equipment name are also include in VB(variable bondings)."                ]"Battery unbalance alarm resume. Its correlation binding parameters:  Site ID, Site name, Site description, NE ID, Alarm name, Alarm single description, Alarm port description, Alarm severity, and Site alarm SN. Additionally, in order to identify the device, battery string equipment ID and equipment name are also include in VB(variable bondings)."                 "Description."                 "Description."                 "Description."                 "Description."                 "Description."                 "Description."                 "Description."                 "Description."                 "Description."                 "Description."                 "Description."                 "Description."                 "Description."                 "Description."                 "Description."                 "Description."                 >"Some battery strings could be lost, when the alarm happened."                 R"If all the battery strings can be detected, the alarm of battery losting resume."                 C"Low Rectifier Capacity or High Rectifier Capacity Alarm happened."                 B"Low Rectifier Capacity or High Rectifier Capacity Alarm Resumed."                         "/"                 "/"                         "/"                 "/"                        �"Ac Ammeter.
                Its correlation binding parameters: 
                Site alarm serial number (SN),
                Alarm name,
                Alarm level,
                Site name,
                Site administrant address,
                NE ID,
                Site description,
                Additionally, in order to identify the device, rectifier equipment ID and equipment name are also include in VB(variable bondings)."                �"Ac Ammeter .
                Its correlation binding parameters: 
                Site alarm serial number (SN),
                Alarm name,
                Alarm level,
                Site name,
                Site administrant address,
                NE ID,
                Site description,
                Additionally, in order to identify the device, rectifier equipment ID and equipment name are also include in VB(variable bondings)."                         "/"                 "/"                         "/"                 "/"                        �"When the presence status of a rectifier changes, the node reports an event. Then the NMS adds or deletes the corresponding entry to or from hwRectConfigTable or hwRectOperTable. The bound information includes the site address, site name, site description, and NE identifier. In addition, the ID, name, and status of the rectifier are bound to identify the specific rectifier and its operation type. When an entry is added, the device status is reported as normal (1); when an entry is deleted, the device status is reported as commFail (4).
                  This trap is the unique trigger condition that causes the NMS to add or delete entries to or from hwRectConfigTable or hwRectOperTable.
                "                �"When the presence status of a battery string changes, the node reports an event. Then the NMS adds or deletes the corresponding entry to or from hwBatttConfigTable or hwBatttOperTable. The bound information includes the site address, site name, site description, and NE identifier. 
                In addition, the ID, name, and status of the battery string are bound to identify the specific battery string and its operation type. 
                When an entry is added, the device status is reported as normal (1); 
                when an entry is deleted, the device status is reported as loopBreak (4).
                  This trap is the unique trigger condition that causes the NMS to add or delete entries to or from hwBatttConfigTable or hwBatttOperTable."                �"After a new discharge test is conducted on a battery group, the node reports an event. The bound information includes the site address, site name, site description, and NE identifier. The NMS needs to add the corresponding entry to the battery test table. The test records are sorted by time in descending order. The battery test table holds a maximum of 10 test records. If the number of test records exceeds 10, the earlier records starting from the last but one record are deleted at a time because the last record is saved permanently.
                  This trap is the unique trigger condition that causes the NMS to add entries from hwBattsTestResultTable.
                  The battery test table allows you only to add entries."                �"When the presence status of an environment temperature sensor changes, the node reports an event. Then the NMS adds or deletes the corresponding entry to or from hwEvnTempSensorTable. The bound information includes the site address, site name, site description, and NE identifier. In addition, the ID, name, and status of the environment temperature sensor are bound to identify the specific environment temperature sensor and its operation type. When an entry is added, the device status is reported as normal (1); when an entry is deleted, the device status is reported as notInslot (4).
                  This trap is the unique trigger condition that causes the NMS to add or delete entries to or from hwEnvTempSensorTable."                �"When the presence status of an environment humidity sensor changes, the trap reports an event. Then the NMS adds or deletes the corresponding entry to or from hwEvnHumiSensorTable. The bound information includes the site address, site name, site description, and NE identifier. In addition, the ID, name, and status of the environment humidity sensor are bound to identify the specific environment humidity sensor and its operation type. When an entry is added, the device status is reported as normal (1); when an entry is deleted, the device status is reported as notInslot (4).
                  This trap is the unique trigger condition that causes the NMS to add or delete entries to or from hwEnvHumiSensorTable."                    