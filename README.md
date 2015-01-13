CAR HUNT
========

allows VW Beetle owners create an on-line community and brag about their cars. This was my first project in my Web Development Immersive program. If my Beetle breaks down again, I would know what to do: search in the nearby, using Car Hunt. Owners can create their profile, add Beetle details and photos. 

Technologies:

I used Ruby on Rails, ruby gem Devise for authentication, Paperclip for photo uploading, Amazon S3 for storing the photos, ruby gem Geocoder for finding Beetles near your location. 
The project is deployed on Heroku: https://fathomless-headland-1252.herokuapp.com/about

Steps in the flow:

Sign up:
- screen Sign Up -> input email and password
- screen Create Profile -> name, state, zip, add photo
- screen Add Beetle -> Beetle nickname, location zip, model, year, color, fuel economy, engine type, A/C?, interior, pictures, comments
- screen Owner Profile -> view the info added, with edit buttons

Log in:
- screen Log in -> input email and password
- screen: Owner Profile

Search: 
- Search: by year || all :near (zip_code)
- screen Search Results -> lists the results

