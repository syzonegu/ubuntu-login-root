<h1>SSH Configuration Use Username root in SSH Script</h1>
<p>
    This script configures SSH on Ubuntu to allow root login directly. The script modifies the <code>/etc/ssh/sshd_config</code> file that stores SSH configuration settings by changing the <code>PermitRootLogin</code> value from
    <code>prohibit-password</code> to <code>yes</code>, which allows users to login via SSH with the <code>root</code> account. The script then saves the changes with the <code>systemctl restart ssh</code> command to make the changes
    effective. After that, the script sets the password for the <code>root</code> account with the <code>passwd root</code> command to enable users to access the SSH with the <code>root</code> account. Finally, the script displays the
    message "SSH has been configured to allow root login" to inform the user that the SSH configuration for logging in with the <code>root</code> account is complete.
</p>
<p>This script has been tested on Ubuntu 18.04 LTS, 20.04 LTS, and 22.04 LTS.</p>
<h2>Usage</h2>
<p>To use this script, follow these steps:</p>
<ol>
    <li>Open a terminal on Ubuntu.</li>
    <li>Download the script file by running the following command:</li>
</ol>
<pre><div class="bg-black rounded-md mb-4"><div class="flex items-center relative text-gray-200 bg-gray-800 px-4 py-2 text-xs font-sans justify-between rounded-t-md"><span>javascript</span><button class="flex ml-auto gap-2"><svg stroke="currentColor" fill="none" stroke-width="2" viewBox="0 0 24 24" stroke-linecap="round" stroke-linejoin="round" class="h-4 w-4" height="1em" width="1em" xmlns="http://www.w3.org/2000/svg"><path d="M16 4h2a2 2 0 0 1 2 2v14a2 2 0 0 1-2 2H6a2 2 0 0 1-2-2V6a2 2 0 0 1 2-2h2"></path><rect x="8" y="2" width="8" height="4" rx="1" ry="1"></rect></svg>Copy code</button></div><div class="p-4 overflow-y-auto"><code class="!whitespace-pre hljs language-javascript">wget <span class="hljs-attr">https</span>:<span class="hljs-comment">//example.com/configure_ssh.sh</span>
</code></div></div></pre>
<ol start="3">
    <li>Replace <code>https://example.com/configure_ssh.sh</code> with the actual URL of the script file.</li>
    <li>Set execute permission on the script file with the following command:</li>
</ol>
<pre><div class="bg-black rounded-md mb-4"><div class="flex items-center relative text-gray-200 bg-gray-800 px-4 py-2 text-xs font-sans justify-between rounded-t-md"><span>bash</span><button class="flex ml-auto gap-2"><svg stroke="currentColor" fill="none" stroke-width="2" viewBox="0 0 24 24" stroke-linecap="round" stroke-linejoin="round" class="h-4 w-4" height="1em" width="1em" xmlns="http://www.w3.org/2000/svg"><path d="M16 4h2a2 2 0 0 1 2 2v14a2 2 0 0 1-2 2H6a2 2 0 0 1-2-2V6a2 2 0 0 1 2-2h2"></path><rect x="8" y="2" width="8" height="4" rx="1" ry="1"></rect></svg>Copy code</button></div><div class="p-4 overflow-y-auto"><code class="!whitespace-pre hljs language-bash"><span class="hljs-built_in">chmod</span> +x configure_ssh.sh
</code></div></div></pre>
<ol start="5">
    <li>Run the script as the root user with the following command:</li>
</ol>
<pre><div class="bg-black rounded-md mb-4"><div class="flex items-center relative text-gray-200 bg-gray-800 px-4 py-2 text-xs font-sans justify-between rounded-t-md"><span>bash</span><button class="flex ml-auto gap-2"><svg stroke="currentColor" fill="none" stroke-width="2" viewBox="0 0 24 24" stroke-linecap="round" stroke-linejoin="round" class="h-4 w-4" height="1em" width="1em" xmlns="http://www.w3.org/2000/svg"><path d="M16 4h2a2 2 0 0 1 2 2v14a2 2 0 0 1-2 2H6a2 2 0 0 1-2-2V6a2 2 0 0 1 2-2h2"></path><rect x="8" y="2" width="8" height="4" rx="1" ry="1"></rect></svg>Copy code</button></div><div class="p-4 overflow-y-auto"><code class="!whitespace-pre hljs language-bash">sudo ./configure_ssh.sh
</code></div></div></pre>
<h2>Supported Systems</h2>
<p>This script has been tested on the following systems:</p>
<ul>
    <li>Ubuntu 18.04 LTS (Bionic Beaver)</li>
    <li>Ubuntu 20.04 LTS (Focal Fossa)</li>
    <li>Ubuntu 22.04 LTS (Jammy Jellyfish)</li>
    <li>Debian 10 (Buster)</li>
    <li>Debian 11 (Bullseye)</li>
    <li>CentOS 7</li>
    <li>CentOS 8</li>
</ul>
<h2>License</h2>
<p>This script is licensed under the MIT License.</p>
