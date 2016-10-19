var child_process = require('child_process');

function getStdout(cmd) {
  var stdout = child_process.execSync(cmd);
  return stdout.toString().trim();
}

exports.host = "imap.gmail.com";
exports.port = 993;
exports.tls = true;
exports.tlsOptions = { "rejectUnauthorized": false };
exports.username = "mikael.kermorgant@gmail.com";
exports.password = getStdout("imap-pass -g mikael.kermorgant@gmail.com");
exports.onNewMail = "/usr/bin/mbsync gmail";
exports.onNewMailPost = "emacsclient  -e '(mu4e-update-index)'";
exports.boxes = [ "INBOX" ];
// at some point, gpg should replace imap-pass
// see http://code.lexarcana.com/posts/text-based-email-setup-with-mbsync-and-mu.html
