from src.config.db import DB


class ProductosModel():
    def traerTodos(self):
        cursor = DB.cursor()

        cursor.execute('select * from productos ')

        productos = cursor.fetchall()

        cursor.close()

        return productos

    def crear(self, nombre, descricion, precio_compra, precio_venta, estado):
        cursor = DB.cursor()

        cursor.execute('insert into productos(nombre,descricion,precio_compra,precio_venta,estado) values(?,?,?,?,?)', (nombre,descricion,precio_compra,precio_venta,estado))
        
        cursor.close()

    def editar(self, id, nombre, descricion, precio_compra, precio_venta, estado):
        cursor = DB.cursor()

        cursor.execute('''UPDATE productos SET nombre=?, descricion=?, precio_compra=?, precio_venta=?, estado=? where id=?''',(nombre,descricion,precio_compra,precio_venta,estado,id,))
        
        cursor.close()
        
        