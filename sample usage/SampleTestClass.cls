@isTest
public class SampleTestClass
{
	@isTest
	static void sampleTestMethod()
	{
		UthAccount accountHelper = new UthAccount();
		//Create one record
		Account a = (Account)accountHelper.createInstance();

		//Create a list of Account
		for(Integer i = 0; i < 10; i++) 
		{
			accountHelper.accName = 'TestAccount' + i;
			accountHelper.registerRecord();
		}

		List<Account> accList = (List<Account>)accountHelper.createList();
	}
}