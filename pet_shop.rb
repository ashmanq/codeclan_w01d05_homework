def pet_shop_name(pet_shop)
  return pet_shop[:name]
end

def total_cash(pet_shop)
  return pet_shop[:admin][:total_cash]
end

def add_or_remove_cash(pet_shop, amount)
  pet_shop[:admin][:total_cash] = pet_shop[:admin][:total_cash] + amount
end

def pets_sold(pet_shop)
 return pet_shop[:admin][:pets_sold]
end

def increase_pets_sold(pet_shop,pet_no)
  pet_shop[:admin][:pets_sold] += pet_no
end

def stock_count(pet_shop)
  return pet_shop[:pets].length
end

def pets_by_breed(pet_shop, pet_breed)
  pets = pet_shop[:pets]
  breed_list = []
  for pet in pets
    if (pet[:breed] == pet_breed)
      breed_list.push(pet[:breed])
    end
  end
  return breed_list
end

def find_pet_by_name(pet_shop, pet_name)
  pet_list = pet_shop[:pets]
  #pet_name_match[]
  for pet in pet_list
    if pet[:name] == pet_name
      return pet
    end
  end
  return nil
end

def remove_pet_by_name(pet_shop, name)
  pet_shop[:pets].delete_if{|x| x[:name] =- name}
end

def add_pet_to_stock(pet_shop, new_pet)
  pet_shop[:pets].push(new_pet)
end

def customer_cash(customer)
  return customer[:cash]
end

def remove_customer_cash(customer, amount)
  customer[:cash] -= amount
end

def customer_pet_count(customer)
  return customer[:pets].length
end

def add_pet_to_customer(customer, new_pet)
  customer[:pets].unshift(new_pet)
end

def customer_can_afford_pet(customer, new_pet)
  if customer[:cash] >= new_pet[:price]
    return true
  else
    return false
  end
end

def sell_pet_to_customer(pet_shop, pet, customer)
  if pet != nil
    if customer_can_afford_pet(customer, pet)
      #gather required information
      name = pet[:name]
      amount = pet[:price]

      #assuming only one pet is sold per transaction
      increase_pets_sold(pet_shop,1)
      remove_customer_cash(customer, amount)
      add_or_remove_cash(pet_shop, amount)
      add_pet_to_customer(customer, pet)
      remove_pet_by_name(pet_shop, name)
    end
  end
end
