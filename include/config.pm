#! /usr/bin/perl
use strict;
use warnings;
package nms::config;

# DB
our $db_name = "nms";
our $db_host = "db";
our $db_username = "nms";
our $db_password = "risbrod";

# Max SNMP polls to fire off at the same time.
our $snmp_max = 20;

# What SNMP objects to fetch.
our @snmp_objects = [
	['ifIndex'],
	['sysName'],
	['sysDescr'],
	['ifHighSpeed'],
	['ifType'],
	['ifName'],
	['ifDescr'],
	['ifAlias'],
	['ifOperStatus'],
	['ifAdminStatus'],
	['ifLastChange'],
	['ifHCInOctets'],
	['ifHCOutOctets'],
	['ifInDiscards'],
	['ifOutDiscards'],
	['ifInErrors'],
	['ifOutErrors'],
	['ifInUnknownProtos'],
	['ifOutQLen'],
	['sysUpTime'],
	['jnxOperatingTemp'],
	['jnxOperatingCPU'],
	['jnxOperatingDescr'],
	['jnxBoxSerialNo']
];

1;