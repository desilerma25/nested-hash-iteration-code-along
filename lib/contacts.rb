require 'pry'

  # This is the array we will be passing into the remove_strawberry method
  # contacts = {
  #   "Jon Snow" => {
  #     name: "Jon",
  #     email: "jon_snow@thewall.we", 
  #     favorite_ice_cream_flavors: ["chocolate", "vanilla"]
  #   },
  #   "Freddy Mercury" => {
  #     name: "Freddy",
  #     email: "freddy@mercury.com",
  #     favorite_ice_cream_flavors: ["strawberry", "cookie dough", "mint chip"]
  #   }
  # }
  
def remove_strawberry(contacts) # begin method
  contacts.each do |person, contact_details_hash| #iterate over 1st level, each contact and their hashes
    if person == "Freddy Mercury" # we want to delete from Freddy, not Jon
      contact_details_hash.each do |attribute, data| # iterate over next level, go through the attr. and their data
        if attribute == :favorite_ice_cream_flavors # we want to delete from fave ice cream
          data.delete_if {|ice_cream| ice_cream == "strawberry"} # use delete_if to eliminate strawberry
        end
      end
    end
  end
end # remember to close out each iteration
