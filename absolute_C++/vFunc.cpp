#include <iostream>

class temp
{
public:
	temp(int newPrice):price(newPrice) 
	{
	}	

	void setPrice(int newPrice)
	{
		price = newPrice;
	}
	
	int getPrice() const
	{
		return price;
	}
	
	bool operator < (temp& other)
	{
		other.price = 0;
		return this->price < other.price;
	}
private:
	int price;
};

class temp_son: public temp
{
public:
	temp_son(int newPrice);
private:
	
};
temp_son::temp_son(int newPrice):temp(newPrice)
{
}

int main(void) 
{
	temp father(1);
	temp_son son(2);

	if(father < son)
	{
		std::cout << "yes" << std::endl;
	}
	else
	{
		std::cout << "no" << std::endl;
	}

	return 0;
}
