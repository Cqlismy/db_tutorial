mydb: my_db.c
	gcc my_db.c -o mydb

db: db.c
	gcc db.c -o db

run: db
	./db mydb.db

clean:
	rm -f db *.db mydb

test: db
	bundle exec rspec

format: *.c
	clang-format -style=Google -i *.c
