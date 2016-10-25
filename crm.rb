require_relative 'contact'

class CRM

  def initialize(name)
    @name = name
  end

  def main_menu
    while true #repeat indefinitely
      print_main_menu
      user_selected = gets.to_i
      call_option(user_selected)
    end
  end

  def print_main_menu
    puts '[1] Add a new contact'
    puts '[2] Modify an existing contact'
    puts '[3] Delete a contact'
    puts '[4] Display all the contact'
    puts '[5] Search by attribute'
    puts '[6] Exit'
  end

  def call_option
    case user_selected
    when 1 then add_new_contact
    when 2 then modify_existing_contact
    when 3 then delete_a_contact
    when 4 then display_all_contacts
    when 5 then search_by_attribute
    when 6 then exit!
    end
  end

  def add_new_contact
    print 'Enter First Name => '
    first_name = gets.chomp

    print 'Enter Last Name => '
    last_name = gets.chomp

    print 'Enter Email Address => '
    email = gets.chomp

    print 'Enter a Note => '
    note = gets.chomp

    Contact.create(first_name, last_name, email, note)
  end

  def modify_existing_contact
    print 'Enter the New First Name => '
    first_name = gets.chomp

    print 'Enter the New Last Name => '
    last_name = gets.chomp

    print 'Enter the New E-mail Address => '
    email = gets.chomp

    print 'Enter the New Note => '
    note = gets.chomp

    Contact.update(x, new_value)
  end

  def delete_contact
    print 'Enter Customer Info you want to delete => '

  end

  # This method should accept as an argument an array of contacts
  # and display each contact in that array
  def display_contacts

    # HINT: Make use of this method in the display_all_contacts and search_by_attribute methods to keep your code DRY
  end

  def display_all_contacts
    Contact.all.each do |contact|
      print ":first_name, :last_name, :email, :note"
    # HINT: Make use of the display_contacts method to keep your code DRY
  end

  def search_by_attribute
    print "Enter attributes to search by => "
    attributes = gets.chomp
    print 
    # HINT: Make use of the display_contacts method to keep your code DRY
  end

  # Add other methods here, if you need them.

end
