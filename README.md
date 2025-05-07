# 🚀 DevOps Automation Project with Jenkins, Ansible, Terraform & AWS ☁️  

This project automates infrastructure provisioning and application deployment using **Jenkins**, **Ansible**, **Terraform**, and **AWS**.  

## 📋 Prerequisites  

Before using this project, ensure you have the following:  

- **Jenkins** installed and running  
- **Ansible** installed  
- **Terraform** installed  
- **AWS Credentials** added in Jenkins Credentials (with appropriate IAM permissions)  
- A **forked** version of this repository  

## 🛠️ Setup Instructions  

1. **Fork this repository** and clone it locally.  
   ```bash
   git clone https://github.com/your-username/devops-automation.git
   ```
   
2. **Update the PEM Key** in the repository with your own AWS key pair.  

3. **Modify the `Jenkinsfile`** to include your **GitHub repository URL**:  
   ```groovy
   environment {
       REPO_URL = 'https://github.com/your-username/devops-automation.git'
   }
   ```

4. **Configure Jenkins Pipeline**:  
   - Create a new **Pipeline Job** in Jenkins.  
   - Set the **Pipeline script from SCM** to **Git**.  
   - Enter your repository URL.  
   - Ensure Jenkins has the necessary **AWS credentials** stored.  

## 🏗️ Infrastructure & Deployment Workflow  

🔹 **Terraform** → Provisions AWS infrastructure (EC2, VPC, Security Groups, etc.).  
🔹 **Ansible** → Configures servers and deploys applications.  
🔸 **Jenkins** → Automates the entire CI/CD pipeline.  

### 📂 Project Structure  

```
├── Jenkinsfile          # Jenkins Pipeline Script  
├── terraform/           # Terraform IaC files  
│   ├── main.tf  
│   ├── variables.tf  
│   └── outputs.tf  
├── ansible/             # Ansible Playbooks & Roles  
│   ├── playbook.yml  
│   └── roles/  
└── README.md  
```

## 🚀 How to Run  

1. **Trigger the Jenkins Pipeline** manually or via a Git webhook.  
2. Jenkins will:  
   - ✅ **Provision AWS resources** using Terraform.  
   - ⚙️ **Configure servers** using Ansible.  
   - 🚀 **Deploy the application**.  

## 🔧 Troubleshooting  

- Ensure AWS credentials in Jenkins have the right permissions.  
- Verify the **PEM key** is correctly added and accessible.  
- Check Jenkins logs for pipeline errors.  

## 🤝 Contributing  

Feel free to fork, improve, and submit a PR!  

---  

Made with ❤️ by [Mohammed Omer] | 🔗 [LinkedIn](https://linkedin.com/in/yourprofile)  

🔹 **Happy DevOps Automation!** 🔹  

---

### ✨ **Bonus Emojis** ✨  
- 🛠️ **Tools Used**: Jenkins, Ansible, Terraform, AWS  
- 🔄 **Automation**: CI/CD Pipeline  
- ☁️ **Cloud**: AWS Infrastructure  
- 🚀 **Deployment**: Smooth & Automated  

---  

Let me know if you'd like any modifications! 🎉
