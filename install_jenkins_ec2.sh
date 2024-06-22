# Add the Jenkins repository
sudo wget -O /etc/yum.repos.d/jenkins.repo https://pkg.jenkins.io/redhat-stable/jenkins.repo

# Import the Jenkins repository key
sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io-2023.key

# Install Jenkins
sudo yum install jenkins -y

# Start the Jenkins service
sudo systemctl start jenkins

# Enable Jenkins to start on boot
sudo systemctl enable jenkins

# Check Jenkins status
sudo systemctl status jenkins

# Print instructions for accessing Jenkins
echo "Jenkins installation complete!"
echo "Please ensure port 8080 is open in your EC2 instance's security group."
echo "Access Jenkins through your web browser at: http://<your_ec2_public_ip>:8080"

# Retrieve and display the initial admin password
echo "Your initial admin password is:"
sudo cat /var/lib/jenkins/secrets/initialAdminPassword

echo "Use this password to unlock Jenkins in your web browser and complete the setup."
