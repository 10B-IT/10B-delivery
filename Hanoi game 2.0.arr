use context essentials2021
include tables
include lists
#Definisjoner:

# Alle defoinisjonene fra progoblig 1 som trengs for å tegne Henoi tårnet
box = rectangle(400, 200, "solid", "beige")

stake = circle(5, "solid", "black")

c1 = circle(20, "solid", "hot-pink")
c2 = circle(30, "solid", "light green")
c3 = circle(40, "solid", "cornflower-blue")
c4 = circle(50, "solid", "orange")
c0 = circle(50, "solid", "transparent")


# state-list er listen som er laget for å representere posisjonene til ringene i hanoi tårnet. første posisjon er øverst og siste posisjon er nederst. hver liste i listen representerer hver stake

state-lists = [list: [list: 1, 2, 3, 4], [list: 0, 0, 0, 0], [list: 0, 0, 0, 0]]

# Denne listen er modifisert for å teste funksjoner og ikke ment for ferdig versjon

state-lists-test = [list: [list: 0, 0, 3, 4], [list: 1, 0, 0, 0], [list: 0, 2, 0, 0]]


# variabler som representerer hver stake og kaller på den relevante listen

stake-1 = state-lists.get(0)
stake-2 = state-lists.get(1)
stake-3 = state-lists.get(2)

# funksjonen top-ring brukes for å returnere den øverste ringen i listen. Den tar en imot en av stake listene og returnerer nummberet på den øverste ringen. hvis det ikke er noen ringer returnerer den 0

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

# Funksjonen num-til-var brukes for å allokere variablene som representerer bildene nummer fra listene. f.eks hvis nummeret i listen er 1 returnerer den variablen c1. dette gjør at man kan bruke listen til å tegne hanoi tårnet

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


# her er en rekke med variabler som er skrevet for å planlegge en funksjon for å gjøre trekk ved å modifisere state-list. i dette tilfellet flyttes øverste ring fra første stake til tredje stake.

# her er ideen om hvoran en en ring kan hentes fra en gitt stake

# from-stake henter listen hvor man vil hente ringen fra
  from-stake = state-lists.get(0)
# from-ring henter den øverste ringen vet hjelp av top-ring funksjonen og returnerer Nummeret som ligger først
  from-ring = top-ring(state-lists.get(0))
# replaced-from-ring henter informasjonen om hvor nummeret blir hentet fra og setter verdien der den var til 0
  replaced-from-ring = from-stake.set(from-ring - 1, 0)
# removed-from-ring-state-lists returnerer den nye listen hvor det øverste nummeret er fjernet
  removed-from-ring-state-lists = state-lists.set(0, replaced-from-ring)


# her ideen om hvordan ringen som er hentet kan plasseres på den nye staken

# to-ring tar den nye fulle listen og henter listen til staken hvor ringen skal plasseres
  to-stake = removed-from-ring-state-lists.get(2)
# where-to-place-ring velger den øverste posisjonen i to-stake listen
where-to-place-ring = top-ring(to-stake)
# place-ring setter verdien til posisjonen fra where-to-place-ring til from-ring
place-ring = to-stake.set(where-to-place-ring, from-ring)
#new-state-lists plasserer den nye stake listen tilbake i den totale listen og returnerer et helt trekk som en liste
  new-state-lists = removed-from-ring-state-lists.set(2, place-ring)




# Hanoi utgangspunkt image. dette er hentet fra progoblig 1 og er tiltenkt som en funksjon til å bli modifisert av programmet som gjør trekk

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
