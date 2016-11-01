public class UthAccount extends UthSobject
{
	public String accName {get; set;}

	public UthAccount()
	{
		accName = 'Test Account';
	}

	public override SObject GenerateRecord()
	{
		Account a = new Account();
		a.Name = accName;

		return a;
	}
}