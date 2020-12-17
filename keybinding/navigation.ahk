;; =============================================================================
;; 导航
;; =============================================================================

;; 上
CapsLock & j:: CapsLockNav("Up")

;; 下
CapsLock & k:: CapsLockNav("Down")

;; 左
CapsLock & h:: CapsLockNav("Left")

;; 右
CapsLock & l:: CapsLockNav("Right")

CapsLockNav(action, initkey = "", key="+") { ;; + 是shift
    if ! GetKeyState("shift")
        Send % initmod "{" action "}"
    else 
        Send % key . initmod "{" action "}"
}