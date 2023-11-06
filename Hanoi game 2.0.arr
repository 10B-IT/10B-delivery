use context essentials2021
include tables
include lists
#Definisjoner:

# for å legge en bakgrunn for spillet
box = rectangle(400, 200, "solid", "beige")

# man kan bruke bare 1 stake, men om man har 3 så organiseres det lettere i opperasjonen
stake = circle(5, "solid", "black")



# her er hver ring definert, c1 til c4. de er definert kort for å gjøre det raskt å flytte de i koden. c0 er en transparang ring som brukes som placeholder. dette gjør at man kan bytte ut c0 med de andre ringene istedenfor å måtte flytte hele linjen.

c1 = circle(20, "solid", "hot-pink")
c2 = circle(30, "solid", "light green")
c3 = circle(40, "solid", "cornflower-blue")
c4 = circle(50, "solid", "orange")
c0 = circle(50, "solid", "transparent")


state-lists = [list: [list: 1, 2, 3, 4], [list: 0, 0, 0, 0], [list: 0, 0, 0, 0]]

state-lists-test = [list: [list: 0, 0, 3, 4], [list: 1, 0, 0, 0], [list: 0, 2, 0, 0]]
  
stake-1 = state-lists.get(0)
stake-2 = state-lists.get(1)
stake-3 = state-lists.get(2)

stake-1-pos-1 = stake-1.get(0)

#change = stake-1.set(stake-1-pos-1, 0)



fun top-ring(stake-select :: List) -> Number:
  doc: "this function return the top top ring in the stack"
  ask:
    | stake-select.get(0) == 1 then: 1      
    | stake-select.get(1) == 2 then: 2      
    | stake-select.get(2) == 3 then: 3      
    | stake-select.get(3) == 4 then: 4
    | otherwise: 0
      
  end
end

fun num-til-var(number :: Number) -> Image:
  doc: "This function assigns a image to a number"
  ask:
    |  number == 1 then: c1
    |  number == 2 then: c2
    |  number == 3 then: c3
    |  number == 4 then: c4
    |  number == 0 then: c0
  end
end

# hente from-ring, ved å hente den øverste ringen på den valgte staken og erstatte posisjonen ringen er hentet fra med 0



  from-stake = state-lists.get(0)
  from-ring = top-ring(state-lists.get(0))
  replaced-from-ring = from-stake.set(from-ring - 1, 0)
  removed-from-ring-state-lists = state-lists.set(0, replaced-from-ring)


# to-ring

  to-stake = removed-from-ring-state-lists.get(2)
where-to-place-ring = top-ring(to-stake)
place-ring = to-stake.set(where-to-place-ring, from-ring)

  new-state-lists = removed-from-ring-state-lists.set(2, place-ring)






#fun move(from-stake, to-stake):




# Hanoi utgangspunkt image

fun hanoi-image() -> Image:
    put-image(stake, 60, 100,
  put-image(c1, 60, 100,
    put-image(c2, 60, 100, 
      put-image(c3, 60, 100, 
        put-image(c4, 60, 100,
          
              put-image(stake, 200, 100,
            put-image(c0, 200, 100,
              put-image(c0, 200, 100, 
                put-image(c0, 200, 100, 
                  put-image(c0, 200, 100,
                    
                        put-image(stake, 340, 100,
                      put-image(c0, 340, 100,
                        put-image(c0, 340, 100, 
                          put-image(c0, 340, 100, 
                            put-image(c0, 340, 100,box)))))))))))))))
end
  
  
  
  
  
  
  
pos-0-0 = num-til-var(stake-1.get(0))



  put-image(pos-0-0, 60, 100, box)