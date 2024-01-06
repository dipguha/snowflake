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
- Create warehouse using SQL command

## Lecture 11: Scaling policy
- Additional clusters based on workload demand to avoid queries being queued
- More users then use multi-cluster
- More complex queries use bigger warehouse
- Scaling policy
  - Standard (default)
    - starts immediately when a query is queued or the system detects there are more queries that can be served by currently availabe warehouses. 
    - Checks every minute and shuts down after 2-3 consecutive attempts
  - Economy
    - Keeping running the cluster fully loaded.
    - New cluster starts if existing cluster is fully busy for at least next 6 minutes
    - Shuts down after 5-6 consecutive checks

## Lecture 12: Exploring tables and databases
- Database (add privilege) - role - privilege
- Create schema
  - INFORMATION_SCHEMA and PUBLIC are default ones for any database
  
## Lecture 13: Loading data in Snowflake


## Lecture 14: What is a Data warehouse
- Database that is used for reporting and data analysis by integrating and consolidating various data sources
- 3 main layers
  - Raw data from various systems - stating area (internal or external)
  - Data integration where data from various systems join - Data Transformation (transforming, cleaning, creating relationship)
  - Access layer

## Lecture 15: Cloud computing
- Cloud provider: Physical storage, Virtual machines, Physical servers
- Snowflake: Operating system, Data, Software. SF manages data storage, virtual warehouses, upgrades, metadata
- Application: Databases, tables etc

## Lecture 16: Snowflake editions
- Standard
  - Time travel up to 1 day
  - Disaster recovery for 7 days beyond time travel
  - Automatic Data encryption
- Enterprise
  - Time travel up to 90 days
  - Materialized views
  - Column level security
  - Search Optimization
- Business Critical
  - Data encryption everywhere
  - Database failover and DR
- Virtual Private
  - Dedicated virtual servers
  - Completely separate SF environment
  
## Lecture 17: Snowflake pricing
- Compute
  - Charged for active warehouses/hour
  - Depends on the size of the Warehouse, region
  - Billed by second with minimum 1 minute
  - SF credit
- Storage
  - Monthly storage fee based on average storage used per month
  - Cost calculated after compression
  - Depends on Cloud provider
  - Start with On Demand
  - Once sure about usage then use Capacity storage

## Lecture 18: Monitor usage
- Price depends on Platform (e.g. AWS), Region (US East), SF Edition (Standard, Enterprise) - $x per credit
- On demand or Capacity storage $xx/TB/month
- AccountAdmin role
  - Cloud services only warehouse - Compute for auth, metadata
  - Data transfer
    - Same region and same cloud provider - no charge

## Lecture 19: Roles in Snowflake
- Priviliges - Roles - Users
- AccountAdmin: top level. Only to limited users.
  - Security Admin: Manage users and roles. Manage any object grant globally.
    - User Admin: Manage users and roles.
      - Public: Granted to every user
  - Sys Admin: Create warehouse, databases and more objects
    - Custom Role

## Lecture 142: Key concepts
- Access control: who can access and perform operations on objects
  - Discretionary access control
    - Each object has an owner who can grant access to that object
  - Role based access control
    - Access privileges are assigned to roles which are in turn assigned to users
  - Account objects
    - User
    - Role
    - Warehouse
    - Database
      - Schema objects
        - Table
        - View
        - Stages
        - Integration
  - Each object owned by a single role (multiple users)
    - Owner (role) has all privileges

## Lecture 143: Roles overview
- System defined roles

## Lecture 144: Account Admin
- AccountAdmin role is the top level role
- First user will have this role
- Initial set up and managing account level object
- Best practices
  - Very controlled assignment of this role
  - Multi-factor auth for all uses with this role
  - At least two users with this role
  - Avoid creating objects with this role unless you have to

## Lecture 145: Account Admin in practice
- What AccountAdmin can do
- Reader account??
- MFA with Duo App 

## Lecture 146: SecurityAdmin
- Access to Account admin tab with limited features available

## Lecture 147: Security Admin in practice
- Login as Frank with SECURITYADMIN role
- This user can see USERADMIN and PUBLIC roles as well
- Can't access Billing and Usage

## Lecture 148: SysAdmin
- Create and manage objects.
- Custom roles should be assigned to sysadmin role

## Lecture 149: SysAdmin in practice
-

## Lecture 150: Custom roles
- Custom roles are created by Security Admin and assgined to SYSADMIN

## Lecture 151: Custom roles in practice
- 

## Lecture 143: 

## Lecture 143: 

## Lecture 154: Public
- Least priviliged role
- Every user is automatically assigned this role
- Can own objects

## Lecture 143: 

## Lecture 143: 

## Lecture 143: 




```bash
npm install
```
[Snowflake link](https://wwww.snowflake.com)
