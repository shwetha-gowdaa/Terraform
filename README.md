To install Terraform on Windows, follow these detailed steps:

---

**Step 1: Download Terraform**

1. **Visit the Terraform Download Page:**
   - Go to [Terraform Downloads](https://www.terraform.io/downloads.html).

2. **Download the Windows Version:**
   - Scroll down to the Windows section and download the **64-bit** or **32-bit** ZIP file, depending on your system.

---

### **Step 2: Extract Terraform**

1. **Extract the ZIP file:**
   - Navigate to the folder where the ZIP file was downloaded.
   - Right-click on the ZIP file and select **Extract All**.

2. **Move the Terraform executable:**
   - Move the `terraform.exe` file to a folder where you plan to store it permanently, e.g., `C:\Terraform`.

---

### **Step 3: Add Terraform to System PATH**

1. **Open Environment Variables:**
   - Press `Win + X` and select **System** (or go to **Control Panel > System and Security > System**).
   - On the left, click **Advanced system settings**.
   - In the **System Properties** window, click the **Environment Variables** button.

2. **Edit the PATH Variable:**
   - Under **System Variables**, scroll down and find the **Path** variable, then select it and click **Edit**.
   - In the **Edit Environment Variable** window, click **New** and add the folder path where you placed `terraform.exe`, e.g., `C:\Terraform`.

3. **Confirm and Close:**
   - Click **OK** to close all the windows.

---

### **Step 4: Verify Terraform Installation**

1. **Open Command Prompt (or PowerShell):**
   - Press `Win + R`, type `cmd`, and press Enter.

2. **Check Terraform Version:**
   - In the Command Prompt, type the following command and press Enter:
     ```bash
     terraform -v
     ```
   - This will display the installed version of Terraform, confirming the installation.

---

### **Step 5: Configure Terraform for AWS**

1. **Install AWS CLI:**
   - If you haven't installed AWS CLI, you can download it from the [AWS CLI official page](https://aws.amazon.com/cli/).
   - After installation, configure AWS credentials using:
     ```bash
     aws configure
     ```

2. **Create a Terraform Configuration File:**
   - Create a new folder and inside it, create a file named `main.tf`. This file will contain your Terraform configuration.
   - Example content for `main.tf`:
     ```hcl
     provider "aws" {
       region = "us-west-2"
     }

     resource "aws_instance" "example" {
       ami           = "ami-0c55b159cbfafe1f0"
       instance_type = "t2.micro"
     }
     ```

3. **Initialize Terraform:**
   - In the Command Prompt, navigate to the folder where you saved `main.tf` and run:
     ```bash
     terraform init
     ```
   - This will initialize the Terraform environment.

---

### **Step 6: Use Git to Push Terraform Files to GitHub**

1. **Install Git for Windows:**
   - Download Git from [git-scm.com](https://git-scm.com/download/win) and follow the installation instructions.

2. **Initialize a Git Repository:**
   - Open a Git Bash window, navigate to your Terraform project folder, and run:
     ```bash
     git init
     ```

3. **Add and Commit Your Files:**
   ```bash
   git add .
   git commit -m "Initial Terraform configuration"
   ```

4. **Push to GitHub:**
   - Create a repository on GitHub.
   - Connect your local repository to GitHub:
     ```bash
     git remote add origin https://github.com/your-username/your-repo.git
     git branch -M main
     git push -u origin main
     ```

---

You have successfully installed Terraform on Windows and pushed your Terraform project to GitHub!
