# React-e-commerce website

# install docker on ec2-instance 
- sudo apt update
- sudo apt install docker.io -y
- sudo systemctl start docker
- sudo systemctl enable docker

# Create and Build Your React Application
- npm install --save-dev vite
- npm run build
# Build and Run the Docker Image and Docker container

- docker build -t my-react-app .
- docker images 
- docker run -d -p 80:80 my-react-app
- docker ps 
- docker ps -a

# Set Up a Custom Domain with Route 53
- Register a Domain (if you don't have one)
- Go to Route 53 in AWS Management Console.
- Click on "Register Domain" and follow the prompts.

# Create a Hosted Zone
In Route 53, click "Create Hosted Zone".
Enter your domain name and choose "Public Hosted Zone".

Update Domain's Name Servers
Update your domain registrar to use the name servers provided by Route 53.
Create an A Record
In your hosted zone, click "Create Record".
Enter "@" for the root domain or "www" for a subdomain.
Select "A - IPv4 address" as the record type.
Enter the public IP address of your EC2 instance.
Click "Create records".

# Verify Your Deployment
Allow some time for DNS propagation, then visit your domain to see your React application live.
