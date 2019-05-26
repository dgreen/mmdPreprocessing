#!/usr/bin/env ruby

class String
    def replace_with_entity
      case self.downcase
      when /apple/
        "&#63743;"
      when /(comm(and)?|cmd|clover)/
        "&#8984;"
      when /(cont(rol)?|ctl|ctrl)/
        "&#8963;"
      when /(opt(ion)?|alt)/
        "&#8997;"
      when /shift/
        "&#8679;"
      when /tab/
        "&#8677;"
      when /caps(lock)?/
        "&#8682;"
      when /eject/
        "&#9167;"
      when /return/
        "&#9166;"
      when /enter/
        "&#8996;"
      when /(del(ete)?|back(space)?)/
        "&#9003;"
      when /fwddel(ete)?/
        "&#8998;"
      when /(esc(ape)?)/
        "&#9099;"
      when /right/
        "&#8594;"
      when /left/
        "&#8592;"
      when /up/
        "&#8593;"
      when /down/
        "&#8595;"
      when /pgup/
        "&#8670;"
      when /pgdn/
        "&#8671;"
      when /home/
        "&#8598;"
      when /end/
        "&#8600;"
      when /clear/
        "&#8999;"
      when /gear/
        "&#9881;"
      else
        "{{#{self}}}"
      end
    end
  
    def render
      # Replace {{insertions}}
      self.gsub(/\{\{(.*?)\}\}/) {|mtch|
        m = Regexp.last_match
        m[1].strip.replace_with_entity
      }
    end
  end
