WAREHOUSE =

[

{"a10" => "rubber band"},
{"a9" => "glow stick"},
{"a8" => "model car"},
{"a7" => "bookmark"},
{"a6" => "shovel"},
{"a5" => "rubber duck"},
{"a4" => "hanger"},
{"a3" => "blouse"},
{"a2" => "stop sign"},
{"a1" => "needle"},
{"c1" => "rusty nail"},
{"c2" => "drill press"},
{"c3" => "chalk"},
{"c4" => "word search"},
{"c5" => "thermometer"},
{"c6" => "face wash"},
{"c7" => "paint brush"},
{"c8" => "candy wrapper"},
{"c9" => "shoe lace"},
{"c10" => "leg warmers"},
{"b1" => "tyre swing"},
{"b2" => "sharpie"},
{"b3" => "picture frame"},
{"b4" => "photo album"},
{"b5" => "nail filer"},
{"b6" => "tooth paste"},
{"b7" => "bath fizzers"},
{"b8" => "tissue box"},
{"b9" => "deodarant"},
{"b10" => "cookie jar"},

]

def item_at_bay(bay)
  for item in WAREHOUSE
    if bay == item.keys[0]
      result = item[bay]
    end
  end
  return result
end

def location_at_bay(item)
  for items in WAREHOUSE
    if items == items.values[0]
    result = items.keys[0]
    end
  end
  return result
end


def multiple_items(bays)
  result = []
  position = []
    for bay in bays
      for items in WAREHOUSE
        if bay == items.keys[0]
          result.push(items.values[0])
          position.push(WAREHOUSE.index(items))
            min = position.min
            max = position.max
            distance = max - min
        end
    end
  end
  return result, distance
end















