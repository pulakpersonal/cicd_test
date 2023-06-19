#!groovy
import groovy.json.JsonSlurperClassic
node {

 

 

 //   def toolbelt = tool 'toolbelt'

 

 

    stage('checkout source') {
        // when running in multi-branch job, one must issue this command
        checkout scm
    }

 

 

    
        stage('Deploye Code') {

 

         bat ' npm install sfdx-cli --global'          
             bat 'sfdx force:auth:jwt:grant --clientid $ 3MVG9ZL0ppGP5UrDRvhinlnsKIkFSyS0WZDu9YgeRslz.a7CYVmuQB4lzwPZIncwdv3YjNKW6yGn_m7uYimv4 --username pulak@accenture.com --jwtkeyfile C:\openssl\bin\server.key --setdefaultdevhubusername --instanceurl https://login.salesforce.com'
                   }
    
}