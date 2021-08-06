/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Config.Conexion;
import Entity.personal;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author EXO
 */
public class Controlador {

    Conexion conexion = new Conexion();
    JdbcTemplate jdbcTemplate = new JdbcTemplate(conexion.Conectar());
    ModelAndView mv = new ModelAndView();
    List per;
    int id;

    @RequestMapping(value = "index.htm", method = RequestMethod.GET)
    public ModelAndView listar() {
        String sql = "select * from personal";
        per = this.jdbcTemplate.queryForList(sql);
        mv.addObject("lista", per);
        mv.setViewName("index");
        return mv;
    }

    @RequestMapping(value = "agregar.htm", method = RequestMethod.GET)
    public ModelAndView agregar() {
        mv.addObject(new personal());
        mv.setViewName("agregar");
        return mv;
    }

    @RequestMapping(value = "agregar.htm", method = RequestMethod.POST)
    public ModelAndView agregar(personal p) {
        String sql = "insert into personal(id,nombre,apellido,email,actividad)values(?,?,?,?,?)";
        this.jdbcTemplate.update(sql, p.getId(), p.getNombre(), p.getApellido(), p.getEmail(), p.getActividad());
        return new ModelAndView("redirect:/index.htm");

    }

    @RequestMapping(value = "editar.htm", method = RequestMethod.GET)
    public ModelAndView editar(HttpServletRequest request) {
        id = Integer.parseInt(request.getParameter("id"));
        String sql = "select * from personal where id = " + id;
        per = this.jdbcTemplate.queryForList(sql);
        mv.addObject("lista", per);
        mv.setViewName("editar");
        return mv;
    }

    @RequestMapping(value = "editar.htm", method = RequestMethod.POST)
    public ModelAndView editar(personal p) {
        String sql = "update personal set nombre = ? , apellido = ? , email = ? , actividad = ?  where id = ? ";
        this.jdbcTemplate.update(sql, p.getNombre(), p.getApellido(), p.getEmail(), p.getActividad(), p.getId());
        return new ModelAndView("redirect:/index.htm");
    }

    @RequestMapping(value = "eliminar.htm", method = RequestMethod.GET)
    public ModelAndView eliminar(HttpServletRequest request) {
        id = Integer.parseInt(request.getParameter("id"));
        String sql = "delete from personal where id = " + id;
        this.jdbcTemplate.update(sql);
        return new ModelAndView("redirect:/index.htm");
    }

}
