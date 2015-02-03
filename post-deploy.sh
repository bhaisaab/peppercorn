#!/bin/bash
# Post deployment script to initialize cloud
# By Rohit Yadav <rohit@scaleninja.com>

set -e
set -x

cli=cloudmonkey
webserver='http://192.168.1.12/'
set profile bluebox

os_type=$($cli list ostypes description="Other Linux (64-bit)" | grep ^id\ = | awk '{print $3}')
$cli register template name="KVM Ubuntu 14.04" displaytext="KVM Ubuntu 14.04" zoneid=-1 format=QCOW2 isextractable=false passwordenabled=false isdynamicallyscalable=false ostypeid=$os_type hypervisor=KVM ispublic=true isfeatured=true isrouting=false url="$webserver/kvm-ubuntu-14.04.qcow2"
$cli register template name="Debian7" displaytext="Debian7" zoneid=-1 format=QCOW2 isextractable=true passwordenabled=true isdynamicallyscalable=false ostypeid=$os_type hypervisor=KVM ispublic=true isfeatured=true isrouting=false url="$webserver/debian7.qcow2.bz2"

os_type=$($cli list ostypes description="Other CentOS (64-bit)" | grep ^id\ = | awk '{print $3}')
$cli register template name="CentOS7" displaytext="CentOS7" zoneid=-1 format=QCOW2 isextractable=true passwordenabled=true isdynamicallyscalable=false ostypeid=$os_type hypervisor=KVM ispublic=true isfeatured=true isrouting=false url="$webserver/CentOS-7-x86_64-vanilla-kvm.qcow2.bz2"
$cli register template name="CentOS6" displaytext="CentOS6" zoneid=-1 format=QCOW2 isextractable=true passwordenabled=true isdynamicallyscalable=false ostypeid=$os_type hypervisor=KVM ispublic=true isfeatured=true isrouting=false url="$webserver/CentOS-6-x86_64-vanilla-kvm.qcow2.bz2"

os_type=$($cli list ostypes description="Windows 7 (64-bit)" | grep ^id\ = | awk '{print $3}')
$cli register template name="Windows7" displaytext="Window7 samsung" zoneid=-1 format=QCOW2 isextractable=false passwordenabled=false isdynamicallyscalable=false ostypeid=$os_type hypervisor=KVM ispublic=true isfeatured=true isrouting=false url="$webserver/Windows7.qcow2"

os_type=$($cli list ostypes description="Other Ubuntu (64-bit)" | grep ^id\ = | awk '{print $3}')
$cli register template name="Ubuntu 14.04" displaytext="Ubuntu 14.04" zoneid=-1 format=QCOW2 isextractable=true passwordenabled=true isdynamicallyscalable=false ostypeid=$os_type hypervisor=KVM ispublic=true isfeatured=true isrouting=false url="$webserver/ubuntu-14.04-amd64-vanilla-kvm.qcow2.bz2"
