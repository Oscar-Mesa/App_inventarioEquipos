using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace App_inventarioEquipos
{
    public class cls_equipos 
    {
        private string str_mensaje;
        cls_conexion objConectar = new cls_conexion();
        public void fnt_registrar(string codigo, string nombre, string caracteristicas,string marca,
            string modelo, string precio, string aplicaciones, string red)
        {
            if(codigo == "" || nombre == "" || caracteristicas == "" || marca =="" || modelo == ""
                || precio == "" || aplicaciones == "" || red == "")
            {
                this.str_mensaje = "Debe digilenciar todos los datos";
            }
            else
            {
                try
                {
                    objConectar.fnt_conectar();
                    string sql = "insert into tbl_equipos (PKCodigo,Nombre,Caracteristicas,Marca,Modelo,Precio,Fecha_registro,Aplicaciones_instaladas,Configuracion_red) " +
                        "values ('" + codigo + "','" + caracteristicas + "','" + marca + "','" + modelo + "','" + precio + "','current_date()','" + aplicaciones + "',,'" + red + "')";
                    MySqlCommand comando = new MySqlCommand(sql, objConectar.conex);
                    comando.ExecuteNonQuery();
                    //MessageBox.Show("successfully registered Type expenses", "record", MessageBoxButtons.OK, MessageBoxIcon.Information);
                    objConectar.fnt_Desconectar();
                    this.str_mensaje = "Equipo registrado con éxito";

                }
                catch { this.str_mensaje = "Este registro ya existe / Problemas de conexión consulta con el fullstack"; }

            }
        }
    }
}
