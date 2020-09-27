module Guests
    CATS = [
        {checked_in: true, id: 1, name: 'Squirrel', breed: 'DSH', colour: 'Tabby & White',  AM: ['Senior Wet'], PM: ['Senior Wet'], spicy: 0},
        {checked_in: true, id: 2, name: 'Nixie', breed: 'DSH', colour: 'Lynx Point', AM: ['Ziwi Lamb Dry'], PM: ['Ziwi Lamb Wet', 'Zylkene 112mg'], spicy: 1},
        {checked_in: false, id: 3, name: 'Poquito', breed: 'DSH', colour: 'Tabby', AM: ['Dry'], PM: ['Proudi'], spicy: 0},
        {checked_in: false, id: 4, name: 'Dutchie', breed: 'Ragdoll X', colour: 'Seal Point', AM: ['Dry'], PM: ['Proudi'], spicy: 0},
        {checked_in: true, id: 5, name: 'Squirrel', breed: 'DLH', colour: 'Black',  AM: ['Kitten Dry'], PM: ['Kitten Wet'], spicy: 0},
    ]

    def all
        CATS
    end

    module_function :all
end
