module StringBinary
  refine String do
    def to_8_bits_string
      self.to_i.to_s(2).rjust(8, '0')
    end

    def octets
      self.split('.')
    end
  end
end

using StringBinary

def ip_to_int32(ip)
  concat_binaries(ip.octets).to_i(2)
end

def concat_binaries(ip_octets)
  ip_octets.inject('') { |binary_str, ip_octet| binary_str += ip_octet.to_8_bits_string  }
end
