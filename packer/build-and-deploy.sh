### Packer
### Build 1
cd /home/jenkins/packer
ARTIFACT=`packer build -machine-readable packer.json | awk -F, '$0 ~/artifact,0,id/ {print $6}'`
AMI_ID=`echo $ARTIFACT | cut -d ':' -f2`
echo 'variable "APP_INSTANCE_AMI" { default = "'${AMI_ID}'" }' > amivar.tf
echo "aws amivar.tf is up"

### Build 2
cd /home/jenkins/packer
cp amivar.tf /home/jenkins/terraform-course/jenkins-packer-demo/
echo "copied aws amivar.tf to aws instance folder"

### Build 3
cd /home/jenkins/packer
rm -f amivar.tf
echo "aws amivar.tf was deleted"
