live_loop :myLoob do
  [1, 5, 6, 4].each do |d|
    (range -3, 3).each do |i|
      use_synth :beep
      play_chord (chord_degree d, :e4, :minor, rrand_i(2, 4), invert: i)
      use_synth :blade
      play_chord (chord_degree d, :e3, :minor, 1, invert: i)
      sleep 0.25
    end
  end
end

live_loop :bassline do
  sample :bd_boom, rate: 0.5
  sample :bd_tek, rate: 0.5
  sleep 0.5
end
