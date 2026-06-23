#Short script to install Java and jenkins in one script Installing Java 21 personal user 
sudo apt install -y openjdk-21-jre openjdk-21-jdk
sudo wget -O /etc/apt/keyrings/jenkins-keyring.asc https://pkg.jenkins.io/debian-stable/jenkins.io-2026.key
echo "deb [signed-by=/etc/apt/keyrings/jenkins-keyring.asc] https://pkg.jenkins.io/debian-stable binary/" | sudo tee /etc/apt/sources.list.d/jenkins.list > /dev/null
sudo apt update -y
sudo apt install -y jenkins
sudo systemctl start jenkins
sudo systemctl enable jenkins
sudo systemctl status jenkins
#jenkins password
sudo cat /var/lib/jenkins/secrets/initialAdminPassword
