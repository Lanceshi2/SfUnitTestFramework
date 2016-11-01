public abstract class UthSobject 
{
    private List<SObject> soList = new List<SObject>();

    public abstract SObject generateRecord();

    public virtual SObject createInstance()
    {
        SObject so = generateRecord();
        insert so;
        return so;
    }

    public virtual void registerRecord()
    {
        SObject so = generateRecord();
        soList.add(so);
    }

    public virtual List<SObject> createList()
    {
        if(soList.size() > 0) {
            insert soList;
        }

        return soList;
    }
}