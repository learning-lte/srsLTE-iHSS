# Description

This directory it contains all the form and version of the srsLTE-iHSS.

version 1. 02-01-2020

    This version updated the srsLTE-iHSS from the .csv format to an MYSQL DB interogated from API's. a new element was added to the database 'user_email'.
The 'user_email' it will be used for the ML enrich data reports. All the stats will be exported to an graphic version to the e-mail address.

All the stats should be complient to the : https://www.compliancejunction.com/gdpr-compliance/

## Requirements

NOTE: Due to the end of the support for the python27, all the implementation for the REST_API will use the python34, python36, python37.

OS support:

        -   Ubuntu 16.04, 18.04 and 19.04

        -   CentOS 7, 8

        -   Amazon-linux*


* The Amazon-linux support was included due to testing of the hybrid-cloud (OpenStack - AWS or OpenShift - AWS) VNF solution. 

## Contact
e-mail : idumihai16@gmail.com
