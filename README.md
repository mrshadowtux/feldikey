# feldikey

feldikey is a new approach for a quicktext system on linux/unix-like systems. At the moment, it is under heavy development and not suited for production use.

## Installation
Please run the ./setup.sh script which will take care of all steps. It is mandatory in order for feldikey to run, because it creates the local database and checks dependencies.

Dependencies:
- sqlite3
- xdotool
- xev
- X11 - This will *not* run on Mac OS X properly (only on X11 apps there which are very few)

## Testing
- Please create an example entry with feldikey_add.sh first. The usage is:

  feldikey_add.sh title shortcut content

  ./feldikey_add.sh welcometext _welcome_ "Welcome to feldikey. This is a completely random text that could be veeeeeery long."

- Now, please start Leafpad. In development phase this little graphics editor will simulate a browser for use later on
- Great, now that you have leafpad open, let's try to send our first text into it:

  ./feldikey_send.sh $(./feldikey_query.sh shortcut "_welcome_")

- The text should now appear in leafpad
 
## Still missing (random order)
At the moment, the following is missing:
- Monitoring typed text to detect shortcuts while the user types in any application he likes to use feldikey for
- An implementation for categories (If the user prefers a list style selection of his desired quicktext instead of shortcut texts)
- A lot of custom character replacements in feldikey_send.sh
- Validation inside all of the scripts to check if the user really entered correct values. If he didn't do this, he should get a usage list
- Import quicktexts from other quicktext software for easy migration

## Coding guidelines
When working on a project with multiple people, it is important that everyone uses the same coding style. So here are the guidelines:

- Use tabs for indenting, not spaces
- In shell scripts always wrap variable names in {}. Example: ${content}
- use meaningful variable names in English please. Only exception: ${i} in loops that do not use the variable inside for anything.

Thank you very much!
