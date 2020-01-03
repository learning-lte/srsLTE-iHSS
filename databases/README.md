# Description

This directory it contains all the form and version of the srsLTE-iHSS.

version 1. 02-01-2020

    This version updated the srsLTE-iHSS from the .csv format to an MYSQL DB interogated from API's. a new element was added to the database 'user_email'.
The 'user_email' it will be used for the ML enrich data reports. All the stats will be exported to an graphic version to the e-mail address.

All the stats should be complient to the : https://www.compliancejunction.com/gdpr-compliance/

## Database format 

```
mysql> select * from user;
+---------+-----------+-----------------+----------------------------------+--------------+----------------------------------+----------+--------------+----------+----------------+
| user_id | user_name | user_imsi       | user_key                         | user_op_type | user_op_or_opc                   | user_amf | user_sqn     | user_qci | user_email     |
+---------+-----------+-----------------+----------------------------------+--------------+----------------------------------+----------+--------------+----------+----------------+
|       1 | ue2       | 001010123456780 | 00112233445566778899aabbccddeeff | opc          | 63bfa50ee6523365ff14c1f45f88737d | 8000     | 000000001234 | 7        | sou@email.com  |
|       2 | ue1       | 001010123456789 | 00112233445566778899aabbccddeeff | opc          | 63bfa50ee6523365ff14c1f45f88737d | 8000     | 000000001234 | 7        | dou@email.com  |
|       3 | ue3       | 901700000022950 | 0d1fe19b5d4c8e6ba4e995b255fbc975 | op           | 25e26876efc9631ee10fd05eda1d0ec7 | 8000     | 000000001234 | 7        | midu@email.com |
|       4 | ue4       | 901700000022969 | 8baf473f2f8fd09487cccbd7097c6862 | op           | 11111111111111111111111111111111 | 8000     | 000000001234 | 7        | midu@email.com |
|       5 | ue6       | 901700000027988 | b46fadaa27a9785c7803b9bd7b3450de | opc          | 47d3987d31a606289b6c01d4c31a31a2 | 8000     | 000000001234 | 7        | midu@email.com |
|       6 | ue5       | 901700000027989 | 7b3cba07409abdd16c1ceffed3e5ab53 | opc          | bc4a47aeb1bfe38b542172aee0c28082 | 8000     | 000000001234 | 9        | midu@email.com |
+---------+-----------+-----------------+----------------------------------+--------------+----------------------------------+----------+--------------+----------+----------------+
```

## Requirements

NOTE: Due to the end of the support for the python27, all the implementation for the REST_API will use the python34, python36, python37.

OS support:

        -   Ubuntu 16.04, 18.04 and 19.04

        -   CentOS 7, 8

        -   Amazon-linux*


* The Amazon-linux support was included due to testing of the hybrid-cloud (OpenStack - AWS or OpenShift - AWS) VNF solution. 

## Contact
e-mail : idumihai16@gmail.com
