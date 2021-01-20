package main

import (
  "gopkg.in/gomail.v2"
)

func main() {
  m := gomail.NewMessage()
  m.SetHeader("From", "maria@bla.cloud")
  m.SetHeader("To", "maria@bla.cloud")
  //m.SetAddressHeader("Cc", "dan@example.com", "Dan")
  m.SetHeader("Subject", "Hello!")
  m.SetBody("text/html", "Hello <b>Bob</b> and <i>Cora</i>!")
  //m.Attach("/home/Alex/lolcat.jpg")

  d := gomail.NewDialer("mail.bla.bla", 587, "maria", "maria2021")

  // Send the email to Bob, Cora and Dan.
  if err := d.DialAndSend(m); err != nil {
    panic(err)
  }
}
