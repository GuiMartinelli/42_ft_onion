# FT_ONION

This project is a introduction to Dark Web. The objective is create a Onion Service (aka Hidden Service) and in the journey to achieve the goal, i learned a lot about anonymity on the internet and the Tor Project
<br/><br/>

### WHAT IS TOR?
TOR (The Onion Router) is a free and open-source software that creates a secure and anonymous network, allowing its users to browse the internet while concealing both the source and destination of their traffic, making it difficult to trace, which guarantees confidentiality.
<br/><br/>

### WHAT IS A ONION SERVICE?
Websites, like clients, can also operate anonymously on the TOR network by setting up an Onion Service (formerly known as a Hidden Service). This service generates a unique address consisting of 56 alphanumeric characters followed by '.onion,' allowing access to the website exclusively through the TOR network.
<br/><br/>

### USAGE

- Clone the repository `git clone`
- Start up the Container with `make` command (make sure you have Make and Docker installed).
- Voilà, the Onion Service is up and accessible for anyone connected to the TOR network.
<br/><br/>

### ACCESSING THE ONION SERVICE

The Onion Service can be accessed via HTTP or SSH using its address.
<br/><br/>

Access via HTTP:
- Find the HTTP address in this file within the Docker container: `/var/lib/tor/hidden_service/hostname`.
- Access it through a TOR Browser and the HTML page will be displayed. Note that Onion Services are only accessible through a TOR Browser connected to the Onion Network, other browsers will not be able to resolve the address

Access via SSH:
- Find the SSH address in this file within the Docker container: `/var/lib/tor/ssh_onion_service/hostname`.
- Run the command `torify ssh onion@[SSH ADDRESS] -p 4242` to log in with the `onion` user through port 4242 (Ensure you have TOR installed).
- The default password for the `onion` user is `onion`. Enter the password when prompted, and you'll be logged into the Onion Service via SSH
<br/><br/>

### RESOURCES
https://www.torproject.org/about/history/<br/>
https://tb-manual.torproject.org/onion-services/<br/>
https://community.torproject.org/onion-services/setup/<br/>
https://arcdetri.github.io/tor-hidden-onion-nginx.html<br/>
https://www.vivaolinux.com.br/etc/sshd_config-4/<br/>
https://linux.die.net/man/5/sshd_config<br/>
https://www.maths.tcd.ie/~fionn/misc/ssh_hidden_service/<br/>
