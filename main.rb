require "serialport"

#params for serial port
port_str = "/dev/cu.usbmodem1411"
baud_rate = 9600
data_bits = 8
stop_bits = 1
parity = SerialPort::NONE

sp = SerialPort.new(port_str, baud_rate, data_bits, stop_bits, parity)

while true do
  while (i = sp.gets.chomp) do       # see note 2
    File.write('/Users/yannick/tmp_flaschenorgel.txt', i)
    puts i
  end
end

sp.close                       #see note 1
