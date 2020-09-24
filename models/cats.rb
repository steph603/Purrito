class Guests
    CATS = [
        {id: 1, name: 'Squirrel', breed: 'DSH', color: 'Tabby & White', meals: {am: 'Wet', pm: 'Wet'}, spicy: nil},
        {id: 2, name: 'Nixie', breed: 'DSH', color: 'Lynx Point', meals: {am: 'Ziwi Lamb Dry', pm: 'Ziwi Lamb Wet'}, spicy: 1}
    ]

    def all
        CATS
    end

    module_function :all
end
