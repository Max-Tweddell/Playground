(ns rubix.core
  (:require [fn-fx.fx-dom :as dom]
            [fn-fx.diff :refer [component defui render should-update?]]
            [fn-fx.controls :as ui]))

(defn firebrick []
  (ui/color :red 0.69 :green 0.13 :blue 0.13))



(defn main-thing-button [& args]
  (ui/scene
   :root (ui/grid-pane
          :alignment :center
          :hgap 10
          :vgap 10
          :children [(ui/button
                      :text  (str "Say 'Hello World'")
                      :on-action {:say "Hello World!"}
                      :grid-pane/column-index 0
                      :grid-pane/row-index 1)
                     (ui/text
                      :text (str (first args)))
                     ])))

(defui Stage
  (render [this args]
          (ui/stage
           :title "Hello World!"
           :shown true
           :min-width 300
           :min-height 300
           :scene (main-thing-button args))))

(defn -main []
  (let [u (main-thing-button)
        text (atom [(ui/text :text "blop")])
        handler-fn (fn [evt]
                     (swap! text into (ui/text :text "blop")))
        ui-state (agent (dom/app (stage @text ) handler-fn))]
    (add-watch text :ui (fn [& args]
                                (send ui-state
                                      (fn [old-ui]
                                        (dom/update-app old-ui (stage @text))))))
    (dom/app u handler-fn)))
