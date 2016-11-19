class Hash
  def difference(other_hash={})
    combo_hash = self.merge(other_hash)
    self.each_key do |k|
      if other_hash.include?(k)
        combo_hash.delete(k)
      end
    end
  combo_hash
  end
end
