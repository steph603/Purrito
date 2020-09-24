module Guests
    CATS = [
        {checked_in: true, id: 1, name: 'Squirrel', breed: 'DSH', color: 'Tabby & White', spicy: 0, meals: {am: 'Senior Wet', pm: 'Senior Wet'}},
        {checked_in: true, id: 2, name: 'Nixie', breed: 'DSH', color: 'Lynx Point', spicy: 1, meals: {am: 'Ziwi Lamb Dry', pm: 'Ziwi Lamb Wet'}},
        {checked_in: false, id: 3, name: 'Poquito', breed: 'DSH', color: 'Tabby', spicy: 0, meals: {am: 'Dry', pm: 'Proudi'}},
        {checked_in: false, id: 4, name: 'Dutchie', breed: 'Ragdoll X', color: 'Seal Point', spicy: 0, meals: {am: 'Light', pm: 'Proudi'}},
    ]

    def all
        CATS
    end

    module_function :all
end
