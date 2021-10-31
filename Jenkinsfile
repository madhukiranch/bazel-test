
timestamps{

timeout(time: 10, unit: 'MINUTES'){

node {
    try{
        stage('Checkout') {
            checkout scm
        }
        stage('environmental variables') {
           sh 'env'
        }
        stage('Docker build') 
        {
         dockerImage = docker.build("test-image",'.')
             
        }
        stage('BUILD') 
        {
            dockerImage.inside("-u 0:0") {
                sh '''     
                    ls -al
                    bazel version
                    bazel build //...
                '''
            }
        }

        stage('TEST') 
        {
            dockerImage.inside("-u 0:0") {
            sh '''
            ls -al
            bazel version
            bazel test //...
            '''
         }
        }  

      } catch (error) {
       stage "Cleanup after fail"
       //emailext attachLog: true, body: "Build failed (see ${env.BUILD_URL}): ${error}", subject: "[JENKINS] ${env.JOB_NAME} failed", to: 'madhukiran842@gmail.com'
       throw error
   } finally {
       cleanWs()
       //step $class: 'JUnitResultArchiver', testResults: '**/TEST-*.xml'
   }
}
}
}
