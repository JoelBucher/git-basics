#!/bin/bash

cat << 'EOF' > auth.py
def login_user(username, password):
    # Base authentication logic
    if username == "admin" and password == "password":
        return True
    return False
EOF

git add auth.py
git commit -m "chore: initial auth setup"

cat << 'EOF' > auth.py
def login_user(username, password):
    # FIX: Stripping whitespace to prevent login failures from accidental trailing spaces
    username = username.strip()
    password = password.strip()
    
    if username == "admin" and password == "password":
        print(f"DEBUG: User {username} attempted login with password {password}") # TODO: REMOVE BEFORE COMMIT
        return True
    return False

def generate_token():
    # UNFINISHED FEATURE: Do not commit this yet!
    pass
EOF