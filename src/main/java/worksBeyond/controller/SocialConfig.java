package worksBeyond.controller;

import javax.inject.Inject;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.Scope;
import org.springframework.context.annotation.ScopedProxyMode;
import org.springframework.core.env.Environment;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.social.connect.ConnectionFactoryLocator;
import org.springframework.social.connect.ConnectionRepository;
import org.springframework.social.connect.support.ConnectionFactoryRegistry;
import org.springframework.social.facebook.connect.FacebookConnectionFactory;
import org.springframework.social.google.connect.GoogleConnectionFactory;
import org.springframework.social.twitter.connect.TwitterConnectionFactory;


@Configuration
public class SocialConfig {

	/*@Inject
	private Environment environment;
	
	@Bean
	public ConnectionFactoryLocator connectionFactoryLocator(){
		ConnectionFactoryRegistry registry = new ConnectionFactoryRegistry();
		//Register Google factory
		registry.addConnectionFactory(new GoogleConnectionFactory(
				environment.getProperty("google.consumerKey"),
				environment.getProperty("google.consumerSecret")));
		//Register Facebook Factory
		registry.addConnectionFactory(new FacebookConnectionFactory(
				environment.getProperty("facebook.clientId"),
				environment.getProperty("facebook.clientSecret")));
		//Register Twitter Factory
		registry.addConnectionFactory(new TwitterConnectionFactory(
				environment.getProperty("twitter.consumerKey"),
				environment.getProperty("twitter.consumerSecret")));
		return registry;
	}
	
    @Bean
    @Scope(value="request", proxyMode=ScopedProxyMode.INTERFACES)
    public ConnectionRepository connectionRepository(){
        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
        if (authentication == null) {
            throw new IllegalStateException("Unable to get a ConnectionRepository: no user signed in");
        }
        return usersConnectionRepository().createConnectionRepository(authentication.getName());
    }*/
}
