# Defined in - @ line 1
function set-display --wraps=set\ DISPLAY\ -Ux\ \(cat\ /etc/resolv.conf\ \|\ grep\ nameserver\ \|\ awk\ \'\{print\ \;\ exit\;\}\'\):0.0 --wraps=set\ -Ux\ DISPLAY\ \(cat\ /etc/resolv.conf\ \|\ grep\ nameserver\ \|\ awk\ \'\{print\ \;\ exit\;\}\'\):0.0 --description alias\ set-display=set\ -Ux\ DISPLAY\ \(cat\ /etc/resolv.conf\ \|\ grep\ nameserver\ \|\ awk\ \'\{print\ \;\ exit\;\}\'\):0.0
  set -Ux DISPLAY (cat /etc/resolv.conf | grep nameserver | awk '{print ; exit;}'):0.0 $argv;
end
