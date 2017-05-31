下面是具体的使用方法： 
1. Tomcat7的用户及权限配置：在conf目录下，找到tomcat-users.xml，添加manager权限的用户。这里我把所用的权限都添加给admin用户了，具体代码如下： 
<role rolename="admin-gui"/>
<role rolename="admin-script"/>
<role rolename="manager-gui"/>
<role rolename="manager-script"/>
<role rolename="manager-jmx"/>
<role rolename="manager-status"/>
<user username="admin" password="admin" roles="manager-gui,manager-script,manager-jmx,manager-status,admin-script,admin-gui"/>
 
2. Maven的Server的配置：在Maven的安装路径找到conf目录下的setting.xml文件，在<servers>节点中添加tomcat7下配置的用户信息
（id可以任意填写，但username和password必须和步骤1一致）：
 <server>
	<id>tomcat7</id>
	<username>admin</username>
	<password>admin</password>
</server>

3. 在Web项目的pom.xml文件的<plugins>节点中，添加tomcat7的maven插件， 
<plugin>
    <groupId>org.apache.tomcat.maven</groupId>
    <artifactId>tomcat7-maven-plugin</artifactId>
    <version>2.1</version>
    <configuration>
        <!-- 注意此处的url -->
        <url>http://localhost:8080/manager/text</url>
        <server>tomcat7</server> <!-- 此处的名字必须和setting.xml中配置的ID一致-->
        <path>/mavenProject</path> <!-- 此处的名字是项目发布的工程名-->
    </configuration>
</plugin>
 

4. 最后，只需要mvn tomcat7:deploy就可以了（必须事先启动tomcat服务器） 


登陆：admin  123456

  http://localhost:8088/ssm-shiro-training/index