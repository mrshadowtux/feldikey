# feldikey

feldikey is a new approach for a quicktext system on linux/unix-like systems. At the moment, it is under heavy development and not suited for production use.

## Installation
Please run the setup.sh script which will take care of all steps. It is mandatory in order for feldikey to run, because it creates the local database and checks dependencies.

Dependencies:
- sqlite3
- xdotool
- xev

## Testing
- Please create an example entry with feldikey_add.sh first. The usage is:

  feldikey_add.sh title shortcut content

  feldikey_add.sh welcometext _welcome_ "Welcome to feldikey. This is a completely random text that could be veeeeeery long."

- Now, please start Leafpad. In development phase this little graphics editor will simulate a browser for use later on
- Great, now that you have leafpad open, let's try to send our first text into it:
  ./feldikey_send.sh $(./feldikey_query.sh shortcut "_welcome_")
- The text should now appear in leafpad
 
## Still missing
At the moment, the following is missing:
- Monitoring typed text to detect shortcuts while the user types in any application he likes to use feldikey for
- An implementation for categories (If the user prefers a list style selection of his desired quicktext instead of shortcut texts)
- A lot of custom character replacements in feldikey_send.sh
- Validation inside all of the scripts to check if the user really entered correct values. If he didn't do this, he should get a usage list
