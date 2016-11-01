# Salesforce Test Data Setup Framework

##Related Blog
http://sfdcinpractice.com/index.php/2016/11/01/salesforce-unit-test-data-setup-framework/

##Why a test data setup framework
Because in always every unit test in Salesforce, we need to prepare the set of data. It is a tedious work to figure out and fill in the mandatory fields for each SObject. 

While we can use some TestUtil class and some static methods to generate test data, as suggested by Salesforce: https://developer.salesforce.com/docs/atlas.en-us.204.0.apexcode.meta/apexcode/apex_testing_utility_classes.htm , it still has very obvious disadvantage - the lack of flexibility. 

If we setup up fields all by default values, it could be hard to customize the field values for each independent test case. However, if we all use parameters to set up the value, it would be tedious to generate the data again. 

That's why I build this very simple unit test framework. While setting up all the mandatory fields in the default value, it still embraces full flexibility. 

##Usage
There is a sample case in the sample usage folder. 

Basically, copy UthSObject.cls into your org. And for each SObject class you want to use, generate a separate child class for it. And list all the mandatory fields as class variables. Fill in the default values in the constructor and use createInstance() to generate one record. If you want to generate a list of data, use registerRecord() each time and createList() to do the DML and get generated List. 