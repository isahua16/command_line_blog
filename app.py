import mariadb
import dbcreds

def get_user_id():
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
    
get_user_id();

