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
exports.password = getStdout("pass show email/gmail.com | head -n1");
exports.onNewMail = "/usr/bin/mbsync gmail";
exports.onNewMailPost = "/usr/bin/notmuch new";
exports.boxes = [ "INBOX" ];
