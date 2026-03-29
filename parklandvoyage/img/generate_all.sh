#!/bin/bash
# Script to generate 75 images for parklandvoyage articles
# port-aventura-world-2.jpg already generated, skipping

cd /home/ubuntu/.openclaw/workspace/assets/parklandvoyage/img/

API_KEY="AIzaSyATE8ITK6aMespB2Hqm7czgdwQBw4FfXZs"
SCRIPT="python3 /home/ubuntu/.npm-global/lib/node_modules/openclaw/skills/nano-banana-pro/scripts/generate_image.py"
SUCCESS=1  # port-aventura-world-2.jpg already done
FAILED=0
FAILED_LIST=""

generate_image() {
    local filename="$1"
    local prompt="$2"
    echo ">>> Generating: $filename"
    if $SCRIPT --prompt "$prompt" --filename "$filename" --aspect-ratio 16:9 --api-key "$API_KEY"; then
        echo "✓ OK: $filename"
        SUCCESS=$((SUCCESS + 1))
    else
        echo "✗ FAIL: $filename"
        FAILED=$((FAILED + 1))
        FAILED_LIST="$FAILED_LIST $filename"
    fi
    sleep 3
}

# ---- BATCH 1 (2-5) — skipped #1 already done ----
generate_image "port-aventura-world-3.jpg" "Shambhala hypercoaster PortAventura World Spain, massive yellow and red roller coaster, blue sky, aerial view, photorealistic"
generate_image "port-aventura-world-4.jpg" "SésamoAventura children area PortAventura Spain, colorful Sesame Street themed rides, families with kids, photorealistic"
generate_image "parque-warner-madrid-2.jpg" "Batman La Fuga roller coaster Parque Warner Madrid Spain, suspended looping coaster, dark blue and yellow, photorealistic"
generate_image "parque-warner-madrid-3.jpg" "Superman roller coaster Parque Warner Madrid Spain, red and blue launch coaster, open sky, photorealistic"
generate_image "parque-warner-madrid-4.jpg" "DC Comics superhero themed area Parque Warner Madrid, colorful facades, families walking, photorealistic"

echo "--- BATCH 1 done, pausing 5s ---"
sleep 5

# ---- BATCH 2 (6-10) ----
generate_image "isla-magica-sevilla-2.jpg" "Agua Salvaje water ride Isla Mágica Sevilla Spain, Caribbean theme, splash zone, excited riders, photorealistic"
generate_image "isla-magica-sevilla-3.jpg" "Anaconda roller coaster Isla Mágica Sevilla Spain, tropical theme park, green jungle setting, photorealistic"
generate_image "isla-magica-sevilla-4.jpg" "Isla Mágica Sevilla theme park entrance, Spanish colonial Caribbean architecture, palm trees, sunny day, photorealistic"
generate_image "tibidabo-barcelona-2.jpg" "Tibidabo amusement park Barcelona overlooking the city, aerial view of Barcelona from the park, Sagrada Familia visible in distance, photorealistic"
generate_image "tibidabo-barcelona-3.jpg" "Avió historic airplane ride Tibidabo Barcelona, iconic vintage biplane attraction, clear day, photorealistic"

echo "--- BATCH 2 done, pausing 5s ---"
sleep 5

# ---- BATCH 3 (11-15) ----
generate_image "tibidabo-barcelona-4.jpg" "Tibidabo Barcelona Automaten historic funfair attractions, vintage carousel and rides, Belle Époque architecture, photorealistic"
generate_image "parque-de-atracciones-madrid-2.jpg" "Abismo free fall tower Parque de Atracciones Madrid Spain, tall drop ride, Casa de Campo park trees, photorealistic"
generate_image "parque-de-atracciones-madrid-3.jpg" "Parque de Atracciones Madrid Spain roller coasters, multiple rides visible, wooded park setting, photorealistic"
generate_image "parque-de-atracciones-madrid-4.jpg" "Children riding carousel Parque de Atracciones Madrid Spain, family fun, colorful rides, sunny afternoon, photorealistic"
generate_image "terra-mitica-benidorm-2.jpg" "Titanide roller coaster Terra Mítica Benidorm Spain, ancient civilizations theme park, Mediterranean sea in background, photorealistic"

echo "--- BATCH 3 done, pausing 5s ---"
sleep 5

# ---- BATCH 4 (16-20) ----
generate_image "terra-mitica-benidorm-3.jpg" "El Laberinto del Minotauro ride Terra Mítica Benidorm Spain, Greek mythology themed dark ride, photorealistic"
generate_image "terra-mitica-benidorm-4.jpg" "Terra Mítica Benidorm Spain ancient Rome themed area, Roman colosseum architecture, sunny Mediterranean day, photorealistic"
generate_image "portaventura-con-ninos-2.jpg" "Happy children on family ride SésamoAventura PortAventura Spain, Elmo and Cookie Monster characters, photorealistic"
generate_image "portaventura-con-ninos-3.jpg" "Family with young children at PortAventura World Spain, parents and kids enjoying mild rides, photorealistic"
generate_image "portaventura-con-ninos-4.jpg" "PortAventura World Salou hotel resort aerial view, theme park and hotels complex, Mediterranean coast, photorealistic"

echo "--- BATCH 4 done, pausing 5s ---"
sleep 5

# ---- BATCH 5 (21-25) ----
generate_image "portaventura-vs-warner-2.jpg" "Comparison split image PortAventura vs Warner theme parks Spain, Shambhala vs Superman, photorealistic collage"
generate_image "portaventura-vs-warner-3.jpg" "Theme park visitors choosing between attractions, decision moment, Spain theme park, photorealistic"
generate_image "portaventura-vs-warner-4.jpg" "Spanish theme park rollercoaster action shot, riders screaming on loop coaster, sunny Spain, photorealistic"
generate_image "disneyland-paris-2.jpg" "Sleeping Beauty Castle Disneyland Paris illuminated at night, fireworks display, magical atmosphere, photorealistic"
generate_image "disneyland-paris-3.jpg" "Big Thunder Mountain roller coaster Disneyland Paris, mine train ride, Frontierland western theme, photorealistic"

echo "--- BATCH 5 done, pausing 5s ---"
sleep 5

# ---- BATCH 6 (26-30) ----
generate_image "disneyland-paris-4.jpg" "Walt Disney Studios Park Paris Tower of Terror at sunset, Hollywood themed area, photorealistic"
generate_image "puy-du-fou-2.jpg" "Puy du Fou Le Signe du Triomphe Roman gladiator show, massive outdoor arena with thousands of spectators, France, photorealistic"
generate_image "puy-du-fou-3.jpg" "Puy du Fou medieval village recreation France, actors in period costume, authentic thatched cottages, photorealistic"
generate_image "puy-du-fou-4.jpg" "Puy du Fou La Cinéscénie night show France, epic laser light projection on lake, thousands of performers, photorealistic"
generate_image "parc-asterix-2.jpg" "OzIris inverted roller coaster Parc Astérix France, blue steel coaster over Egyptian themed area, photorealistic"

echo "--- BATCH 6 done, pausing 5s ---"
sleep 5

# ---- BATCH 7 (31-35) ----
generate_image "parc-asterix-3.jpg" "Tonnerre de Zeus wooden roller coaster Parc Astérix France, classic wood coaster, blue sky, photorealistic"
generate_image "parc-asterix-4.jpg" "Asterix and Obelix Gaulish village recreation Parc Astérix France, thatched huts, actors in costume, photorealistic"
generate_image "europa-park-2.jpg" "Silver Star hypercoaster Europa-Park Germany, massive white steel coaster, French themed area, photorealistic"
generate_image "europa-park-3.jpg" "Blue Fire launched roller coaster Europa-Park Germany, Iceland themed area, blue coaster, night shot, photorealistic"
generate_image "europa-park-4.jpg" "Europa-Park Germany Spanish themed area El Andaluz, traditional Spanish architecture, families, photorealistic"

echo "--- BATCH 7 done, pausing 5s ---"
sleep 5

# ---- BATCH 8 (36-40) ----
generate_image "efteling-2.jpg" "Efteling Fairy Tale Forest Sprookjesbos Netherlands, Snow White cottage with animated dwarfs, magical forest, photorealistic"
generate_image "efteling-3.jpg" "Baron 1898 dive coaster Efteling Netherlands, steampunk mine theme, riders on vertical drop, photorealistic"
generate_image "efteling-4.jpg" "Efteling theme park Netherlands Polles Keuken restaurant fairytale interior, magical dining room, photorealistic"
generate_image "gardaland-2.jpg" "Shaman roller coaster Gardaland Italy, African themed launched coaster, Lake Garda in background, photorealistic"
generate_image "gardaland-3.jpg" "Gardaland Italy aerial view Lake Garda, theme park from above with lake panorama, photorealistic"

echo "--- BATCH 8 done, pausing 5s ---"
sleep 5

# ---- BATCH 9 (41-45) ----
generate_image "gardaland-4.jpg" "Peppa Pig Land Gardaland Italy, children's themed area with Peppa Pig characters, photorealistic"
generate_image "alton-towers-2.jpg" "Nemesis inverted roller coaster Alton Towers UK, iconic purple steel coaster over ravine, photorealistic"
generate_image "alton-towers-3.jpg" "The Smiler roller coaster Alton Towers UK, yellow 14-inversion coaster, record-breaking, photorealistic"
generate_image "alton-towers-4.jpg" "Alton Towers historic castle ruins with modern roller coasters in background UK, contrast old and new, photorealistic"
generate_image "futuroscope-2.jpg" "Futuroscope Poitiers France futuristic architecture at night, crystal buildings illuminated, photorealistic"

echo "--- BATCH 9 done, pausing 5s ---"
sleep 5

# ---- BATCH 10 (46-50) ----
generate_image "futuroscope-3.jpg" "Futuroscope France Arthur l'Aventure 4D immersive dark ride, futuristic technology, photorealistic"
generate_image "futuroscope-4.jpg" "Futuroscope France night show laser projection on lake, spectacular light display, thousands of spectators, photorealistic"
generate_image "mejores-parques-europa-2.jpg" "Collage best theme parks Europe, Europa-Park Efteling Disneyland Paris Puy du Fou, photorealistic montage"
generate_image "mejores-parques-europa-3.jpg" "European theme park map illustration, roller coasters across Europe, travel planning, colorful infographic style"
generate_image "mejores-parques-europa-4.jpg" "Happy tourists at European theme park, diverse group of visitors enjoying rides, sunny day, photorealistic"

echo "--- BATCH 10 done, pausing 5s ---"
sleep 5

# ---- BATCH 11 (51-55) ----
generate_image "road-trip-parques-europa-2.jpg" "Road trip car driving through European countryside with theme park visible ahead, adventure travel, photorealistic"
generate_image "road-trip-parques-europa-3.jpg" "Road trip planning map Europe with theme parks marked, travel journal and coffee on table, photorealistic"
generate_image "road-trip-parques-europa-4.jpg" "Couple at European theme park road trip, loading car with luggage, excitement, summer, photorealistic"
generate_image "universal-studios-orlando-2.jpg" "Hogsmeade village Wizarding World of Harry Potter Universal Orlando, snow-capped roofs, Three Broomsticks, photorealistic"
generate_image "universal-studios-orlando-3.jpg" "Hagrid's Magical Creatures Motorbike Adventure Universal Orlando, magical forest, guests on motorbikes, photorealistic"

echo "--- BATCH 11 done, pausing 5s ---"
sleep 5

# ---- BATCH 12 (56-60) ----
generate_image "universal-studios-orlando-4.jpg" "Velocicoaster Jurassic World Universal Orlando, raptor themed launched coaster over lagoon, photorealistic"
generate_image "walt-disney-world-orlando-2.jpg" "Magic Kingdom Walt Disney World Orlando Cinderella Castle fireworks night show, iconic castle illuminated, photorealistic"
generate_image "walt-disney-world-orlando-3.jpg" "Star Wars Galaxy's Edge Walt Disney World Hollywood Studios, Millennium Falcon and stormtroopers, immersive land, photorealistic"
generate_image "walt-disney-world-orlando-4.jpg" "EPCOT Walt Disney World geodesic sphere Spaceship Earth, World Showcase lagoon, photorealistic"
generate_image "six-flags-mexico-2.jpg" "Superman El Escape roller coaster Six Flags Mexico City, red and blue launch coaster, photorealistic"

echo "--- BATCH 12 done, pausing 5s ---"
sleep 5

# ---- BATCH 13 (61-65) ----
generate_image "six-flags-mexico-3.jpg" "Batman La Montaña inverted coaster Six Flags Mexico City, dark themed area, night shot, photorealistic"
generate_image "six-flags-mexico-4.jpg" "Six Flags Mexico City aerial view, theme park surrounded by urban Mexico City, photorealistic"
generate_image "universal-studios-mexico-2.jpg" "Universal Studios Mexico City themed area, Hollywood movie set style facades, photorealistic"
generate_image "universal-studios-mexico-3.jpg" "Visitors enjoying attraction Universal Studios Mexico, immersive themed environment, photorealistic"
generate_image "universal-studios-mexico-4.jpg" "Universal Studios Mexico entrance facade, globe logo, Mexican visitors, modern architecture, photorealistic"

echo "--- BATCH 13 done, pausing 5s ---"
sleep 5

# ---- BATCH 14 (66-70) ----
generate_image "parques-tematicos-mexico-familia-2.jpg" "Xcaret Mexico eco-archaeological park Riviera Maya, underground river swim, natural cave, photorealistic"
generate_image "parques-tematicos-mexico-familia-3.jpg" "KidZania Mexico City children playing work roles, mini city for kids, educational theme park, photorealistic"
generate_image "parques-tematicos-mexico-familia-4.jpg" "Xel-Ha Mexico natural aquatic park Riviera Maya, snorkeling in turquoise lagoon, photorealistic"
generate_image "fantasilandia-san-bernardo-2.jpg" "Fantasilandia San Bernardo Chile 2027 new theme park rendering, modern roller coasters, Andes mountains background, photorealistic concept art"
generate_image "fantasilandia-san-bernardo-3.jpg" "Chile theme park water park concept, slides and pools with Andes mountains, 2027 project, photorealistic render"

echo "--- BATCH 14 done, pausing 5s ---"
sleep 5

# ---- BATCH 15 (71-75) ----
generate_image "fantasilandia-san-bernardo-4.jpg" "Santiago de Chile skyline with new Fantasilandia resort complex San Bernardo, aerial view concept, photorealistic"
generate_image "consejos-parques-bebes-ninos-2.jpg" "Young family with baby stroller at theme park entrance, parents and toddler, happy and prepared, photorealistic"
generate_image "consejos-parques-bebes-ninos-3.jpg" "Child riding gentle theme park attraction with parent, first theme park experience, joy, photorealistic"
generate_image "consejos-parques-bebes-ninos-4.jpg" "Family packing theme park bag with snacks sunscreen diapers, preparation checklist, photorealistic"

echo "--- BATCH 15 done ---"

echo ""
echo "========================================"
echo "GENERATION COMPLETE"
echo "Success: $SUCCESS / 75"
echo "Failed: $FAILED"
if [ -n "$FAILED_LIST" ]; then
    echo "Failed files:$FAILED_LIST"
fi
echo "========================================"

# Save results
echo "SUCCESS=$SUCCESS" > /tmp/img_gen_results.txt
echo "FAILED=$FAILED" >> /tmp/img_gen_results.txt
echo "FAILED_LIST=$FAILED_LIST" >> /tmp/img_gen_results.txt
