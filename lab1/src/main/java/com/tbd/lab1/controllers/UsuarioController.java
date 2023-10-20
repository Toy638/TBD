package com.tbd.lab1.controllers;

import com.tbd.lab1.config.security.model.AuthenticationReq;
import com.tbd.lab1.config.security.model.TokenInfo;
import com.tbd.lab1.config.security.services.JwtUtilService;
import com.tbd.lab1.entities.UsuarioEntity;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import com.tbd.lab1.repositories.UsuarioRepositoryImpl;
import org.springframework.security.authentication.AuthenticationManager;
import com.tbd.lab1.config.security.services.UserDetailsServiceImpl;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import java.util.HashMap;
import java.util.Map;


@CrossOrigin("*")
@RestController()
public class UsuarioController {

    private static final Logger logger = LoggerFactory.getLogger(UsuarioController.class);
    @Autowired
    UserDetailsServiceImpl usuarioDetailsService;

    @Autowired
    private AuthenticationManager authenticationManager;

    @Autowired
    private JwtUtilService jwtUtilService;

    @Autowired
    private UsuarioRepositoryImpl usuarioRepository;

    @PostMapping("/api/login")
    public ResponseEntity<Map<String, String>> getToken(@RequestBody AuthenticationReq authenticationReq){
        try{
            logger.info(authenticationReq.getEmail());
            logger.info(authenticationReq.getClave());
            authenticationManager.authenticate(
                    new UsernamePasswordAuthenticationToken(authenticationReq.getEmail(),
                            authenticationReq.getClave()));
            final UserDetails userDetails = usuarioDetailsService.loadUserByUsername(
                    authenticationReq.getEmail());

            final String jwt = jwtUtilService.generateToken(userDetails);

            Map<String, String> response = new HashMap<>();
            response.put("status", "ok");
            response.put("token", jwt);
            response.put("id", usuarioRepository.getByEmail(authenticationReq.getEmail()).getId().toString());

            return ResponseEntity.ok(response);
        }
        catch (RuntimeException e){
            Map<String, String> response = new HashMap<>();
            response.put("status", "error");
            response.put("token", "error");

            return ResponseEntity.ok(response);
        }
    }

    @PostMapping("/api/register")
    public ResponseEntity<TokenInfo> createUser(@RequestBody UsuarioEntity usuario){
        try{
            usuarioRepository.register(usuario);

            authenticationManager.authenticate(
                    new UsernamePasswordAuthenticationToken(usuario.getEmail(),
                            usuario.getPassword()));
            final UserDetails userDetails = usuarioDetailsService.loadUserByUsername(
                    usuario.getEmail());

            final String jwt = jwtUtilService.generateToken(userDetails);

            return ResponseEntity.ok(new TokenInfo(jwt));
        }catch (RuntimeException e){
            return ResponseEntity.badRequest().build();
        }
    }
}
