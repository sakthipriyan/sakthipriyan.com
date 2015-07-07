# Lines of code inversely proportional to readability
## Always code less to make it easily readable.
code, java, optimization, code less

### How not to Code?

Few years back, I came across following method in a legacy application.  
It is 18 line code to determine if it is enabled or not for the given object.

	public boolean isEnabled(Object obj) {
		boolean disable = false;
		try {
			String someValue = getSomeValue(obj);
			if(someValue != null) {
				if(someValue.equalsIgnoreCase("T")){
					disable = true;
				} else {
					disable = false;
				}
			} else {
				disable = false;
			}
		} catch(SomeException e){
			disable = false;
		}
		return disable;
	}


### How to improve it ?

After simplication of the logic it can be rewritten as follows,
Now, it is just 8 lines, doing exactly the same thing.
This code is more readable and as well, it is more easy 

	public boolean isEnabled(Object obj) {
		try {
			if("T".equalsIgnoreCase(getSomeValue(obj))){
				return true;
			}
		} catch(SomeException e) {}
		return false;
	}

### Learnings
