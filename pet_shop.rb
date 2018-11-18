def pet_shop_name (name)
  return name [:name]
end

def total_cash (sum)
  return sum [:admin][:total_cash]
end

def add_or_remove_cash (shop, cash)
  return shop [:admin][:total_cash] += cash
end

def pets_sold (sold)
  return sold [:admin][:pets_sold]
end

def increase_pets_sold (sold, amount)
  return sold [:admin][:pets_sold] += amount
end

def stock_count (count)
  return count [:pets].count
end

def pets_by_breed (shop, breed)
  breed_of_pet = []
    for pets in shop[:pets]
      if pets[:breed] == breed
        breed_of_pet.push(pets)
      end
    end
    return breed_of_pet
end

def find_pet_by_name(pet_type,name)
  for pet in pet_type[:pets]
    if pet[:name] == name
      return pet
    end
  end
  return nil
end

def remove_pet_by_name(pet_shop,names)
  for pet in pet_shop[:pets]
    if pet[:name] == names
      pet_shop[:pets].delete(pet)
    end
  end
end

def add_pet_to_stock(pet_shop, new_pet)
  pet_shop[:pets] << new_pet
  return pet_shop.count
end

def customer_cash (customer)
  return customer[:cash]
end

def remove_customer_cash (customer, amount)
  return customer[:cash] -= amount
end

def customer_pet_count (customer)
  return customer[:pets].count
end

def add_pet_to_customer (customer, pet)
  return customer[:pets] << pet
end

def customer_can_afford_pet(customer_money,price_pet)
  while (customer_money != price_pet)
    if (customer_money[:cash].to_i >= price_pet[:price].to_i)
      return true
    else
      return false
    end
  end
end
