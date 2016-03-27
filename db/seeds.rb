# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

admin = AdminUser.new( email: 'mcmegavolt@gmail.com', password: 'mcmegavolt' )
admin.save

categories = Category.create [
            { name: 'Диваны' },
            { name: 'Кресла' },
            { name: 'Стулья' },
            { name: 'Пуфы, скамьи' },
            { name: 'Столы' },
            { name: 'Зонты уличные' },
            { name: 'Растения декоративные' },
            { name: 'Холодильники, кондиционеры' },
            { name: 'Дополнительное оборудование' },
            { name: 'Банкетный текстиль' },
            { name: 'Детская мебель' },
            { name: 'Плетеная мебель' }
        ]

item = Item.create( 
            name: 'Дизайнерское кресло',
            description: 'Известное дизайнерское кресло с обивкой кожзам белого цвета',
            price: 3500,
            code: '2.31.5',
            height: 1040,
            width: 770,
            depth: 720,
            composition: 'Металлическая хромированная опора, белый кожзам',
            color: 'Белый',
            category: Category.first
            )

11.times do
      dup = item.dup
      dup.save
end

