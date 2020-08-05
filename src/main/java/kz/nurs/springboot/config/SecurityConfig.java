package kz.nurs.springboot.config;

import kz.nurs.springboot.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.method.configuration.EnableGlobalMethodSecurity;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

@Configuration
@EnableWebSecurity
@EnableGlobalMethodSecurity(prePostEnabled = true, proxyTargetClass = true, securedEnabled = true)
public class SecurityConfig extends WebSecurityConfigurerAdapter {
    @Autowired
    private UserService userService;

    @Override
    protected AuthenticationManager authenticationManager() throws Exception{
        return super.authenticationManager();
    }
    @Override
    protected  void configure(HttpSecurity http) throws Exception{
    http
            .authorizeRequests()
            .antMatchers("/css/**","/js/**").permitAll()
            .antMatchers("/").permitAll();
    http
            .formLogin()
            .loginProcessingUrl("/tologin").permitAll()
            .loginPage("/login").permitAll()
            .usernameParameter("user_email")
            .passwordParameter("user_password")
            .successForwardUrl("/profile")
            .defaultSuccessUrl("/")
            .failureUrl("/login?error");
    http
            .logout().permitAll()
            .logoutUrl("/tologout")
            .logoutSuccessUrl("/tologin").permitAll();
    http.csrf().disable();
    }

    @Override
    protected void configure(AuthenticationManagerBuilder auth) throws Exception{
        auth.userDetailsService(userService);
    }
    @Bean
    public BCryptPasswordEncoder passwordEncoder(){
        return new BCryptPasswordEncoder();
    }
}
