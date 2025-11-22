# AWS 30-Day Enterprise Administrator Bootcamp (Updated)

## Learning Profile
- Beginner in AWS (zero experience)
- Hands-on heavy training (Option A)
- Using AWS Free Tier
- Hybrid format inspired by Azure bootcamp (Option C)
- Goal: Real-world enterprise AWS Administrator proficiency
- Optional: Connect AWS ↔ Azure later in the program

---

# WEEK 1 — Foundation & Core Services  
Focus: VPC, IAM, EC2, S3, RDS, CloudWatch, CloudTrail

## **Day 1 – Account & Lab Setup**
- Create root account security baseline:
  - Enable MFA for root
  - Create admin IAM user
  - Create admin role + assume-role workflow
  - Enable billing alarms  
- Create project structure:
  - Project: `aws-enterprise-lab`
  - Environments: `dev`, `stage`, `prod`
- Create CloudShell workspace
- Deploy sample web app using Elastic Beanstalk
- Deploy RDS MySQL in public subnet (temporary)

---

## **Day 2 – AWS Networking Fundamentals**
- Create a baseline VPC:
  - CIDR: 10.10.0.0/16
  - 2 public subnets, 2 private subnets
- Create an Internet Gateway
- Create route tables & associate subnets
- Enable DNS support + hostnames
- Validate with EC2 curl tests

---

## **Day 3 – Enterprise Private Networking**
- Move RDS into private subnet
- Lock DB down to app SG only
- Create VPC Endpoints:
  - S3 Gateway Endpoint
  - DynamoDB Gateway Endpoint
- Validate AWS DNS:
  - Run `dig`, `nslookup` inside EC2

---

## **Day 4 – Monitoring & Logging Foundation**
- Enable CloudWatch logging for Beanstalk/EC2
- Create CloudWatch Dashboard:
  - CPU, RAM (SSM), Disk, Network
- Enable CloudTrail in all regions
- Create CloudTrail bucket + lifecycle rules
- Enable AWS Config

---

## **Day 5 – IAM & Identity Federation**
- Create IAM users, groups, & roles
- Implement MFA requirement policy
- Build IAM Identity Center
- Create permission sets for:
  - Admin
  - PowerUser
  - ReadOnly
- Optional: Azure AD ↔ IAM Identity Center integration

---

# WEEK 2 — Governance, Security & Enterprise Networking

## **Day 6 – Governance & Tagging Framework**
- Define enterprise tag policy:
  - CostCenter
  - Environment
  - Application
  - Owner
- Create AWS Organizations
- Attach accounts to Org
- Apply SCP examples:
  - Deny root usage
  - Deny unencrypted S3
  - Deny public RDS

---

## **Day 7 – Hub-Spoke Architecture (AWS Version)**
- Deploy Transit Gateway
- Attach multiple VPCs:
  - VPC-App
  - VPC-Shared
  - VPC-Logging
- Validate routing:
  - ping tests
  - curl private endpoints

---

## **Day 8 – Bastion & Private Access**
- Build EC2 Bastion host
- Only allow your public IP
- Use Session Manager instead of SSH
- Remove all public IPs from private EC2

---

## **Day 9 – AWS Network Firewall / SG Governance**
- Deploy AWS Network Firewall
- Create rules:
  - Block country IP range
  - Block known malware DNS
- Validate SG vs NACL behavior
- Create reusable security group policy templates

---

## **Day 10 – ALB + WAF Enterprise Web Entry**
- Deploy ALB with:
  - HTTPS listener
  - ACM certificate
- Deploy WAF:
  - Enable AWS Managed Rules
- Test attack labs:
  - SQL injection
  - XSS
  - Bad bot traffic

---

# WEEK 3 — Systems Management, Automation, Cost, DR

## **Day 11 – Hybrid Networking (Simulated VPN)**
- Deploy software VPN appliance in Azure
- Deploy AWS Site-to-Site VPN
- Connect AWS ↔ Azure
- Validate:
  - Private IP to private IP
  - Cross-cloud DNS
  - Azure VM ↔ AWS EC2

---

## **Day 12 – AWS Systems Manager (SSM)**
- Attach SSM managed policy to EC2
- Validate:
  - Session Manager
  - Inventory
  - Parameter Store
- Create custom SSM parameters:
  - `/app/dev/db_host`
  - `/app/dev/log_level`

---

## **Day 13 – Patch Manager**
- Enable Patch Manager
- Scan EC2 for missing patches
- Schedule patch windows (“Patch Tuesday”)
- Validate patch compliance reports

---

## **Day 14 – Enterprise Backup & Recovery**
- Create Backup Vault
- Create Backup Plan for:
  - EC2
  - RDS
  - EBS snapshots
- Restore EC2 from backup
- Restore RDS snapshot
- Validate RPO/RTO

---

## **Day 15 – Enterprise DR Readiness**
- Enable EC2 AMI cross-region replication
- Configure RDS Multi-AZ
- Simulate failover
- Validate failback

---

## **Day 16 – Secrets Manager & KMS**
- Store DB credentials in Secrets Manager
- Rotate automatically
- Create CMK
- Test:
  - Encrypt
  - Decrypt
- Implement envelope encryption `KMS → S3 → EC2`

---

## **Day 17 – AWS Systems Manager Automation**
- Build custom runbooks
- Create Deploy/Destroy runbooks:
  - VPC
  - EC2
  - RDS
- Full automated environment provisioning

---

## **Day 18 – Cost Control & Budget Alerts**
- Create cost budgets:
  - Daily
  - Monthly
- Create alerts via SNS
- Use Cost Explorer to analyze by tag
- Create cost anomaly detection

---

## **Day 19 – CloudWatch Alarms**
- Create alarms for:
  - EC2 CPU >= 80%
  - RDS Connection spikes
- Trigger SNS notifications
- Create composite alarms

---

## **Day 20 – Security Hub + GuardDuty**
- Enable both services
- Review & fix findings:
  - IAM issues
  - S3 public access
  - EC2 threats
- Document remediation workflow

---

# WEEK 4 — Modern Apps, Scaling, Automation, CI/CD, Final Review

## **Day 21 – Logging & Audit Analytics**
- Export CloudTrail logs to S3
- Enable lifecycle → Glacier archive
- Use Athena to query logs:
  - Root login attempts
  - IAM changes
  - EC2 creation events

---

## **Day 22 – PrivateLink**
- Create custom PrivateLink service
- Connect consumer VPC
- Validate private-only access

---

## **Day 23 – Auto Scaling (EC2 + ALB)**
- Create Launch Template
- Create Auto Scaling Group
- Attach ALB
- Perform load test
- Validate scale-out & scale-in

---

## **Day 24 – Aurora Serverless**
- Deploy Aurora Serverless v2
- Validate auto-pause & scale
- Migrate your app to Aurora

---

## **Day 25 – S3 Storage Architecture**
- Create S3 bucket with:
  - Block Public Access
  - KMS encryption
  - Versioning
  - Lifecycle policies
- Create private-only access via VPC Endpoint

---

## **Day 26 – EventBridge + Lambda Automation**
- Create rule → capture EC2 creation
- Lambda → Notify via SNS + email
- Validate automation pipeline

---

## **Day 27 – AWS CI/CD (CodePipeline)**
- Create CodeCommit repo
- Build CodePipeline:
  - CodeCommit → CodeBuild → CodeDeploy
- Deploy your sample application
- Add test stage automation

---

## **Day 28 – Multi-AZ High Availability**
- Deploy multi-AZ ALB + web tier
- Simulate AZ outage
- Validate automatic failover

---

## **Day 29 – Fault Injection Simulator**
- Simulate:
  - EC2 crash
  - Network blackhole
  - AZ outage
- Document application resilience

---

## **Day 30 – Final Review & Full Teardown**
- Review:
  - VPC architecture
  - IAM governance
  - Automation runbooks
  - Backup/DR
- Destroy full environment using runbooks
- Prepare interview-ready summary of all work completed

---

# OUTCOME
By the end of 30 days you will be able to confidently say:

**“I am fully proficient in AWS administration for real-world enterprise environments.”**

