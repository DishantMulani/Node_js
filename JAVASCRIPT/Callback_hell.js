let stocks = {
    Fruits: ["strawberry", "grapes", "banana", "apple"],
    liquid: ["water", "ice"],
    holder: ["cone", "cup", "stick"],
    toppings: ["chocolate", "peanuts"],
};
let order = (fruit_name, call_production) => {
    setTimeout(() => {
        console.log(`${stocks.Fruits[fruit_name]} was selected`)
        call_production();
    }, 2000)
}

let production = () => {
    setTimeout(() => {
        console.log(`Cut The Fruit....`)
        setTimeout(() => {
            console.log(`Add ${stocks.liquid[0]} And ${stocks.liquid[1]}`)
            setTimeout(() => {
                console.log(`Start The Machine`)
                setTimeout(() => {
                    console.log(`container ${stocks.holder[1]} `)
                    setTimeout(() => {
                        console.log(`toppings ${stocks.toppings[0]}`)
                        setTimeout(() => {
                            console.log(`Serve ice Cream`)
                        }, 2000)
                    }, 3000)
                }, 2000)
            }, 1000)
        }, 1000)
    }, 2000)
}

order(2, production);

