    
# prefix commands with sudo if user is not in docker group
# pull docker image
docker pull opensecurity/mobile-security-framework-mobfsdocker

# run docker container
docker run -p 8888:5000 --name mobfs mobile-security-framework-mobfsdocker:latest 
