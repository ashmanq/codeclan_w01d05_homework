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
