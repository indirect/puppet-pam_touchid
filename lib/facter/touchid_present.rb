Facter.add(:touchid_present) do
  check_path = File.expand_path("../../../files/touchidcheck", __FILE__)

  setcode do
    %x{#{check_path}}.chomp.split("=").last
  end
end
