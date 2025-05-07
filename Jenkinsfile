pipeline {
    agent any
    
    stages {
        stage('Git Checkout') {
            steps {
                git url:  
            }
        }
        
        stage('Prepare SSH Key') {
            steps {
                withCredentials([sshUserPrivateKey(
                    credentialsId: 'infra-ssh-key',
                    keyFileVariable: 'SSH_KEY'
                )]) {
                    sh '''
                    mkdir -p ~/.ssh
                    cp "$SSH_KEY" ~/.ssh/infra-key
                    chmod 600 ~/.ssh/infra-key
                    '''
                }
            }
        }
        
        stage('Generate Inventory') {
            steps {
                sh 'chmod +x scripts/generate_inventory.sh'
                sh 'scripts/generate_inventory.sh'
            }
        }
        
        stage('Run Ansible') {
            steps {
                dir('ansible') {
                    sh 'ansible-playbook -i inventory.ini site.yml'
                }
            }
        }
    }
    
    post {
        always {
            archiveArtifacts artifacts: 'ansible/inventory.ini'
            cleanWs()
        }
    }
}
