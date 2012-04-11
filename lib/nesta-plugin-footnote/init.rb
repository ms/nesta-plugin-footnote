module Nesta
  module Plugin
    module Footnote
      class Footnotes
        def initialize
          @footnotes = []
        end

        def footnote(text)
          @footnotes << text
          id = @footnotes.size
          return %{<a href="#footnote-#{id}" class="reference" id="ref-#{id}">#{id}</a>}
        end

        def printfootnotes()
          html = %{<ol class="footnotes">}
          @footnotes.each_index do |i|
            html << %{<li id="footnote-#{i+1}" class="footnote">#{@footnotes[i]} <a href="#ref-#{i+1}" class="backref">&#8593;</a></li>}
          end
          html << %{</ol>}

          return html
        end
      end
    end
  end
end
