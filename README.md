# Snowflake The Complete Masterclass (2023 Edition) by Nikolai Schuler

# Lecture Notes

## Lecture 5: Sign up for free account
- Go to https://www.snowflake.com/en/
  - Start for free 30 days
  - Snowflake edition - Business critical
  - Cloud provider - AWS region US East (Northern Virginia)
  - Email link to activate
  - User name and password - becomes account admin

## Lecture 6: Login to account
- Web interface of Snowflake is called Snowsight
- Ways of accessing
  - Direct link from the Email
  - app.snowflake.com + enter account name
 
## Lecture 7: Getting to know the interface
- Commands to create a new database
  - create database snowflake_sample_data from share sfc_samples.sample_date;
  - grant imported privileges on database snowflake_sample_data to role public;
- Snowflake_sample_date - tpch_sf1 - customer
  - Missing warehouse to run the query

## Lecture 8: Snowflake Architecture
- Three main layers
  - Storage
    - AWS S3 as hybrid columner storage
    - Saves in blobs
  - Quary processing
    - Virtual warehouse/compute resource
    - Muscle of the system
    - Performs "Massive Parallel Processing (MPP)
  - Cloud services
    - Brain of the system
    - Managing infrastructure, Access control, security, optimizer, Metadata etc
  - Virtual warehouse sizes
    - XS (1 credit/hour), S(2), M(4), L(8), XL(16), 4XL(128)
    - billed by second, with 1 minute as minimum
    - Multi clustering can help to process too many queries without queing. A number of VWs.

## Lecture 9: Setting up warehouse
- Interface
  - Admin - +Warehouse button
    - Name
    - Size
    - Multi-Cluster Warehouse
      - Mode: Auto scale
      - Min Clusters: 1
      - Max Clusters: 3
      - Scaling Policy: Standard/Economy
    - Advanced warehouse option
      - Auto resume: on
      - Auto suspend: on
      - Suspend after (min): 5
      - Warehouse Type: Standard/Snowparl Optimized(Preview)  

## Lecture 10: Setting up warehouse using SQL


## Lecture 11: Scaling policy


## Lecture 12: Exploring tables and databases


## Lecture 7: Getting to know the interface


## Lecture 7: Getting to know the interface



```bash
npm install
```
[Snowflake link](https://wwww.snowflake.com)
