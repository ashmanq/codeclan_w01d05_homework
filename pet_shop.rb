@pet_shop = {
  pets: [
    {
      name: "Sir Percy",
      pet_type: :cat,
      breed: "British Shorthair",
      price: 500
    },
    {
      name: "King Bagdemagus",
      pet_type: :cat,
      breed: "British Shorthair",
      price: 500
    },
    {
      name: "Sir Lancelot",
      pet_type: :dog,
      breed: "Pomsky",
      price: 1000,
    },
    {
      name: "Arthur",
      pet_type: :dog,
      breed: "Husky",
      price: 900,
    },
    {
      name: "Tristan",
      pet_type: :dog,
      breed: "Basset Hound",
      price: 800,
    },
    {
      name: "Merlin",
      pet_type: :cat,
      breed: "Egyptian Mau",
      price: 1500,
    }
  ],
  admin: {
    total_cash: 1000,
    pets_sold: 0,
  },
  name: "Camelot of Pets"
}

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
  #pet_list = pet_shop[:pets]
  #pet_name_match[]
  pet_shop[:pets].delete_if{|x| x[:name] =- name}
end

def add_pet_to_stock(pet_shop, new_pet)
  pet_shop[:pets].push(new_pet)
end

p remove_pet_by_name(@pet_shop, "Arthur")
