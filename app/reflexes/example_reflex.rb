# frozen_string_literal: true

class ExampleReflex < ApplicationReflex
  delegate :uuid, to: :connection

  def no_html
    morph "#text"
    morph "#element"
    morph "#text_permanent"
    morph "#element_permanent"
  end

  def number
    morph "#text", 5
    morph "#element", 5
    morph "#text_permanent", 5
    morph "#element_permanent", 5
  end

  def empty_string
    morph "#text", ""
    morph "#element", ""
    morph "#text_permanent", ""
    morph "#element_permanent", ""
  end

  def string
    morph "#text", "String content"
    morph "#element", "<span>String content</span>"
    morph "#text_permanent", "String content"
    morph "#element_permanent", "<span>String content</span>"
  end

  def simulated_partial
    morph "#text", "<div id=\"text\">New content</div>"
    morph "#element", "<div id=\"element\"><span>New content</span></div>"
    morph "#text_permanent", "<div id=\"text_permanent\">New content</div>"
    morph "#element_permanent", "<div id=\"element_permanent\"><span>New content</span></div>"
  end

  def malformed
    morph "#text", "<div id=\"text\">malformed"
    morph "#element", "<div id=\"element\"><span>malformed</span>"
    morph "#text_permanent", "<div id=\"text_permanent\">malformed"
    morph "#element_permanent", "<div id=\"element_permanent\"><span>malformed</span>"
  end

  def nodename
    morph "#text", "<span id=\"text\">New nodename</span>"
    morph "#element", "<span id=\"element\"><span>New nodename</span></span>"
    morph "#text_permanent", "<span id=\"text_permanent\">New nodename</span>"
    morph "#element_permanent", "<span id=\"element_permanent\"><span>New nodename</span></span>"
  end

  def new_id
    morph "#text", "<div id=\"new_text\">New id</div>"
    morph "#element", "<div id=\"new_element\"><span>New id</span></div>"
    morph "#text_permanent", "<div id=\"new_text_permanent\">New id</div>"
    morph "#element_permanent", "<div id=\"new_element_permanent\"><span>New id</span></div>"
  end

  def nestled
    morph "#text", "Preamble<div id=\"text\">new content</div>Ending"
    morph "#element", "Preamble<div id=\"element\"><span>new content</span></div>Ending"
    morph "#text_permanent", "Preamble<div id=\"text_permanent\">new content</div>Ending"
    morph "#element_permanent", "Preamble<div id=\"element_permanent\"><span>new content</span></div>Ending"
  end

  def multiple
    morph "#text", "<div id=\"text\">New content 1</div><div id=\"text2\">New content 2</div>"
    morph "#element", "<div id=\"element\"><span>New content 1</span></div><div id=\"element2\"><span>New content 2</span></div>"
    morph "#text_permanent", "<div id=\"text_permanent\">New content 1</div><div id=\"text_permanent2\">New content 2</div>"
    morph "#element_permanent", "<div id=\"element_permanent\"><span>New content 1</span></div><div id=\"element_permanent2\"><span>New content 2</span></div>"
  end

  def reversed_multiple
    morph "#text", "<div id=\"text2\">New content 2</div><div id=\"text\">New content 1</div>"
    morph "#element", "<div id=\"element2\"><span>New content 2</span></div><div id=\"element\"><span>New content 1</span></div>"
    morph "#text_permanent", "<div id=\"text_permanent2\">New content 2</div><div id=\"text_permanent\">New content 1</div>"
    morph "#element_permanent", "<div id=\"element_permanent2\"><span>New content 2</span></div><div id=\"element_permanent\"><span>New content 1</span></div>"
  end
end
