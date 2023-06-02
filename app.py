import mariadb
import dbcreds

def get_user_id():
    try:
        user_name = input("Enter your username: ")
        user_password = input("Enter your password: ")
        conn = mariadb.connect(**dbcreds.conn_params)
        cursor = conn.cursor()
        cursor.execute('CALL select_client(?,?)', [user_name, user_password])
        results = cursor.fetchall()
        cursor.close()
        conn.close()
        if(len(results) == 1):
            return results[0]
        else:
            return None
    except:
        print("Something went wrong")
    
def create_post(client_id):
    try:
        post_title = input("Enter your post's title: ")
        post_content = input("Enter your post's content: ")
        conn = mariadb.connect(**dbcreds.conn_params)
        cursor = conn.cursor()
        cursor.execute('CALL select_client(?,?,?)', [client_id, post_title, post_content])
        cursor.close()
        conn.close()
        print("Post successfully added")
    except:
        print("Something went wrong")

def get_all_posts():
    try:
        conn = mariadb.connect(**dbcreds.conn_params)
        cursor = conn.cursor()
        cursor.execute('CALL get_posts()')
        results = cursor.fetchall()
        cursor.close()
        conn.close()
        for i in range(len(results)):
            print(str(results[i][0], 'utf-8'))
            print(str(results[i][1], 'utf-8'))
            print("\n")
    except:
        print("Something went wrong")

def program_init():
    client_id = get_user_id()
    if(client_id == None):
        print("Log in failed")
        return
    print("Welcome to the command line blog.")
    while(True):
        print("What would you like to do?\nInsert a new post: 1\nRead all posts: 2\nQuit: 3")
        user_select = int(input())
        if(user_select == 1):
            create_post(client_id)
        elif(user_select == 2):
            get_all_posts()
        elif(user_select == 3):
            return
        else:
            print("Invalid option.")



