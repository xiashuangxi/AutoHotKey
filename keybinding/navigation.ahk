;; =============================================================================
;; 导航
;; =============================================================================

;; 上
CapsLock & j:: CapsLockNav("Down")

;; 下
CapsLock & k:: CapsLockNav("Up")

;; 左
CapsLock & h:: CapsLockNav("Left")

;; 右
CapsLock & l:: CapsLockNav("Right")

;; pagedown
CapsLock & u:: CapsLockNav("PgDn")

;; pageup
CapsLock & i:: CapsLockNav("PgUp")

;; 单词的移动
CapsLock & o:: CapsLockNav("Left","^")
CapsLock & m:: CapsLockNav("Right","^")

CapsLock & p:: CapsLockNav("End")
CapsLock & n:: CapsLockNav("Home")

CapsLockNav(action, initkey = "", key="+") { ;; + 是shift
    if ! GetKeyState("shift")
    {
        Send % initkey "{" action "}"
    }
    else 
    {
        Send % key . initkey "{" action "}"
    }
}