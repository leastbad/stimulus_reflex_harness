# frozen_string_literal: true

class RunnerReflex < ApplicationReflex
  delegate :uuid, to: :connection

  def test

    cable_ready.inner_html(selector: "#inner_html-1", focus_selector: "#inner_html-focus", html: "<td id=\"inner_html-1\"><i>CableReady rocks</i></td>").broadcast
    cable_ready.inner_html(selector: ".inner_html-2", select_all: true, html: "<td id=\"inner_html-1\"><i>CableReady rocks multi</i></td>").broadcast
    cable_ready.inner_html(selector: "#inner_html-3", html: "<td id=\"inner_html-3\"><i>Post-operation</i></td>").broadcast
    cable_ready.inner_html(selector: "/html/body/table[1]/tbody/tr[7]/td[3]", xpath: true, html: "<td id=\"inner_html-4\"><i>CableReady XPath</i></td>").broadcast

    cable_ready.insert_adjacent_html(selector: "#insert_adjacent_html-1", html: "<span>beforeend</span>", focus_selector: "#insert_adjacent_html-focus").broadcast
    cable_ready.insert_adjacent_html(selector: "#insert_adjacent_html-2", html: "<span>afterbegin</span>", position: "afterbegin").broadcast
    cable_ready.insert_adjacent_html(selector: "#insert_adjacent_html-3", html: "<span>beforeend</span>").broadcast

    cable_ready.insert_adjacent_text(selector: "#insert_adjacent_text-1", text: "beforeend", focus_selector: "#insert_adjacent_text-focus").broadcast
    cable_ready.insert_adjacent_text(selector: "#insert_adjacent_text-2", text: "afterbegin", position: "afterbegin").broadcast
    cable_ready.insert_adjacent_text(selector: "#insert_adjacent_text-3", text: "beforeend").broadcast

    cable_ready.morph(selector: "#morph-1", children_only: false, focus_selector: "#morph-focus", html: "<td id=\"morph-1\"><span>Nate Hopkins Full</span></td>").broadcast
    cable_ready.morph(selector: "#morph-2", children_only: true, html: "<td id=\"morph-2\"><span>Nate Hopkins Children</span></td>").broadcast
    cable_ready.morph(selector: "#morph-3", children_only: true, html: "<td id=\"morph-3\"><span>Post-operation</span></td>").broadcast

    cable_ready.outer_html(selector: "#outer_html-1", focus_selector: "#outer_html-focus", html: "<td id=\"outer_html-1\" data-events-target=\"element\"><span>Nate Hopkins Replaced</span></td>").broadcast
    cable_ready.outer_html(selector: "#outer_html-2", html: "<td id=\"outer_html-2\"><span>Post-operation</span></td>").broadcast

    cable_ready.remove(selector: "#remove-1", focus_selector: "#remove-focus").broadcast
    cable_ready.remove(selector: "#remove-2").broadcast

    cable_ready.text_content(selector: "#text_content-1", focus_selector: "#text_content-focus", text: "Nate Hopkins Text").broadcast
    cable_ready.text_content(selector: "#text_content-2", text: "Post-operation").broadcast

    cable_ready.add_css_class(selector: "#add_css_class-1", name: "red").broadcast
    cable_ready.add_css_class(selector: "#add_css_class-2", name: "red").broadcast

    cable_ready.remove_attribute(selector: "#remove_attribute-1", name: "disabled").broadcast
    cable_ready.remove_attribute(selector: "#remove_attribute-2", name: "disabled").broadcast

    cable_ready.remove_css_class(selector: "#remove_css_class-1", name: "red").broadcast
    cable_ready.remove_css_class(selector: "#remove_css_class-2", name: "red").broadcast

    cable_ready.set_attribute(selector: "#set_attribute-1", name: "placeholder", value: "Nate").broadcast
    cable_ready.set_attribute(selector: "#set_attribute-2", name: "placeholder", value: "Nate").broadcast

    cable_ready.set_dataset_property(selector: "#set_dataset_property-1", name: "id", value: "1").broadcast
    cable_ready.set_dataset_property(selector: "#set_dataset_property-2", name: "id", value: "1").broadcast

    cable_ready.set_property(selector: "#set_property-1", name: "dir", value: "rtl").broadcast
    cable_ready.set_property(selector: "#set_property-2", name: "dir", value: "rtl").broadcast

    cable_ready.set_style(selector: "#set_style-1", name: "font-size", value: "20px").broadcast
    cable_ready.set_style(selector: "#set_style-2", name: "font-size", value: "20px").broadcast

    cable_ready.set_styles(selector: "#set_styles-1", styles: {fontSize: "20px", color: "orange"}).broadcast
    cable_ready.set_styles(selector: "#set_styles-2", styles: {fontSize: "20px", color: "orange"}).broadcast

    cable_ready.set_value(selector: "#set_value-1", value: "Nate").broadcast
    cable_ready.set_value(selector: "#set_value-2", value: "Nate").broadcast

    cable_ready.dispatch_event(selector: "#dispatch_event-1", name: "event1", detail: {first_name: "Nate", last_name: "Hopkins"}).broadcast

    cable_ready.push_state(state: {first_name: "Nate", last_name: "Hopkins"}).broadcast

    cable_ready.set_cookie(id: 1, cookie: "foo=cancelled; path=/; expires=Sat, 09 Mar 2024 16:19:19 GMT").broadcast
    cable_ready.set_cookie(id: 2, cookie: "foo=bar; path=/; expires=Sat, 09 Mar 2024 16:19:19 GMT").broadcast

    cable_ready.set_focus(selector: "#set_focus-1").broadcast
    cable_ready.set_focus(selector: "#set_focus-2").broadcast

    cable_ready.set_storage_item(key: "foo1", value: "bar1", id: 1).broadcast
    cable_ready.set_storage_item(key: "foo2", value: "bar2", id: 2).broadcast
    cable_ready.set_storage_item(key: "foo3", value: "bar3", id: 3).broadcast
    cable_ready.set_storage_item(key: "foo4", value: "bar4", id: 4).broadcast

    cable_ready.set_storage_item(key: "foo5", value: "bar5", type: "session", id: 5).broadcast
    cable_ready.set_storage_item(key: "foo6", value: "bar6", type: "session", id: 6).broadcast
    cable_ready.set_storage_item(key: "foo7", value: "bar7", type: "session", id: 7).broadcast

    cable_ready.remove_storage_item(key: "foo2", id: 2).broadcast
    cable_ready.remove_storage_item(key: "foo3", id: 3).broadcast

    cable_ready.remove_storage_item(key: "foo5", type: "session", id: 5).broadcast

    cable_ready.clear_storage().broadcast

    cable_ready.clear_storage(type: "session").broadcast

    # cable_ready.console_log(message: "Log").broadcast
    # cable_ready.console_log(message: "Warn", level: "warn").broadcast
    # cable_ready.console_log(message: "Info", level: "info").broadcast
    # cable_ready.console_log(message: "Error", level: "error").broadcast

    # cable_ready.notification(
    #   title: "You are the worst.",
    #   options: {
    #     body: "This one gets cancelled like Kevin Spacey.",
    #     icon: "https://source.unsplash.com/256x256",
    #     vibrate: [200, 200, 200],
    #     silent: false
    #   }
    # ).broadcast

    # cable_ready.notification(
    #   title: "You are the best.",
    #   options: {
    #     body: "How does it feel to be your parents' favourite?",
    #     icon: "https://source.unsplash.com/256x256",
    #     vibrate: [200, 200, 200],
    #     silent: false
    #   }
    # ).broadcast

    # cable_ready.play_sound(src: "https://s3-us-west-2.amazonaws.com/s.cdpn.io/858/outfoxing.mp3", id: 1).broadcast
    # cable_ready.play_sound(src: "https://s3-us-west-2.amazonaws.com/s.cdpn.io/858/outfoxing.mp3", id: 2).broadcast

    cable_ready.set_focus(selector: "#bottom").broadcast

    # cable_ready.graft(selector: "#graftee", parent: "#to").broadcast

    # cable_ready["i-am-a-teapot"].console_log(message: "yo").broadcast

    # cable_ready.outer_html(selector: "[data-controller=\"runner\"]", html: "<div data-controller=\"runner\"><button data-reflex=\"click->Runner#test\">Boo!</button></div>").broadcast
    # cable_ready.remove(selector: 'button').broadcast
    # cable_ready.remove(selector: "[data-controller=\"runner\"]").broadcast

    morph :nothing
  end
end
